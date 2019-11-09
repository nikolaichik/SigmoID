#tag Window
Begin Window nhmmerSettingsWin
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   False
   Frame           =   8
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   353
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   353
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinHeight       =   224
   MinimizeButton  =   True
   MinWidth        =   400
   Placement       =   0
   Resizeable      =   True
   Title           =   "#knHMMerSettings"
   Visible         =   False
   Width           =   566
   Begin TextField OptionsField
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
      Italic          =   False
      Left            =   339
      LimitText       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Mask            =   ""
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   205
      Transparent     =   "False"
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   204
   End
   Begin Label Label1
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
      Left            =   216
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "#kMoreOptions"
      TextAlign       =   2
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   205
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   111
   End
   Begin Label Label3
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
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "#kGenome_"
      TextAlign       =   2
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   252
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   69
   End
   Begin TextField GenomeField
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
      HelpTag         =   "Path to genome to be searched"
      Index           =   -2147483648
      Italic          =   False
      Left            =   93
      LimitText       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Mask            =   ""
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   250
      Transparent     =   "False"
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   361
   End
   Begin PushButton RunButton
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "#kRun"
      Default         =   True
      Enabled         =   False
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   456
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   313
      Transparent     =   "False"
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
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   354
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   313
      Transparent     =   "False"
      Underline       =   False
      Visible         =   True
      Width           =   90
   End
   Begin GroupBox MaskingBox
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "#kMasking"
      Enabled         =   True
      Height          =   147
      HelpTag         =   "Positions selected in the logo above will be masked according to the algorithm chosen"
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   216
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   14
      Transparent     =   "False"
      Underline       =   False
      Visible         =   True
      Width           =   330
      Begin RadioButton wpb
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "#kHenikoffPositionWeights"
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "MaskingBox"
         Italic          =   False
         Left            =   224
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
         Top             =   38
         Transparent     =   "False"
         Underline       =   False
         Value           =   True
         Visible         =   True
         Width           =   309
      End
      Begin RadioButton wgsc
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Gerstein/Sonnhammer/Chothia"
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "MaskingBox"
         Italic          =   False
         Left            =   224
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   70
         Transparent     =   "False"
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   309
      End
      Begin RadioButton wblosum
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "#kHenikoffSimpleWeights"
         Enabled         =   True
         Height          =   20
         HelpTag         =   "Henikoff simple filter weights"
         Index           =   -2147483648
         InitialParent   =   "MaskingBox"
         Italic          =   False
         Left            =   224
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   102
         Transparent     =   "False"
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   237
      End
      Begin RadioButton wnone
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "#kNoWeighting"
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "MaskingBox"
         Italic          =   False
         Left            =   224
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   4
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   134
         Transparent     =   "False"
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   319
      End
      Begin TextField wid
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
         InitialParent   =   "MaskingBox"
         Italic          =   False
         Left            =   473
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
         TabIndex        =   6
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "0.62"
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   100
         Transparent     =   "False"
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   60
      End
   End
   Begin GroupBox CutoffBox
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "#kUseProfileCutoffs"
      Enabled         =   True
      Height          =   118
      HelpTag         =   "Use score tresholds stored in the profile"
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
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   14
      Transparent     =   "False"
      Underline       =   False
      Visible         =   True
      Width           =   184
      Begin RadioButton gaButton
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "#kGathering"
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "CutoffBox"
         Italic          =   False
         Left            =   31
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   71
         Transparent     =   "False"
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   116
      End
      Begin RadioButton ncButton
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "#kNoise1"
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "CutoffBox"
         Italic          =   False
         Left            =   31
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
         Top             =   101
         Transparent     =   "False"
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   116
      End
      Begin Label GAvalue
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "CutoffBox"
         Italic          =   False
         Left            =   149
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   71
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   48
      End
      Begin Label NCvalue
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "CutoffBox"
         Italic          =   False
         Left            =   149
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   4
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   101
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   48
      End
      Begin Label TCvalue
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "CutoffBox"
         Italic          =   False
         Left            =   149
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   5
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   41
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   48
      End
      Begin RadioButton tcButton
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "#kTrusted"
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "CutoffBox"
         Italic          =   False
         Left            =   31
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   6
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   41
         Transparent     =   "False"
         Underline       =   False
         Value           =   True
         Visible         =   True
         Width           =   116
      End
   End
   Begin CheckBox MaxCheck
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "#kMaxSensitivity"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   "--max \nTurn off (nearly) all filters, including the bias filter, and run full Forward/Backward postprocessing on most of the target sequence."
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   216
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      State           =   1
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   173
      Transparent     =   "False"
      Underline       =   False
      Value           =   True
      Visible         =   True
      Width           =   170
   End
   Begin CheckBox Null2check
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "#kBiasCorrection"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   21
      HelpTag         =   "Check this to remove the --nonull2 switch that turns off the null2 score corrections for biased composition."
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   387
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      State           =   0
      TabIndex        =   12
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   172
      Transparent     =   "False"
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   168
   End
   Begin PushButton PushButton3
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "#kChoose"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   "Select genome to search"
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   466
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   13
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   251
      Transparent     =   "False"
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin GroupBox ThresholdsBox
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "#kThreshold"
      Enabled         =   False
      Height          =   93
      HelpTag         =   "Thresholds to use with uncalibrated profile"
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
      TabIndex        =   14
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   144
      Transparent     =   "False"
      Underline       =   False
      Visible         =   True
      Width           =   184
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
         Left            =   28
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   205
         Transparent     =   "False"
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   115
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
         Top             =   172
         Transparent     =   "False"
         Underline       =   False
         Value           =   True
         Visible         =   True
         Width           =   115
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
         Left            =   155
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
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   204
         Transparent     =   "False"
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
         Left            =   155
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
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   170
         Transparent     =   "False"
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   40
      End
   End
   Begin CheckBox AddAnnotationCheckBox
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "#kAddAnnotation2genome"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   False
      Height          =   20
      HelpTag         =   "Annotation will be added with the HmmGen.py script"
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
      TabIndex        =   15
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   284
      Transparent     =   "False"
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   526
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Function CancelClose(appQuitting as Boolean) As Boolean
		  if not appQuitting then
		    'hide instead of closing to preserve the settings
		    LogoWin.nhmmeroptions=""
		    self.hide
		    return true
		  end if
		End Function
	#tag EndEvent

	#tag Event
		Sub Open()
		  #if DebugBuild
		    RunButton.Enabled=true
		  #endif
		  AdjustLayout4linux(me)
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub EnableRun()
		  RunButton.enabled=true
		  
		  if LogoWin.Genomefile=nil then
		    RunButton.enabled=false
		  elseif GenomeField.text<>LogoWin.Genomefile.shellpath then
		    RunButton.enabled=false
		  end if
		  
		  if BitScoreButton.Enabled=true then
		    if BitScoreButton.Value=true AND BitScoreField.text="" then
		      RunButton.enabled=false
		    end if
		  end if
		  
		  if EvalueButton.Enabled=true then
		    if EvalueButton.Value=true AND EvalueField.text="" then
		      RunButton.enabled=false
		    end if
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ReadOptions()
		  dim PNO as string
		  
		  PNO=""
		  
		  if MaxCheck.value then
		    PNO=PNO+" --max"                     '--max
		  end if
		  if NOT null2Check.value then
		    PNO=PNO+" --nonull2"                 '--nonull2
		  end if
		  
		  if OptionsField.text<>"" then
		    PNO=PNO+" "+trim(OptionsField.text)
		  end if
		  
		  if CutoffBox.Enabled then              'select cutoff to use
		    'copy the values to HmmGenSettingsWin
		    'in case the user runs HmmGen.py without configuring it. 
		    if gaButton.Value=true then
		      PNO=PNO+" --cut_ga"                 '--cut_ga
		      HmmGenSettingsWin.BitScoreField.text=mid(GAvalue.text,2,len(GAvalue.text)-2)
		    elseif ncButton.Value=true then
		      PNO=PNO+" --cut_nc"                 '--cut_nc
		      HmmGenSettingsWin.BitScoreField.text=mid(NCvalue.text,2,len(NCvalue.text)-2)
		    elseif tcButton.Value=true then
		      PNO=PNO+" --cut_tc"                 '--cut_tc
		      HmmGenSettingsWin.BitScoreField.text=mid(TCvalue.text,2,len(TCvalue.text)-2)
		    end if
		    
		  else
		    
		    if ThresholdsBox.enabled then         'select threshold to use
		      if EvalueButton.Value then
		        if val(EvalueField.text)>0 then    'if cutoff isn't entered, run without it
		          PNO=PNO+" -E "+trim(EvalueField.text)
		        end if
		      elseif BitScoreButton.value then
		        if val(BitScoreField.text)>0 then    'if cutoff isn't entered, run without it
		          PNO=PNO+" -T "+trim(BitScoreField.text)
		        end if
		      end if
		    end if
		    
		    if LogoWin.masked then
		      'these weights will be used by alimask, so are stored separetely from nhmmer optons
		      if wnone.Value then
		        LogoWin.Weighting=" --wnone "
		        'elseif wgiven.Value then
		        'LogoWin.Weighting=" --wgiven "
		      elseif wpb.Value then
		        LogoWin.Weighting=" --wpb "
		      elseif wgsc.Value then
		        LogoWin.Weighting=" --wgsc "
		      elseif wblosum.Value then
		        LogoWin.Weighting=" --wblosum "+" --wid "+wid.text
		      end if
		      'LogoWin.nhmmeroptions=OptionsField.text+" --qformat stockholm - "+GenomeField.text
		    else
		      'LogoWin.nhmmeroptions=OptionsField.text+" "+LogoWin.logofile.ShellPath+" "+GenomeField.text
		    end if
		  end if
		  
		  LogoWin.nhmmeroptions=PNO
		  
		  Exception err
		    ExceptionHandler(err,"NhmmerSettingsWin:ReadOptions")
		End Sub
	#tag EndMethod


#tag EndWindowCode

#tag Events GenomeField
	#tag Event
		Sub Open()
		  #if DebugBuild then
		    me.text="/Users/Home/3\-2rez9/Pca32_2015.04.08.gbk"
		    RunButton.Enabled=true
		  #endif
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RunButton
	#tag Event
		Sub Action()
		  self.ReadOptions
		  
		  self.hide
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CancelButton
	#tag Event
		Sub Action()
		  LogoWin.nhmmeroptions=""
		  
		  self.hide
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events wid
	#tag Event
		Sub LostFocus()
		  
		  if val(me.text)<0 then
		    me.text="0"
		    msgbox "Weights should be between 0 and 1"
		  elseif val(me.text)>1 then
		    me.text="1"
		    msgbox "Weights should be between 0 and 1"
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events gaButton
	#tag Event
		Sub Action()
		  HmmGenSettingsWin.BitScoreField.Text=GAvalue.text
		  HmmGenSettingsWin.BitScoreButton.Value=true
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ncButton
	#tag Event
		Sub Action()
		  HmmGenSettingsWin.BitScoreField.Text=NCvalue.text
		  HmmGenSettingsWin.BitScoreButton.Value=true
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events tcButton
	#tag Event
		Sub Action()
		  HmmGenSettingsWin.BitScoreField.Text=TCvalue.text
		  HmmGenSettingsWin.BitScoreButton.Value=true
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton3
	#tag Event
		Sub Action()
		  LogoWin.GenomeFile=GetOpenFolderItem("GenBank")
		  if LogoWin.GenomeFile<> Nil then
		    LogoWin.WriteToSTDOUT (EndofLine+"Genome from "+LogoWin.GenomeFile.shellpath+" loaded.")
		    LogoWin.LogoWinToolbar.Item(3).Enabled=true
		    if LogoWin.Logofile<>nil then
		      LogoWin.LogoWinToolbar.Item(1).Enabled=true
		      LogoWin.LogoWinToolbar.Item(2).Enabled=false 'new genome, no nhmmer output yet
		    end if
		    GenomeField.text=LogoWin.Genomefile.shellpath
		    EnableRun
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EvalueField
	#tag Event
		Sub TextChange()
		  if me.Text<>"" then
		    CutoffBox.Enabled=false
		    EvalueButton.enabled=true
		    HmmGenSettingsWin.EvalueField.Text=me.text
		    HmmGenSettingsWin.EvalueButton.Value=true
		  else
		    EvalueButton.enabled=false
		    if BitScoreField.text="" then
		      CutoffBox.Enabled=true
		    end if
		  end if
		  EnableRun
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BitScoreField
	#tag Event
		Sub TextChange()
		  if me.Text<>"" then
		    CutoffBox.Enabled=false
		    BitScoreButton.enabled=true
		    HmmGenSettingsWin.BitScoreField.Text=me.text
		  else
		    BitScoreButton.enabled=false
		    if EvalueField.text="" then
		      CutoffBox.Enabled=true
		    end if
		  end if
		  EnableRun
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
