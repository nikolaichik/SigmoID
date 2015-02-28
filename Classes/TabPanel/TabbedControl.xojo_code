#tag Interface
Protected Interface TabbedControl
	#tag Method, Flags = &h0
		Sub TabChange(TabNo as integer)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub TabRemove(TabNo as integer)
		  
		End Sub
	#tag EndMethod


	#tag Note, Name = Tabbed Control
		This interface should be implemented by all controls "placed" onto cTabPanel
	#tag EndNote


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
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
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Interface
#tag EndInterface
