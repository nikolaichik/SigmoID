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
   Height          =   602
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
   Width           =   1014
   Begin PagePanel BrowserPagePanel
      AllowAutoDeactivate=   True
      Enabled         =   True
      Height          =   575
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
      TabStop         =   "True"
      Tooltip         =   ""
      Top             =   27
      Transparent     =   False
      Value           =   0
      Visible         =   True
      Width           =   1014
   End
   Begin CustomTabPanelTabs wBrowserTabs
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
      p               =   0
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   0
      Transparent     =   True
      TTtext          =   ""
      value           =   0
      Visible         =   True
      Width           =   1014
   End
   Begin Timer TitleTimer
      Enabled         =   True
      Index           =   -2147483648
      InitialParent   =   ""
      LockedInPosition=   False
      Period          =   1000
      RunMode         =   "2"
      Scope           =   0
      TabPanelIndex   =   0
   End
   Begin Canvas SearchBar
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   False
      Height          =   28
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   574
      Transparent     =   False
      Visible         =   False
      Width           =   1014
      Begin CheckBox CaseSens
         AllowAutoDeactivate=   True
         Bold            =   False
         Caption         =   "case sensitive"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   False
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   26
         Index           =   -2147483648
         InitialParent   =   "SearchBar"
         Italic          =   False
         Left            =   236
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   575
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   False
         VisualState     =   "0"
         Width           =   111
      End
      Begin Label CountField
         AllowAutoDeactivate=   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   False
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   26
         Index           =   -2147483648
         InitialParent   =   "SearchBar"
         Italic          =   False
         Left            =   473
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         TextAlignment   =   "0"
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   575
         Transparent     =   False
         Underline       =   False
         Value           =   ""
         Visible         =   False
         Width           =   141
      End
      Begin CheckBox HighlightAllBox
         AllowAutoDeactivate=   True
         Bold            =   False
         Caption         =   "highlight all"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   False
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   26
         Index           =   -2147483648
         InitialParent   =   "SearchBar"
         Italic          =   False
         Left            =   351
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   575
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   False
         VisualState     =   "0"
         Width           =   121
      End
      Begin UpDownArrows SearchArrows
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         Enabled         =   False
         Height          =   26
         Index           =   -2147483648
         InitialParent   =   "SearchBar"
         Left            =   211
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   575
         Transparent     =   False
         Visible         =   False
         Width           =   16
      End
      Begin TextField SearchField
         AllowAutoDeactivate=   True
         AllowFocusRing  =   False
         AllowSpellChecking=   False
         AllowTabs       =   False
         BackgroundColor =   &cFEFFFF00
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   False
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Format          =   ""
         HasBorder       =   True
         Height          =   28
         Hint            =   "#kSearch"
         Index           =   -2147483648
         InitialParent   =   "SearchBar"
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
         TabIndex        =   4
         TabPanelIndex   =   0
         TabStop         =   True
         TextAlignment   =   "0"
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   574
         Transparent     =   True
         Underline       =   False
         ValidationMask  =   ""
         Value           =   ""
         Visible         =   False
         Width           =   200
      End
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Activate()
		  'dim js as String
		  '' js code by https://github.com/sstahurski/SearchWebView/blob/master/SearchWebView
		  'js = "var currSelected = -1; var MyApp_SearchResultCount = 0; function MyApp_HighlightAllOccurencesOfStringForElement(element,keyword,casens, matchall) { if (casens == false) { keyword = keyword.toLowerCase() } if (element) { if (element.nodeType == 3) { while (true) { var value = element.nodeValue; if (casens) { var idx = value.indexOf(keyword); } else { var idx = value.toLowerCase().indexOf(keyword); } if (idx < 0) break; var span = document.createElement("+chr(34)+"span"+chr(34)+"); var text = document.createTextNode(value.substr(idx,keyword.length)); span.appendChild(text); span.setAttribute("+chr(34)+"class"+chr(34)+","+chr(34)+"MyAppHighlight"+chr(34)+"); if (matchall){ span.style.backgroundColor="+chr(34)+"yellow"+chr(34)+"; span.style.color="+chr(34)+"black"+chr(34)+"; } else { span.style.backgroundColor="+chr(34)+""+chr(34)+"; span.style.color="+chr(34)+""+chr(34)+"; } text = document.createTextNode(value.substr(idx+keyword.length)); element.deleteData(idx, value.length - idx); var next = element.nextSibling; element.parentNode.insertBefore(span, next); element.parentNode.insertBefore(text, next); element = text; MyApp_SearchResultCount++; } } else if (element.nodeType == 1) { if (element.style.display != "+chr(34)+"none"+chr(34)+" && element.nodeName.toLowerCase() != 'select') { for (var i=element.childNodes.length-1; i>=0; i--) { MyApp_HighlightAllOccurencesOfStringForElement(element.childNodes[i],keyword, casens, matchall); } } } } } function searchNext(){ jump(1); } function searchPrev(){ jump(-1); } function jump(increment){ prevSelected = currSelected; currSelected = currSelected + increment; if (currSelected < 0){ currSelected = MyApp_SearchResultCount + currSelected; } if (currSelected >= MyApp_SearchResultCount){ currSelected = currSelected - MyApp_SearchResultCount; } prevEl = document.getElementsByClassName("+chr(34)+"MyAppHighlight"+chr(34)+")[prevSelected]; if (prevEl){ prevEl.style.backgroundColor="+chr(34)+"yellow"+chr(34)+"; } el = document.getElementsByClassName("+chr(34)+"MyAppHighlight"+chr(34)+")[currSelected]; el.style.backgroundColor="+chr(34)+"green"+chr(34)+"; el.scrollIntoView(true); } function MyApp_HighlightAllOccurencesOfString(keyword, casens, matchall) { MyApp_RemoveAllHighlights(); MyApp_HighlightAllOccurencesOfStringForElement(document.body, keyword, casens, matchall); if (matchall == false) { searchNext() } } function MyApp_RemoveAllHighlightsForElement(element) { if (element) { if (element.nodeType == 1) { if (element.getAttribute("+chr(34)+"class"+chr(34)+") == "+chr(34)+"MyAppHighlight"+chr(34)+") { var text = element.removeChild(element.firstChild); element.parentNode.insertBefore(text,element); element.parentNode.removeChild(element); return true; } else { var normalize = false; for (var i=element.childNodes.length-1; i>=0; i--) { if (MyApp_RemoveAllHighlightsForElement(element.childNodes[i])) { normalize = true; } } if (normalize) { element.normalize(); } } } } return false; } function MyApp_RemoveAllHighlights() { MyApp_SearchResultCount = 0; currSelected = -1; MyApp_RemoveAllHighlightsForElement(document.body); }"
		  'ActiveBrowser.ExecuteJavaScript(js)
		End Sub
	#tag EndEvent

	#tag Event
		Sub EnableMenuItems()
		  FileNewTab.visible=True
		  FileNewTab.enabled=True
		  EditFind.Enabled=True
		  EditFindAgain.enabled=searchRun
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  'Call AddNewTab
		  
		  
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Resized()
		  closeBox.x=searchBar.Width-closeBoxData.Width-13
		  closeBox.y=(searchBar.Height-closeBoxData.Height)/2
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Resizing()
		  closeBox.x=searchBar.Width-closeBoxData.Width-13
		  closeBox.y=(searchBar.Height-closeBoxData.Height)/2
		  
		End Sub
	#tag EndEvent


	#tag MenuHandler
		Function EditFind() As Boolean Handles EditFind.Action
			showSearchBar
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function EditFindAgain() As Boolean Handles EditFindAgain.Action
			shiftMatch(1)
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
		    If w.value<>Nil Then
		      If htmlcontainer(w.value).WebViewer.PanelIndex=BrowserPagePanel.value Then
		        Return HTMLContainer(w.value).WebViewer
		      End If
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
		  
		  
		  wBrowserTabs.appendTab("Untitled",True)
		  Dim va As Integer
		  va=BrowserPagePanel.value
		  wBrowserTabs.RePaint
		  
		  
		  Return browser.GetHTMLViewer
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CloseTab()
		  If BrowserPagePanel.PanelCount > 1 Then
		    Dim currenTab As Integer = BrowserPagePanel.Value
		    wBrowserTabs.RemoveTab(currenTab) 
		    wBrowserTabs.Repaint
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
		Sub resetCounting()
		  if matchCount>0 then
		    ActiveBrowser.ExecuteJavascript("MyApp_RemoveAllHighlights();")
		    ActiveBrowser.ExecuteJavascript("getCount();")
		    while matchCount<>0
		      App.DoEvents
		    wend
		  end
		  
		  Self.searchRun = False
		  SearchField.TextColor = &c000000
		  CountField.Text = ""
		  matchCount = -1
		  currentMatch = 0
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub searchText()
		  
		  dim sensitive as String = "true"
		  dim allmatch as String = "true"
		  dim js as String
		  
		  if CaseSens.State = CheckBox.CheckedStates.Unchecked then
		    sensitive = "false"
		  end
		  if HighlightAllBox.State = CheckBox.CheckedStates.Unchecked then
		    allmatch = "false"
		  end
		  
		  js = "MyApp_HighlightAllOccurencesOfString('"+SearchField.Text+"',"+sensitive+", "+allmatch+");"
		  
		  ActiveBrowser.ExecuteJavascript(js)
		  ActiveBrowser.ExecuteJavaScript("getCount()")
		  Self.searchRun = True
		  
		  Exception err
		    ExceptionHandler(err,"WebBrowserWin:SearchText")
		    
		    
		    
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub shiftMatch(shift As Integer)
		  While matchCount = -1
		    app.DoEvents
		  wend
		  if matchCount > 0 then
		    SearchField.TextColor = &c000000
		    currentMatch = currentMatch + shift
		    if currentMatch = 0 then
		      currentMatch = matchCount
		    elseif currentMatch > matchCount then
		      currentMatch = 1
		    end
		    if shift = -1 then
		      ActiveBrowser.ExecuteJavaScript("searchPrev()")
		    elseif shift = 1 then
		      ActiveBrowser.ExecuteJavaScript("searchNext()")
		    end
		    CountField.Text = str(currentMatch) + " of " + str(matchCount)
		  elseif SearchField.text <> "" then
		    CountField.Text = "Not found"
		    SearchField.TextColor = &cFF0000
		  end
		  
		  Exception err
		    ExceptionHandler(err,"WebBrowserWin:ShiftMatch")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub showSearchBar()
		  'If searchBar.Enabled Then
		  'searchBar.Enabled = False
		  'searchBar.Visible = False
		  'CountField.Enabled = False
		  'CountField.Visible = False
		  'SearchArrows.Enabled = False
		  'SearchArrows.Visible = False
		  'HighlightAllBox.Enabled = False
		  'HighlightAllBox.Visible = False
		  'CaseSens.Enabled = False
		  'CaseSens.Visible =False
		  'SearchField.Enabled = False
		  'SearchField.Visible = False
		  'BrowserPagePanel.height=BrowserPagePanel.height+SearchBar.height
		  'else
		  If searchBar.Enabled=False Then
		    searchBar.Enabled = True
		    searchBar.Visible = True
		    CountField.Enabled = True
		    CountField.Visible = True
		    SearchArrows.Enabled = True
		    SearchArrows.Visible = True
		    HighlightAllBox.Enabled = True
		    HighlightAllBox.Visible = True
		    CaseSens.Enabled = True
		    CaseSens.Visible =True
		    SearchField.Enabled = True
		    SearchField.Visible = True
		    BrowserPagePanel.height=BrowserPagePanel.height-SearchBar.height
		  End
		  SearchField.SetFocus
		  SearchField.SelectAll
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
		CloseBox As CloseBoxButton
	#tag EndProperty

	#tag Property, Flags = &h0
		ContainerRefs(-1) As WeakRef
	#tag EndProperty

	#tag Property, Flags = &h0
		currentMatch As Integer = 1
	#tag EndProperty

	#tag Property, Flags = &h0
		matchCount As Integer = -1
	#tag EndProperty

	#tag Property, Flags = &h0
		mBrowserTabs() As HTMLContainer
	#tag EndProperty

	#tag Property, Flags = &h0
		SBclosing As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		searchRun As Boolean = False
	#tag EndProperty


#tag EndWindowCode

#tag Events wBrowserTabs
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
#tag Events SearchBar
	#tag Event
		Sub Open()
		  'closeBox=New LittleMiscButton(closeBoxData,closeBoxMask,closeBoxMaskOver,closeBoxMaskClicked)
		  
		  '//code to be used once
		  'Dim p As picture = SystemIcons.StopProgressTemplate
		  'Dim f As FolderItem
		  'If p <> Nil Then
		  '// Get a temporary file to save the image to
		  'If p.IsExportFormatSupported(Picture.Formats.PNG) Then
		  'f = SpecialFolder.Temporary.Child("CloseBox.png")
		  '
		  '// Save the image out to the file
		  'p.Save(f, Picture.Formats.PNG)
		  'End If
		  'End If
		  
		  
		  
		  'closeBox=New closeBoxButton(p.CopyColorChannels, p.CopyMask,p.CopyColorChannels,p.CopyColorChannels)
		  'data as picture, mask as picture, over as picture, clicked as picture
		  closeBox=New closeBoxButton(CloseBoxNorm.CopyColorChannels, CloseBoxNorm.CopyMask,CloseBoxNorm.CopyColorChannels,CloseBoxDark.CopyColorChannels)
		  
		  closebox.toggle=True
		  closebox.clicked=True
		  closeBox.x=searchBar.Width-closeBoxData.Width-13
		  closeBox.y=(searchBar.Height-closeBoxData.Height)/2
		  Me.RefreshRect(closeBox.x,closeBox.y,closeBox.width,closeBox.height)
		  closebox.clicked=False
		  closebox.toggle=False
		  Me.RefreshRect(closeBox.x,closeBox.y,closeBox.width,closeBox.height)
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  
		  
		  SBclosing=closeBox.mouseDown(x,y)
		  
		  If closeBox.clicked Then
		    'ShowSearchBar
		    searchBar.Enabled = False
		    searchBar.Visible = False
		    'CountField.Enabled = False
		    'CountField.Visible = False
		    'SearchArrows.Enabled = False
		    'SearchArrows.Visible = False
		    'HighlightAllBox.Enabled = False
		    'HighlightAllBox.Visible = False
		    'CaseSens.Enabled = False
		    'CaseSens.Visible =False
		    'SearchField.Enabled = False
		    'SearchField.Visible = False
		    BrowserPagePanel.height=BrowserPagePanel.height+SearchBar.height
		  End If
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseUp(X As Integer, Y As Integer)
		  If SBclosing Then
		    SBclosing=False
		    call closeBox.mouseUp(-1,-1)
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  If Me.Visible Then
		    'closeBox.paint(g, closeBox.x+SearchBar.Left, closeBox.y+SearchBar.Top)
		    'closeBox.paint(g, 0, SearchBar.Top)
		    closeBox.paint(g, 0, 0)
		    
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseMove(X As Integer, Y As Integer)
		  If closeBox.mouseMove(x,y) Then
		    me.invalidate
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CaseSens
	#tag Event
		Sub Action()
		  resetCounting
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events HighlightAllBox
	#tag Event
		Sub Action()
		  if me.State = CheckBox.CheckedStates.Checked and SearchField.Text <> "" then
		    searchText
		    while matchCount = -1 
		      App.DoEvents
		    wend
		    if matchCount>0 then
		      CountField.Text = str(matchCount)+" matches"
		    else
		      CountField.Text = "not found"
		    end
		  ElseIf me.State = CheckBox.CheckedStates.Unchecked then
		    resetCounting
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SearchArrows
	#tag Event
		Sub Up()
		  If searchRun then
		    shiftMatch(-1)
		  else
		    searchText
		    'shiftMatch(-1)
		  end
		End Sub
	#tag EndEvent
	#tag Event
		Sub Down()
		  If searchRun then
		    shiftMatch(1)
		  else
		    searchText
		    'shiftMatch(1)
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SearchField
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  If key=Chr(13) Or key=Chr(3) Then
		    If Not searchRun Then
		      searchText
		      'shiftMatch(1)
		    else 
		      shiftMatch(1)
		    End
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
		  
		  resetCounting
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
	#tag ViewProperty
		Name="matchCount"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="searchRun"
		Visible=false
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="currentMatch"
		Visible=false
		Group="Behavior"
		InitialValue="1"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="SBclosing"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="boolean"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
