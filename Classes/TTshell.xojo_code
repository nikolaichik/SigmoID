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
			Name="Arguments"
			Visible=true
			Type="String"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Backend"
			Visible=true
			Type="String"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Canonical"
			Visible=true
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Finished"
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Mode"
			Visible=true
			Type="Integer"
			EditorType="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TimeOut"
			Visible=true
			Type="Integer"
			EditorType="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
