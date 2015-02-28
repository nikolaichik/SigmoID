#tag Class
Protected Class cTabbedCustomEditField
Inherits CustomEditField
Implements TabbedControl
	#tag MenuHandler
		Function EditPaste() As Boolean Handles EditPaste.Action
			
			EditPaste
			Return True 'to block automatic paste
			
		End Function
	#tag EndMenuHandler


	#tag Method, Flags = &h0
		Sub TabChange(TabNo as integer)
		  // Part of the TabbedControl interface.
		  
		  
		  if TabNo=cPanelIndex then
		    if me.visible=false then
		      me.Enabled=true
		      me.visible=true
		    end if
		    me.SetFocus
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
		    me.close
		  elseif Tabno<cPanelIndex then
		    me.cPanelIndex=me.cPanelIndex-1
		  end
		  
		  
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event EditPaste()
	#tag EndHook


	#tag Property, Flags = &h0
		cPanelIndex As Integer = 0
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
			Name="AutoCloseBrackets"
			Visible=true
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutocompleteAppliesStandardCase"
			Visible=true
			Group="Behavior"
			InitialValue="true"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutoDeactivate"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutoIndentNewLines"
			Visible=true
			Group="Behavior"
			InitialValue="true"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BackColor"
			Visible=true
			Group="Appearance"
			InitialValue="&cffffff"
			Type="color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Backdrop"
			Visible=true
			Group="Appearance"
			Type="Picture"
			EditorType="Picture"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Border"
			Visible=true
			Group="Appearance"
			InitialValue="true"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BorderColor"
			Visible=true
			Group="Appearance"
			InitialValue="&h888888"
			Type="color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BracketHighlightColor"
			Visible=true
			Group="Behavior"
			InitialValue="&cFFFF00"
			Type="color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CaretColor"
			Visible=true
			Group="Appearance"
			InitialValue="&c000000"
			Type="color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CaretLine"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CaretPos"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="cefSelLength"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="cefSelStart"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CharsInLine"
			Group="Behavior"
			InitialValue="100"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CharWidth"
			Group="Behavior"
			InitialValue="0"
			Type="double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Circular"
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ClearHighlightedRangesOnTextChange"
			Visible=true
			Group="Behavior"
			InitialValue="true"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="cPanelIndex"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="currcaretpos"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DirtyLinesColor"
			Visible=true
			Group="Appearance"
			InitialValue="&cFF9999"
			Type="color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DisplayDirtyLines"
			Visible=true
			Group="Appearance"
			InitialValue="false"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DisplayInvisibleCharacters"
			Visible=true
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DisplayLineNumbers"
			Visible=true
			Group="Appearance"
			InitialValue="true"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DisplayRightMarginMarker"
			Visible=true
			Group="Appearance"
			InitialValue="false"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DoubleBuffer"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="EnableAutocomplete"
			Visible=true
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Enabled"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="EnableLineFoldings"
			Visible=true
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="EraseBackground"
			Visible=true
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="GutterBackgroundColor"
			Visible=true
			Group="Appearance"
			InitialValue="&cEEEEEE"
			Type="color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="GutterSeparationLineColor"
			Visible=true
			Group="Appearance"
			InitialValue="&c888888"
			Type="Color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="GutterWidth"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="hasFocus"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HeaderHeight"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
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
			Name="HighlightBlocksOnMouseOverGutter"
			Visible=true
			Group="Behavior"
			InitialValue="true"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HighlightMatchingBrackets"
			Visible=true
			Group="Behavior"
			InitialValue="true"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HighlightMatchingBracketsMode"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType="Enum"
			#tag EnumValues
				"0 - Circle"
				"1 - Highlight"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="ignoreRepaint"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
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
			Name="leftMarginOffset"
			Visible=true
			Group="Appearance"
			InitialValue="4"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LineNumbersColor"
			Visible=true
			Group="Appearance"
			InitialValue="&c888888"
			Type="color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LineNumbersTextFont"
			Visible=true
			Group="Appearance"
			InitialValue="System"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LineNumbersTextSize"
			Visible=true
			Group="Appearance"
			InitialValue="9"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LineNumOffset"
			Group="Behavior"
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
			Name="MaxVisibleLines"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Multiline"
			Group="Behavior"
			InitialValue="true"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="NeedsRedrawing"
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Opening"
			Group="Behavior"
			InitialValue="true"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ReadOnly"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RightMarginAtPixel"
			Visible=true
			Group="Appearance"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RightScrollMargin"
			Visible=true
			Group="Appearance"
			InitialValue="150"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RulerPic"
			Group="Behavior"
			InitialValue="0"
			Type="picture"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ScrollPosition"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ScrollPositionX"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SelLength"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SelLength2"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Selstart"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SelText"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Stats"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
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
			Name="TabWidth"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Text"
			Visible=true
			Group="Appearance"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextColor"
			Visible=true
			Group="Appearance"
			InitialValue="&h000000"
			Type="color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextFont"
			Visible=true
			Group="Appearance"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextHeight"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextLength"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextSelectionColor"
			Visible=true
			Group="Appearance"
			InitialValue="&h000000"
			Type="color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextSize"
			Visible=true
			Group="Appearance"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ThickInsertionPoint"
			Visible=true
			Group="Appearance"
			InitialValue="true"
			Type="boolean"
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
