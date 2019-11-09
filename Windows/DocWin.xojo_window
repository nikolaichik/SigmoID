#tag Window
Begin Window DocWin
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   609
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   1937088511
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   True
   MinWidth        =   64
   Placement       =   0
   Resizeable      =   True
   Title           =   ""
   Visible         =   True
   Width           =   973
   Begin TextArea Editor
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   False
      BackColor       =   &cFFFF00FF
      Bold            =   False
      Border          =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   596
      HelpTag         =   ""
      HideSelection   =   True
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   -1
      LimitText       =   0
      LineHeight      =   0.0
      LineSpacing     =   1.0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Mask            =   ""
      Multiline       =   True
      ReadOnly        =   False
      Scope           =   0
      ScrollbarHorizontal=   False
      ScrollbarVertical=   True
      Styled          =   True
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "Courier"
      TextSize        =   12.0
      TextUnit        =   0
      Top             =   -1
      Transparent     =   "True"
      Underline       =   False
      UseFocusRing    =   False
      Visible         =   True
      Width           =   975
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Activate()
		  
		End Sub
	#tag EndEvent

	#tag Event
		Function CancelClose(appQuitting as Boolean) As Boolean
		  'if NothingToChange then
		  ''just close the win
		  'else
		  'If ContentsChanged then
		  'if not SaveNone then
		  'Dim d as New MessageDialog  //declare the MessageDialog object
		  'Dim b as MessageDialogButton //for handling the result
		  'd.icon=MessageDialog.GraphicCaution   //display warning icon
		  'd.ActionButton.Caption=kSave
		  'd.CancelButton.Visible=True     //show the Cancel button
		  'd.CancelButton.Caption=kCancel
		  'd.AlternateActionButton.Visible=True   //show the "Don't Save" button
		  'd.AlternateActionButton.Caption=kDontSave
		  'd.Message=kSaveChanges+me.title+"?"
		  ''d.Explanation="If you don't save, your changes will be lost. "
		  '
		  'b=d.ShowModalwithin(self)     //display the dialog
		  'Select Case b //determine which button was pressed.
		  'Case d.ActionButton
		  '//user pressed Save
		  'DocWin(Window(1)).SaveFile Window(1).Title, False
		  'Case d.AlternateActionButton
		  '//user pressed Don't Save
		  'Case d.CancelButton
		  'Return True //cancel the quit
		  'End select
		  'EnableMenuItems //to properly disable menus when last win is closed
		  '
		  'End if
		  'end if
		  'end if
		End Function
	#tag EndEvent

	#tag Event
		Sub Close()
		  'if NothingToChange then
		  ''just close the win
		  'else
		  'DocWinTop=me.Top
		  'DocWinLeft=me.Left
		  'DocWinWidth=me.Width
		  'DocWinHeight=me.Height
		  'end if
		  '
		  'app.RemoveWindowMenu(self)
		End Sub
	#tag EndEvent

	#tag Event
		Sub EnableMenuItems()
		  if len(Editor.text)>0 then
		    editSelectAll.enable
		    'FileSaveAs.Enable
		    'FilePrint.Enable
		  end
		  If ContentsChanged Then
		    'FileSave.Enable
		  End if
		  FilePageSetup.Enable
		  FileClose.enable
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  'me.Top=DocWinTop
		  'me.Left=DocWinLeft
		  'me.Width=DocWinWidth
		  'me.Height=DocWinHeight
		  
		  
		End Sub
	#tag EndEvent


	#tag MenuHandler
		Function FileClose() As Boolean Handles FileClose.Action
			self.Close
			
			Return True
			
		End Function
	#tag EndMenuHandler


	#tag Method, Flags = &h0
		Sub SaveFile(FileName as string, DisplaySaveDialog As Boolean)
		  'disabled after converting to TextArea because of StyledTextPrinter
		  
		  'Dim f as folderitem
		  'If Document = Nil or DisplaySaveDialog then
		  'f=GetSaveFolderItem("text",FileName)
		  'If f <> nil then //if the user clicked Save
		  'Title=f.Name
		  'Document=f
		  'End if
		  'End if
		  'If Document <> nil then
		  ''Document.SaveStyledEditField Editor
		  'ContentsChanged=False
		  'End if
		  'Exception err
		  'ExceptionHandler(err,"DocWin:SaveFile")
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		ContentsChanged As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Document As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		Footer As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Header As string
	#tag EndProperty

	#tag Property, Flags = &h0
		NothingToChange As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		PageSetup As String
	#tag EndProperty


#tag EndWindowCode

#tag Events Editor
	#tag Event
		Sub Open()
		  
		End Sub
	#tag EndEvent
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  
		  
		End Function
	#tag EndEvent
	#tag Event
		Sub TextChange()
		  ContentsChanged=true
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="BackColor"
		Visible=true
		Group="Background"
		InitialValue="&hFFFFFF"
		Type="Color"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Appearance"
		Type="Picture"
		EditorType="Picture"
	#tag EndViewProperty
	#tag ViewProperty
		Name="CloseButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="ContentsChanged"
		Group="Behavior"
		InitialValue="0"
		Type="boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Footer"
		Group="Behavior"
		Type="string"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Frame"
		Visible=true
		Group="Frame"
		InitialValue="0"
		Type="Integer"
		EditorType="Enum"
		#tag EnumValues
			"0 - Document"
			"1 - Movable Modal"
			"2 - Modal Dialog"
			"3 - Floating Window"
			"4 - Plain Box"
			"5 - Shadowed Box"
			"6 - Rounded Window"
			"7 - Global Floating Window"
			"8 - Sheet Window"
			"9 - Metal Window"
			"11 - Modeless Dialog"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreen"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreenButton"
		Visible=true
		Group="Frame"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackColor"
		Visible=true
		Group="Background"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Header"
		Group="Behavior"
		Type="string"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Position"
		InitialValue="400"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Interfaces"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LiveResize"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Visible=true
		Group="Appearance"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxHeight"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxWidth"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBar"
		Visible=true
		Group="Appearance"
		Type="MenuBar"
		EditorType="MenuBar"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinHeight"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinWidth"
		Visible=true
		Group="Size"
		InitialValue="64"
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
		Name="NothingToChange"
		Group="Behavior"
		InitialValue="0"
		Type="boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="PageSetup"
		Group="Behavior"
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Placement"
		Visible=true
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
		EditorType="Enum"
		#tag EnumValues
			"0 - Default"
			"1 - Parent Window"
			"2 - Main Screen"
			"3 - Parent Window Screen"
			"4 - Stagger"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Resizeable"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Appearance"
		InitialValue="Untitled"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Position"
		InitialValue="600"
		Type="Integer"
	#tag EndViewProperty
#tag EndViewBehavior
