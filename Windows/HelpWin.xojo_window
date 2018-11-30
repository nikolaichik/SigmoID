#tag Window
Begin Window HelpWin
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   True
   Frame           =   9
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   700
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   False
   MaxWidth        =   32000
   MenuBar         =   149806200
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   True
   MinWidth        =   64
   Placement       =   0
   Resizeable      =   True
   Title           =   "#kSigmoIDhelp"
   Visible         =   False
   Width           =   1100
   Begin HTMLViewer WebViewer
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   667
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Renderer        =   0
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   34
      Visible         =   True
      Width           =   1100
   End
   BeginSegmented SegmentedControl SegmentedControl1
      Enabled         =   True
      Height          =   24
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MacControlStyle =   2
      Scope           =   0
      Segments        =   "\nbr_prev_icon16\nFalse\r\nbr_next_icon16\nFalse"
      SelectionType   =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   4
      Visible         =   True
      Width           =   54
   End
   Begin ProgressWheel ProgressWheel1
      AutoDeactivate  =   True
      Enabled         =   False
      Height          =   16
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   1076
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   8
      Visible         =   False
      Width           =   16
   End
   BeginSegmented SegmentedControl SegmentedControl2
      Enabled         =   True
      Height          =   24
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   105
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MacControlStyle =   2
      Scope           =   0
      Segments        =   "\nhome2x\nFalse"
      SelectionType   =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   4
      Visible         =   True
      Width           =   27
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Close()
		  WebViewer.close
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  
		  
		End Sub
	#tag EndEvent


	#tag MenuHandler
		Function FileClose() As Boolean Handles FileClose.Action
			Close
			Return True
			
		End Function
	#tag EndMenuHandler


	#tag Method, Flags = &h0
		Sub FwdBackCheck()
		  Dim s0 As SegmentedControlItem = SegmentedControl1.Items( 0 )
		  Dim s1 As SegmentedControlItem = SegmentedControl1.Items( 1 )
		  
		  if WebViewer.CanGoForward then
		    s1.Enabled=true
		  else
		    s1.Enabled=false
		  end if
		  
		  if WebViewer.CanGoBack then
		    s0.Enabled=true
		  else
		    s0.Enabled=false
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadPage(aFile as FolderItem)
		  ProgressWheel1.Visible=true
		  ProgressWheel1.Enabled=true
		  ProgressWheel1.Refresh
		  me.WebViewer.LoadPage(aFile)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadPage(URL as string)
		  ProgressWheel1.Visible=true
		  ProgressWheel1.Enabled=true
		  ProgressWheel1.Refresh
		  me.WebViewer.LoadURL(URL)
		End Sub
	#tag EndMethod


#tag EndWindowCode

#tag Events WebViewer
	#tag Event
		Sub DocumentComplete(URL as String)
		  FwdBackCheck
		  ProgressWheel1.Visible=false
		  ProgressWheel1.Enabled=false
		End Sub
	#tag EndEvent
	#tag Event
		Sub TitleChanged(newTitle as String)
		  ProgressWheel1.Visible=true
		  ProgressWheel1.Enabled=true
		  ProgressWheel1.Refresh
		  title=newTitle
		End Sub
	#tag EndEvent
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  if key=decodehex("1D") then 'right (or chr(124?)
		    if me.CanGoForward then
		      me.GoForward
		    end if
		  elseif key=decodehex("1C") then ' (chr123)? - left
		    if me.CanGoBack then
		      me.GoBack
		    end if
		  end if
		  FwdBackCheck
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events SegmentedControl1
	#tag Event
		Sub Action(itemIndex as integer)
		  ProgressWheel1.Visible=true
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
		  Dim s0 As SegmentedControlItem = me.Items( 0 )
		  Dim s1 As SegmentedControlItem = me.Items( 1 )
		  
		  #if TargetCocoa then
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
		  dim f As folderitem
		  
		  f=Resources_f.Child("Help").child("index.html")
		  if f<>nil then
		    if f.exists then
		      LoadPage(f)
		    end if
		  end if
		  
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Dim s0 As SegmentedControlItem = me.Items( 0 )
		  
		  #if TargetCocoa then
		    s0.Title=""
		    s0.Icon=SystemIcons.HomeTemplate
		  #endif
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="BackColor"
		Visible=true
		Group="Appearance"
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
		Group="Appearance"
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
		Name="Frame"
		Visible=true
		Group="Appearance"
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
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackColor"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
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
		Group="Appearance"
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
		Group="Position"
		InitialValue="32000"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximizeButton"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxWidth"
		Visible=true
		Group="Position"
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
		Group="Position"
		InitialValue="64"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimizeButton"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinWidth"
		Visible=true
		Group="Position"
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
		Name="Placement"
		Visible=true
		Group="Position"
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
