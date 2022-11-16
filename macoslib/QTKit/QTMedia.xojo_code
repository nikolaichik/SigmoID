#tag Class
Class QTMedia
Inherits NSObject
	#tag Method, Flags = &h21
		Private Shared Function Resolve(symbol as String) As String
		  if QTKit.Load then
		    dim b as CFBundle = CFBundle.NewCFBundleFromID(QTKit.BundleID)
		    if b <> nil then
		      return b.StringPointerRetained(symbol)
		    else
		      return ""
		    end if
		  else
		    return ""
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function TypeVideo() As String
		  static type as String = Resolve("QTMediaTypeVideo")
		  return type
		End Function
	#tag EndMethod


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
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
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
