#tag Class
Class AskSaveChangesDialog
Inherits NavigationDialog
	#tag Event
		Function CreateDialog(CreationOptions as NavDialogCreationOptions, eventHandler as Ptr, UserData as Ptr) As Ptr
		  #if targetMacOS
		    soft declare function NavCreateAskSaveChangesDialog lib CarbonLib (inOptions as Ptr, inAction as Integer, inEventProc as Ptr, inClientData as Ptr, ByRef outDialog as Ptr) as Integer
		    
		    dim theRef as Ptr
		    dim OSStatus as Integer = NavCreateAskSaveChangesDialog(creationOptions, me.ActionState, eventHandler, UserData, theRef)
		    If OSStatus <> 0 then
		      theRef = nil
		      System.Log System.LogLevelError, "NavigationDialog.Show: NavCreateChooseVolumeDialog returned error " + Str(OSStatus) + "."
		    End if
		    return theRef
		    
		  #else
		    #pragma unused CreationOptions
		    #pragma unused eventHandler
		    #pragma unused UserData
		  #endif
		End Function
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub Constructor(action as Integer = 1)
		  me.ActionState = action
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private ActionState As Integer
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
