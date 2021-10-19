#tag Class
Protected Class Parser
	#tag Method, Flags = &h0
		Function GetFloatParameter(name as string, input as TextInputStream) As string
		  var par as string = getNextParameter(name, input)
		  var parl() as string = par.split(" ")
		  return parl(0)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getIDFromDB(queryText as string, name as string) As integer
		  var query as new MSSQLServerDatabase
		  If not OpenDatabase(query) Then
		    return 0
		  End If
		  try
		    var result as RowSet = query.SelectSQL(queryText+"='"+name+"'")
		    query.Close()
		    If result.ColumnCount > 1 Then
		      return 0
		    Else
		      return result.ColumnAt(0).IntegerValue
		    End If
		  catch err As DatabaseException
		    error = "The error was occured while getting information from the database. Error: " + err.Message
		    query.Close()
		    return 0
		  End try
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getIDFromDBPartialMatch(queryText as string, name as string) As integer
		  var query as new MSSQLServerDatabase
		  If not OpenDatabase(query) Then
		    return 0
		  End If
		  var q as string = queryText + " LIKE('%"+name+"%')"
		  try
		    var result as RowSet = query.SelectSQL(q)
		    query.Close()
		    If result.ColumnCount > 1 Then
		      return 0
		    Else
		      return result.ColumnAt(0).IntegerValue
		    End If
		  catch err As DatabaseException
		    error = "The error was occured while getting information from the database. Error: " + err.Message
		    query.Close()
		    return 0
		  End try
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetNextParameter(name as string, input as TextInputStream) As string
		  var line as string = ""
		  var found as boolean = false
		  If restart Then
		    input.BytePosition = 0
		  End If
		  
		  While not input.EndOfFile()
		    line = input.Readline()
		    
		    If line.StartsWith("//") Then
		      continue
		    End If
		    If line.StartsWith(name) Then
		      found = true
		      Exit
		    End If
		  Wend
		  If line.Length() - name.Length() > 0 Then
		    line = line.Right(line.length() - name.length() - 1)
		  End If
		  
		  If not found Then
		    restart = true
		  End If
		  
		  return line.trim()
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Iif(Conditional as Variant, Option1 as Variant, Option2 as Variant) As Variant
		  if Conditional = True then
		    return Option1
		  else
		    return Option2
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ImportFilesToDB(workFolder as folderItem, dirName as string) As boolean
		  var TFFamily as integer = 0
		  var CRTagID as integer = 0
		  
		  var sl() as string = dirName.split("_")
		  var query as new MSSQLServerDatabase()
		  
		  var sqlReqest as string
		  var f as FolderItem
		  
		  var TFID as integer
		  If sl.Count>1 Then
		    TFID = getIDFromDB("SELECT idTF FROM TFs WHERE Name", sl(1))
		    If TFID > 0 Then
		      warnings.AddRow("Transcription factor "+sl(1)+" has been already imported")
		      'return true
		    End If
		  Else
		    return false
		  End If
		  
		  
		  If not OpenDatabase(query) Then
		    return false
		  End If
		  try
		    sqlReqest = "DECLARE @ResultForPos INT; SET @ResultForPos=0; EXECUTE pr_addCRTag @ResultForPos OUTPUT, '"+sl(0)+"'; SELECT @ResultForPos;"
		    var result as RowSet = query.SelectSQL(sqlReqest)
		    CRTagID = result.ColumnAt(0).IntegerValue
		  catch err As DatabaseException
		    error = err.Message
		  End try
		  
		  //reading info
		  var info as string = ""
		  f = workFolder.Child(dirName + ".info")
		  If f<> Nil Then
		    info = TextInputStream.Open(f).ReadAll()
		    info = info.ReplaceAll("'s", " is")
		    info = info.ReplaceAll("'", " ")
		  End If
		  
		  
		  var fileOptions as FolderItem
		  fileOptions = workFolder.Child(dirName + ".options")
		  var inOptions as TextInputStream
		  // var TF_HMM as string= "";
		  var HMM_ACC as string = ""
		  var CRTag_coord as string = ""
		  var Sequence as string = ""
		  var ProteinID as string = ""
		  
		  //reading options
		  
		  If fileOptions<>Nil Then
		    inOptions = inOptions.Open(fileOptions)
		    //reading TF family
		    HMM_ACC = getNextParameter("HMM_ACC", inOptions)
		    If HMM_ACC.Length=0 Then
		      If sl.Count>1 Then
		        warnings.AddRow("HMM_ACC was not found while importing "+sl(1)+". Import is skipped.")
		      Else
		        warnings.AddRow("HMM_ACC was not found while importing "+dirName+". Import is skipped.")
		      End If
		      inOptions.Close()
		      'fileOptions.close();
		      return true
		    End If
		    var HMM_ACC_sl() as string = HMM_ACC.split(".")
		    HMM_ACC = HMM_ACC_sl(0)
		    TFFamily = getIDFromDBPartialMatch("SELECT idTF_family FROM TF_families WHERE Accession", HMM_ACC)
		    If TFFamily = 0 Then
		      error = "TF family '"+HMM_ACC+"' was not found"
		      inOptions.Close()
		      'fileOptions.close();
		      return false
		    End If
		    
		    CRTag_coord = getNextParameter("CRtagCoords", inOptions)
		    var CRTag_ as string = getNextParameter("CRtag", inOptions)
		    If CRTag_ <> sl(0) Then
		      warnings.AddRow("CRTag '"+CRTag_+"', imported from the options file does not correspond to the folder name. Import was skipped.")
		      inOptions.Close()
		      'fileOptions.close();
		      return true
		    End If
		    ProteinID = getNextParameter("protein_id", inOptions)
		    Sequence = getNextParameter("Seed_protein", inOptions)
		  Else
		    error = "File "+dirName+".options was not found. Import was not performed."
		    return false
		  End If
		  
		  //writing TF
		  
		  try
		    sqlReqest = "INSERT INTO TFs([Name], [idTF_family], [idCRTag], [CRTag_coord], [ProteinID], [Sequence], [Description]) VALUES ('"+sl(1)+"', "+TFFamily.ToString()+", "+CRTagID.ToString()+", '"+CRTag_coord+"', '"+ProteinID+"', '"+Sequence+"', '"+info.trim()+"');"
		    sqlReqest = sqlReqest + "SELECT MAX(idTF) FROM TFs;"
		    var result as RowSet = query.SelectSQL(sqlReqest)
		    TFID = result.ColumnAt(0).IntegerValue
		  catch err As DatabaseException
		    error = "The error was occured while insertion of TF. Error: "+err.Message
		    inOptions.Close()
		    query.Close()
		    return false
		  End try
		  
		  //reading HMM
		  var hmm as string = ""
		  f = workFolder.Child(dirName + ".hmm")
		  if f <> Nil Then
		    hmm = TextInputStream.Open(f).ReadAll()
		  End If
		  
		  //reading PWM
		  var pwm as string = ""
		  f = workFolder.Child("meme.txt")
		  if f <> Nil Then
		    pwm = TextInputStream.Open(f).ReadAll()
		  End If
		  
		  //writing Motiff
		  var MotifID as integer = 0
		  If TFID > 0 and hmm.Length > 0 Then
		    try
		      sqlReqest = "INSERT INTO Motifs([idTF], [HMM], [PWM]) VALUES ("+TFID.ToString()+", '"+hmm+"', '"+pwm+"');"
		      sqlReqest = sqlReqest + "SELECT MAX(idMotif) FROM Motifs;"
		      var result as RowSet = query.SelectSQL(sqlReqest)
		      MotifID = result.ColumnAt(0).IntegerValue
		    catch err As DatabaseException
		      error = "The error was occured while insertion of Motif. Error: "+err.Message
		      query.Close()
		      return false
		    End try
		  End If
		  
		  //writing operators
		  var fileOperators as FolderItem = workFolder.Child(dirName + ".fasta")
		  If MotifID > 0 and f<>Nil Then
		    var in_ as TextInputStream
		    in_ = in_.Open(fileOperators)
		    While not in_.EndOfFile()
		      var id as string = in_.ReadLine()
		      id = id.right(id.Length() - 1)
		      id = id.ReplaceAll("'s", " is")
		      id = id.ReplaceAll("'", " ")
		      var oper as string = in_.ReadLine()
		      If id.Length > 0 and oper.Length > 0 Then
		        var res as integer
		        try
		          sqlReqest = "INSERT INTO Operators([idMotif], [id], [operator]) VALUES ("+MotifID.ToString()+", '"+id+"', '"+oper+"')"
		          query.ExecuteSQL(sqlReqest)
		        catch err As DatabaseException
		          error = "The error was occured while insertion of Motif. Error: "+err.Message
		          break
		        End try
		      End IF
		    Wend
		    in_.Close()
		    If error.Length > 0 Then
		      error = "The error was occured while insertion of Operator. Error: "+error
		      query.Close()
		      return false
		    End If
		  End If
		  query.Close()
		  
		  //writing settings
		  //    nhmmer options 
		  var TC as string = getFloatParameter("#=GF TC", inOptions) //make getFloatParameter
		  If not insertSettings("GF TC", TC, "nhmmer", MotifID) Then
		    return false
		  End If
		  
		  var GA as string = getFloatParameter("#=GF GA", inOptions)
		  If not insertSettings("GF GA", GA, "nhmmer", MotifID) Then
		    return false
		  End If
		  
		  var NC as string = getFloatParameter("#=GF NC", inOptions)
		  If not insertSettings("GF NC", NC, "nhmmer", MotifID) Then
		    return false
		  End If
		  
		  var cut_ga as string = getNextParameter("nhmmer.--cut_ga", inOptions)
		  If not insertSettings("cut_ga", Iif(cut_ga.trim().Length()=0, false, true), "nhmmer", MotifID) Then
		    return false
		  End If
		  
		  //    HmmGen options
		  var HmmGenP as string = getNextParameter("HmmGen.-p", inOptions)
		  If not insertSettings("HmmGen.-p", Iif(HmmGenP.trim().Length()=0, false, true), "HmmGen", MotifID) Then
		    'If not insertSettings("HmmGen.-p", HmmGenP.trim().isEmpty() ? "False" : "True", "HmmGen", MotifID) Then
		    return false
		  End If
		  
		  var HmmGenI as string = getNextParameter("HmmGen.-i", inOptions)
		  If not insertSettings("HmmGen.-i", Iif(HmmGenI.trim().Length()=0, false, true), "HmmGen", MotifID) Then
		    return false
		  End If
		  
		  var HmmGenF as string = getNextParameter("HmmGen.-f", inOptions)
		  If not insertSettings("HmmGen.-f", HmmGenF, "HmmGen", MotifID) Then
		    return false
		  End If
		  
		  var HmmGenQ as string = getNextParameter("HmmGen.-q", inOptions)
		  If not insertSettings("HmmGen.-q", HmmGenQ, "HmmGen", MotifID) Then
		    return false
		  End If
		  
		  var mastGenV as string = getNextParameter("mastGen.-V", inOptions)
		  If not insertSettings("mastGen.-V", Iif(mastGenV.trim().Length()=0, false, true), "HmmGen", MotifID) Then
		    return false
		  End If
		  
		  inOptions.Close()
		  
		  //import references
		  var MotifID as integer = 158
		  var fileReferebces as FolderItem = workFolder.Child(dirName + ".refs")
		  If MotifID > 0 and fileReferebces<>Nil Then
		    var in_ as TextInputStream
		    in_ = in_.Open(fileReferebces)
		    While not in_.EndOfFile()
		      var line as string = in_.ReadLine()
		      var tokens() as string = line.split(chr(9))
		      var reference as string
		      var DOI as string
		      var evidenceTypes as string
		      If tokens.Count() > 1 Then
		        reference = tokens(0)
		        DOI = tokens(1)
		      End if
		      If tokens.Count() > 2 Then
		        evidenceTypes = tokens(2)
		      End if
		      
		      //extract year
		      var year as string
		      var pYstart as integer = reference.IndexOf(" (")
		      var pYend as integer = reference.IndexOf(").")
		      If pYstart > 0 and pYend > 0 and pYend - pYstart > 2 Then
		        year = reference.Middle(pYstart + 2, pYend - pYstart - 2)
		      End if
		      
		      //extract evidence types
		      var types() as string = evidenceTypes.split("][")
		      
		      For i as integer = 0 to types.Count()-1
		        var type as string = types(i)
		        If not type.BeginsWith("[") then
		          type = "[" + type
		        End if
		        If not type.EndsWith("]", ComparisonOptions.CaseSensitive, Locale.Current) then
		          type = type + "]"
		        End if
		        types(i) = type
		      Next
		      If reference.Length > 0 Then
		        insertReference(MotifID, reference, year, DOI, types) // Make function
		      End if
		    Wend
		    in_.Close()
		    If error.Length() > 0 Then
		      error = "The error was occured while insertion of References. Error: " + error
		      return false
		    End if
		  End If
		  
		  //import curators
		  
		  var fileCurators as FolderItem = workFolder.Child(dirName + ".cur")
		  If MotifID > 0 and fileCurators<>Nil Then
		    var in_ as TextInputStream
		    in_ = in_.Open(fileCurators)
		    While not in_.EndOfFile()
		      var line as string = in_.readLine()
		      var tokens() as string = line.split(chr(9))
		      var name as string = ""
		      var email as string
		      var type as string
		      
		      If tokens.Count() > 0 Then
		        name = tokens(0)
		      End if
		      If tokens.Count() > 2 Then
		        email = tokens(1)
		        type = tokens(2)
		      End if
		      If name.Length > 0 Then
		        var l() as string = type.Split(": ")
		        If l.Count() > 1 Then
		          insertCurator(MotifID, name, email, l(0), l(1)) // Make function
		        Else
		          insertCurator(MotifID, name, email, l(0), "")
		        End if
		      End if
		    Wend
		    in_.Close()
		    If error.Length() > 0 Then
		      error = "The error was occured while insertion of Curators. Error: " + error
		      return false
		    End if
		    
		  End If
		  
		  return true
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub insertCurator(idMotif as integer, name as string, email as string, date as string, type as string)
		  var query as new MSSQLServerDatabase
		  var sqlReqest as string
		  If not OpenDatabase(query) Then
		    return
		  End If
		  var ID as integer
		  try
		    sqlReqest = "DECLARE @ResultForPos INT; SET @ResultForPos=0; "
		    sqlReqest = sqlReqest + "EXECUTE pr_addCurator @ResultForPos OUTPUT, '"+name+"', '"+email+"'; SELECT @ResultForPos;"
		    var result as RowSet = query.SelectSQL(sqlReqest)
		    ID = result.ColumnAt(0).IntegerValue
		  catch err As DatabaseException
		    error = "The error was occured while insertion of curator "+type+". Error: " + err.Message
		    query.Close()
		    return
		  End try
		  try
		    sqlReqest = "INSERT INTO Motif_curators ([idCurator], [idMotif], [Date], [Type]) VALUES("+ID.ToString+", "+idMotif.ToString+", '"+date+"', '"+type+"')"
		    query.ExecuteSQL(sqlReqest)
		  catch err As DatabaseException
		    error = "The error was occured while insertion of curator "+type+". Error: " + err.Message
		    query.Close()
		    return
		  End try
		  query.Close()
		  return
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function insertEvidenceType(type as string) As integer
		  var query as new MSSQLServerDatabase
		  var sqlReqest as string
		  If not OpenDatabase(query) Then
		    return -1
		  End If
		  var ID as integer
		  try
		    sqlReqest = "DECLARE @ResultForPos INT; SET @ResultForPos=0; "
		    sqlReqest = sqlReqest + "EXECUTE pr_addEvidenceType @ResultForPos OUTPUT, '"+type+"'; SELECT @ResultForPos;"
		    var result as RowSet = query.SelectSQL(sqlReqest)
		    ID = result.ColumnAt(0).IntegerValue
		  catch err As DatabaseException
		    error = "The error was occured while insertion of curator "+type+". Error: " + err.Message
		    query.Close()
		    return -1
		  End try
		  query.Close()
		  return ID
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub InsertReference(idMotif as integer, reference as string, year as string, DOI as string, evidenceTypes() as string)
		  var query as new MSSQLServerDatabase
		  var sqlReqest as string
		  If not OpenDatabase(query) Then
		    return
		  End If
		  var referenceID as integer
		  try
		    sqlReqest = "DECLARE @ResultForPos INT; SET @ResultForPos=0; "
		    sqlReqest = sqlReqest + "EXECUTE pr_addReference @ResultForPos OUTPUT, '"+reference+"', "+year+", '"+DOI+"'; SELECT @ResultForPos;"
		    var result as RowSet = query.SelectSQL(sqlReqest)
		    referenceID = result.ColumnAt(0).IntegerValue
		  catch err As DatabaseException
		    error = "The error was occured while insertion of reference "+DOI+". Error: " + err.Message
		    query.Close()
		    return
		  End try
		  var motifReferenceID as integer
		  try
		    sqlReqest = "INSERT INTO Motif_references ([idMotif] ,[idPublication]) VALUES ("+idMotif.ToString+", "+referenceID.ToString+")"
		    sqlReqest = sqlReqest + "SELECT MAX(idMotif_reference) FROM Motif_references;"
		    var result as RowSet = query.SelectSQL(sqlReqest)
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
		      sqlReqest = "INSERT INTO Motif_references_evidence ([idMotif_reference], [idEvidence_type]) VALUES ("+motifReferenceID.ToString+", "+evidenceTypeID.ToString+")"
		      sqlReqest = sqlReqest + "SELECT MAX(idMotif_reference) FROM Motif_references;"
		      query.ExecuteSQL(sqlReqest)
		    catch err As DatabaseException
		      error = "The error was occured while insertion of publication reference "+referenceID.ToString+". Error: " + err.Message
		      query.Close()
		      return
		    End try
		    query.Close()
		  Next
		  query.Close()
		  return
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function insertSettings(name as string, value as string, program as string, parentID as integer) As boolean
		  var query as new MSSQLServerDatabase
		  If not OpenDatabase(query) Then
		    return false
		  End If
		  try
		    query.ExecuteSQL("INSERT INTO Settings([idMotif], [Name], [Value], [Program]) VALUES ("+parentID.ToString()+", '"+name+"', '"+value+"', '"+program+"')")
		    query.Close()
		    return true
		  catch err As DatabaseException
		    error = "The error was occured while insertion of parameter "+name+". Error: " + err.Message
		    query.Close()
		    return false
		  End try
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function OpenDatabase(db as MSSQLServerDatabase) As boolean
		  db.Host = "217.21.43.34\SQLEXPRESS"
		  db.Port = 1433
		  db.DatabaseName = "sigmo_id_1"
		  db.UserName = "sigmo_id_oper"
		  db.Password = "rfebiosigmo#id#"
		  Try
		    db.Connect
		    return true
		  Catch error As DatabaseException
		    warnings.AddRow("The error occured during connecting to the database. Check settings or connection.")
		    return false
		  End try
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function WriteSigToDB(path as string, fileName as string) As boolean
		  var sigFilePath as string = path+"/"+fileName
		  var sigFile as new FolderItem(sigFilePath)
		  If sigFile<>Nil Then
		    var sl() as string = fileName.split("_")
		    var query as new MSSQLServerDatabase()
		    var sqlReqest as string
		    If not OpenDatabase(query) Then
		      return false
		    End If
		    var TFID as integer = 0
		    If sl.Count>1 Then
		      TFID = getIDFromDB("SELECT idTF FROM TFs WHERE Name", sl(1))
		      If TFID > 0 Then
		        warnings.AddRow("Transcription factor "+sl(1)+" has been already imported")
		        return true
		      End If
		    Else
		    End If
		    var CRTagID as integer = 0
		    try
		      sqlReqest = "DECLARE @ResultForPos INT; SET @ResultForPos=0; EXECUTE pr_addCRTag @ResultForPos OUTPUT, '"+sl(0)+"'; SELECT @ResultForPos;"
		      var result as RowSet = query.SelectSQL(sqlReqest)
		      CRTagID = result.ColumnAt(0).IntegerValue
		    catch err As DatabaseException
		      error = err.Message
		    End try
		    
		    //reading info
		    var info as string = ""
		    info = TextInputStream.Open(sigFile).ReadAll()
		    info = info.ReplaceAll("'s", " is")
		    info = info.ReplaceAll("'", " ")
		    
		  Else
		    error = "No .sig file"
		    return false
		  End If
		End Function
	#tag EndMethod


	#tag Note, Name = TODO
		Change class strucure to best use with 'Export to database' button in ProfileWizardWin
		
	#tag EndNote


	#tag Property, Flags = &h21
		Private error As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private files() As string
	#tag EndProperty

	#tag Property, Flags = &h21
		Private restart As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		warnings() As String
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
	#tag EndViewBehavior
End Class
#tag EndClass
