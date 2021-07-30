#tag Class
Protected Class ShellTh
Inherits Thread
	#tag Event
		Sub Run()
		  While not me.started
		    me.started = True
		    me.execute
		  Wend
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub execute()
		  dim Sh as New Shell
		  Sh.mode=0
		  Sh.TimeOut=-1
		  
		  Sh.execute("bash --login -c "+chr(34)+cli+chr(34))
		  
		  'shResult=me.result
		  'shError=me.error
		  
		  me.error=Sh.errorCode
		  me.result=Sh.result
		  me.finished = True
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		cli As string
	#tag EndProperty

	#tag Property, Flags = &h0
		error As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		finished As boolean = False
	#tag EndProperty

	#tag Property, Flags = &h0
		result As String
	#tag EndProperty

	#tag Property, Flags = &h0
		started As boolean = false
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Priority"
			Visible=true
			Group="Behavior"
			InitialValue="5"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="StackSize"
			Visible=true
			Group="Behavior"
			InitialValue="0"
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
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue=""
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
			Name="cli"
			Visible=false
			Group="Behavior"
			InitialValue="False"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="finished"
			Visible=false
			Group="Behavior"
			InitialValue="False"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="error"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="result"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="started"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
