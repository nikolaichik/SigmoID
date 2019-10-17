#tag Class
Protected Class ChipMSettings
	#tag Property, Flags = &h0
		gcPercent As string = "uniform"
	#tag EndProperty

	#tag Property, Flags = &h0
		jarPath As string
	#tag EndProperty

	#tag Property, Flags = &h0
		mode As string = "mask"
	#tag EndProperty

	#tag Property, Flags = &h0
		motifLength As string = "16:23,22:17,18:21"
	#tag EndProperty

	#tag Property, Flags = &h0
		motifShape As string = "double"
	#tag EndProperty

	#tag Property, Flags = &h0
		stepLimit As string = "20"
	#tag EndProperty

	#tag Property, Flags = &h0
		threadCount As string = "2"
	#tag EndProperty

	#tag Property, Flags = &h0
		tryLimit As string = "200"
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="gcPercent"
			Visible=false
			Group="Behavior"
			InitialValue="uniform"
			Type="string"
			EditorType="MultiLineEditor"
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
			Name="jarPath"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
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
			Name="mode"
			Visible=false
			Group="Behavior"
			InitialValue="mask"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="motifLength"
			Visible=false
			Group="Behavior"
			InitialValue="16:23,22:17,18:21"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="motifShape"
			Visible=false
			Group="Behavior"
			InitialValue="double"
			Type="string"
			EditorType="MultiLineEditor"
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
			Name="stepLimit"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
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
			Name="threadCount"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
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
			Name="tryLimit"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
