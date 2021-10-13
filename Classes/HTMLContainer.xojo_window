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
      InitialParent   =   ""
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
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   368
      Transparent     =   False
      Underline       =   False
      Value           =   ""
      Visible         =   True
      Width           =   585
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
      TabStop         =   True
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
      TabStop         =   True
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
	#tag Method, Flags = &h0
		Sub AdjustTabWidth()
		  Dim tabNo As Integer = WebBrowserWin.BrowserPagePanel.PanelCount
		  Dim maxW As Integer = (WebBrowserWin.BrowserTabs.Width-70)/TabNo - 20
		  For page As Integer = 0 To tabNo-1
		    If WebBrowserWin.BrowserTabs.tabs(page).width>maxW Then
		      If maxW>70 Then
		        WebBrowserWin.BrowserTabs.tabs(page).width=maxW
		      Else
		        WebBrowserWin.BrowserTabs.tabs(page).width=70
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


	#tag Property, Flags = &h21
		Private mPageURL As String
	#tag EndProperty

	#tag Property, Flags = &h0
		ParentBrowserWindow As WebBrowserWin
	#tag EndProperty


#tag EndWindowCode

#tag Events WebViewer
	#tag Event
		Sub TitleChanged(newTitle as String)
		  ProgressWheel1.Visible=True
		  ProgressWheel1.Enabled=True
		  ProgressWheel1.Refresh
		  Title = newTitle
		  
		  // Checks for title changes for each browser tab and update tab captions
		  Dim cap, tit As String
		  Dim tabNo As Integer = WebBrowserWin.BrowserPagePanel.PanelCount
		  For page As Integer = 0 To tabNo-1
		    cap=WebBrowserWin.BrowserTabs.tabs(page).caption
		    tit=WebBrowserWin.mBrowserTabs(page).Title
		    If WebBrowserWin.mBrowserTabs(page).Title <> WebBrowserWin.BrowserTabs.tabs(page).caption Then
		      'Update title
		      WebBrowserWin.BrowserTabs.tabs(page).caption = WebBrowserWin.mBrowserTabs(page).Title
		    End If
		  Next
		  
		  adjustTabWidth
		  
		  
		  
		  WebBrowserWin.BrowserTabs.RePaint
		  
		  
		  Exception err
		    ExceptionHandler(err,"HTMLcontainer:WebViewer:titleChanged")
		    
		End Sub
	#tag EndEvent
	#tag Event
		Sub StatusChanged(newStatus as String)
		  StatusLabel.Value = newStatus
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
		End Sub
	#tag EndEvent
	#tag Event
		Sub DocumentBegin(url as String)
		  ProgressWheel1.Visible=True
		  ProgressWheel1.Enabled=True
		  ProgressWheel1.Refresh
		  
		  Self.AddressField.Text=url
		End Sub
	#tag EndEvent
	#tag Event
		Sub Error(errorNumber as Integer, errorMessage as String)
		  ProgressWheel1.Visible=False
		  ProgressWheel1.Enabled=False
		  MsgBox "Web viewer error "+Str(errorNumber)+":"+EndOfLine+errorMessage
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
		  
		  If Keyboard.CommandKey Then 'Open this link in new tab
		    If Not AlreadyOpeningTab Then
		      AlreadyOpeningTab=True
		      If ParentBrowserWindow <> Nil Then
		        Dim page2load As String = url
		        ParentBrowserWindow.AddNewTab.LoadURL(page2load)
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
#tag EndViewBehavior
