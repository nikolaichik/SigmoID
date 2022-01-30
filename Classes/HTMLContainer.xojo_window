#tag Window
Begin ContainerControl HTMLContainer
   AllowAutoDeactivate=   True
   AllowFocus      =   False
   AllowFocusRing  =   False
   AllowTabs       =   True
   Backdrop        =   0
   BackgroundColor =   &cFFFFFF00
   DoubleBuffer    =   False
   Enabled         =   True
   EraseBackground =   True
   HasBackgroundColor=   False
   Height          =   390
   InitialParent   =   ""
   Left            =   0
   LockBottom      =   True
   LockLeft        =   True
   LockRight       =   True
   LockTop         =   True
   TabIndex        =   0
   TabPanelIndex   =   0
   TabStop         =   True
   Tooltip         =   ""
   Top             =   0
   Transparent     =   True
   Visible         =   True
   Width           =   590
   Begin HTMLViewer WebViewer
      AllowAutoDeactivate=   True
      Enabled         =   True
      Height          =   356
      Index           =   -2147483648
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Renderer        =   0
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   34
      Visible         =   True
      Width           =   590
      Begin Rectangle LabelBack
         AllowAutoDeactivate=   True
         BorderThickness =   0.0
         BottomRightColor=   &c00000000
         Enabled         =   True
         FillColor       =   &cFFFFFF00
         Height          =   21
         Index           =   -2147483648
         InitialParent   =   "WebViewer"
         Left            =   0
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   False
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   0
         Tooltip         =   ""
         Top             =   369
         TopLeftColor    =   &c00000000
         Transparent     =   False
         Visible         =   False
         Width           =   590
         Begin Label StatusLabel
            AllowAutoDeactivate=   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            FontName        =   "System"
            FontSize        =   0.0
            FontUnit        =   0
            Height          =   20
            Index           =   -2147483648
            InitialParent   =   "LabelBack"
            Italic          =   False
            Left            =   5
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   0
            TabPanelIndex   =   0
            TabStop         =   True
            TextAlignment   =   "0"
            TextColor       =   &c00000000
            Tooltip         =   ""
            Top             =   370
            Transparent     =   False
            Underline       =   False
            Value           =   ""
            Visible         =   True
            Width           =   585
         End
      End
   End
   Begin TextField AddressField
      AllowAutoDeactivate=   True
      AllowFocusRing  =   True
      AllowSpellChecking=   False
      AllowTabs       =   False
      BackgroundColor =   &cFFFFFF00
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Format          =   ""
      HasBorder       =   True
      Height          =   22
      Hint            =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   151
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      MaximumCharactersAllowed=   0
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   6
      Transparent     =   False
      Underline       =   False
      ValidationMask  =   ""
      Value           =   ""
      Visible         =   True
      Width           =   402
   End
   BeginSegmented SegmentedControl SegmentedControl1
      Enabled         =   True
      Height          =   24
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   13
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MacControlStyle =   2
      Scope           =   0
      Segments        =   "\n\nFalse\r\n\nFalse"
      SelectionType   =   2
      TabIndex        =   3
      TabPanelIndex   =   0
      Top             =   6
      Transparent     =   False
      Visible         =   True
      Width           =   54
   End
   BeginSegmented SegmentedControl SegmentedControl2
      Enabled         =   True
      Height          =   24
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   98
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MacControlStyle =   2
      Scope           =   0
      Segments        =   "\nBootstrap_Arrow_clockwise13\nFalse"
      SelectionType   =   2
      TabIndex        =   4
      TabPanelIndex   =   0
      Top             =   6
      Transparent     =   False
      Visible         =   True
      Width           =   27
   End
   Begin ProgressWheel ProgressWheel1
      AllowAutoDeactivate=   True
      Enabled         =   False
      Height          =   16
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   565
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   8
      Transparent     =   False
      Visible         =   False
      Width           =   16
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Close()
		  If Me.TrueWindow=WebBrowserWin Then
		    WebBrowserWin(Me.TrueWindow).unRegisterContainerControl(Me)
		  End If
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  If Me.TrueWindow=WebBrowserWin Then
		    WebBrowserWin(Me.TrueWindow).RegisterContainerControl(Me)
		  End If
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub AdjustTabWidth()
		  'masked due To issues With dynamical tab resize In WebBrowserWin
		  Dim tabNo As Integer = WebBrowserWin.BrowserPagePanel.PanelCount
		  Dim maxW As Integer = (WebBrowserWin.wBrowserTabs.Width-70)/TabNo - 20
		  For page As Integer = 0 To tabNo-1
		    If WebBrowserWin.wBrowserTabs.tabs(page).width>maxW Then
		      If maxW>70 Then
		        WebBrowserWin.wBrowserTabs.tabs(page).width=maxW
		      Else
		        WebBrowserWin.wBrowserTabs.tabs(page).width=70
		      End If
		    End If
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FwdBackCheck()
		  Dim s0 As SegmentedControlItem = SegmentedControl1.Items( 0 )
		  Dim s1 As SegmentedControlItem = SegmentedControl1.Items( 1 )
		  
		  If WebViewer.CanGoForward Then
		    s1.Enabled=true
		  else
		    s1.Enabled=false
		  end if
		  
		  If WebViewer.CanGoBack Then
		    s0.Enabled=true
		  else
		    s0.Enabled=false
		  End If
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetHTMLViewer() As HTMLViewer
		  Return WebViewer
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GoBack()
		  WebViewer.GoBack
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GoForward()
		  WebViewer.GoForward
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadPage(aFile as FolderItem)
		  WebViewer.LoadPage(aFile)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadURL(url As String)
		  WebViewer.LoadURL(url)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Reload()
		  WebViewer.LoadURL(mPageURL)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SelectAddressField()
		  AddressField.SetFocus
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		docComplete As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		LoadedURL As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mPageURL As String
	#tag EndProperty

	#tag Property, Flags = &h0
		ParentBrowserWindow As WebBrowserWin
	#tag EndProperty

	#tag Property, Flags = &h0
		titleFinalised As boolean
	#tag EndProperty


#tag EndWindowCode

#tag Events WebViewer
	#tag Event
		Sub TitleChanged(newTitle as String)
		  ProgressWheel1.Visible=True
		  ProgressWheel1.Enabled=True
		  ProgressWheel1.Refresh
		  If InStr(newTitle, "count ")>0 Then
		    WebBrowserWin.matchCount = val(Nthfield(Nthfield(newTitle, "count ", 2), ";", 1))
		    if WebBrowserWin.matchCount <> 0 then
		      WebBrowserWin.shiftMatch(1)
		    else
		      WebBrowserWin.CountField.Text = "Not found"
		      WebBrowserWin.SearchField.TextColor = &cFF0000
		    end
		  Else
		    
		    // Working around HTMLviewer bug by ignoring iFrame titles
		    
		    If InStr(newTitle, "Twitter Widget")>0 Then 'EcoCyc
		      Return
		    Elseif InStr(newTitle, "reCAPTCHA")>0 Then 'ASM journals
		      Return
		    Elseif InStr(newTitle, "Crossmark")>0 Then 'mBio
		      Return
		    Elseif InStr(newTitle, "YouTube")>0 Then
		      Return
		    Elseif InStr(newTitle, "AddThis Utility Frame")>0 Then 'Oxford Academic
		      Return
		    Elseif InStr(newTitle, "SafeFrame Container")>0 Then 'Oxford Academic
		      Return
		    Elseif InStr(newTitle, "Tweet Button")>0 Then  'BioRchiv
		      Return
		    Elseif InStr(newTitle, "Disqus Comments")>0 Then 'BioRchiv
		      Return
		    Elseif newTitle="Hypothesis" Then  'Elife
		      Return
		    Elseif InStr(newTitle, "Cross Domain")>0 Then 'Nasty Springer tracking
		      Return
		      'Elseif InStr(newTitle, "")>0 Then
		      'Return
		    Elseif newTitle="" Then 'empty title -> use the URL
		      Title=AddressField.Text
		    Else
		      If Not titleFinalised Then
		        Title = newTitle
		      End If
		      
		      If docComplete=True Then
		        titleFinalised=True
		      End If
		    End If
		    
		    
		    
		    // Checks for title changes for each browser tab and update tab captions
		    Dim cap, tit As String
		    Dim tabNo As Integer = WebBrowserWin.BrowserPagePanel.PanelCount
		    For page As Integer = 0 To tabNo-1
		      cap=WebBrowserWin.wBrowserTabs.tabs(page).caption
		      tit=WebBrowserWin.mBrowserTabs(page).Title
		      If WebBrowserWin.mBrowserTabs(page).Title <> WebBrowserWin.wBrowserTabs.tabs(page).caption Then
		        'Update title
		        WebBrowserWin.wBrowserTabs.tabs(page).caption = WebBrowserWin.mBrowserTabs(page).Title
		      End If
		    Next
		    
		    'adjustTabWidth
		    
		    
		    
		    WebBrowserWin.wBrowserTabs.RePaint
		  end
		  
		  Exception err
		    ExceptionHandler(err,"HTMLcontainer:WebViewer:titleChanged")
		    
		End Sub
	#tag EndEvent
	#tag Event
		Sub StatusChanged(newStatus as String)
		  If newStatus="" Then 
		    LabelBack.visible=False
		  Else
		    LabelBack.visible=True
		  End If
		  StatusLabel.Value = newStatus
		  'if instr(newStatus, "count ")>0 then
		  'WebBrowserWin.matchCount = val(Nthfield(Nthfield(newStatus, "count ", 2), ";", 1))
		  'end
		End Sub
	#tag EndEvent
	#tag Event
		Function NewWindow() As Object
		  If ParentBrowserWindow <> Nil Then
		    Return ParentBrowserWindow.AddNewTab
		  End If
		End Function
	#tag EndEvent
	#tag Event
		Sub DocumentComplete(url as String)
		  mPageURL = URL
		  ProgressWheel1.Visible=False
		  ProgressWheel1.Enabled=False
		  
		  AlreadyOpeningTab=False
		  
		  FwdBackCheck
		  
		  docComplete=True
		  
		  dim js as String
		  ' js code by https://github.com/sstahurski/SearchWebView/blob/master/SearchWebView
		  
		  js = "var currSelected = -1; var MyApp_SearchResultCount = 0; function MyApp_HighlightAllOccurencesOfStringForElement(element,keyword,casens, matchall) { if (casens == false) { keyword = keyword.toLowerCase() } if (element) { if (element.nodeType == 3) { while (true) { var value = element.nodeValue; if (casens) { var idx = value.indexOf(keyword); } else { var idx = value.toLowerCase().indexOf(keyword); } if (idx < 0) break; var span = document.createElement("+Chr(34)+"span"+Chr(34)+"); var text = document.createTextNode(value.substr(idx,keyword.length)); span.appendChild(text); span.setAttribute("+Chr(34)+"class"+Chr(34)+","+Chr(34)+"MyAppHighlight"+Chr(34)+"); if (matchall){ span.style.backgroundColor="+Chr(34)+"yellow"+Chr(34)+"; span.style.color="+Chr(34)+"black"+Chr(34)+"; } else { span.style.backgroundColor="+Chr(34)+""+Chr(34)+"; span.style.color="+Chr(34)+""+Chr(34)+"; } text = document.createTextNode(value.substr(idx+keyword.length)); element.deleteData(idx, value.length - idx); var next = element.nextSibling; element.parentNode.insertBefore(span, next); element.parentNode.insertBefore(text, next); element = text; MyApp_SearchResultCount++; } } else if (element.nodeType == 1) { if (element.style.display != "+Chr(34)+"none"+Chr(34)+" && element.nodeName.toLowerCase() != 'select') { for (var i=element.childNodes.length-1; i>=0; i--) { MyApp_HighlightAllOccurencesOfStringForElement(element.childNodes[i],keyword, casens, matchall); } } } } } function searchNext(){ jump(1); } function searchPrev(){ jump(-1); } function jump(increment){ prevSelected = currSelected; currSelected = currSelected + increment; if (currSelected < 0){ currSelected = MyApp_SearchResultCount + currSelected; } if (currSelected >= MyApp_SearchResultCount){ currSelected = currSelected - MyApp_SearchResultCount; } prevEl = document.getElementsByClassName("+Chr(34)+"MyAppHighlight"+Chr(34)+")[prevSelected]; if (prevEl){ prevEl.style.backgroundColor="+Chr(34)+"yellow"+Chr(34)+"; } el = document.getElementsByClassName("+Chr(34)+"MyAppHighlight"+Chr(34)+")[currSelected]; el.style.backgroundColor="+Chr(34)+"PaleGreen"+Chr(34)+"; el.scrollIntoView(true); } function MyApp_HighlightAllOccurencesOfString(keyword, casens, matchall) { MyApp_RemoveAllHighlights(); MyApp_HighlightAllOccurencesOfStringForElement(document.body, keyword, casens, matchall); if (matchall == false) { searchNext() } } function MyApp_RemoveAllHighlightsForElement(element) { if (element) { if (element.nodeType == 1) { if (element.getAttribute("+Chr(34)+"class"+Chr(34)+") == "+Chr(34)+"MyAppHighlight"+Chr(34)+") { var text = element.removeChild(element.firstChild); element.parentNode.insertBefore(text,element); element.parentNode.removeChild(element); return true; } else { var normalize = false; for (var i=element.childNodes.length-1; i>=0; i--) { if (MyApp_RemoveAllHighlightsForElement(element.childNodes[i])) { normalize = true; } } if (normalize) { element.normalize(); } } } } return false; } function MyApp_RemoveAllHighlights() { MyApp_SearchResultCount = 0; currSelected = -1; MyApp_RemoveAllHighlightsForElement(document.body); } function getCount() { document.title= 'count '+MyApp_SearchResultCount+';';}"
		  
		  Me.ExecuteJavaScript(js)
		  
		  // Other possible highlights from here:
		  'https://www.w3schools.com/colors/colors_names.asp
		  ' Aquamarine #7FFFD4
		  ' LightGreen #90EE90
		  ' LightSkyBlue #87CEFA
		  ' PaleGreen #98FB98
		  ' PaleTurquoise #AFEEEE
		  ' PowderBlue #B0E0E6
		  
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub DocumentBegin(url as String)
		  ProgressWheel1.Visible=True
		  ProgressWheel1.Enabled=True
		  ProgressWheel1.Refresh
		  
		  Self.AddressField.Text=url
		  
		  docComplete=False
		  titleFinalised=false
		End Sub
	#tag EndEvent
	#tag Event
		Sub Error(errorNumber as Integer, errorMessage as String)
		  ProgressWheel1.Visible=False
		  ProgressWheel1.Enabled=False
		  If errorNumber <> -999 Then
		    MsgBox "Web viewer error "+Str(errorNumber)+":"+EndOfLine+errorMessage
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  If key=DecodeHex("1D") Then 'right (or chr(124?)
		    If Me.CanGoForward Then
		      ProgressWheel1.Visible=True
		      ProgressWheel1.Enabled=True
		      ProgressWheel1.Refresh
		      Me.GoForward
		    End If
		  Elseif key=DecodeHex("1C") Then ' chr(123)? - left
		    If Me.CanGoBack Then
		      ProgressWheel1.Visible=True
		      ProgressWheel1.Enabled=True
		      ProgressWheel1.Refresh
		      Me.GoBack
		    End If
		  End If
		  FwdBackCheck
		End Function
	#tag EndEvent
	#tag Event
		Function CancelLoad(URL as String) As Boolean
		  //trying To intercept command-clicking a link
		  'crashes without error
		  
		  If Keyboard.CommandKey or Keyboard.AsyncControlKey Then 'Open this link in new tab
		    If Not AlreadyOpeningTab Then
		      AlreadyOpeningTab=True
		      If ParentBrowserWindow <> Nil Then
		        Dim page2load As String = url
		        ParentBrowserWindow.AddNewTab.LoadURL(page2load)
		        'AdjustTabWidth
		        WebBrowserWin.wBrowserTabs.fixLocations
		        Return True
		      End If
		    End
		  End If
		  
		  
		End Function
	#tag EndEvent
	#tag Event
		Sub DocumentProgressChanged(URL as String, percentageComplete as Integer)
		  ProgressWheel1.Refresh
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events AddressField
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  If Key = Encodings.UTF8.Chr(13) Then
		    Var address As String = Me.Value
		    If address.Left(7) <> "http://" And address.Left(8) <> "https://" Then
		      If address.IndexOF(".") <= 0 Then
		        address = "https://www.google.com/search?q=" + EncodeURLComponent(address)
		      Else
		        address = "https://" + address
		      End If
		    End If
		    
		    LoadURL(address)
		    'AdjustTabWidth
		    WebBrowserWin.wBrowserTabs.fixLocations
		    Return True
		  End If
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events SegmentedControl1
	#tag Event
		Sub Action(itemIndex as integer)
		  ProgressWheel1.Visible=True
		  ProgressWheel1.Enabled=true
		  ProgressWheel1.Refresh
		  
		  if itemIndex=0 then
		    WebViewer.GoBack
		  else
		    WebViewer.GoForward
		  end if
		  FwdBackCheck
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Dim s0 As SegmentedControlItem = Me.Items( 0 )
		  Dim s1 As SegmentedControlItem = me.Items( 1 )
		  
		  #If TargetCocoa Then
		    
		    s0.Title=""
		    s1.Title=""
		    s0.Icon=SystemIcons.GoLeftTemplate
		    s1.Icon=SystemIcons.GoRightTemplate
		    
		  #endif
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SegmentedControl2
	#tag Event
		Sub Action(itemIndex as integer)
		  Reload
		  
		  
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Dim s0 As SegmentedControlItem = Me.Items( 0 )
		  
		  #if TargetCocoa then
		    
		    s0.Title=""
		    s0.Icon=SystemIcons.RefreshTemplate
		    
		  #endif
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="AllowAutoDeactivate"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Tooltip"
		Visible=true
		Group="Appearance"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="AllowFocusRing"
		Visible=true
		Group="Appearance"
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
		Name="HasBackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="AllowFocus"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="AllowTabs"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="DoubleBuffer"
		Visible=true
		Group="Windows Behavior"
		InitialValue="False"
		Type="Boolean"
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
		Name="InitialParent"
		Visible=false
		Group="Position"
		InitialValue=""
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Left"
		Visible=true
		Group="Position"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Top"
		Visible=true
		Group="Position"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Position"
		InitialValue="300"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Position"
		InitialValue="300"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockLeft"
		Visible=true
		Group="Position"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockTop"
		Visible=true
		Group="Position"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockRight"
		Visible=true
		Group="Position"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockBottom"
		Visible=true
		Group="Position"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabPanelIndex"
		Visible=false
		Group="Position"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabIndex"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabStop"
		Visible=true
		Group="Position"
		InitialValue="True"
		Type="Boolean"
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
		Name="Enabled"
		Visible=true
		Group="Appearance"
		InitialValue="True"
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
		Name="EraseBackground"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Transparent"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LoadedURL"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="titleFinalised"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="docComplete"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
