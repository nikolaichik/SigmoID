#tag Class
Class NSWrapperForObject
Inherits NSObject
	#tag Method, Flags = &h1000
		Sub Constructor(v as variant)
		  self.Constructor(NSObject.Initialize(NSObject.Allocate("NSObject")), hasOwnership)
		  
		  RBObject = v
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function VariantValue() As variant
		  return  RBObject
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		RBObject As variant
	#tag EndProperty


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
