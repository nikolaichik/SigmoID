#tag Class
Protected Class cTabbedSlider
Inherits Slider
Implements TabbedControl
	#tag Event
		Sub Open()
		  me.cPanelIndex=-1
		  #if TargetCocoa then
		    me.top=me.top+3
		  #endif
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub TabChange(TabNo as integer)
		  // Part of the TabbedControl interface.
		  
		  if TabNo=cPanelIndex then
		    if me.visible=false then
		      me.Enabled=true
		      me.visible=true
		    end if
		  else
		    if me.enabled=true then
		      me.visible=false
		      me.enabled=false
		    end if
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub TabRemove(TabNo as integer)
		  // Part of the TabbedControl interface.
		  
		  if TabNo=cPanelIndex then
		    me.visible=false
		    'me.enabled=false
		  elseif Tabno<cPanelIndex then
		    me.cPanelIndex=me.cPanelIndex-1
		  end
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		cPanelIndex As Integer = -1
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="AutoDeactivate"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="cPanelIndex"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Enabled"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Visible=true
			Group="Position"
			InitialValue="24"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HelpTag"
			Visible=true
			Group="Appearance"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			Type="Integer"
			EditorType="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InitialParent"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LineStep"
			Visible=true
			Group="Behavior"
			InitialValue="1"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LiveScroll"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockBottom"
			Visible=true
			Group="Position"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockLeft"
			Visible=true
			Group="Position"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockRight"
			Visible=true
			Group="Position"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockTop"
			Visible=true
			Group="Position"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Maximum"
			Visible=true
			Group="Initial State"
			InitialValue="100"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Minimum"
			Visible=true
			Group="Initial State"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PageStep"
			Visible=true
			Group="Behavior"
			InitialValue="20"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabIndex"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabPanelIndex"
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabStop"
			Visible=true
			Group="Position"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TickStyle"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="TickStyles"
			EditorType="Enum"
			#tag EnumValues
				"0 - None"
				"1 - Top Left"
				"2 - Bottom Right"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Value"
			Visible=true
			Group="Initial State"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Visible"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Visible=true
			Group="Position"
			InitialValue="100"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
