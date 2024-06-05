#tag Window
Begin Window RepeatSearchSettingsWin
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Composite       =   False
   Frame           =   8
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   530
   ImplicitInstance=   True
   LiveResize      =   "True"
   MacProcID       =   0
   MaxHeight       =   624
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinHeight       =   280
   MinimizeButton  =   True
   MinWidth        =   400
   Placement       =   0
   Resizeable      =   True
   Title           =   "HMM Search Settings"
   Visible         =   False
   Width           =   450
   Begin PushButton RunButton
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "#kRun"
      Default         =   True
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   340
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MacButtonStyle  =   "0"
      Scope           =   0
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   490
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   90
   End
   Begin PushButton CancelButton
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   True
      Caption         =   "#kCancel"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   238
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MacButtonStyle  =   "0"
      Scope           =   0
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   490
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   90
   End
   Begin CheckBox IntergenicBox
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "#kIgnoreWithinORF"
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
      Tooltip         =   " -i, --insert          \ndon't add features inside CDS"
      Top             =   142
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      VisualState     =   "0"
      Width           =   206
   End
   Begin Label Label4
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
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "#kFeature2add"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   246
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   143
   End
   Begin GroupBox GroupBox1
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "Qualifiers"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   129
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   16
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   278
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   410
      Begin TextField KeyField
         AllowAutoDeactivate=   True
         AllowFocusRing  =   True
         AllowSpellChecking=   False
         AllowTabs       =   False
         BackgroundColor =   &cFEFFFF00
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
         Hint            =   "bound_moiety"
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   30
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   False
         MaximumCharactersAllowed=   0
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "rpt_type"
         TextAlignment   =   "0"
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   305
         Transparent     =   False
         Underline       =   False
         ValidationMask  =   ""
         Visible         =   True
         Width           =   125
      End
      Begin TextField KeyField1
         AllowAutoDeactivate=   True
         AllowFocusRing  =   True
         AllowSpellChecking=   False
         AllowTabs       =   False
         BackgroundColor =   &cFEFFFF00
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
         Hint            =   "bound_moiety"
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   30
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   False
         MaximumCharactersAllowed=   0
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "rpt_family"
         TextAlignment   =   "0"
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   339
         Transparent     =   False
         Underline       =   False
         ValidationMask  =   ""
         Visible         =   True
         Width           =   125
      End
      Begin TextField ValueField1
         AllowAutoDeactivate=   True
         AllowFocusRing  =   True
         AllowSpellChecking=   False
         AllowTabs       =   False
         BackgroundColor =   &cFEFFFF00
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
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   167
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   False
         MaximumCharactersAllowed=   0
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   4
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   "0"
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   339
         Transparent     =   False
         Underline       =   False
         ValidationMask  =   ""
         Visible         =   True
         Width           =   253
      End
      Begin TextField KeyField2
         AllowAutoDeactivate=   True
         AllowFocusRing  =   True
         AllowSpellChecking=   False
         AllowTabs       =   False
         BackgroundColor =   &cFEFFFF00
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
         Hint            =   "bound_moiety"
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   30
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   False
         MaximumCharactersAllowed=   0
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   5
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "note"
         TextAlignment   =   "0"
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   373
         Transparent     =   False
         Underline       =   False
         ValidationMask  =   ""
         Visible         =   True
         Width           =   125
      End
      Begin TextField ValueField2
         AllowAutoDeactivate=   True
         AllowFocusRing  =   True
         AllowSpellChecking=   False
         AllowTabs       =   False
         BackgroundColor =   &cFEFFFF00
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
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   167
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   False
         MaximumCharactersAllowed=   0
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   6
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   "0"
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   373
         Transparent     =   False
         Underline       =   False
         ValidationMask  =   ""
         Visible         =   True
         Width           =   253
      End
   End
   Begin ComboBox FeatureCombo
      AllowAutoComplete=   False
      AllowAutoDeactivate=   True
      AllowFocusRing  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Hint            =   ""
      Index           =   -2147483648
      InitialValue    =   ""
      Italic          =   False
      Left            =   166
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      SelectedRowIndex=   0
      TabIndex        =   19
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   246
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   264
   End
   Begin GroupBox ThresholdsBox
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "#kThreshold"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   58
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
      Tooltip         =   "Thresholds to use with uncalibrated profile"
      Top             =   76
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   410
      Begin RadioButton EvalueButton
         AllowAutoDeactivate=   True
         Bold            =   False
         Caption         =   "#kEvalue"
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
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
         Tooltip         =   ""
         Top             =   103
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   105
      End
      Begin RadioButton BitScoreButton
         AllowAutoDeactivate=   True
         Bold            =   False
         Caption         =   "#kBitScore"
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
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
         Tooltip         =   ""
         Top             =   104
         Transparent     =   False
         Underline       =   False
         Value           =   True
         Visible         =   True
         Width           =   112
      End
      Begin TextField EvalueField
         AllowAutoDeactivate=   True
         AllowFocusRing  =   True
         AllowSpellChecking=   False
         AllowTabs       =   False
         BackgroundColor =   &cFEFFFF00
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
         InitialParent   =   "ThresholdsBox"
         Italic          =   False
         Left            =   379
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         MaximumCharactersAllowed=   0
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "1"
         TextAlignment   =   "0"
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   102
         Transparent     =   False
         Underline       =   False
         ValidationMask  =   ""
         Visible         =   True
         Width           =   40
      End
      Begin TextField BitScoreField
         AllowAutoDeactivate=   True
         AllowFocusRing  =   True
         AllowSpellChecking=   False
         AllowTabs       =   False
         BackgroundColor =   &cFEFFFF00
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
         InitialParent   =   "ThresholdsBox"
         Italic          =   False
         Left            =   145
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MaximumCharactersAllowed=   0
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "50"
         TextAlignment   =   "0"
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   102
         Transparent     =   False
         Underline       =   False
         ValidationMask  =   ""
         Visible         =   True
         Width           =   40
      End
   End
   Begin CheckBox GenomeBrowserCheckBox
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "#kShowHitsInBrowser"
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
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      State           =   1
      TabIndex        =   22
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   458
      Transparent     =   False
      Underline       =   False
      Value           =   True
      Visible         =   True
      Width           =   410
   End
   Begin ComboBox FeatureTypeCombo
      AllowAutoComplete=   False
      AllowAutoDeactivate=   True
      AllowFocusRing  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   22
      Hint            =   ""
      Index           =   -2147483648
      InitialValue    =   ""
      Italic          =   False
      Left            =   167
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      SelectedRowIndex=   0
      TabIndex        =   23
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   305
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   253
   End
   Begin Label Label3
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
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   24
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "#kGenome_"
      TextAlignment   =   "3"
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   421
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   69
   End
   Begin TextField GenomeField
      AllowAutoDeactivate=   True
      AllowFocusRing  =   True
      AllowSpellChecking=   False
      AllowTabs       =   False
      BackgroundColor =   &cFEFFFF00
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
      Left            =   93
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      MaximumCharactersAllowed=   0
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   25
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      Tooltip         =   "Path to genome to be searched"
      Top             =   419
      Transparent     =   False
      Underline       =   False
      ValidationMask  =   ""
      Visible         =   True
      Width           =   235
   End
   Begin PushButton PushButton3
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "#kChoose"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   350
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MacButtonStyle  =   "0"
      Scope           =   0
      TabIndex        =   26
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   "Select genome to search"
      Top             =   421
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
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
      LockRight       =   False
      LockTop         =   True
      Multiline       =   True
      Scope           =   0
      Selectable      =   False
      TabIndex        =   27
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Search genome for repeats/mobile elements. The proper profile must be loaded in the main window."
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   20
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   410
   End
   Begin CheckBox PalindromicBox
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "#kPalindromicSite"
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
      Left            =   238
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   28
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   142
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      VisualState     =   "0"
      Width           =   192
   End
   Begin GroupBox GroupBox2
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "Partial matches"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   58
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
      TabIndex        =   34
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   174
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   410
      Begin TextField HMMPartialPercentField
         AllowAutoDeactivate=   True
         AllowFocusRing  =   True
         AllowSpellChecking=   False
         AllowTabs       =   False
         BackgroundColor =   &cFEFFFF00
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
         InitialParent   =   "GroupBox2"
         Italic          =   False
         Left            =   374
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         MaximumCharactersAllowed=   0
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "90"
         TextAlignment   =   "0"
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   198
         Transparent     =   False
         Underline       =   False
         ValidationMask  =   ""
         Visible         =   True
         Width           =   26
      End
      Begin Label Label6
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
         InitialParent   =   "GroupBox2"
         Italic          =   False
         Left            =   405
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "%"
         TextAlignment   =   "0"
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   198
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   19
      End
      Begin Label Label5
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
         InitialParent   =   "GroupBox2"
         Italic          =   False
         Left            =   189
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "%"
         TextAlignment   =   "0"
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   198
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   19
      End
      Begin TextField PartialPercentField
         AllowAutoDeactivate=   True
         AllowFocusRing  =   True
         AllowSpellChecking=   False
         AllowTabs       =   False
         BackgroundColor =   &cFEFFFF00
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
         InitialParent   =   "GroupBox2"
         Italic          =   False
         Left            =   159
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         MaximumCharactersAllowed=   0
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "70"
         TextAlignment   =   "0"
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   198
         Transparent     =   False
         Underline       =   False
         ValidationMask  =   ""
         Visible         =   True
         Width           =   26
      End
      Begin Label Label7
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
         InitialParent   =   "GroupBox2"
         Italic          =   False
         Left            =   29
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
         Text            =   "Target coverage:"
         TextAlignment   =   "0"
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   200
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   118
      End
      Begin Label Label8
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
         InitialParent   =   "GroupBox2"
         Italic          =   False
         Left            =   244
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
         Text            =   "HMM coverage:"
         TextAlignment   =   "0"
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   198
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   118
      End
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Activate()
		  
		  'put the value used by hmmer in threshold box here:
		  'if nhmmerSettingsWin.BitScoreButton.value AND nhmmerSettingsWin.BitScoreButton.enabled then
		  'me.BitScoreButton.value=true
		  'me.BitScoreField.text=nhmmerSettingsWin.BitScoreField.text
		  'elseif nhmmerSettingsWin.EvalueButton.value AND nhmmerSettingsWin.EvalueButton.enabled  then
		  'me.EvalueButton.value=true
		  'me.EvalueField.text=nhmmerSettingsWin.EvalueField.text
		  'elseif nhmmerSettingsWin.tcButton.value then
		  'me.BitScoreButton.value=true
		  'me.BitScoreField.text=unbracket(nhmmerSettingsWin.TCvalue.text)
		  'elseif nhmmerSettingsWin.gaButton.value then
		  'me.BitScoreButton.value=true
		  'me.BitScoreField.text=unbracket(nhmmerSettingsWin.GAvalue.text)
		  'elseif nhmmerSettingsWin.ncButton.value then
		  'me.BitScoreButton.value=true
		  'me.BitScoreField.text=unbracket(nhmmerSettingsWin.NCvalue.text)
		  'end
		  
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


	#tag MenuHandler
		Function FileClose() As Boolean Handles FileClose.Action
			me.Hide
			Return True
			
		End Function
	#tag EndMenuHandler


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
		Sub FillRepeatTypes()
		  FeatureTypeCombo.DeleteAllRows
		  
		  FeatureTypeCombo.AddRow("dispersed")
		  FeatureTypeCombo.AddRow("inverted")
		  FeatureTypeCombo.AddRow("terminal")
		  FeatureTypeCombo.AddRow("flanking")
		  FeatureTypeCombo.AddRow("tandem")
		  FeatureTypeCombo.AddRow("direct")
		  FeatureTypeCombo.AddRow("nested")
		  FeatureTypeCombo.AddRow("long_terminal_repeat")
		  FeatureTypeCombo.AddRow("other")
		  FeatureTypeCombo.ListIndex = 0
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FillTnTypes()
		  FeatureTypeCombo.DeleteAllRows
		  
		  FeatureTypeCombo.AddRow("MITE")
		  FeatureTypeCombo.AddRow("insertion sequence")
		  FeatureTypeCombo.AddRow("transposon")
		  FeatureTypeCombo.AddRow("integron")
		  FeatureTypeCombo.AddRow("retrotransposon")
		  FeatureTypeCombo.AddRow("other")
		  FeatureTypeCombo.ListIndex = 0
		  
		End Sub
	#tag EndMethod

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
		    'opt=opt+" -b 50" 'allow 50 bp within frame // inappropriate for anything but TFBS
		  end if
		  
		  'if PartialBox.value then
		  
		  'setting allowed model coverage and match length:
		  
		  opt=opt+" -a "+LogoWin.AlignmentLength
		  dim PartPerCent As integer
		  PartPerCent=val(PartialPercentField.text)
		  if PartPerCent>=10 AND PartPerCent<=100 then 'May someone want less than 10%?  
		    opt=opt+" -L "+str(ceil(val(LogoWin.AlignmentLength)*PartPerCent/100))+":"+LogoWin.AlignmentLength
		  else
		    MsgBox "Partial matches must be in the interval 10-100%."
		    return
		  end if
		  dim HMMPartPerCent As integer
		  HMMPartPerCent=val(HMMPartialPercentField.text)
		  if HMMPartPerCent>=10 AND HMMPartPerCent<=100 then 'May someone want less than 10%?  
		    opt=opt+" -c "+str(HMMPartPerCent/100)
		  else
		    MsgBox "Partial matches must be in the interval 10-100%."
		    return
		  end if
		  'else
		  'if LogoWin.minAlignmentLength<>LogoWin.AlignmentLength then
		  'opt=opt+" -L "+LogoWin.minAlignmentLength+":"+LogoWin.AlignmentLength 'gapped alignment, match lengths may differ
		  'else
		  'opt=opt+" -L "+LogoWin.AlignmentLength
		  'end if
		  'end if
		  
		  if PalindromicBox.Value then
		    opt=opt+" -p"
		  end if
		  
		  'if NOT NextLocusBox.value then
		  'opt=opt+" -n"
		  'end if
		  
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
		  
		  if keyfield.text<>"" AND FeatureTypeCombo.text<>"" then
		    opt=opt+" -q "+chr(34)+trim(keyfield.text)+chr(34)+"#"+chr(34)+trim(FeatureTypeCombo.text)+chr(34)
		  end
		  
		  if keyfield1.text<>"" AND ValueField1.text<>"" then
		    opt=opt+" "+chr(34)+trim(keyfield1.text)+chr(34)+"#"+chr(34)+trim(valuefield1.text)+chr(34)
		  end
		  
		  if keyfield2.Enabled=true then
		    if keyfield2.text<>"" AND ValueField2.text<>"" then
		      opt=opt+" "+chr(34)+trim(keyfield2.text)+chr(34)+"#"+chr(34)+trim(valuefield2.text)+chr(34)
		    end
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
		  
		  'if AddQualifierBox.value then
		  'if KeyField.text="" then
		  'RunEnabled=false
		  'end if
		  'if ValueField.text="" then
		  'RunEnabled=false
		  'end if
		  
		  'if instr(ValueField.text," ")>0 then  'not needed any more?
		  'RunEnabled=false
		  'end if
		  'end if
		  
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
		  LogoWin.hmmgenoptions=""
		  self.OKPressed=false
		  self.hide
		  
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
#tag Events KeyField1
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
#tag Events ValueField1
	#tag Event
		Sub TextChange()
		  RunCheck
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events KeyField2
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
#tag Events ValueField2
	#tag Event
		Sub TextChange()
		  RunCheck
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events FeatureCombo
	#tag Event
		Sub Open()
		  Me.AddRow("repeat_region")
		  Me.AddRow("mobile_element")
		  Me.ListIndex = 0
		End Sub
	#tag EndEvent
	#tag Event
		Sub TextChanged()
		  if me.Text="repeat_region" then
		    KeyField.text="rpt_type"
		    KeyField1.text="rpt_family"
		    KeyField2.text="note"
		    KeyField2.enabled=true
		    ValueField2.enabled=true
		    FillRepeatTypes
		  elseif me.text="mobile_element" then
		    KeyField.text="mobile_element_type"
		    KeyField1.text="note"
		    KeyField2.text=""
		    KeyField2.enabled=false
		    ValueField2.enabled=false
		    FillTnTypes
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
#tag Events FeatureTypeCombo
	#tag Event
		Sub Open()
		  Me.AddRow("dispersed")
		  Me.AddRow("inverted")
		  Me.AddRow("direct")
		  Me.AddRow("tandem")
		  Me.AddRow("flanking")
		  Me.AddRow("nested")
		  Me.AddRow("terminal")
		  Me.AddRow("long_terminal_repeat")
		  Me.AddRow("other")
		  Me.ListIndex = 1
		  
		End Sub
	#tag EndEvent
#tag EndEvents
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
		    'EnableRun
		  end if
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
#tag Events HMMPartialPercentField
	#tag Event
		Sub TextChange()
		  RunCheck
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PartialPercentField
	#tag Event
		Sub TextChange()
		  RunCheck
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
