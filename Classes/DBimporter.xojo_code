#tag Class
Protected Class DBimporter
	#tag Method, Flags = &h21
		Private Function CheckValue(inputMap as Dictionary, value as string) As boolean
		  If inputMap.HasKey(value) Then
		    return true
		  Else
		    error = "No '"+value+"' argument provided."
		    return false
		  End if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  query = new MSSQLServerDatabase()
		  query.Host = "217.21.43.34\SQLEXPRESS"
		  query.Port = 1433
		  query.DatabaseName = "sigmo_id_1"
		  query.UserName = "sigmo_id_oper"
		  query.Password = "rfebiosigmo#id#"
		  Try
		    query.Connect
		  Catch err As DatabaseException
		    error = "The error occured during connecting to the database. Check settings or connection."
		  End try
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Destructor()
		  query.Close()
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function getIDFromDB(queryText as string, name as string) As integer
		  var sqlRequest as string = queryText+"=?"
		  try
		    var result as RowSet = query.SelectSQL(sqlRequest, name)
		    If result.ColumnCount > 1 Then
		      return 0
		    Else
		      return result.ColumnAt(0).IntegerValue
		    End If
		  catch err As DatabaseException
		    error = "The error was occured while getting information from the database. Error: " + err.Message
		    return 0
		  End try
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function getIDFromDBPartialMatch(queryText as string, name as string) As integer
		  var sqlRequest as string = queryText + " LIKE('%"+name+"%')"
		  try
		    var result as RowSet = query.SelectSQL(sqlRequest)
		    If result.ColumnCount > 1 Then
		      return 0
		    Else
		      return result.ColumnAt(0).IntegerValue
		    End If
		  catch err As DatabaseException
		    error = "The error was occured while getting information from the database. Error: " + err.Message
		    return 0
		  End try
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function import(inputMap as Dictionary) As boolean
		  If error.Length() > 0 Then // in case of connection error in constructor
		    return false
		  End if 
		  
		  var sqlReqest as string
		  
		  var sl() as string
		  If CheckValue(inputMap, "sl") Then
		    sl = inputMap.Value("sl")
		  Else
		    return false
		  End if
		  var dirName as string
		  If CheckValue(inputMap, "dirName") Then
		    dirName = inputMap.Value("dirName")
		  Else
		    return false
		  End if
		  
		  var TFID as integer = getIDFromDB("SELECT idTF FROM TFs WHERE Name", dirName)
		  If TFID > 0 Then
		    warnings.AddRow("Transcription factor "+dirName+" has been already imported")
		  End If
		  
		  var CRTagID as integer = 0
		  try
		    sqlReqest = "DECLARE @ResultForPos INT; SET @ResultForPos=0; EXECUTE pr_addCRTag @ResultForPos OUTPUT, ?; SELECT @ResultForPos;"
		    var result as RowSet = query.SelectSQL(sqlReqest, sl(0))
		    CRTagID = result.ColumnAt(0).IntegerValue
		  catch err As DatabaseException
		    error = err.Message
		  End try
		  
		  
		  //reading options
		  
		  var TFFamily as integer = 0
		  
		  var HMM_ACC as string
		  If CheckValue(inputMap, "HMM_ACC") Then
		    HMM_ACC = inputMap.Value("HMM_ACC")
		  Else
		    return false
		  End if
		  TFFamily = getIDFromDBPartialMatch("SELECT idTF_family FROM TF_families WHERE Accession", HMM_ACC)
		  If TFFamily = 0 Then
		    error = "TF family '"+HMM_ACC+"' was not found"
		    return false
		  End If
		  
		  //writing TF
		  
		  If not (CheckValue(inputMap, "CRTag_coord") and CheckValue(inputMap, "ProteinID") and CheckValue(inputMap, "Sequence") and CheckValue(inputMap, "info")) Then
		    return false
		  End if
		  try
		    sqlReqest = "INSERT INTO TFs([Name], [idTF_family], [idCRTag], [CRTag_coord], [ProteinID], [Sequence], [Description]) OUTPUT IDENT_CURRENT('TFs') VALUES (?, ?, ?, ?, ?, ?, ?);"
		    var result as RowSet = query.SelectSQL(sqlReqest, dirName, TFFamily.ToString(), CRTagID.ToString(), inputMap.Value("CRTag_coord").StringValue, inputMap.Value("ProteinID").StringValue, inputMap.Value("Sequence").StringValue, inputMap.Value("info").StringValue.Trim())
		    TFID = result.ColumnAt(0).IntegerValue
		  catch err As DatabaseException
		    error = "The error was occured while insertion of TF. Error: "+err.Message
		    return false
		  End try
		  
		  //reading HMM and PWM
		  If not (CheckValue(inputMap, "hmm") and CheckValue(inputMap, "pwm")) Then
		    return false
		  End if
		  
		  //writing Motiff
		  var MotifID as integer = 0
		  If TFID > 0 and inputMap.Value("hmm").StringValue.Length() > 0 Then
		    try
		      sqlReqest = "INSERT INTO Motifs([idTF], [HMM], [PWM]) OUTPUT IDENT_CURRENT('Motifs') VALUES (?, ?, ?);"
		      var result as RowSet = query.SelectSQL(sqlReqest, TFID.ToString(), inputMap.Value("hmm").StringValue, inputMap.Value("pwm").StringValue)
		      MotifID = result.ColumnAt(0).IntegerValue
		    catch err As DatabaseException
		      error = "The error was occured while insertion of Motif. Error: "+err.Message
		      query.Close()
		      return false
		    End try
		  End If
		  
		  //writing operators
		  If not (CheckValue(inputMap, "id") and CheckValue(inputMap, "operator")) Then
		    return false
		  End if
		  If MotifID > 0 Then
		    var id() as string = inputMap.Value("id")
		    var oper() as string = inputMap.Value("operator")
		    If not id.Count = oper.Count Then
		      error = "Array lengths of 'id()' and 'operator()' are not equal"
		      return false
		    End if
		    For i as integer=0 to id.Count-1
		      If id(i).Length > 0 and oper(i).Length > 0 Then
		        try
		          sqlReqest = "INSERT INTO Operators([idMotif], [id], [operator]) VALUES (?, ?, ?)"
		          query.ExecuteSQL(sqlReqest, MotifID.ToString(), id(i), oper(i))
		        catch err As DatabaseException
		          error = "The error was occured while insertion of Motif. Error: "+err.Message
		          return false
		        End try
		      End if
		    Next
		  End If
		  
		  // writing settings
		  // nhmmer options 
		  
		  If not CheckValue(inputMap, "TC") Then
		    return false
		  End if
		  If not insertSettings("GF TC", inputMap.Value("TC"), "nhmmer", MotifID) Then
		    return false
		  End If
		  
		  If not CheckValue(inputMap, "GA") Then
		    return false
		  End if
		  If not insertSettings("GF GA", inputMap.Value("GA"), "nhmmer", MotifID) Then
		    return false
		  End If
		  
		  If not CheckValue(inputMap, "NC") Then
		    return false
		  End if
		  If not insertSettings("GF NC", inputMap.Value("NC"), "nhmmer", MotifID) Then
		    return false
		  End If
		  
		  If not CheckValue(inputMap, "cut_ga") Then
		    return false
		  End if
		  If not insertSettings("cut_ga", Iif(inputMap.Value("cut_ga").StringValue.trim().Length()=0, false, true), "nhmmer", MotifID) Then
		    return false
		  End If
		  
		  // HmmGen options
		  If not CheckValue(inputMap, "HmmGenP") Then
		    return false
		  End if
		  If not insertSettings("HmmGen.-p", Iif(inputMap.Value("HmmGenP").StringValue.trim().Length()=0, false, true), "HmmGen", MotifID) Then
		    return false
		  End If
		  
		  If not CheckValue(inputMap, "HmmGenI") Then
		    return false
		  End if
		  If not insertSettings("HmmGen.-i", Iif(inputMap.Value("HmmGenI").StringValue.trim().Length()=0, false, true), "HmmGen", MotifID) Then
		    return false
		  End If
		  
		  If not CheckValue(inputMap, "HmmGenF") Then
		    return false
		  End if
		  If not insertSettings("HmmGen.-f", inputMap.Value("HmmGenF"), "HmmGen", MotifID) Then
		    return false
		  End If
		  
		  If not CheckValue(inputMap, "HmmGenQ") Then
		    return false
		  End if
		  If not insertSettings("HmmGen.-q", inputMap.Value("HmmGenQ"), "HmmGen", MotifID) Then
		    return false
		  End If
		  
		  If not CheckValue(inputMap, "mastGenV") Then
		    return false
		  End if
		  If not insertSettings("mastGen.-V", Iif(inputMap.Value("mastGenV").StringValue.trim().Length()=0, false, true), "HmmGen", MotifID) Then
		    return false
		  End If
		  
		  //import references
		  
		  If not (CheckValue(inputMap, "reference") and CheckValue(inputMap, "DOI") and CheckValue(inputMap, "year") and CheckValue(inputMap, "type_ref")) Then
		    return false
		  End if
		  var reference() as string = inputMap.Value("reference")
		  var year() as string = inputMap.Value("year")
		  var DOI() as string = inputMap.Value("DOI")
		  var type_ref() as string = inputMap.Value("type_ref")
		  If MotifID > 0 Then
		    If reference.Count = year.Count and year.Count = DOI.Count and DOI.Count = type_ref.Count Then
		      For i as integer=0 to reference.Count-1
		        var types() as string = type_ref(i).split("][")
		        For j as integer = 0 to types.Count()-1
		          var type as string = types(j)
		          If not type.BeginsWith("[") then
		            type = "[" + type
		          End if
		          If not type.EndsWith("]", ComparisonOptions.CaseSensitive, Locale.Current) then
		            type = type + "]"
		          End if
		          types(j) = type
		        Next
		        If reference(i).Length > 0 Then
		          insertReference(MotifID, reference(i), year(i), DOI(i), types)
		        End if
		        If error.Length() > 0 Then
		          return false
		        End if
		      Next
		    Else
		      error = "Array lengths of 'reference()', 'year()', 'DOI()' and 'type_ref()' are not equal"
		      return false
		    End if
		  End if
		  
		  //import curators
		  If MotifID > 0 Then
		    If not (CheckValue(inputMap, "name") and CheckValue(inputMap, "email") and CheckValue(inputMap, "type_cur")) Then
		      return false
		    End if
		    var name() as string = inputMap.Value("name")
		    var email() as string = inputMap.Value("email")
		    var type_cur() as string = inputMap.Value("type_cur")
		    If name.Count = email.Count and email.Count = type_cur.Count Then
		      For i as integer=0 to name.Count-1
		        If name(i).Length > 0 Then
		          var l() as string = type_cur(i).Split(": ")
		          If l.Count() > 1 Then
		            insertCurator(MotifID, name(i), email(i), l(0), l(1))
		          Else
		            insertCurator(MotifID, name(i), email(i), l(0), "")
		          End if
		        End if
		        If error.Length() > 0 Then
		          return false
		        End if
		      Next
		    End If
		  End if
		  
		  return true
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub insertCurator(idMotif as integer, name as string, email as string, date as string, type as string)
		  var sqlReqest as string
		  var ID as integer
		  try
		    sqlReqest = "DECLARE @ResultForPos INT; SET @ResultForPos=0; "
		    sqlReqest = sqlReqest + "EXECUTE pr_addCurator @ResultForPos OUTPUT, ?, ?; SELECT @ResultForPos;"
		    var result as RowSet = query.SelectSQL(sqlReqest, name, email)
		    ID = result.ColumnAt(0).IntegerValue
		  catch err As DatabaseException
		    error = "The error was occured while insertion of curator "+type+". Error: " + err.Message
		    query.Close()
		    return
		  End try
		  try
		    sqlReqest = "INSERT INTO Motif_curators ([idCurator], [idMotif], [Date], [Type]) VALUES(?, ?, ?, ?)"
		    query.ExecuteSQL(sqlReqest, ID.ToString, idMotif.ToString, date, type)
		  catch err As DatabaseException
		    error = "The error was occured while insertion of curator "+type+". Error: " + err.Message
		    query.Close()
		    return
		  End try
		  return
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function insertEvidenceType(type as string) As integer
		  var sqlReqest as string
		  var ID as integer
		  try
		    sqlReqest = "DECLARE @ResultForPos INT; SET @ResultForPos=0; "
		    sqlReqest = sqlReqest + "EXECUTE pr_addEvidenceType @ResultForPos OUTPUT, ?; SELECT @ResultForPos;"
		    var result as RowSet = query.SelectSQL(sqlReqest, type)
		    ID = result.ColumnAt(0).IntegerValue
		  catch err As DatabaseException
		    error = "The error was occured while insertion of curator "+type+". Error: " + err.Message
		    query.Close()
		    return -1
		  End try
		  return ID
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub insertReference(idMotif as integer, reference as string, year as string, DOI as string, evidenceTypes() as string)
		  var sqlReqest as string
		  var referenceID as integer
		  try
		    sqlReqest = "DECLARE @ResultForPos INT; SET @ResultForPos=0; "
		    sqlReqest = sqlReqest + "EXECUTE pr_addReference @ResultForPos OUTPUT, ?, ?, ?; SELECT @ResultForPos;"
		    var result as RowSet = query.SelectSQL(sqlReqest, reference, year, DOI)
		    referenceID = result.ColumnAt(0).IntegerValue
		  catch err As DatabaseException
		    error = "The error was occured while insertion of reference "+DOI+". Error: " + err.Message
		    query.Close()
		    return
		  End try
		  var motifReferenceID as integer
		  try
		    sqlReqest = "INSERT INTO Motif_references ([idMotif] ,[idPublication]) OUTPUT IDENT_CURRENT('Motif_references') VALUES (?, ?)"
		    sqlReqest = sqlReqest + "SELECT MAX(idMotif_reference) FROM Motif_references;"
		    var result as RowSet = query.SelectSQL(sqlReqest, idMotif.ToString, referenceID.ToString)
		    motifReferenceID = result.ColumnAt(0).IntegerValue
		  catch err As DatabaseException
		    error = "The error was occured while insertion of publication reference "+referenceID.ToString+". Error: " + err.Message
		    query.Close()
		    return
		  End try
		  
		  //inesrtion evidence types
		  For each type as string in evidenceTypes
		    var evidenceTypeID as integer = insertEvidenceType(type)
		    If evidenceTypeID < 0 Then
		      return
		    End if
		    try
		      sqlReqest = "INSERT INTO Motif_references_evidence ([idMotif_reference], [idEvidence_type]) VALUES (?, ?)"
		      query.ExecuteSQL(sqlReqest, motifReferenceID.ToString, evidenceTypeID.ToString)
		    catch err As DatabaseException
		      error = "The error was occured while insertion of publication reference "+referenceID.ToString+". Error: " + err.Message
		      query.Close()
		      return
		    End try
		  Next
		  return
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function insertSettings(name as string, value as string, program as string, parentID as integer) As boolean
		  try
		    var sqlReqest as string = "INSERT INTO Settings([idMotif], [Name], [Value], [Program]) VALUES (?, ?, ?, ?)"
		    query.ExecuteSQL(sqlReqest, parentID.ToString(), name, value, program)
		    return true
		  catch err As DatabaseException
		    error = "The error was occured while insertion of parameter "+name+". Error: " + err.Message
		    return false
		  End try
		End Function
	#tag EndMethod


	#tag Note, Name = inputMap keys
		dirName as string
		sl(2) as string // sl(2)=dirName.split("_")
		info as string
		HMM_ACC as string
		CRTag_coord as string
		Sequence as string
		ProteinID as string
		hmm as string
		pwm as string
		id() as string
		operator() as string
		TC as string
		GA as string
		NC as string
		cut_ga as string
		HmmGenP as string
		HmmGenI as string
		HmmGenF as string
		HmmGenQ as string
		mastGenV as string
		reference() as string
		year() as string
		DOI() as string
		type_ref() as string
		name() as string
		email() as string
		type_cur() as string
		
	#tag EndNote


	#tag Property, Flags = &h0
		error As string
	#tag EndProperty

	#tag Property, Flags = &h21
		Private query As MSSQLServerDatabase
	#tag EndProperty

	#tag Property, Flags = &h0
		warnings() As string
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="error"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
