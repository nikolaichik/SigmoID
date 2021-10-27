#tag Class
Protected Class BioProsMotifSite
	#tag Property, Flags = &h0
		firstBlockLength As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		firstBlockSeq As String
	#tag EndProperty

	#tag Property, Flags = &h0
		firstBlockStart As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		heading As String
	#tag EndProperty

	#tag Property, Flags = &h0
		interBlockSeq As String
	#tag EndProperty

	#tag Property, Flags = &h0
		secondBlockLength As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		SecondBlockSeq As String
	#tag EndProperty

	#tag Property, Flags = &h0
		secondBlockStart As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		strand As string
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
			Name="strand"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
