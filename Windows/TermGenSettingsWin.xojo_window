#tag Window
Begin Window TermGenSettingsWin
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Composite       =   False
   Frame           =   8
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   302
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
   MinWidth        =   300
   Placement       =   0
   Resizeable      =   False
   Title           =   "#kTermGenSettings"
   Visible         =   False
   Width           =   550
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
      Left            =   440
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
      Top             =   262
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
      Left            =   338
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
      Top             =   262
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   90
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
      Top             =   212
      Transparent     =   False
      Underline       =   False
      Value           =   True
      Visible         =   True
      Width           =   502
   End
   Begin TextField ConfidenceField
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
      Hint            =   "76"
      Index           =   -2147483648
      Italic          =   False
      Left            =   290
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MaximumCharactersAllowed=   0
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   18
      TabPanelIndex   =   0
      TabStop         =   True
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   21
      Transparent     =   False
      Underline       =   False
      ValidationMask  =   ""
      Value           =   "76"
      Visible         =   True
      Width           =   32
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
      Left            =   88
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
      TextAlignment   =   "3"
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   22
      Transparent     =   False
      Underline       =   False
      Value           =   "#kConfidenceScore"
      Visible         =   True
      Width           =   190
   End
   Begin TextField MinStemField
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
      Hint            =   "4"
      Index           =   -2147483648
      Italic          =   False
      Left            =   243
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MaximumCharactersAllowed=   0
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   24
      TabPanelIndex   =   0
      TabStop         =   True
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      Tooltip         =   "Stem must be n nucleotides long"
      Top             =   78
      Transparent     =   False
      Underline       =   False
      ValidationMask  =   ""
      Value           =   ""
      Visible         =   True
      Width           =   32
   End
   Begin TextField MinLoopField
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
      Hint            =   "3"
      Index           =   -2147483648
      Italic          =   False
      Left            =   243
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MaximumCharactersAllowed=   0
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   26
      TabPanelIndex   =   0
      TabStop         =   True
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      Tooltip         =   "Loop portion of the hairpin must be at least n long"
      Top             =   112
      Transparent     =   False
      Underline       =   False
      ValidationMask  =   ""
      Value           =   ""
      Visible         =   True
      Width           =   32
   End
   Begin TextField MaxHairpinLengthField
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
      Hint            =   "59"
      Index           =   -2147483648
      Italic          =   False
      Left            =   498
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MaximumCharactersAllowed=   0
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   28
      TabPanelIndex   =   0
      TabStop         =   True
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      Tooltip         =   "Total extent of hairpin <= n NT long"
      Top             =   78
      Transparent     =   False
      Underline       =   False
      ValidationMask  =   ""
      Value           =   ""
      Visible         =   True
      Width           =   32
   End
   Begin TextField MaxLoopLengthField
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
      Hint            =   "13"
      Index           =   -2147483648
      Italic          =   False
      Left            =   498
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MaximumCharactersAllowed=   0
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   30
      TabPanelIndex   =   0
      TabStop         =   True
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      Tooltip         =   "The loop portion can be no longer than n"
      Top             =   112
      Transparent     =   False
      Underline       =   False
      ValidationMask  =   ""
      Value           =   ""
      Visible         =   True
      Width           =   32
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
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   31
      TabPanelIndex   =   0
      TabStop         =   True
      TextAlignment   =   "3"
      TextColor       =   &c00000000
      Tooltip         =   "Stem must be n nucleotides long"
      Top             =   78
      Transparent     =   False
      Underline       =   False
      Value           =   "#kMinimalStemLength"
      Visible         =   True
      Width           =   220
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
      TabIndex        =   32
      TabPanelIndex   =   0
      TabStop         =   True
      TextAlignment   =   "3"
      TextColor       =   &c00000000
      Tooltip         =   "Loop portion of the hairpin must be at least n long"
      Top             =   114
      Transparent     =   False
      Underline       =   False
      Value           =   "#kMinimalLoopLength"
      Visible         =   True
      Width           =   220
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
      InitialParent   =   ""
      Italic          =   False
      Left            =   276
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   33
      TabPanelIndex   =   0
      TabStop         =   True
      TextAlignment   =   "3"
      TextColor       =   &c00000000
      Tooltip         =   "Total extent of hairpin <= n NT long"
      Top             =   80
      Transparent     =   False
      Underline       =   False
      Value           =   "#kMaximalHairpinLength"
      Visible         =   True
      Width           =   220
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
      InitialParent   =   ""
      Italic          =   False
      Left            =   276
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   34
      TabPanelIndex   =   0
      TabStop         =   True
      TextAlignment   =   "3"
      TextColor       =   &c00000000
      Tooltip         =   "The loop portion can be no longer than n"
      Top             =   114
      Transparent     =   False
      Underline       =   False
      Value           =   "#kMaximalLoopLength"
      Visible         =   True
      Width           =   220
   End
   Begin TextField GenomeField
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
      TabIndex        =   35
      TabPanelIndex   =   0
      TabStop         =   True
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      Tooltip         =   "Path to genome to be searched"
      Top             =   178
      Transparent     =   False
      Underline       =   False
      ValidationMask  =   ""
      Value           =   ""
      Visible         =   True
      Width           =   335
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
      TabIndex        =   36
      TabPanelIndex   =   0
      TabStop         =   True
      TextAlignment   =   "3"
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   177
      Transparent     =   False
      Underline       =   False
      Value           =   "#kGenome_"
      Visible         =   True
      Width           =   61
   End
   Begin PushButton ChooseGenomeButton
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
      Left            =   440
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MacButtonStyle  =   "0"
      Scope           =   0
      TabIndex        =   37
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   "Select genome to search"
      Top             =   177
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   90
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Activate()
		  dim genomeKnown As boolean = false
		  
		  if LogoWin.GenomeFile<>nil then
		    genomeknown=true
		  else
		    dim f as folderitem
		    if GenomeField.text<>"" then
		      f = GetFolderItem(GenomeField.text,FolderItem.PathTypeShell)
		      If f<>nil AND f.Exists Then
		        genomeknown=true
		      End If
		      
		    end if
		  end if
		  
		  if ConfidenceField.text="" or NOT genomeKnown then
		    RunButton.enabled=false
		  ELSE
		    RunButton.enabled=true
		  END IF
		  
		  
		  
		  
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
		  if LogoWin.GenomeFile<>nil then
		    GenomeField.text=LogoWin.GenomeFile.ShellPath
		  end if
		  
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
		Sub ReadOptions()
		  dim opt as string
		  
		  'stem/loop max/min length options are probably required
		  
		  opt=""
		  
		  if trim(ConfidenceField.text)<>"" then
		    opt=opt+" -C "+str(val(ConfidenceField.text))
		  end if
		  
		  if trim(MinStemField.text)<>"" then
		    opt=opt+" --minstem "+str(val(MinStemField.text)) 
		  end if
		  
		  if trim(MinLoopField.text)<>"" then
		    opt=opt+" --minloop "+str(val(MinLoopField.text))
		  end if
		  
		  if trim(MaxHairpinLengthField.text)<>"" then
		    opt=opt+" --maxlen "+str(val(MaxHairpinLengthField.text))
		  end if
		  
		  if trim(MaxLoopLengthField.text)<>"" then
		    opt=opt+" --minstem "+str(val(MaxLoopLengthField.text))
		  end if
		  
		  LogoWin.TermGenOptions=Opt
		  
		  Exception err
		    ExceptionHandler(err,"HmmGenSettingsWin:ReadOptions")
		End Sub
	#tag EndMethod


	#tag Note, Name = Transterm options
		Current termGen (v.1.1)
		
		TermGen <input_file> <output_file> [options]
		
		This script allows to add terminators to a genbank file according to TransTerm
		HP results. Requires Biopython 1.64 (or newer)
		
		positional arguments:
		input_file            path to input Genbank file.
		output_file           path to input Genbank file.
		
		optional arguments:
		-h, --help            show this help message and exit
		-o <path>, --output <path>
		redirects TransTerm HP output file to directory given
		-C <integer>, --confidence <integer>
		threshold Score.
		-v, --version         show program's version number and exit
		
		
		TRANSTERM COMMAND LINE OPTIONS
		
		You can also set how large a hairpin must be to be considered:
		
		--min-stem=n    Stem must be n nucleotides long
		--min-loop=n    Loop portion of the hairpin must be at least n long
		
		You can also set the maximum size of the hairpin that will be found:
		
		--max-len=n     Total extent of hairpin <= n NT long
		--max-loop=n    The loop portion can be no longer than n
		
		(other options require regeneration of the expterms.dat file)
	#tag EndNote


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
#tag Events ConfidenceField
	#tag Event
		Sub TextChange()
		  'if me.text="" then
		  'RunButton.enabled=false
		  'ELSE
		  'RunButton.enabled=true
		  'END IF
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events MinStemField
	#tag Event
		Sub TextChange()
		  'if me.text="" then
		  'RunButton.enabled=false
		  'ELSE
		  'RunButton.enabled=true
		  'END IF
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events MinLoopField
	#tag Event
		Sub TextChange()
		  'if me.text="" then
		  'RunButton.enabled=false
		  'ELSE
		  'RunButton.enabled=true
		  'END IF
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events MaxHairpinLengthField
	#tag Event
		Sub TextChange()
		  'if me.text="" then
		  'RunButton.enabled=false
		  'ELSE
		  'RunButton.enabled=true
		  'END IF
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events MaxLoopLengthField
	#tag Event
		Sub TextChange()
		  'if me.text="" then
		  'RunButton.enabled=false
		  'ELSE
		  'RunButton.enabled=true
		  'END IF
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events GenomeField
	#tag Event
		Sub Open()
		  
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub TextChange()
		  dim f as folderitem
		  
		  'need to wrap this inside "try catch", as the user may enter anything here
		  
		  f = GetFolderItem(me.text,FolderItem.PathTypeShell)
		  If f<>nil AND f.Exists Then
		    RunButton.enabled=true
		  Else
		    RunButton.enabled=false
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ChooseGenomeButton
	#tag Event
		Sub Action()
		  LogoWin.GenomeFile=GetOpenFolderItem("")
		  if LogoWin.GenomeFile<> Nil then
		    LogoWin.WriteToSTDOUT (EndofLine+"Genome from "+LogoWin.GenomeFile.shellpath+" loaded.")
		    LogoWin.LogoWinToolbar.Item(3).Enabled=true
		    if LogoWin.Logofile<>nil then
		      LogoWin.LogoWinToolbar.Item(1).Enabled=true
		      LogoWin.LogoWinToolbar.Item(2).Enabled=false 'new genome, no nhmmer output yet
		    end if
		    GenomeField.text=LogoWin.Genomefile.shellpath
		    RunButton.enabled=true
		  end if
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
