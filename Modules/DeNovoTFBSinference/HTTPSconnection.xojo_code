#tag Class
Protected Class HTTPSconnection
Inherits URLConnection
	#tag Event
		Sub ContentReceived(URL As String, HTTPStatus As Integer, content As String)
		  DeNovoTFBSinference.WebContent=content
		  me.content = content
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Error(e As RuntimeException)
		  DeNovoTFBSinference.HTTPSError=e.Message
		  me.errorMessage = e.Message
		End Sub
	#tag EndEvent

	#tag Event
		Sub FileReceived(URL As String, HTTPStatus As Integer, file As FolderItem)
		  dim instream as TextInputStream
		  instream=TextInputStream.open(file)
		  WebContent=instream.ReadAll
		  instream.Close
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub HeadersReceived(URL As String, HTTPStatus As Integer)
		  Dim content As New Dictionary
		  For Each header As Pair In me.ResponseHeaders
		    content.Value(header.left) = header.right
		  Next
		  me.responseHeadersDict = content
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Function uniprotIDmapping(rawIDs as String, source_ID_type as String, target_ID_type as String) As Dictionary
		  Dim uniqueCodes As New Dictionary
		  Dim convertedCodes() As String
		  Dim codesBatch As String
		  Dim conversionJson As Dictionary
		  Dim rg as New RegEx
		  Dim rgmatch As RegExMatch
		  'match ID part before the dot
		  rg.SearchPattern="\S*(?=\.)"
		  Dim ConvertionResults As New Dictionary
		  Dim logging() As String
		  Dim URL As String = "https://rest.uniprot.org/idmapping/run"
		  Dim postParams As String = "ids=" + rawIDs + "&from=" + source_ID_type +  "&to=" + target_ID_type
		  Dim response_status as New JSONItem
		  
		  ConvertionResults.Value("status") = False
		  ConvertionResults.Value("logs") = ""
		  ConvertionResults.Value("convertedCodes") = ""
		  ConvertionResults.Value("initialCount") = 0
		  ConvertionResults.Value("finalCount") = 0
		  if rawIDs <> "" and rawIDs <> " " then
		    ConvertionResults.Value("initialCount") = str(CountFields(rawIDs, ",") + 1)
		    logging.Append("Attempt to convert " + ConvertionResults.Value("initialCount") + " accession code(s) from " +source_ID_type + " to " +  target_ID_type)
		    me.SetRequestContent(postParams, "application/x-www-form-urlencoded")
		    me.Send("POST", URL)
		    while me.content = "" and me.errorMessage = ""
		      app.DoEvents
		    wend
		    if me.HTTPStatusCode <> 200 then 
		      logging.Append("uniprot id mapping service returned HTTPS error: " + str(me.HTTPStatusCode))
		      ConvertionResults.Value("logs") = join(logging, EndOfLine.UNIX)
		    else
		      ' At first uniprot returns jobId, which could be used to retrieve converted codes, after the job status will be "FINISHED"
		      response_status.Load(me.content)
		      while True
		        me.content = ""
		        me.errorMessage = ""
		        me.Send("GET", "https://rest.uniprot.org/idmapping/status/" + response_status.Value("jobId"))
		        while me.content = "" and me.errorMessage = ""
		          app.DoEvents
		        wend
		        if me.HTTPStatusCode = 200 then
		          Dim jobStatus as New JSONItem
		          jobStatus.Load(me.content)
		          if jobStatus.HasName("jobStatus") then
		            if jobStatus.value("jobStatus") = "RUNNING" then
		              ' Wait 3 sec before check status again
		              App.CurrentThread.Sleep(3000)
		            else
		              exit
		            end
		          elseif jobStatus.HasName("results") then
		            exit
		          end
		        else
		          logging.Append("uniprot id mapping service returned HTTPS error: " + str(me.HTTPStatusCode))
		          logging.Append(me.content)
		          logging.Append(me.errorMessage)
		          ConvertionResults.Value("logs") = join(logging, EndOfLine.UNIX)
		          exit
		        end
		      wend
		      codesBatch = getFlankedText(me.content, "[", "]")
		      me.content = ""
		      me.errorMessage = ""
		      if me.responseHeadersDict <> NIL then
		        if me.responseHeadersDict.hasKey("Link") AND me.responseHeadersDict.HasKey("X-Total-Results") then
		          Dim partURL As String = me.responseHeadersDict.value("Link")
		          partURL = getFlankedText(partURL, "<", "&size=")
		          URL = partURL + "&size=" + me.responseHeadersDict.value("X-Total-Results")
		        end
		      else
		        URL = "https://rest.uniprot.org/idmapping/results/" + response_status.Value("jobId")
		      end
		      me.Send("GET", URL)
		      while  me.content = "" and me.errorMessage = ""
		        app.DoEvents
		      wend
		      if me.HTTPStatusCode <> 200 then
		        logging.Append("uniprot id mapping service returned HTTPS error trying to retrive jobID " + response_status.Value("jobId") + " , code:" + str(me.HTTPStatusCode))
		        logging.Append(errorMessage)
		        ConvertionResults.Value("logs") = join(logging, EndOfLine.UNIX)
		      else
		        'merge codes batch from initial jobstatus request with results retrieved later
		        if codesBatch <> "" then
		          Dim mergedCodes As String = Nthfield(me.Content, "{"+chr(34) + "results" + chr(34) +":[", 2)
		          mergedCodes = "{"+chr(34) + "results" + chr(34) +":[" + codesBatch +","+ mergedCodes
		          conversionJson = ParseJSON(mergedCodes)
		        else
		          conversionJson = ParseJSON(me.Content)
		        end
		        Dim conversionResults() As Variant = conversionJson.Value("results")
		        'filter duplicative matches
		        for each conversionEntry as Dictionary in conversionResults
		          Dim oldID as String = conversionEntry.Value("from")
		          if not uniqueCodes.HasKey(oldID) then
		            uniqueCodes.Value(oldID) = True
		            'don't include id part after dot if present
		            rgmatch=rg.Search(conversionEntry.value("to"))
		            If rgmatch <> Nil Then
		              convertedCodes.append(rgmatch.SubExpressionString(0))
		            Elseif conversionEntry.value("to") <> "" then
		              convertedCodes.Append(conversionEntry.value("to"))
		            End
		          end
		        next
		        if Ubound(convertedCodes) > -1 then
		          ConvertionResults.Value("finalCount") = Str(Ubound(convertedCodes) + 1)
		          logging.Append("resulted in " + ConvertionResults.Value("finalCount") + " unique NCBI accessions. ")
		          ConvertionResults.Value("status") = True
		          ConvertionResults.Value("convertedCodes") = join(convertedCodes, ",")
		        else
		          ConvertionResults.Value("finalCount") = "0"
		          logging.Append("resulted in " + ConvertionResults.Value("finalCount") + " unique NCBI accessions. ")
		        end
		        ConvertionResults.Value("logs") = join(logging, EndOfLine.UNIX)
		      end
		    end
		  else
		    ConvertionResults.Value("logs") = "Input IDs string is empty of Nil"
		  end
		  
		  Return ConvertionResults
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		content As String
	#tag EndProperty

	#tag Property, Flags = &h0
		errorMessage As String
	#tag EndProperty

	#tag Property, Flags = &h0
		responseHeadersDict As Dictionary
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
			Name="AllowCertificateValidation"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="HTTPStatusCode"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="content"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="errorMessage"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
