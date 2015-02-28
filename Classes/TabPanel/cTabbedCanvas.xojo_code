#tag Class
Protected Class cTabbedCanvas
Inherits Canvas
Implements TabbedControl
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  dim t,delta as integer
		  
		  delta=20
		  #if TargetMacOS then
		    delta=40   'large delta for the old mac
		  #endif
		  
		  t=Ticks
		  if t-OldTicks <delta then                   '1/2 of sec
		    boo=false
		    DubleClick X,Y
		  else
		    boo=true
		    MouseDown X,Y
		  end
		  Oldticks=t
		  return boo
		End Function
	#tag EndEvent

	#tag Event
		Sub Open()
		  me.cPanelIndex=-1
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub TabChange(TabNo as integer)
		  // Part of the TabbedControl interface.
		  if TabNo=cPanelIndex AND Tabno>0 then
		    if me.visible=false then
		      me.Enabled=true
		      me.visible=true
		      me.Invalidate
		    end if
		  else
		    if me.enabled=true then
		      me.visible=false
		      me.enabled=false
		      me.Invalidate
		    end if
		  end
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub TabRemove(TabNo as integer)
		  // Part of the TabbedControl interface.
		  if TabNo=cPanelIndex then
		    me.visible=false 'was true
		    me.Enabled=false
		    me.cPanelIndex=-1
		  elseif Tabno<cPanelIndex then
		    me.cPanelIndex=me.cPanelIndex-1
		  end
		  
		  
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event DubleClick(X as integer, Y As integer)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event MouseDown(X as integer, Y As integer)
	#tag EndHook


	#tag Property, Flags = &h0
		Boo As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		cPanelIndex As Integer = -1
	#tag EndProperty

	#tag Property, Flags = &h0
		OldTicks As Integer
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="AcceptFocus"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AcceptTabs"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutoDeactivate"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Backdrop"
			Visible=true
			Group="Appearance"
			Type="Picture"
			EditorType="Picture"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Boo"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="cPanelIndex"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DoubleBuffer"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Enabled"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="EraseBackground"
			Visible=true
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Visible=true
			Group="Position"
			InitialValue="100"
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
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="OldTicks"
			Group="Behavior"
			InitialValue="0"
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
			Name="Top"
			Visible=true
			Group="Position"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Transparent"
			Visible=true
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UseFocusRing"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
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
