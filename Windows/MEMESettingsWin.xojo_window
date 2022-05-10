#tag Window
Begin Window MEMESettingsWin
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Composite       =   False
   Frame           =   8
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   280
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
   Resizeable      =   True
   Title           =   "#kMEMESettings"
   Visible         =   False
   Width           =   310
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
      Left            =   200
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   240
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
      Left            =   98
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   240
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   90
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
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "#kNumberOfMotifs2find"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   154
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   146
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
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   90
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   270
   End
   Begin ComboBox MotifNoPopup
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
      InitialParent   =   ""
      InitialValue    =   "1\n2\n3\n4\n5"
      Italic          =   False
      Left            =   178
      ListIndex       =   2
      LockBottom      =   False
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
      Top             =   154
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   112
   End
   Begin GroupBox ThresholdsBox
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "#kSiteWidth"
      Enabled         =   True
      Height          =   58
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
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   20
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   270
      Begin TextField MaxField
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
         Left            =   239
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
         Text            =   "25"
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
      Begin TextField MinField
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
         Left            =   108
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
         Text            =   "15"
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
      Begin Label Label1
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "ThresholdsBox"
         Italic          =   False
         Left            =   26
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
         Text            =   "#kMin"
         TextAlign       =   2
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   48
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   77
      End
      Begin Label Label2
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "ThresholdsBox"
         Italic          =   False
         Left            =   150
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   5
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "#kMax"
         TextAlign       =   2
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   48
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   85
      End
   End
   Begin CheckBox GivenStrandBox
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "#kSearchTop"
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
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   122
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   270
   End
   Begin PopupMenu MotifsPerSeqPopup
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   "#kMotifNo"
      Italic          =   False
      Left            =   178
      ListIndex       =   0
      LockBottom      =   False
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
      Top             =   186
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   112
   End
   Begin Label Label5
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
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "#kMotifsPerSequence"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   186
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   146
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Activate()
		  
		End Sub
	#tag EndEvent

	#tag Event
		Function CancelClose(appQuitting as Boolean) As Boolean
		  if not appQuitting then
		    'hide instead of closing to preserve the settings
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
		  
		  if minlen=0 then
		    minlen=17
		  end if
		  
		  if maxlen=0 then
		    maxlen=23
		  end if
		  
		  
		  Minfield.text=str(minLen)
		  MaxField.text=str(maxLen)
		  
		  AdjustLayout4linux(me)
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Function MEMEhtml() As integer
		  'Standard MEME run with result display in browser
		  
		  'USAGE:
		  'meme    <dataset> [optional arguments]
		  
		  'available options:
		  '[-o <output dir>]    name of directory for output files
		  'will not replace existing directory
		  '[-oc <output dir>]    name of directory for output files
		  'will replace existing directory
		  '[-text]            output in text format (default is HTML)
		  '[-dna]            sequences use DNA alphabet
		  '[-protein]        sequences use protein alphabet
		  '[-mod oops|zoops|anr]    distribution of motifs
		  '[-nmotifs <nmotifs>]    maximum number of motifs to find
		  '[-evt <ev>]        stop if motif E-value greater than <evt>
		  '[-nsites <sites>]    number of sites for each motif
		  '[-minsites <minsites>]    minimum number of sites for each motif
		  '[-maxsites <maxsites>]    maximum number of sites for each motif
		  '[-wnsites <wnsites>]    weight on expected number of sites
		  '[-w <w>]        motif width
		  '[-minw <minw>]        minimum motif width
		  '[-maxw <maxw>]        maximum motif width
		  '[-nomatrim]        do not adjust motif width using multiple
		  'alignment
		  '[-wg <wg>]        gap opening cost for multiple alignments
		  '[-ws <ws>]        gap extension cost for multiple alignments
		  '[-noendgaps]        do not count end gaps in multiple alignments
		  '[-bfile <bfile>]    name of background Markov model file
		  '[-revcomp]        allow sites on + or - DNA strands
		  '[-pal]            force palindromes (requires -dna)
		  '[-maxiter <maxiter>]    maximum EM iterations to run
		  '[-distance <distance>]    EM convergence criterion
		  '[-psp <pspfile>]    name of positional priors file
		  '[-prior dirichlet|dmix|mega|megap|addone]
		  'type of prior to use
		  '[-b <b>]        strength of the prior
		  '[-plib <plib>]        name of Dirichlet prior file
		  '[-spfuzz <spfuzz>]    fuzziness of sequence to theta mapping
		  '[-spmap uni|pam]    starting point seq to theta mapping type
		  '[-cons <cons>]        consensus sequence to start EM from
		  '[-heapsize <hs>]    size of heaps for widths where substring
		  'search occurs
		  '[-x_branch]        perform x-branching
		  '[-w_branch]        perform width branching
		  '[-allw]            include all motif widths from min to max
		  '[-bfactor <bf>]        branching factor for branching search
		  '[-maxsize <maxsize>]    maximum dataset size in characters
		  '[-nostatus]        do not print progress reports to terminal
		  '[-p <np>]        use parallel version with <np> processors
		  '[-time <t>]        quit before <t> CPU seconds consumed
		  '[-sf <sf>]        print <sf> as name of sequence file
		  '[-V]            verbose mode
		  
		  'copy alignment out of virtual volume:
		  dim alignment_tmp as folderitem = TemporaryFolder.child("alignment.tmp")
		  if alignment_tmp<>NIL then
		    if alignment_tmp.Exists then
		      alignment_tmp.Delete
		    end if
		    LogoWin.LogoFile.CopyFileTo alignment_tmp
		    alignment_tmp = MemeInputCheck(alignment_tmp)
		  else
		    msgbox "Can't create temporary file!"
		    return -1
		  end if
		  
		  
		  'create a tmp file to store MEME results:
		  LogoWin.MEMEtmp=TemporaryFolder.child("MEMEoutdir")
		  FixPath4Windows(LogoWin.MEMEtmp)
		  
		  if LogoWin.MEMEtmp<>NIL then
		    if LogoWin.MEMEtmp.Exists then
		      LogoWin.MEMEtmp.Delete
		    end if
		    'actual conversion
		    dim cli as string
		    
		    ''need to set MEME_BIN_DIRS for the bundled meme version
		    'dim MEME_BIN_DIRS as string
		    '#if TargetWindows
		    ''MEME_BIN_DIRS=nthfield(MEMEpath,"/meme.exe",1)
		    'dim ff as folderitem
		    'ff=TemporaryFolder.child("meme_xml_to_html")
		    'if ff<>NIL AND ff.exists then
		    ''it's already there
		    'MEME_BIN_DIRS=TemporaryFolder.ShellPath
		    'else
		    'ff=resources_f.child("meme_xml_to_html")
		    'if ff<>NIL AND ff.exists then
		    'ff.copyfileto(TemporaryFolder)
		    'MEME_BIN_DIRS=TemporaryFolder.ShellPath
		    'end if
		    'ff=resources_f.child("meme.exe")
		    'if ff<>NIL AND ff.exists then
		    'ff.copyfileto(TemporaryFolder)
		    'end if
		    'end if
		    '
		    ''need to copy the dlls too!
		    '
		    '
		    '
		    '#elseif targetLinux
		    'MEME_BIN_DIRS=nthfield(MEMEpath,"/meme",1)
		    'if instr(MEME_BIN_DIRS," ")>0 then
		    'moved2tmp=true
		    ''MEME_BIN_DIRS should not have white space, so moving the script to /tmp
		    'dim ff as folderitem
		    'ff=TemporaryFolder.child("meme_xml_to_html")
		    'if ff<>NIL AND ff.exists then
		    ''it's already there
		    'MEME_BIN_DIRS=TemporaryFolder.ShellPath
		    'else
		    'ff=resources_f.child("meme_xml_to_html")
		    'if ff<>NIL AND ff.exists then
		    'ff.copyfileto(TemporaryFolder)
		    'MEME_BIN_DIRS=TemporaryFolder.ShellPath
		    'end if
		    'ff=resources_f.child("meme")
		    'if ff<>NIL AND ff.exists then
		    'ff.copyfileto(TemporaryFolder)
		    'end if
		    'end if
		    'end if
		    '
		    '#else
		    'MEME_BIN_DIRS=nthfield(MEMEpath,"/meme",1)
		    '#endif
		    
		    '#if TargetLinux
		    'if moved2tmp then
		    'cli="/tmp/meme"+" "+alignment_tmp.ShellPath+" -dna -minw "+str(MinField.text)
		    'else
		    'cli="MEME_BIN_DIRS="+MEME_BIN_DIRS+" "+MEMEpath+" "+alignment_tmp.ShellPath+" -dna -minw "+str(MinField.text)
		    'end if
		    '
		    '#elseif TargetWindows
		    'cli=TemporaryFolder.child("meme.exe").ShellPath+" "+alignment_tmp.ShellPath+" -dna -minw "+str(MinField.text)
		    '#else
		    'cli="MEME_BIN_DIRS="+MEME_BIN_DIRS+" "+MEMEpath+" "+alignment_tmp.ShellPath+" -dna -minw "+str(MinField.text)
		    '#endif
		    
		    
		    cli=MEMEpath+" "+PlaceQuotesToPath(MakeWSLPath(alignment_tmp.ShellPath))
		    cli=cli+" -dna -minw "+str(MinField.text)+" -maxw "+str(MaxField.text)
		    
		    '[-pal]            force palindromes (requires -dna)
		    if PalindromicBox.Value then
		      cli=cli+" -pal"
		    end if
		    
		    '[-revcomp]        allow sites on + or - DNA strands
		    if GivenStrandBox.Value then
		    else
		      cli=cli+" -revcomp"
		    end if
		    
		    '[-nmotifs <nmotifs>]    maximum number of motifs to find
		    cli=cli+" -nmotifs "+MotifNoPopup.Text
		    
		    '[-mod oops|zoops|anr]    distribution of motifs
		    select case MotifsPerSeqPopup.ListIndex
		    case 0      'zero or one
		      cli=cli+" -mod zoops"
		    case 1      'one
		      cli=cli+" -mod oops"
		    case 2      'any number
		      cli=cli+" -mod anr"
		    End Select
		    
		    If cores2use>1 Then
		      If cores2use>CPUcores Then
		        ' with OpenMPI v.>2 in mind, physical cores are allowed by default.
		        ' to use threads on CPUs with hyperthreading, use the --use-hwthread-cpus option for mpirun
		        ' e.g. on a 4-core processor with 8 threads, meme can be launched like this:
		        ' meme -p '8 --use-hwthread-cpus'
		        If MPICH Then
		          cli=cli+" -p " + Str(cores2use)
		        Else
		          cli=cli+" -p '" + Str(cores2use) + " --use-hwthread-cpus'"
		        End
		      Else
		        cli=cli+" -p " + Str(cores2use)  
		      End If
		    End If
		    
		    '[-oc <output dir>]    name of directory for output files
		    'will replace existing directory
		    cli=cli+" -oc "+PlaceQuotesToPath(MakeWSLPath(LogoWin.MEMEtmp.ShellPath))
		    
		    LogoWin.show
		    LogoWin.WriteToSTDOUT (EndofLine+EndofLine+"Running MEME...")
		    
		    
		    #if TargetWindows
		      ExecuteWSL(cli)
		    #else
		      userShell(cli)
		    #endif
		    If shError=0 Then
		      LogoWin.WriteToSTDOUT (EndofLine+shResult)
		      
		      'open the result in the browser:
		      dim res as FolderItem
		      res=LogoWin.MEMEtmp.child("meme.html")
		      If res<>Nil Then
		        If WebBrowserWin.title="" Then
		          WebBrowserWin.Title="MEME result"
		        End If
		        WebBrowserWin.LoadPage(res)
		        WebBrowserWin.show
		      end if
		      return shError
		    else
		      LogoWin.WriteToSTDOUT (EndofLine+shResult)
		      MsgBox "MEME error code: "+Str(shError)
		      return shError
		    end if
		    
		  else
		    msgbox "Can't create temporary folder!"
		    return -1
		  end if
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		moved2tmp As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		OKPressed As boolean
	#tag EndProperty


#tag EndWindowCode

#tag Events RunButton
	#tag Event
		Sub Action()
		  Self.hide
		  dim errCode as integer = MEMEhtml
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CancelButton
	#tag Event
		Sub Action()
		  self.OKPressed=false
		  self.hide
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PalindromicBox
	#tag Event
		Sub Action()
		  if me.value then
		    LogoWin.palindromic=true
		    LogoWin.LogoWinToolbar.Item(4).Enabled=true
		  else
		    LogoWin.palindromic=false
		    LogoWin.LogoWinToolbar.Item(4).Enabled=false
		  end if
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events MotifNoPopup
	#tag Event
		Sub Open()
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events MaxField
	#tag Event
		Sub TextChange()
		  'RunCheck
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events MinField
	#tag Event
		Sub TextChange()
		  'RunCheck
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events GivenStrandBox
	#tag Event
		Sub Action()
		  if me.value then
		    LogoWin.palindromic=true
		    LogoWin.LogoWinToolbar.Item(4).Enabled=true
		  else
		    LogoWin.palindromic=false
		    LogoWin.LogoWinToolbar.Item(4).Enabled=false
		  end if
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events MotifsPerSeqPopup
	#tag Event
		Sub Open()
		  
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
		Name="moved2tmp"
		Visible=false
		Group="Behavior"
		InitialValue=""
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
