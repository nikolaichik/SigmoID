#tag Class
Protected Class ChipMSettings
	#tag Property, Flags = &h0
		gcPercent As string
	#tag EndProperty

	#tag Property, Flags = &h0
		iterLimit As string
	#tag EndProperty

	#tag Property, Flags = &h0
		jarPath As string
	#tag EndProperty

	#tag Property, Flags = &h0
		mode As string
	#tag EndProperty

	#tag Property, Flags = &h0
		motifLength As string
	#tag EndProperty

	#tag Property, Flags = &h0
		motifShape As string
	#tag EndProperty

	#tag Property, Flags = &h0
		runMode As string
	#tag EndProperty

	#tag Property, Flags = &h0
		stepLimit As string
	#tag EndProperty

	#tag Property, Flags = &h0
		threadCount As string
	#tag EndProperty

	#tag Property, Flags = &h0
		tryLimit As string
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="gcPercent"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="iterLimit"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="jarPath"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="mode"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="motifLength"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="motifShape"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="runMode"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="stepLimit"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="threadCount"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="tryLimit"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
