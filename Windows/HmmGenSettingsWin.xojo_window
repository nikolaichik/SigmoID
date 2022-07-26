#tag Window
Begin Window HmmGenSettingsWin
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Composite       =   False
   Frame           =   8
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   363
   ImplicitInstance=   True
   LiveResize      =   "True"
   MacProcID       =   0
   MaxHeight       =   424
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinHeight       =   280
   MinimizeButton  =   True
   MinWidth        =   400
   Placement       =   0
   Resizeable      =   True
   Title           =   "#kHmmGenSettings"
   Visible         =   False
   Width           =   450
   Begin PushButton RunButton
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   0
      Cancel          =   False
      Caption         =   "#kRun"
      Default         =   True
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   340
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   331
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   90
   End
   Begin PushButton CancelButton
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   0
      Cancel          =   True
      Caption         =   "#kCancel"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   238
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   331
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   90
   End
   Begin CheckBox IntergenicBox
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "#kIgnoreWithinORF"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   " -i, --insert          \ndon't add features inside CDS"
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      State           =   1
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   86
      Transparent     =   False
      Underline       =   False
      Value           =   True
      Visible         =   True
      Width           =   402
   End
   Begin Label Label4
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "#kFeature2add"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   147
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   143
   End
   Begin GroupBox GroupBox1
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   ""
      Enabled         =   True
      Height          =   86
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   16
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   174
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   410
      Begin CheckBox AddQualifierBox
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "#kAddQualifier"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   29
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         State           =   1
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   189
         Transparent     =   False
         Underline       =   False
         Value           =   True
         Visible         =   True
         Width           =   381
      End
      Begin TextField KeyField
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         CueText         =   "bound_moiety"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   29
         LimitText       =   0
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Mask            =   ""
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "bound_moiety"
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   221
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   125
      End
      Begin TextField ValueField
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         CueText         =   "#kProteinName"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   166
         LimitText       =   0
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Mask            =   ""
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   221
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   253
      End
   End
   Begin CheckBox PalindromicBox
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "#kPalindromicSite"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      State           =   0
      TabIndex        =   17
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   116
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   164
   End
   Begin ComboBox FeatureCombo
      AutoComplete    =   False
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Hint            =   ""
      Index           =   -2147483648
      InitialValue    =   ""
      Italic          =   False
      Left            =   166
      ListIndex       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   19
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   147
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   264
   End
   Begin CheckBox NextLocusBox
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "#kUseNext"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   " -n, --name            \ndon't pick 'locus_tag' and 'gene' qualifiers from the next CDS feature.\nChecking this will remove the -n option"
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   188
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      State           =   1
      TabIndex        =   20
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   116
      Transparent     =   False
      Underline       =   False
      Value           =   True
      Visible         =   True
      Width           =   242
   End
   Begin GroupBox ThresholdsBox
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "#kThreshold"
      Enabled         =   True
      Height          =   58
      HelpTag         =   "Thresholds to use with uncalibrated profile"
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   21
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   20
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   410
      Begin RadioButton EvalueButton
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "#kEvalue"
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "ThresholdsBox"
         Italic          =   False
         Left            =   271
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   47
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   105
      End
      Begin RadioButton BitScoreButton
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "#kBitScore"
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "ThresholdsBox"
         Italic          =   False
         Left            =   28
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   48
         Transparent     =   False
         Underline       =   False
         Value           =   True
         Visible         =   True
         Width           =   112
      End
      Begin TextField EvalueField
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         CueText         =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "ThresholdsBox"
         Italic          =   False
         Left            =   379
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Mask            =   ""
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "100"
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   46
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   40
      End
      Begin TextField BitScoreField
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         CueText         =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "ThresholdsBox"
         Italic          =   False
         Left            =   145
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Mask            =   ""
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "10"
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   46
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   40
      End
   End
   Begin CheckBox GenomeBrowserCheckBox
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "#kShowHitsInBrowser"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      State           =   1
      TabIndex        =   22
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   277
      Transparent     =   False
      Underline       =   False
      Value           =   True
      Visible         =   True
      Width           =   410
   End
   Begin CheckBox StatsCheckbox
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "Display annotation statistics"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   22
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   23
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   307
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      VisualState     =   "0"
      Width           =   206
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Activate()
		  'if LengthField.text="" then
		  'RunButton.enabled=false
		  'ELSE
		  'RunButton.enabled=true
		  'END IF
		  
		  'put the value used by hmmer in threshold box here:
		  if nhmmerSettingsWin.BitScoreButton.value AND nhmmerSettingsWin.BitScoreButton.enabled then
		    me.BitScoreButton.value=true
		    me.BitScoreField.text=nhmmerSettingsWin.BitScoreField.text
		  elseif nhmmerSettingsWin.EvalueButton.value AND nhmmerSettingsWin.EvalueButton.enabled  then
		    me.EvalueButton.value=true
		    me.EvalueField.text=nhmmerSettingsWin.EvalueField.text
		  elseif nhmmerSettingsWin.tcButton.value then
		    me.BitScoreButton.value=true
		    me.BitScoreField.text=unbracket(nhmmerSettingsWin.TCvalue.text)
		  elseif nhmmerSettingsWin.gaButton.value then
		    me.BitScoreButton.value=true
		    me.BitScoreField.text=unbracket(nhmmerSettingsWin.GAvalue.text)
		  elseif nhmmerSettingsWin.ncButton.value then
		    me.BitScoreButton.value=true
		    me.BitScoreField.text=unbracket(nhmmerSettingsWin.NCvalue.text)
		  end
		  
		  RunCheck
		  
		End Sub
	#tag EndEvent

	#tag Event
		Function CancelClose(appQuitting as Boolean) As Boolean
		  if not appQuitting then
		    'hide instead of closing to preserve the settings
		    LogoWin.nhmmeroptions=""
		    self.OKPressed=false
		    self.hide
		    return true
		  end if
		End Function
	#tag EndEvent

	#tag Event
		Sub Open()
		  'determine the default length parameter
		  
		  'dim instream as TextInputStream
		  'dim aline As string
		  ''read profile calibration values
		  'InStream = logowin.LogoFile.OpenAsTextFile
		  'while not InStream.EOF
		  'aLine=InStream.readLine
		  'if left(aLine,1)="A" OR left(aLine,1)="C" OR left(aLine,1)="G" OR left(aLine,1)="T"  then
		  'LengthField.CueText=str(len(aline))
		  'exit
		  'end if
		  'wend
		  
		  AdjustLayout4linux(me)
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub ReadOptions()
		  dim opt as string
		  dim featureType as string
		  
		  opt="-d " 'remove duplicates of the same site at the same position (happen when two or more profiles are used for the same TF and rarely with palindromic sites)
		  
		  if BitScoreButton.value then
		    opt=opt+"-S "+str(BitScoreField.text)
		  else
		    opt=opt+"-E "+str(EvalueField.text)
		  end if
		  if IntergenicBox.value then
		    opt=opt+" -i"
		    opt=opt+" -b 50" 'allow 50 bp within frame
		  end if
		  
		  if LogoWin.minAlignmentLength<>LogoWin.AlignmentLength then
		    opt=opt+" -L "+LogoWin.minAlignmentLength+":"+LogoWin.AlignmentLength 'gapped alignment, match lengths may differ
		  else
		    opt=opt+" -L "+LogoWin.AlignmentLength
		  end if
		  
		  if PalindromicBox.Value then
		    opt=opt+" -p"
		  end if
		  
		  if NOT NextLocusBox.value then
		    opt=opt+" -n"
		  end if
		  
		  featureType=trim(FeatureCombo.text)
		  if featureType<>"" then
		    if featureType="promoter" then
		      opt=opt+" -f regulatory"  'GenBank 2015 format
		    else
		      opt=opt+" -f "+ featureType
		    end if
		  else
		    msgbox "'Feature to add' box is not filled in. Can't proceed without feature name!"
		    return
		  end if
		  
		  if AddQualifierBox.value then
		    '-q{"sigma-factor":"fliA"}
		    if keyfield.text<>"" AND ValueField.text<>"" then
		      if featureType="promoter" then
		        opt=opt+" -q "+chr(34)+"regulatory_class"+chr(34)+"#"+chr(34)+"promoter"
		        opt=opt+chr(34)+" "+chr(34)+trim(keyfield.text)+chr(34)+"#"+chr(34)+trim(valuefield.text)
		      else
		        opt=opt+" -q "+chr(34)+trim(keyfield.text)+chr(34)+"#"+chr(34)+trim(valuefield.text)
		      end if
		      opt=opt+chr(34)+" "+chr(34)+"inference"+chr(34)+"#"+chr(34)+"profile:nhmmer:"+nhmmerVersion+chr(34)
		      
		    else
		      msgbox "Key and/or value are not provided for the qualifier: ignoring..."
		    end if
		  else
		    'add just the inference qualifier:
		    opt=opt+" -q "+chr(34)+"inference"+chr(34)+"#"+chr(34)+"profile:nhmmer:"+nhmmerVersion+chr(34)
		    
		    'opt=opt+" -q{"+chr(34)+"Inference"+chr(34)+":"+chr(34)+"profile:nhmmer:"+nhmmerVersion+chr(34)+"}" 'chr(34) gives "
		    'opt=opt+" -q "+chr(34)+trim(keyfield.text)+chr(34)+"#"+chr(34)+trim(valuefield.text)+chr(34)'+"}" 'chr(34) gives "
		    
		  end if
		  
		  
		  
		  LogoWin.HmmGenOptions=Opt
		  
		  Exception err
		    ExceptionHandler(err,"HmmGenSettingsWin:ReadOptions")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RunCheck()
		  dim RunEnabled as boolean = true
		  
		  If BitScoreButton.value then
		    if BitScoreField.text="" then
		      RunEnabled=false
		    end if
		  else
		    if EvalueField.text="" then
		      RunEnabled=false
		    end if
		  end if
		  
		  if AddQualifierBox.value then
		    if KeyField.text="" then
		      RunEnabled=false
		    end if
		    if ValueField.text="" then
		      RunEnabled=false
		    end if
		    
		    'if instr(ValueField.text," ")>0 then  'not needed any more?
		    'RunEnabled=false
		    'end if
		  end if
		  
		  RunButton.Enabled=RunEnabled
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Unbracket(s as string) As string
		  s=replace(s,"(","")
		  return replace(s,")","")
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		OKPressed As boolean
	#tag EndProperty


#tag EndWindowCode

#tag Events RunButton
	#tag Event
		Sub Action()
		  self.ReadOptions
		  self.OKPressed=true
		  self.hide
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CancelButton
	#tag Event
		Sub Action()
		  LogoWin.nhmmeroptions=""
		  self.OKPressed=false
		  self.hide
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events AddQualifierBox
	#tag Event
		Sub Action()
		  if me.Value then
		    KeyField.enabled=true
		    ValueField.Enabled=true
		  else
		    KeyField.enabled=false
		    ValueField.Enabled=false
		  end if
		  
		  RunCheck
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events KeyField
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  if key=chr(9) then 'tab pressed
		    if me.text="" then
		      me.text=me.CueText
		    end if
		    
		  end if
		  
		  RunCheck
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events ValueField
	#tag Event
		Sub TextChange()
		  RunCheck
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PalindromicBox
	#tag Event
		Sub Action()
		  if me.value then
		    LogoWin.palindromic=true
		    LogoWin.LogoWinToolbar.Item(4).Enabled=false
		  else
		    LogoWin.palindromic=false
		    LogoWin.LogoWinToolbar.Item(4).Enabled=true
		  end if
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events FeatureCombo
	#tag Event
		Sub Open()
		  Me.AddRow("promoter")
		  Me.AddRow("protein_bind")
		  Me.ListIndex = 1
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events NextLocusBox
	#tag Event
		Sub Action()
		  if self.Visible then
		    if me.value then
		      msgbox "Please note that GenBank objects adding locus_tag and 'gene' qualifiers to regulatory features"
		    end if  
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EvalueButton
	#tag Event
		Sub Action()
		  RunCheck
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BitScoreButton
	#tag Event
		Sub Action()
		  RunCheck
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EvalueField
	#tag Event
		Sub TextChange()
		  RunCheck
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BitScoreField
	#tag Event
		Sub TextChange()
		  RunCheck
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events StatsCheckbox
	#tag Event
		Sub Action()
		  If not me.Value then
		    LogoWin.TFsitesData = ""
		  else
		    dim dlg As OpenFileDialog
		    dim f As FolderItem
		    dlg = New OpenFileDialog
		    dlg.InitialFolder = LogoWin.genomefile.Parent
		    dlg.Title = "Provide file with Transcription factor binding sites (TFBSs) arrangements (RegulonDB format)"
		    f = dlg.ShowModal
		    if f <> Nil then
		      LogoWin.TFsitesData = f.ShellPath
		    else
		      LogoWin.TFsitesData = ""
		    end
		  end
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
		Name="Backdrop"
		Visible=true
		Group="Appearance"
		InitialValue=""
		Type="Picture"
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
		Name="FullScreen"
		Visible=false
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
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
		Name="ImplicitInstance"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
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
		Name="MenuBarVisible"
		Visible=false
		Group="Appearance"
		InitialValue="True"
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
		Name="OKPressed"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="boolean"
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
		Name="Super"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
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
		Name="Width"
		Visible=true
		Group="Position"
		InitialValue="600"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
