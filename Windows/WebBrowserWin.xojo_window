#tag Window
Begin Window WebBrowserWin
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Composite       =   False
   Frame           =   9
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   700
   ImplicitInstance=   True
   LiveResize      =   "True"
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   149806200
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   True
   MinWidth        =   64
   Placement       =   0
   Resizeable      =   True
   Title           =   ""
   Visible         =   True
   Width           =   1100
   Begin PagePanel BrowserPagePanel
      AllowAutoDeactivate=   True
      Enabled         =   True
      Height          =   646
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      PanelCount      =   0
      Panels          =   ""
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      Tooltip         =   ""
      Top             =   27
      Transparent     =   False
      Value           =   0
      Visible         =   True
      Width           =   1100
   End
   Begin Timer TitleTimer
      Index           =   -2147483648
      InitialParent   =   ""
      LockedInPosition=   False
      Period          =   1000
      RunMode         =   "2"
      Scope           =   0
      TabPanelIndex   =   0
   End
   Begin CustomTabPanelTabs BrowserTabs
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      EnableTabReordering=   False
      Facing          =   0
      Height          =   27
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   0
      Transparent     =   True
      value           =   0
      Visible         =   True
      Width           =   1100
   End
   Begin TextField SearchField
      AllowAutoDeactivate=   True
      AllowFocusRing  =   False
      AllowSpellChecking=   False
      AllowTabs       =   False
      BackgroundColor =   &cFFFF00FF
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Format          =   ""
      HasBorder       =   True
      Height          =   24
      Hint            =   "#kSearch"
      Index           =   -2147483648
      Italic          =   False
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      MaximumCharactersAllowed=   0
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   676
      Transparent     =   True
      Underline       =   False
      ValidationMask  =   ""
      Value           =   ""
      Visible         =   True
      Width           =   200
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub EnableMenuItems()
		  FileNewTab.visible=True
		  FileNewTab.enabled=True
		  EditFind.Enabled=True
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  'Call AddNewTab
		  
		End Sub
	#tag EndEvent


	#tag MenuHandler
		Function EditFind() As Boolean Handles EditFind.Action
			FindText("")
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function EditSelectAll() As Boolean Handles EditSelectAll.Action
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function FileClose() As Boolean Handles FileClose.Action
			
			CloseTab
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function FileNewTab() As Boolean Handles FileNewTab.Action
			Call AddNewTab
			
			Return True
			
		End Function
	#tag EndMenuHandler


	#tag Method, Flags = &h0
		Function ActiveBrowser() As HTMLViewer
		  For Each w As weakRef In Self.ContainerRefs
		    If htmlcontainer(w.value).WebViewer.PanelIndex=BrowserPagePanel.value Then
		      Return HTMLContainer(w.value).WebViewer
		    End If
		  Next
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function AddNewTab() As HTMLViewer
		  Var page As Integer
		  
		  'BrowserPagePanel.AddTab("Untitled")
		  BrowserPagePanel.AddPanel
		  page = BrowserPagePanel.PanelCount-1
		  BrowserPagePanel.Value = page
		  
		  Var browser As New HTMLContainer
		  
		  'browser.EmbedWithinPanel(BrowserPagePanel, page, 0, 50, Self.Width, BrowserPagePanel.Height-50)
		  browser.EmbedWithinPanel(BrowserPagePanel, page, 0, 0, Self.Width, BrowserPagePanel.Height)
		  browser.SelectAddressField
		  browser.ParentBrowserWindow = Self
		  
		  mBrowserTabs.AddRow(browser)
		  
		  
		  BrowserTabs.appendTab("Untitled",True)
		  Dim va As Integer
		  va=BrowserPagePanel.value
		  BrowserTabs.RePaint
		  
		  
		  Return browser.GetHTMLViewer
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CloseTab()
		  If BrowserPagePanel.PanelCount > 1 Then
		    Dim currenTab As Integer = BrowserPagePanel.Value
		    BrowserTabs.RemoveTab(currenTab) 
		    BrowserTabs.Repaint
		  Else
		    Self.close
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FindText(txt2find as string)
		  // Uses JavaScript to search for the text displayed in the currently vivible HTMLviewer
		  ' syntax from https://developer.mozilla.org/en-US/docs/Web/API/Window/find:
		  'window.find(aString, aCaseSensitive, aBackwards, aWrapAround,aWholeWord, aSearchInFrames, aShowDialog);
		  
		  'txt2find="Hits"
		  
		  'ActiveBrowser.ExecuteJavascript("window.find("""+txt2find+""",false,false,true,false,true,true).toString();")
		  
		  
		  'window.status is used here to return value from JavaScript function
		  'it can be accessed from the ActiveBrowser.StatusChanged event
		  ActiveBrowser.ExecuteJavascript("window.status=window.find("""+txt2find+""",false,false,true).toString();")
		  
		  
		  'Beep
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadPage(aFile as FolderItem)
		  if ubound(mBrowserTabs)<0 then call AddNewTab
		  
		  mBrowserTabs(ubound(mBrowserTabs)).LoadPage(aFile)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadPage(URL as string)
		  if ubound(mBrowserTabs)<0 then call AddNewTab
		  
		  mBrowserTabs(ubound(mBrowserTabs)).LoadURL(URL)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RegisterContainerControl(cc as HTMLcontainer)
		  Var ref As WeakRef
		  ref = New WeakRef(cc)
		  If ref.Value <> Nil Then
		    ContainerRefs.append ref
		  End If
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub unRegisterContainerControl(cc as HTMLcontainer)
		  Var ref As WeakRef
		  
		  ref = New WeakRef(cc)
		  If ref.Value <> Nil Then
		    Var n As Integer
		    For n=0 To UBound(ContainerRefs)
		      If ContainerRefs(n)=ref Then
		        ContainerRefs.RemoveRowAt(n)
		        Exit
		      End If
		    Next
		    
		  End If
		  
		  
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		ContainerRefs(-1) As WeakRef
	#tag EndProperty

	#tag Property, Flags = &h0
		mBrowserTabs() As HTMLContainer
	#tag EndProperty


#tag EndWindowCode

#tag Events TitleTimer
	#tag Event
		Sub Action()
		  '// Checks for title changes for each browser tab and updates the
		  '// tab caption
		  'For page As Integer = 0 To BrowserPagePanel.PanelCount-1
		  ''If mBrowserTabs(page).Title <> BrowserPagePanel.CaptionAt(page) Then
		  'If mBrowserTabs(page).Title <> BrowserTabs.tabs(page).caption Then
		  ''BrowserPagePanel.CaptionAt(page) = mBrowserTabs(page).Title
		  'BrowserTabs.tabs(page).caption = mBrowserTabs(page).Title
		  'End If
		  'Next
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BrowserTabs
	#tag Event
		Sub Open()
		  
		  
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub TabChanged(tabIndex as integer)
		  Dim Tabname As String
		  
		  'Tabname=Me.tabs(tabIndex).caption
		  BrowserPagePanel.value=tabIndex
		  'ChangeView(TabName)
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub TabRemoved(tabIndex as integer)
		  If BrowserPagePanel.PanelCount > 1 Then
		    
		    mBrowserTabs.RemoveRowAt(tabIndex)
		    BrowserPagePanel.Remove(tabIndex)
		    
		    If BrowserPagePanel.value=BrowserPagePanel.PanelCount Then 'removed the last panel, select the previous one
		      BrowserPagePanel.value=BrowserPagePanel.value-1
		    End If
		    
		  Else
		    Self.close
		  End If
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SearchField
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  
		  
		  'check for CR/enter key
		  if key=chr(13) OR key=chr(3) then
		    
		    ActiveBrowser.ExecuteJavascript("window.status=window.find("""+Me.Text+""",false,false,true).toString();")
		    
		  end if
		End Function
	#tag EndEvent
	#tag Event
		Sub GotFocus()
		  '#If TargetLinux Then
		  'if leftarrow then
		  'leftarrow=false
		  'MapCanvas.SetFocus
		  'end if
		  '#endif
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  '#If targetLinux
		  ''probably relevant to 64-bit only
		  'me.Enabled=true
		  '#endif
		End Function
	#tag EndEvent
	#tag Event
		Sub TextChange()
		  #if targetLinux
		    'probably relevant to 64-bit only
		    me.Enabled=true
		  #endif
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="MinimumWidth"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimumHeight"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximumWidth"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximumHeight"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Type"
		Visible=true
		Group="Frame"
		InitialValue="0"
		Type="Types"
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
		Name="HasCloseButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasMaximizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasMinimizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasFullScreenButton"
		Visible=true
		Group="Frame"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="DefaultLocation"
		Visible=true
		Group="Behavior"
		InitialValue="0"
		Type="Locations"
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
		Name="HasBackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="BackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="&hFFFFFF"
		Type="Color"
		EditorType="Color"
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
		Name="Interfaces"
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
		Name="Width"
		Visible=true
		Group="Position"
		InitialValue="600"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Position"
		InitialValue="400"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Appearance"
		InitialValue=""
		Type="Picture"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Appearance"
		InitialValue="Untitled"
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreen"
		Visible=false
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Visible=false
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Resizeable"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Visible=true
		Group="Appearance"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBar"
		Visible=true
		Group="Appearance"
		InitialValue=""
		Type="MenuBar"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
