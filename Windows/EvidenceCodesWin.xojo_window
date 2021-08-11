#tag Window
Begin Window EvidenceCodesWin
   Backdrop        =   0
   BackgroundColor =   &cFFFFFF00
   Composite       =   False
   DefaultLocation =   "0"
   FullScreen      =   False
   HasBackgroundColor=   False
   HasCloseButton  =   True
   HasFullScreenButton=   False
   HasMaximizeButton=   True
   HasMinimizeButton=   True
   Height          =   138
   ImplicitInstance=   True
   MacProcID       =   0
   MaximumHeight   =   32000
   MaximumWidth    =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinimumHeight   =   64
   MinimumWidth    =   64
   Resizeable      =   True
   Title           =   "Motif Evidence"
   Type            =   "0"
   Visible         =   True
   Width           =   600
   Begin Label Label1
      AllowAutoDeactivate=   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   44
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Multiline       =   True
      Scope           =   0
      Selectable      =   False
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   20
      Transparent     =   False
      Underline       =   False
      Value           =   "Evidence codes as defined by RegulonDB. All relevant evidence codes should be checked, even if applicable to a single operator."
      Visible         =   True
      Width           =   560
   End
   Begin CheckBox EvidenceCheck
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "Untitled"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   0
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   66
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      VisualState     =   "0"
      Width           =   560
   End
   Begin PushButton PushButton1
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "OK"
      Default         =   True
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   490
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MacButtonStyle  =   "0"
      Scope           =   0
      TabIndex        =   22
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   98
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin PushButton PushButton2
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   True
      Caption         =   "Cancel"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   408
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MacButtonStyle  =   "0"
      Scope           =   0
      TabIndex        =   23
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   98
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Function CancelClose(appQuitting as Boolean) As Boolean
		  hide
		End Function
	#tag EndEvent

	#tag Event
		Sub Open()
		  AppendCheckboxes
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub AppendCheckboxes()
		  'count codes first:
		  Dim n,cc As Integer 
		  Dim cb As CheckBox
		  Dim tc As String
		  
		  If AllCodes<>"" Then
		    cc=AllCodes.CountFields(";")
		    
		    'first checkbox
		    cb=EvidenceCheck(0)
		    tc=NthField(AllCodes,";",1)
		    If InStr(StrongCodes,NthField(tc," ",1))>0 Then
		      cb.Bold=True
		    End If
		    cb.caption=tc
		    
		    'all other checkboxes
		    For n=2 To cc
		      cb= New EvidenceCheck
		      tc=NthField(AllCodes,";",n)
		      If InStr(StrongCodes,NthField(tc," ",1))>0 Then
		        cb.Bold=True
		      End If
		      cb.caption=tc
		      cb.top=EvidenceCheck(0).top+28*(n-1)
		    Next
		    CheckBcount=n-1
		    
		    Self.height=88+28*n
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function isStrong(Ecode as string) As boolean
		  // checks if evidence code is strong
		  'We use RegulonDb classification, where these are considered As strong:
		  '[APPH] Assay of protein purified to homogeneity
		  '[APPHINH] Assay Of protein purified To homogeneity from its native host
		  '[BPP] Binding Of purified proteins
		  '[IDA] Inferred from direct assay
		  '[SM] Site mutation
		  
		  Const StrongCodes As String = "[APPH][APPHINH][BPP][IDA][SM]"
		  
		  If InStr(StrongCodes,Ecode)>0 Then
		    Return True
		  Else
		    return false
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadCodes(codes As string)
		  // checks evidence codes corresponding to the passed string, unchecks the others
		  
		  Dim n,m,cc As Integer
		  Dim currentCode As String
		  
		  'clear previous selection
		  For n=0 To CheckBcount-1
		    EvidenceCheck(n).value=False
		  Next
		  
		  'check the proper codes
		  cc=CountFields(codes,"][")
		  For m=1 To cc
		    currentCode=codes.NthField("][",m)
		    currentCode=Replace(currentCode,"[","")
		    currentCode=Replace(currentCode,"]","")
		    currentCode="["+currentCode+"]"
		    For n=0 To CheckBcount-1
		      If InStr(EvidenceCheck(n).caption,currentCode)>0 Then
		        EvidenceCheck(n).value=true
		      End If
		    Next
		  Next
		End Sub
	#tag EndMethod


	#tag Note, Name = Evidence codes notes
		
		1. Evidence codes taken from RegulonDB. Since I couldn't find the full list anywhere, these were collected from several regulon pages. 
		2. If a new code has to be added, append it to the AllCodes property.
		3. Window height is resized according to the number of codes in the AllCodes string (H=108+30N, where N is the number of codes)
		 
	#tag EndNote


	#tag Property, Flags = &h0
		AllCodes As String = "[AIBSCS] Automated inference based on similarity to consensus sequences;[AIBSPD] Automated inference based on sequence pattern discovery;[APIORCISFBSCS] A person inferred or reviewed a computer inference of sequence function based on similarity to a consensus sequence;[APPH] Assay of protein purified to homogeneity;[APPHINH] Assay of protein purified to homogeneity from its native host;[BCE] Binding of cellular extracts;[BPP] Binding of purified proteins;[CEEUMA] ChIP-exo evidence used in manual assertion;[EME] Expression microarray evidence;[GEA] Gene expression analysis;[GS] genomic SELEX;[HIFS] Human inference of function from sequence;[IDA] Inferred from direct assay;[IHBCE] Inferred by a human based on computational evidence;[IE] Inferred from experiment;[IEP] Inferred from expression pattern;[IGI] Inferred from genetic interaction;[IMP] Inferred from mutant phenotype;[IPI] Inferred from physical interaction;[RSE] RNA-seq evidence;[SM] Site mutation"
	#tag EndProperty

	#tag Property, Flags = &h0
		CheckBcount As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		CheckedCodes As string
	#tag EndProperty

	#tag Property, Flags = &h0
		StrongCodes As string = "[APPH][APPHINH][BPP][IDA][SM]"
	#tag EndProperty

	#tag Property, Flags = &h0
		Untitled As Integer
	#tag EndProperty


#tag EndWindowCode

#tag Events PushButton1
	#tag Event
		Sub Action()
		  Dim n As Integer
		  CheckedCodes=""
		  For n=0 To CheckBcount-1
		    If EvidenceCheck(n).Value Then
		      CheckedCodes=CheckedCodes+NthField(EvidenceCheck(n).caption," ",1)
		    End If
		  Next
		  
		  Self.hide
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton2
	#tag Event
		Sub Action()
		  Self.hide
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
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
		Group="Size"
		InitialValue="600"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Size"
		InitialValue="400"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
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
		Name="Title"
		Visible=true
		Group="Frame"
		InitialValue="Untitled"
		Type="String"
		EditorType=""
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
		Name="Resizeable"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Visible=false
		Group="OS X (Carbon)"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Visible=false
		Group="OS X (Carbon)"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreen"
		Visible=false
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Behavior"
		InitialValue="True"
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
		Name="Visible"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
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
		Name="Backdrop"
		Visible=true
		Group="Background"
		InitialValue=""
		Type="Picture"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBar"
		Visible=true
		Group="Menus"
		InitialValue=""
		Type="MenuBar"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Visible=true
		Group="Deprecated"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="AllCodes"
		Visible=false
		Group="Behavior"
		InitialValue="[AIBSCS] Automated inference based on similarity to consensus sequences;[AIBSPD] Automated inference based on sequence pattern discovery;[APIORCISFBSCS] A person inferred or reviewed a computer inference of sequence function based on similarity to a consensus sequence;[APPH] Assay of protein purified to homogeneity;[APPHINH] Assay of protein purified to homogeneity from its native host;[BCE] Binding of cellular extracts;[BPP] Binding of purified proteins;[CEEUMA] ChIP-exo evidence used in manual assertion;[EME] Expression microarray evidence;[GEA] Gene expression analysis;[GS] genomic SELEX;[HIFS] Human inference of function from sequence;[IDA] Inferred from direct assay;[IHBCE] Inferred by a human based on computational evidence;[IE] Inferred from experiment;[IEP] Inferred from expression pattern;[IGI] Inferred from genetic interaction;[IMP] Inferred from mutant phenotype;[IPI] Inferred from physical interaction;[RSE] RNA-seq evidence;[SM] Site mutation"
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="CheckBcount"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="CheckedCodes"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="string"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="StrongCodes"
		Visible=false
		Group="Behavior"
		InitialValue="[APPH][APPHINH][BPP][IDA][SM]"
		Type="string"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Untitled"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
