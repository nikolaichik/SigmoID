#tag Class
Protected Class TTshell
Inherits shell
	#tag Event
		Sub Completed()
		  finished=true
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub DataAvailable()
		  'finished=true
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub Constructor(f As FolderItem)
		  inFile = f
		  me.mode=1  'asynchronous: launch and move on
		  me.TimeOut=-1
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RunTomTom()
		  dim cli, TToptions as string
		  
		  TToptions=" -no-ssc -incomplete-scores -min-overlap 14 -internal "
		  
		  cli=tomtomPath+" -oc "+inFile.parent.ShellPath
		  
		  'need to add background model here like this:
		  '-bfile /Users/Home/Documents/SQ2/LacI/LacI_bacgroundModel.markov
		  
		  cli=cli+TToptions+inFile.ShellPath+TTlibString
		  
		  me.execute cli
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Finished As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		inFile As folderitem
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="ExecuteMode"
			Visible=true
			Group=""
			InitialValue=""
			Type="ExecuteModes"
			EditorType="Enum"
			#tag EnumValues
				"0 - Synchronous"
				"1 - Asynchronous"
				"2 - Interactive"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="ExitCode"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Result"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="PID"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsRunning"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Arguments"
			Visible=true
			Group=""
			InitialValue=""
			Type="String"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Backend"
			Visible=true
			Group=""
			InitialValue=""
			Type="String"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Canonical"
			Visible=true
			Group=""
			InitialValue=""
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Finished"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
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
			Name="TimeOut"
			Visible=true
			Group=""
			InitialValue=""
			Type="Integer"
			EditorType="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
