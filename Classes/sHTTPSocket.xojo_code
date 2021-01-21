#tag Class
Protected Class sHTTPSocket
Inherits HTTPSecureSocket
	#tag ViewBehavior
		#tag ViewProperty
			Name="SSLConnectionType"
			Visible=true
			Group="Behavior"
			InitialValue="3"
			Type="SSLConnectionTypes"
			EditorType="Enum"
			#tag EnumValues
				"1 - SSLv23"
				"3 - TLSv1"
				"4 - TLSv11"
				"5 - TLSv12"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="CertificateFile"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="FolderItem"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="CertificatePassword"
			Visible=true
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="CertificateRejectionFile"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="FolderItem"
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
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Secure"
			Visible=true
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
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
	#tag EndViewBehavior
End Class
#tag EndClass
