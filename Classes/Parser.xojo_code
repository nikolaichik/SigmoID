#tag Class
Protected Class Parser
	#tag Method, Flags = &h0
		Sub Constructor()
		  outputMap = new Dictionary
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Destructor()
		  inputStream.Close()
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetFloatParameter(name as string) As string
		  var par as string = getNextParameter(name)
		  var parl() as string = par.split(" ")
		  return parl(0)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetNextParameter(name as string) As string
		  var line as string = ""
		  var found as boolean = false
		  If restart Then
		    inputStream.BytePosition = 0
		  End If
		  
		  While not inputStream.EndOfFile()
		    line = inputStream.Readline()
		    
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
		Function ParseFolder(workFolder as folderItem, dirName as string) As boolean
		  var inputFolder as FolderItem
		  var sl() as string = dirName.split("_")
		  
		  outputMap.Value("dirName") = dirName
		  outputMap.Value("sl") = sl
		  //reading info
		  
		  var info as string = ""
		  inputFolder = workFolder.Child(dirName + ".info")
		  If inputFolder<> Nil Then
		    inputStream = TextInputStream.Open(inputFolder)
		    info = inputStream.ReadAll()
		    info = info.ReplaceAll("'s", " is")
		    info = info.ReplaceAll("'", " ")
		    inputStream.Close()
		  End If
		  outputMap.Value("info") = info
		  
		  
		  inputFolder = workFolder.Child(dirName + ".options")
		  var HMM_ACC as string = ""
		  var CRTag_coord as string = ""
		  var Sequence as string = ""
		  var ProteinID as string = ""
		  
		  //reading options
		  
		  If inputFolder<>Nil Then
		    inputStream = TextInputStream.Open(inputFolder)
		    HMM_ACC = getNextParameter("HMM_ACC")
		    If HMM_ACC.Length=0 Then
		      warnings.AddRow("HMM_ACC was not found while importing "+sl(1)+". Import is skipped.")
		      return true
		    End If
		    var HMM_ACC_sl() as string = HMM_ACC.split(".")
		    HMM_ACC = HMM_ACC_sl(0)
		    CRTag_coord = getNextParameter("CRtagCoords")
		    ProteinID = getNextParameter("protein_id")
		    Sequence = getNextParameter("Seed_protein")
		    inputStream.Close()
		    outputMap.Value("HMM_ACC") = HMM_ACC
		    outputMap.Value("CRTag_coord") = CRTag_coord
		    outputMap.Value("ProteinID") = ProteinID
		    outputMap.Value("Sequence") = Sequence
		  Else
		    error = "File "+dirName+".options was not found. Import was not performed."
		    return false
		  End If
		  
		  //reading HMM
		  var hmm as string = ""
		  inputFolder = workFolder.Child(dirName + ".hmm")
		  if inputFolder <> Nil Then
		    inputStream = TextInputStream.Open(inputFolder)
		    hmm = inputStream.ReadAll()
		    outputMap.Value("hmm") = hmm
		    inputStream.Close()
		  End If
		  
		  //reading PWM
		  var pwm as string = ""
		  inputFolder = workFolder.Child("meme.txt")
		  if inputFolder <> Nil Then
		    inputStream = TextInputStream.Open(inputFolder)
		    pwm = inputStream.ReadAll()
		    outputMap.Value("pwm") = pwm
		    inputStream.Close()
		  End If
		  
		  
		  //writing operators
		  inputFolder = workFolder.Child(dirName + ".fasta")
		  If inputFolder<>Nil Then
		    inputStream = TextInputStream.Open(inputFolder)
		    var id() as string
		    var oper() as string
		    While not inputStream.EndOfFile()
		      var id_temp as string = inputStream.ReadLine()
		      id_temp = id_temp.right(id_temp.Length() - 1)
		      id_temp = id_temp.ReplaceAll("'s", " is")
		      id_temp = id_temp.ReplaceAll("'", " ")
		      var oper_temp as string = inputStream.ReadLine()
		      If id_temp.Length > 0 and oper_temp.Length > 0 Then
		        id.AddRow(id_temp)
		        oper.AddRow(oper_temp)
		      End If
		    Wend
		    inputStream.Close()
		    outputMap.Value("id") = id
		    outputMap.Value("operator") = oper
		  End If
		  
		  
		  //writing settings
		  
		  inputFolder = workFolder.Child(dirName + ".options") // dirName+".options" should exist, becouse it's checked earlier
		  inputStream = TextInputStream.Open(inputFolder)
		  
		  //    nhmmer options 
		  var TC as string = getFloatParameter("#=GF TC")
		  var GA as string = getFloatParameter("#=GF GA")
		  var NC as string = getFloatParameter("#=GF NC")
		  var cut_ga as string = getNextParameter("nhmmer.--cut_ga")
		  //    HmmGen options
		  var HmmGenP as string = getNextParameter("HmmGen.-p")
		  var HmmGenI as string = getNextParameter("HmmGen.-i")
		  var HmmGenF as string = getNextParameter("HmmGen.-f")
		  var HmmGenQ as string = getNextParameter("HmmGen.-q")
		  var mastGenV as string = getNextParameter("mastGen.-V")
		  
		  outputMap.Value("TC") = TC
		  outputMap.Value("GA") = GA
		  outputMap.Value("NC") = NC
		  outputMap.Value("cut_ga") = cut_ga
		  outputMap.Value("HmmGenP") = HmmGenP
		  outputMap.Value("HmmGenI") = HmmGenI
		  outputMap.Value("HmmGenF") = HmmGenF
		  outputMap.Value("HmmGenQ") = HmmGenQ
		  outputMap.Value("mastGenV") = mastGenV
		  
		  inputStream.Close()
		  
		  // References
		  inputFolder = workFolder.Child(dirName + ".refs")
		  If inputFolder<>Nil Then
		    inputStream = TextInputStream.Open(inputFolder)
		    var reference() as string
		    var DOI() as string
		    var evidenceTypes() as string
		    var year() as string
		    While not inputStream.EndOfFile()
		      var line as string = inputStream.ReadLine()
		      var tokens() as string = line.split(chr(9))
		      var reference_temp as string
		      var DOI_temp as string
		      var evidenceTypes_temp as string
		      If tokens.Count() > 1 Then
		        reference_temp = tokens(0)
		        DOI_temp = tokens(1)
		      End if
		      If tokens.Count() > 2 Then
		        evidenceTypes_temp = tokens(2)
		      End if
		      
		      //extract year
		      var year_temp as string
		      var pYstart as integer = reference.IndexOf(" (")
		      var pYend as integer = reference.IndexOf(").")
		      If pYstart > 0 and pYend > 0 and pYend - pYstart > 2 Then
		        year_temp = reference_temp.Middle(pYstart + 2, pYend - pYstart - 2)
		      End if
		      
		      reference.AddRow(reference_temp)
		      DOI.AddRow(DOI_temp)
		      evidenceTypes.AddRow(evidenceTypes_temp)
		      year.AddRow(year_temp)
		    Wend
		    inputStream.Close()
		    outputMap.Value("reference") = reference
		    outputMap.Value("DOI") = DOI
		    outputMap.Value("type_ref") = evidenceTypes
		    outputMap.Value("year") = year
		  End If
		  
		  //import curators
		  
		  inputFolder = workFolder.Child(dirName + ".cur")
		  If inputFolder<>Nil Then
		    inputStream = TextInputStream.Open(inputFolder)
		    var name() as string
		    var email() as string
		    var type() as string
		    While not inputStream.EndOfFile()
		      var line as string = inputStream.readLine()
		      var tokens() as string = line.split(chr(9))
		      var name_temp as string = ""
		      var email_temp as string
		      var type_temp as string
		      
		      If tokens.Count() > 0 Then
		        name_temp = tokens(0)
		      End if
		      If tokens.Count() > 2 Then
		        email_temp = tokens(1)
		        type_temp = tokens(2)
		      End if
		      If name_temp.Length > 0 Then
		        name.AddRow(name_temp)
		        email.AddRow(email_temp)
		        type.AddRow(type_temp)
		      End if
		    Wend
		    inputStream.Close()
		    outputMap.Value("name") = name
		    outputMap.Value("email") = email
		    outputMap.Value("type_cur") = type
		    
		  End If
		  
		  return true
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		error As string
	#tag EndProperty

	#tag Property, Flags = &h21
		Private inputStream As TextInputStream
	#tag EndProperty

	#tag Property, Flags = &h0
		outputMap As Dictionary
	#tag EndProperty

	#tag Property, Flags = &h21
		Private restart As boolean = false
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
