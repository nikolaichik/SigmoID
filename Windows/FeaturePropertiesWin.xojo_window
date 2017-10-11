#tag Window
Begin Window FeaturePropertiesWin
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   False
   Frame           =   8
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   411
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   False
   MaxWidth        =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   False
   MinWidth        =   64
   Placement       =   0
   Resizeable      =   False
   Title           =   "#kEditFeatureWtitle"
   Visible         =   False
   Width           =   524
   Begin TextArea FeatureTextField
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   True
      BackColor       =   &cFFFFFF00
      Bold            =   False
      Border          =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   361
      HelpTag         =   ""
      HideSelection   =   True
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   0
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
      Styled          =   False
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   12.0
      TextUnit        =   0
      Top             =   0
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   524
   End
   Begin PushButton OKButton
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "#kOK"
      Default         =   True
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   414
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   369
      Underline       =   False
      Visible         =   True
      Width           =   90
   End
   Begin PushButton CancelButton
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   True
      Caption         =   "#kCancel"
      Default         =   False
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   316
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   369
      Underline       =   False
      Visible         =   True
      Width           =   90
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Activate()
		  GenomeWin.ToolTipTimer.Mode=0
		  Tooltip.hide
		  'beep
		End Sub
	#tag EndEvent

	#tag Event
		Function CancelClose(appQuitting as Boolean) As Boolean
		  OKPressed=false
		  
		  'self.hide
		  'return true
		End Function
	#tag EndEvent

	#tag Event
		Sub Close()
		  GenomeWin.ToolTipTimer.Mode=1
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  AdjustLayout4linux(me)
		  GenomeWin.ToolTipTimer.Mode=0
		  Tooltip.hide
		  
		  
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub AcceptEdit()
		  FeatureTextField.text=trim(FeatureTextField.text) 'a precaution to remove possible extra white space
		  
		  
		  OKPressed=true
		  self.hide
		  self.ParentWin.Show
		  'self.close
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Arrow As cClickableShape
	#tag EndProperty

	#tag Property, Flags = &h0
		baselineY As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		DrawnArrow As Group2D
	#tag EndProperty

	#tag Property, Flags = &h0
		Feature As GBFeature
	#tag EndProperty

	#tag Property, Flags = &h0
		OKpressed As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		ParentWin As GenomeWin
	#tag EndProperty


	#tag Constant, Name = GBFeatureList, Type = String, Dynamic = False, Default = \"CDS\rgene\rmRNA\rexon\rintron\rpromoter\rrep_origin\rterminator\rattenuator\rconflict\rC_region\rCAAT_signal\rD-loop\rD_segment\renhancer\rgap\rGC_signal\riDNA\rJ_segment\rLTR\rmat_peptide\rmisc_binding\rmisc_difference\rmisc_feature\rmisc_recomb\rmisc_RNA\rmisc_signal\rmisc_structure\rmodified_base\rncRNA\rN_region\rold_sequence\roperon\roriT\rpolyA_signal\rpolyA_site\rprecursor_RNA\rprim_transcript\rprimer_bind\rprotein_bind\rRBS\rrepeat_region\rrRNA\rS_region\rsig_peptide\rsource\rstem_loop\rSTS\rTATA_signal\rtmRNA\rtransit_peptide\rtRNA\runsure\rV_region\rV_segment\rvariation\r3\'UTR\r5\'UTR\r-10_signal\r-35_signal\r", Scope = Public
	#tag EndConstant


#tag EndWindowCode

#tag Events FeatureTextField
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  if me.text=kComments then
		    me.text=""
		    me.TextColor=RGB(0,0,0)
		  end
		  
		  
		  // using the code below to close this window by pressing "Enter" proved to be more confusing than helping 
		  
		  'if NOT keyboard.AltKey then
		  'if key=chr(13) OR key=chr(3) then 'return or enter
		  'AcceptEdit
		  'return true
		  'end if
		  'end if
		  
		End Function
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  if me.text=kComments then
		    me.text=""
		    me.TextColor=RGB(0,0,0)
		  end
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseUp(X As Integer, Y As Integer)
		  if me.text="" then
		    me.text=kComments
		    me.TextColor=&cC0C0C0
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events OKButton
	#tag Event
		Sub Action()
		  AcceptEdit
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CancelButton
	#tag Event
		Sub Action()
		  OKPressed=false
		  
		  self.ParentWin.Show
		  self.close
		  
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
		Name="baselineY"
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
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
		Name="OKpressed"
		Group="Behavior"
		InitialValue="false"
		Type="boolean"
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
