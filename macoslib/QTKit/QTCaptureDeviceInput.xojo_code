#tag Class
Class QTCaptureDeviceInput
Inherits NSObject
	#tag Method, Flags = &h1000
		Sub Constructor(device as QTCaptureDevice)
		  #If targetMacOS and targetX86
		    declare function alloc lib CocoaLib selector "alloc" (class_id as Ptr) as Ptr
		    declare function initWithDevice lib CocoaLib selector "initWithDevice:" (obj_id as Ptr, device as Ptr) as Ptr
		    
		    dim p as Ptr = initWithDevice(alloc(Cocoa.NSClassFromString("QTCaptureDeviceInput")), device)
		    if p <> nil then
		      super.Constructor(p, NSObject.hasOwnership)
		    end if
		  #endif
		  
		End Sub
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
