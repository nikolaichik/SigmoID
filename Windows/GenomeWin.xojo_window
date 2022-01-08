#tag Window
Begin Window GenomeWin
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Composite       =   True
   Frame           =   9
   FullScreen      =   False
   FullScreenButton=   True
   HasBackColor    =   False
   Height          =   750
   ImplicitInstance=   True
   LiveResize      =   "True"
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   149806200
   MenuBarVisible  =   True
   MinHeight       =   100
   MinimizeButton  =   True
   MinWidth        =   200
   Placement       =   0
   Resizeable      =   True
   Title           =   ""
   Visible         =   False
   Width           =   1067
   Begin Canvas MapCanvas
      AcceptFocus     =   True
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      Height          =   176
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   28
      Transparent     =   True
      UseFocusRing    =   False
      Visible         =   True
      Width           =   1067
   End
   Begin Timer ToolTipTimer
      Index           =   -2147483648
      InitialParent   =   ""
      LockedInPosition=   False
      Mode            =   1
      Period          =   700
      Scope           =   0
      TabPanelIndex   =   0
   End
   BeginSegmented SegmentedControl SegmentedControl1
      Enabled         =   True
      Height          =   24
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   3
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MacControlStyle =   0
      Scope           =   0
      Segments        =   "\nbr_prev_icon16\nFalse\r                      \n\nFalse\r\nbr_next_icon16\nFalse"
      SelectionType   =   2
      TabIndex        =   2
      TabPanelIndex   =   0
      Top             =   0
      Transparent     =   True
      Visible         =   True
      Width           =   177
   End
   Begin CheckBox FeatureBox
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   24
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   192
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      State           =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   0
      Transparent     =   True
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   390
   End
   Begin ScrollBar HScrollBar
      AcceptFocus     =   False
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   15
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LineStep        =   1
      LiveScroll      =   False
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Maximum         =   100
      Minimum         =   0
      PageStep        =   20
      Scope           =   0
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   205
      Transparent     =   True
      Value           =   0
      Visible         =   True
      Width           =   1067
   End
   BeginSegmented SegmentedControl Magnifier
      Enabled         =   True
      Height          =   24
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   1013
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      MacControlStyle =   0
      Scope           =   0
      Segments        =   "+\n\nFalse\r-\n\nFalse"
      SelectionType   =   2
      TabIndex        =   5
      TabPanelIndex   =   0
      Top             =   0
      Transparent     =   True
      Visible         =   True
      Width           =   41
   End
   Begin Canvas TMdisplay
      AcceptFocus     =   False
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      DoubleBuffer    =   True
      Enabled         =   True
      Height          =   132
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   221
      Transparent     =   False
      UseFocusRing    =   False
      Visible         =   True
      Width           =   1067
   End
   Begin CustomTabPanelTabs BrowserTabs
      AcceptFocus     =   False
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      DoubleBuffer    =   True
      Enabled         =   True
      EnableTabReordering=   False
      Facing          =   3
      Height          =   392
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   358
      Transparent     =   True
      UseFocusRing    =   False
      value           =   0
      Visible         =   True
      Width           =   27
   End
   Begin PagePanel BrowserPagePanel
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   391
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   27
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      PanelCount      =   4
      Panels          =   ""
      Scope           =   0
      TabIndex        =   10
      TabPanelIndex   =   0
      Top             =   359
      Transparent     =   True
      Value           =   0
      Visible         =   True
      Width           =   1041
      Begin HTMLViewer SPSearchViewer
         AutoDeactivate  =   True
         Enabled         =   True
         Height          =   391
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "BrowserPagePanel"
         Left            =   27
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Renderer        =   1
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   1
         TabStop         =   True
         Top             =   359
         Visible         =   True
         Width           =   1041
      End
      Begin HTMLViewer UPSearchViewer
         AutoDeactivate  =   True
         Enabled         =   True
         Height          =   391
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "BrowserPagePanel"
         Left            =   27
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Renderer        =   1
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   2
         TabStop         =   True
         Top             =   359
         Visible         =   True
         Width           =   1041
      End
      Begin HTMLViewer BLASTSearchViewer
         AutoDeactivate  =   True
         Enabled         =   True
         Height          =   391
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "BrowserPagePanel"
         Left            =   27
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Renderer        =   1
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   4
         TabStop         =   True
         Top             =   359
         Visible         =   True
         Width           =   1041
      End
   End
   Begin Label SelRange
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   24
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   594
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlign       =   2
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   2
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   194
   End
   Begin sHTTPSocket SPSocket
      CertificateFile =   
      CertificatePassword=   ""
      CertificateRejectionFile=   
      ConnectionType  =   5
      Index           =   -2147483648
      InitialParent   =   ""
      LockedInPosition=   False
      Scope           =   0
      Secure          =   False
      TabPanelIndex   =   0
   End
   Begin sHTTPSocket UniProtSocket
      CertificateFile =   
      CertificatePassword=   ""
      CertificateRejectionFile=   
      ConnectionType  =   5
      Index           =   -2147483648
      InitialParent   =   ""
      LockedInPosition=   False
      Scope           =   0
      Secure          =   False
      TabPanelIndex   =   0
   End
   Begin Cocoa.NSSearchField NSSearchField1
      AcceptFocus     =   True
      AcceptTabs      =   False
      Alignment       =   ""
      AllowsExpansionToolTips=   False
      AutoDeactivate  =   True
      autoresizesSubviews=   False
      Backdrop        =   0
      Bold            =   False
      Description     =   ""
      DoubleBuffer    =   False
      DoubleValue     =   0.0
      Enabled         =   True
      FloatValue      =   0.0
      FocusRing       =   True
      Height          =   24
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      IntegerValue    =   0
      IsFlipped       =   False
      Italic          =   False
      Left            =   800
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      MaxRecentSearches=   0
      PlaceholderText =   ""
      Scope           =   0
      SendSearchStringImmediately=   False
      SendWholeSearchString=   False
      ShowMenu        =   False
      StringValue     =   ""
      TabIndex        =   12
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      Top             =   0
      Transparent     =   True
      Underlined      =   False
      UseFocusRing    =   False
      Visible         =   True
      Width           =   200
   End
   Begin TextField SearchField
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   False
      BackColor       =   &cFFFF00FF
      Bold            =   False
      Border          =   True
      CueText         =   "#kSearch"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   False
      Format          =   ""
      Height          =   24
      HelpTag         =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   800
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
      TabIndex        =   13
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   -54
      Transparent     =   True
      Underline       =   False
      UseFocusRing    =   False
      Visible         =   False
      Width           =   200
   End
   Begin sHTTPSocket BLASTSocket
      CertificateFile =   
      CertificatePassword=   ""
      CertificateRejectionFile=   
      ConnectionType  =   5
      Index           =   -2147483648
      InitialParent   =   ""
      LockedInPosition=   False
      Scope           =   0
      Secure          =   False
      TabPanelIndex   =   0
   End
   Begin ProgressWheel ProgressWheel1
      AutoDeactivate  =   False
      Enabled         =   True
      Height          =   24
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   525
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   14
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   -89
      Transparent     =   True
      Visible         =   False
      Width           =   24
   End
   Begin Canvas Splitter
      AcceptFocus     =   False
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      DoubleBuffer    =   True
      Enabled         =   True
      Height          =   4
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   15
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   354
      Transparent     =   True
      UseFocusRing    =   False
      Visible         =   True
      Width           =   1067
   End
   Begin sHTTPSocket EBISocket
      CertificateFile =   
      CertificatePassword=   ""
      CertificateRejectionFile=   
      ConnectionType  =   3
      Index           =   -2147483648
      LockedInPosition=   False
      Scope           =   0
      Secure          =   False
      TabPanelIndex   =   0
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Activate()
		  
		  'me.SetFocus
		  MapCanvas.SetFocus
		  
		  
		End Sub
	#tag EndEvent

	#tag Event
		Function CancelClose(appQuitting as Boolean) As Boolean
		  dim boo as boolean=Savecheck
		  
		  if NOT boo then Return true
		End Function
	#tag EndEvent

	#tag Event
		Sub Close()
		  BLASTSearchViewer.close
		  SPSearchViewer.close
		  UPSearchViewer.close
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Deactivate()
		  Global.ToolTip.Hide
		End Sub
	#tag EndEvent

	#tag Event
		Sub EnableMenuItems()
		  'adjust View menu command visibility:
		  ViewLogo.Visible=false
		  ViewSequences.Visible=false
		  ViewAlignmentInfo.Visible=false
		  ViewHmmProfile.Visible=false
		  ViewMEMEresults.Visible=false
		  ViewHmmerSettings.Visible=false
		  Separator1.Visible=false
		  ViewHideViewer.Visible=false
		  Separator2.Visible=false
		  ViewViewDetails.Visible=true
		  AnnotateMEMEres.Visible=True
		  AnnotateMEMEres.Enabled=True
		  
		  if ubound(genome.ReadDepth1)>0 then
		    GenomeRemovePlots.enabled=true
		  end if
		  GenomeMergePlotData.enabled=true
		  
		  ViewViewDetails.Enable
		  
		  if TMdisplay.visible then
		    ViewViewDetails.text = kHideDetails
		  else
		    ViewViewDetails.text = kViewDetails
		  end if
		  
		  GenomeFind.enabled=true
		  if SearchPosition>0 then
		    GenomeFindAgain.Enabled=true
		  end if
		  GenomeGoto.enabled=true
		  GenomeAddPlot.enabled=true
		  GenomeMergePlotData.enabled=true
		  
		  GenomeTFfamilySearch.enabled=true
		  
		  FileSaveCheckedSites.Visible=true
		  FileSaveCheckedSites.Enabled=true
		  FileSaveGenomeAs.Visible=true
		  FileSaveGenomeAs.Enabled=true
		  FileExportFeatureTable.enabled=true
		  FileExportSequence.enabled=true
		  FileExportProteinSequences.enabled=true
		  
		  FileSaveAlignmentSelection.visible=false
		  FileSaveLogo.visible=false
		  'GenomeScanGenome.Visible=false
		  
		  GenomeListRegulons.Enabled=true
		  if GenomeChanged=false then
		    FileSaveGenome.enabled=false
		  else
		    FileSaveGenome.enabled=true
		  end if
		  
		  if Ubound(genomeWin.HmmHits)>0 then
		    RegPreciseCompareScores.Enable
		  end if
		  
		  'enable copying/editing if anything is selected:
		  if AnythingSelected then
		    EditCopy.enabled=True
		    GenomeNewFeature.enabled=True
		    if SelFeatureNo>0 then
		      If SelFeatureNo<=Ubound(seq.features) Then 'workaround for scrolling problem
		        If seq.Features(SelFeatureNo).type="CDS" Then 'enable copying of protein sequence, but only if a CDS is selected
		          EditCopyTranslation.enabled=True
		          GenomeEditGene.enabled=True
		        Elseif seq.Features(SelFeatureNo).type="gene" Then
		          GenomeEditGene.enabled=True
		        End If
		        GenomeEditFeature.enabled=True
		        GenomeEditGene.enabled=True
		        GenomeRemoveFeature.enabled=True
		        GenomeRemoveFeatures.enabled=True
		      end if
		    end if
		  else
		    EditCopy.enabled=false
		  end if
		  
		  EditCut.enabled=false
		  
		  
		  Exception err
		    ExceptionHandler(err,"GenomeWin:EnableMenuItems")
		End Sub
	#tag EndEvent

	#tag Event
		Function KeyDown(Key As String) As Boolean
		  
		  
		  if Keyboard.AltKey AND Keyboard.CommandKey then
		    if Keyboard.AsynckeyDown(&h0C) then
		      quit
		    end if
		  end
		  
		  SkimHits
		End Function
	#tag EndEvent

	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  
		  
		  If IsContextualClick Then
		    ' Don't process this event for right-clicks
		    Return false
		  Else
		    return true
		  end
		End Function
	#tag EndEvent

	#tag Event
		Function MouseWheel(X As Integer, Y As Integer, DeltaX as Integer, DeltaY as Integer) As Boolean
		  if deltaX>300 then
		    msgbox "swipe left!"
		    return true
		  end
		  
		  if deltaX<-300 then
		    msgbox "swipe right!"
		    return true
		  end
		  
		End Function
	#tag EndEvent

	#tag Event
		Sub Open()
		  Dim s0 As SegmentedControlItem = SegmentedControl1.Items( 0 )
		  Dim s2 As SegmentedControlItem = SegmentedControl1.Items( 2 )
		  'set segment sizes:
		  s0.Width=20
		  s2.Width=20
		  genomeWin.SegmentedControl1.SizeToFit
		  GenomeWin.FeatureBox.left=genomeWin.SegmentedControl1.left+genomeWin.SegmentedControl1.Width+5
		  GenomeWin.FeatureBox.Width=genomeWin.SelRange.left-GenomeWin.FeatureBox.left-5
		  
		  
		  
		  
		  
		  #if TargetCocoa
		    '#if Target64Bit then
		    ''NSSearchField class in MacOSLib seems to be broken for 64bit
		    'SearchField.enabled=true
		    'SearchField.visible=true
		    'SearchField.top=0
		    'NSSearchField1.enabled=false
		    'NSSearchField1.visible=false
		    '#else
		    SearchField.enabled=false
		    SearchField.visible=false
		    '#endif
		    
		    s0.Icon=SystemIcons.GoLeftTemplate   'doesn't work on 64 bit
		    s2.Icon=SystemIcons.GoRightTemplate
		    s0.Title=""
		    s2.Title=""
		    
		  #else
		    SearchField.enabled=true
		    SearchField.visible=true
		    SearchField.top=0
		    NSSearchField1.enabled=false
		    NSSearchField1.visible=false
		  #endif
		  
		  #If TargetLinux
		    
		    'SegmentedControl doesn't show icons on Linux 64-bit?
		    s0.Icon=br_prev_icon16
		    's0.Title="<"
		    s2.Icon=br_next_icon16
		    's2.Title=">"
		    
		  #endif
		  
		  
		  'Get the default fonts:
		  'dim ff as string
		  'ff=SetDefaultFonts(true)
		  'FixedFont=NthField(ff,";",1)
		  'ProportionalFont=NthField(ff,";",2)
		  
		  'Set detail view display and the sizes of dependent controls
		  TextMapPic=New picture(Screen(0).Width,Me.Height)
		  TextMapPic.Graphics.TextSize=12
		  TextMapPic.Graphics.TextFont=FixedFont
		  TMLineHeight=TextMapPic.Graphics.StringHeight("Ay",TextMapPic.width)
		  TMdisplay.Height=10*TMLineHeight+TMLineHeight/2
		  Splitter.top=TMdisplay.top+TMdisplay.Height+1
		  BrowserTabs.top=Splitter.top+Splitter.Height'+1 
		  BrowserTabs.height=self.Height-BrowserTabs.top
		  BrowserPagePanel.top=BrowserTabs.top+1
		  BrowserPagePanel.height=BrowserTabs.height-1
		  
		  
		  TMCharWidth=TextMapPic.Graphics.StringWidth("A")
		  
		  
		  
		  Seq=New cSeqObject
		  Genome=New cSeqObject
		  
		  'disable the hit counter so it couldn't be clicked
		  Dim s1 As SegmentedControlItem = SegmentedControl1.Items( 1 )
		  s1.Enabled=false
		  
		  seq.Selstart=0
		  seq.SelLength=0
		  
		  me.findmode=0
		  
		  
		  
		  DisplayToolTips=true
		  
		  'setup the tabs
		  'default is just the sequence tab:
		  
		  //Editor.visible=true
		  
		  'TabPanel1.Append kGraphicMap
		  'UpdateMapCanvasBG
		  
		  
		  'dim msg as string
		  
		  
		  
		  SelColor=HighlightColour 'RGB(191,204,242) 'mac oldfashioned blue
		  
		  'Editor.TextFont=FixedFont
		  'Editor.TextSize=12
		  
		  SelRange.TextFont=FixedFont
		  SelRange.TextSize=12
		  #if TargetCocoa then
		    SelRange.top=SelRange.top-5
		    SelRange.height=SelRange.height+5
		  #endif
		  
		  'me.graphics.TextFont=FixedFont
		  'me.graphics.TextSize=12
		  'TextHeight=me.graphics.textheight
		  
		  'Editor.SetFocus 'necessary on Win32 only - othervise the focus goes to the scrollbar
		  '#if debugBuild then
		  'Editor.text="AGAAGGCGACGCCGGCGTCTACTCCTGCTTTTATTGAGCAGTTCATCCTCGTCTGGAGGCGGGGGTGCAGCCGCGGCTCCACCCCCGCCTACAACCACGACTGTAGTCGTGGTTATAATCATTCAACAGAACAATAAAAAGCACCATTTCTTTGAAGAGGACGATTGCTGTTACTATTGGATGTAATAGTGA"
		  '#endif
		  
		  
		  
		  
		  'me.Top=SeqWinTop
		  'me.Left=SeqWinLeft
		  'me.Width=SeqWinWidth
		  'for some reason setting height on Mac makes controls (editor, scroller, coords) taller than set in the IDE
		  '#if TargetWindows then
		  'me.height=SeqWinHeight
		  '#endif
		  
		  'FixMapCanvasSizeOnMac
		  
		  'temp translation stuff:
		  'dim CodonList As String ="AGA,AGG,CGA,CGC,CGG,CGT,CTA,CTC,CTG,CTT,TTA,TTG,AGC,AGT,TCA,TCC,TCG,TCT,GGA,GGC,GGG,GGT,GCA,GCC,GCG,GCT,CCA,CCC,CCG,CCT,ACA,ACC,ACG,ACT,GTA,GTC,GTG,GTT,ATA,ATC,ATT,CAA,CAG,AAC,AAT,AAA,AAG,CAC,CAT,TTC,TTT,GAA,GAG,GAC,GAT,TGC,TGT,TAC,TAT,TGG,ATG,TAA,TAG,TGA"
		  'dim aaListt As String ="XRRRRRRLLLLLLSSSSSSGGGGAAAAPPPPTTTTVVVVIIIQQNNKKHHFFEEDDCCYYWM***"
		  
		  
		  
		  UpdateSelRange
		  ////editor.SetFocus
		  me.opening=false
		  
		  
		  '#if TargetCocoa then
		  'OrderFront self
		  '#endif
		  
		  'set CustomEditField (Editor)
		  'Editor.EnableAutocomplete=false
		  'Editor.DisplayLineNumbers=true
		  'Editor.TextFont=TMFont
		  'FixedFont
		  'Editor.TextSize=12      'wrong line wrap without setting size
		  'Editor.LineNumbersTextFont=TMFont'FixedFont
		  'Editor.LineNumbersTextSize=12
		  'editor.LineNumOffset=50
		  'if usesOverlayScrollbars then
		  'Editor.width=self.width
		  'scroller.left=self.width
		  'end if
		  'HighlightFeatures
		  
		  
		  //get proper color for tabpanel BG
		  
		  '#if TargetCocoa then
		  'dim t as integer
		  'dim p as picture
		  'dim c as Color
		  't=Tabpanel1.top
		  'if t>0 then
		  'p=new picture (10,t,32)
		  'me.DrawInto p.graphics,0,0
		  'c=p.Graphics.Pixel(5,p.height-1)
		  'Tabpanel1.tabBGc=c
		  'end if
		  '#endif
		  
		  
		  
		  'HighlightColour=HighlightColor 'set to default until features are read
		  '#if TargetWindows
		  'HighlightColour=&c66CCFF00
		  '#endif
		  
		  FeatureBox.visible=false 'show later if required
		  
		  #if Target64Bit
		    SegmentedControl1.Invalidate 'required on 64-bit, otherwise no icons
		    me.Refresh(false)
		  #endif
		  
		  MapCanvas.SetFocus
		  
		  
		  'set the required secureHTTPsocket option:
		  SPSocket.Secure=true
		  UniProtSocket.Secure=true
		  BLASTSocket.Secure=true
		  Exception err
		    ExceptionHandler(err,"GenomeWin:Open")
		End Sub
	#tag EndEvent

	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Resized()
		  setMapCanvasScrollers
		  
		  ProgressWheel1.top=BrowserPagePanel.top+BrowserPagePanel.Height/3
		  ProgressWheel1.left=(Self.width-ProgressWheel1.Width)/2
		  
		  if (HScrollbar.Value-DisplayInterval/2)<1 then
		    ExtractFragment(1,DisplayInterval)
		  elseif (HScrollbar.Value+DisplayInterval/2)>lenb(genome.sequence) then
		    ExtractFragment(lenb(genome.sequence)-DisplayInterval,lenb(genome.sequence))
		  else
		    ExtractFragment(HScrollbar.Value-DisplayInterval/2,HScrollbar.Value+DisplayInterval/2)
		  End If
		  
		  TMdisplay.Refresh
		  
		End Sub
	#tag EndEvent


	#tag MenuHandler
		Function AlignmentConvertToHmm() As Boolean Handles AlignmentConvertToHmm.Action
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function AnnotateMEMEres() As Boolean Handles AnnotateMEMEres.Action
			LogoWin.AnnotateMEMEresults
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function EditClose() As Boolean Handles EditClose.Action
			close
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function EditCopy() As Boolean Handles EditCopy.Action
			' Copies protein sequence if a CDS is selected, otherwise copies DNA seq
			
			If AnythingSelected Then
			If SelFeatureNo<=Ubound(seq.features) Then 'workaround for scrolling problem
			if SelFeatureNo>0 then
			if seq.Features(SelFeatureNo).type="CDS" then
			CopyAA(false)
			else
			CopyDNA
			end if
			else
			CopyDNA
			end if
			else
			CopyDNA
			end if
			end if
			
			
			
			
			'Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function EditCopyTranslation() As Boolean Handles EditCopyTranslation.Action
			CopyAA(false)
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function FileClose() As Boolean Handles FileClose.Action
			Close
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function FileExportFeatureTable() As Boolean Handles FileExportFeatureTable.Action
			gbk2tbl
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function FileExportProteinSequences() As Boolean Handles FileExportProteinSequences.Action
			gbk2protein
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function FileExportSequence() As Boolean Handles FileExportSequence.Action
			gbk2fasta
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function FilePageSetup() As Boolean Handles FilePageSetup.Action
			Dim ps as PrinterSetup
			ps=New PrinterSetup
			
			If PageSetup <> "" then
			ps.SetupString=PageSetup
			End if
			
			If ps.PageSetupDialog then
			PageSetup=ps.setupstring
			end if
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function FilePrint() As Boolean Handles FilePrint.Action
			Dim g as Graphics
			Dim ps as PrinterSetup
			
			ps=new PrinterSetup
			Dim pageWidth as Integer
			Dim pageHeight as Integer
			ps.MaxHorizontalResolution=300
			ps.MaxVerticalResolution=300
			
			If PageSetup <> "" then //PageSetup contains properties
			ps.setupString=PageSetup
			pageWidth=ps.Width-36
			pageHeight=ps.Height-36
			// open Print dialog with Page Setup properties
			g=openPrinterDialog(ps)
			else
			g=openPrinterDialog() //open dg w/o Page Setup properties
			pageWidth=300*7.5 //default width and height
			pageHeight=300*9
			end if
			If g <> Nil then //user didn't cancel Print dialog
			self.drawinto(g,0,0)
			End If
			
			
			
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function FileSaveCheckedSites() As Boolean Handles FileSaveCheckedSites.Action
			Dim outfile as FolderItem
			dim outstream As TextOutputStream
			dim n, leftC, rightC as integer
			dim hitSeq as string
			
			Dim dlg as New SaveAsDialog
			dlg.InitialDirectory=genomefile.Parent
			'dlg.promptText="Select a name for Fasta file to export sequence to."
			dlg.SuggestedFileName=nthfield(GenomeFile.Name,".",1)+".fasta"
			dlg.Title="Save selected sites"
			dlg.Filter=FileTypes.Fasta
			dlg.CancelButtonCaption=kCancel
			dlg.ActionButtonCaption=kSave
			outfile=dlg.ShowModalwithin(self)
			if outfile<>nil then
			outstream = TextOutputStream.Create(outfile)
			outstream.write(GetCheckedHits)
			outstream.Close
			
			end if
			
			
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function FileSaveGenome() As Boolean Handles FileSaveGenome.Action
			SaveGenome
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function FileSaveGenomeAs() As Boolean Handles FileSaveGenomeAs.Action
			dim f as FolderItem
			
			f=GetSaveFolderItem("GenBank",GenomeFile.Name)
			
			if f<>nil then
			SaveGenBankFile(f)
			end if
			
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function GenomeAddPlot() As Boolean Handles GenomeAddPlot.Action
			// plots any data from a text file 
			' The file should have one number per genome base pair,
			' single number per line.
			
			'RNA-seq coverage is a special case
			'SigmoID will recognise depth data generated by samtools (command:samtools depth)
			'the input should have three tab-separated columns:
			'<seq name> <position #> <depth>
			
			
			//open file with depth data
			dim infile as folderitem
			Dim dlg as New OpenDialog
			
			'#If Not TargetLinux Then
			'dlg.InitialDirectory = SpecialFolder.Documents
			'#Else //open Home directory on linux
			'dlg.InitialDirectory = SpecialFolder.Home
			'#Endif
			
			dlg.promptText="Select a text file with data to plot"
			dlg.Title="Open file with data to plot"
			dlg.Filter="FileTypes.Text;FileTypes.WIG"
			infile=dlg.ShowModal()
			
			if infile<> Nil then
			If Right(Infile.name,6)=".plots" Then 
			'add four plots specified in the .plots file
			'(four lines with full shell paths) 
			Add4Plots(infile)   
			return false
			end if
			
			//load the data into array attached to seq object:
			
			dim instream as TextInputStream
			dim aLine as string
			dim posNo as integer
			dim tabChar as string = chr(9)
			
			
			
			InStream = infile.OpenAsTextFile
			if infile.Type="WIG" then     'Rockhopper/IGV track: drop first two lines
			aLine=trim(InStream.readLine)
			aLine=trim(InStream.readLine)
			end if
			LogoWin.WriteToSTDOUT(EndOfLine.UNIX+"Adding a plot..."+EndOfLine.UNIX)
			
			if UBound(self.Genome.ReadDepth1)<1 then     'Loading first track
			aLine=trim(InStream.readLine)
			if CountFields(aLine,TabChar)=3 then        'Triple column file (e.g. produced by samtools)
			instream.close
			InStream = infile.OpenAsTextFile
			redim genome.ReadDepth1(len(Genome.Sequence))
			while not InStream.EOF
			aLine=trim(InStream.readLine)
			posNo=val(NthField(aLine,TabChar,2))
			Genome.ReadDepth1(posNo)=val(NthField(aLine,TabChar,3))
			wend
			else
			instream.close
			InStream = infile.OpenAsTextFile
			
			while not InStream.EOF
			aLine=trim(InStream.readLine)
			'check if we have the expected numerical data:
			'the check is nice but slow: disabling
			'if str(val(aline))<>aline then
			''problems start when counts are over 1000000 
			'dim c as integer
			'c=val(aline)
			'if str(c)<>aline then
			'msgbox "The data don't seem to be in the expected format. Can't draw these! (original: "+aline+"; numerical: "+str(val(aline))
			'return false
			'end if
			'end if
			self.Genome.ReadDepth1.Append(val(aLine))
			'if UBound(self.Genome.ReadDepth1)<>linecount then
			'redim self.Genome.ReadDepth1(0)  'to prevent display of faulty data
			'msgbox "Line no "+ str(linecount)+" of depth data has position number label "+str(posNo)+". Exiting since these values must match."
			'return false
			'end if
			wend
			end if
			LogoWin.WriteToSTDOUT("Red: "+ Infile.name +EndOfLine.UNIX)
			elseif UBound(self.Genome.ReadDepth2)<1 then 
			
			redim self.Genome.ReadDepth2(0)
			InStream = infile.OpenAsTextFile
			aLine=trim(InStream.readLine)
			if CountFields(aLine,TabChar)=3 then'triple column file (e.g. produced by samtools)
			instream.close
			InStream = infile.OpenAsTextFile
			redim genome.ReadDepth2(len(Genome.Sequence))
			while not InStream.EOF
			aLine=trim(InStream.readLine)
			posNo=val(NthField(aLine,TabChar,2))
			Genome.ReadDepth2(posNo)=val(NthField(aLine,TabChar,3))
			wend
			else
			instream.close
			InStream = infile.OpenAsTextFile
			
			while not InStream.EOF
			aLine=trim(InStream.readLine)
			'check if we have the expected numerical data:
			'the check is nice but slow: disabling
			'if str(val(aline))<>aline then
			''problems start when counts are over 1000000 
			'dim c as integer
			'c=val(aline)
			'if str(c)<>aline then
			'msgbox "The data don't seem to be in the expected format. Can't draw these! (original: "+aline+"; numerical: "+str(val(aline))
			'return false
			'end if
			'end if
			
			self.Genome.ReadDepth2.Append(val(aLine))
			'if UBound(self.Genome.ReadDepth2)<>linecount then
			'redim self.Genome.ReadDepth2(0)  'to prevent display of faulty data
			'msgbox "Line no "+ str(linecount)+" of depth data has position number label "+str(posNo)+". Exiting since these values must match."
			'return false
			'end if
			wend
			
			end if
			LogoWin.WriteToSTDOUT("Brown: "+ Infile.name +EndOfLine.UNIX)
			elseif UBound(self.Genome.ReadDepth3)<1 then 
			
			redim self.Genome.ReadDepth3(0)
			InStream = infile.OpenAsTextFile
			aLine=trim(InStream.readLine)
			if CountFields(aLine,TabChar)=3 then'triple column file (e.g. produced by samtools)
			instream.close
			InStream = infile.OpenAsTextFile
			redim genome.ReadDepth3(len(Genome.Sequence))
			while not InStream.EOF
			aLine=trim(InStream.readLine)
			posNo=val(NthField(aLine,TabChar,2))
			Genome.ReadDepth3(posNo)=val(NthField(aLine,TabChar,3))
			
			wend
			else
			instream.close
			InStream = infile.OpenAsTextFile
			
			while not InStream.EOF
			aLine=trim(InStream.readLine)
			'check if we have the expected numerical data:
			'the check is nice but slow: disabling
			'if str(val(aline))<>aline then
			''problems start when counts are over 1000000 
			'dim c as integer
			'c=val(aline)
			'if str(c)<>aline then
			'msgbox "The data don't seem to be in the expected format. Can't draw these! (original: "+aline+"; numerical: "+str(val(aline))
			'return false
			'end if
			'end if
			
			self.Genome.ReadDepth3.Append(val(aLine))
			'if UBound(self.Genome.ReadDepth3)<>linecount then
			'redim self.Genome.ReadDepth3(0)  'to prevent display of faulty data
			'msgbox "Line no "+ str(linecount)+" of depth data has position number label "+str(posNo)+". Exiting since these values must match."
			'return false
			'end if
			wend
			
			end if
			LogoWin.WriteToSTDOUT("Green: "+ Infile.name +EndOfLine.UNIX)
			else
			redim self.Genome.ReadDepth4(0)
			InStream = infile.OpenAsTextFile
			aLine=trim(InStream.readLine)
			if CountFields(aLine,TabChar)=3 then'triple column file (e.g. produced by samtools)
			instream.close
			InStream = infile.OpenAsTextFile
			redim genome.ReadDepth4(len(Genome.Sequence))
			while not InStream.EOF
			aLine=trim(InStream.readLine)
			posNo=val(NthField(aLine,TabChar,2))
			Genome.ReadDepth4(posNo)=val(NthField(aLine,TabChar,3))
			
			wend
			else
			instream.close
			InStream = infile.OpenAsTextFile
			
			while not InStream.EOF
			aLine=trim(InStream.readLine)
			'check if we have the expected numerical data:
			'the check is nice but slow: disabling
			'if str(val(aline))<>aline then
			''problems start when counts are over 1000000 
			'dim c as integer
			'c=val(aline)
			'if str(c)<>aline then
			'msgbox "The data don't seem to be in the expected format. Can't draw these! (original: "+aline+"; numerical: "+str(val(aline))
			'return false
			'end if
			'end if
			
			self.Genome.ReadDepth4.Append(val(aLine))
			'if UBound(self.Genome.ReadDepth4)<>linecount then
			'redim self.Genome.ReadDepth4(0)  'to prevent display of faulty data
			'msgbox "Line no "+ str(linecount)+" of depth data has position number label "+str(posNo)+". Exiting since these values must match."
			'return false
			'end if
			wend
			
			end if
			LogoWin.WriteToSTDOUT("Blue: "+ Infile.name +EndOfLine.UNIX)
			End If
			
			genome.baselineY=100 'make room for the graph
			ExtractFragment(1,10000)
			TextMap(0,0)
			end if
			
			Exception err
			ExceptionHandler(err,"GenomeWin:GenomeAddPlot")
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function GenomeEditFeature() As Boolean Handles GenomeEditFeature.Action
			EditFeature(seq.Features(SelFeatureNo))
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function GenomeEditGene() As Boolean Handles GenomeEditGene.Action
			EditGene(seq.Features(SelFeatureNo))
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function GenomeFind() As Boolean Handles GenomeFind.Action
			#if TargetMacOS then
			'#If Target64Bit Then
			''NSSearchField class in MacOSLib seems to be broken for 64bit
			'SearchField.SetFocus
			'SearchField.SelectAll
			'#else
			NSSearchField1.SetFocus
			NSSearchField1.SelectAll
			'#endif
			#Else
			SearchField.SetFocus
			SearchField.SelectAll
			#endif
			
			'
			'FindWin.showmodalwithin(self)
			'
			'if FindWin.OKpressed then
			'SearchPosition=0
			'query=trim(FindWin.FindField.text)
			'
			'topStrandSearched=false
			'if isACGT(query) then 'detect if query is sequence or plain text
			'Search4sequence(query)
			'else
			'Search4text(query)
			'end if
			'end if
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function GenomeFindAgain() As Boolean Handles GenomeFindAgain.Action
			'continue from the current SearchPosition
			SelFeatureNo=0
			if isACGT(query) then 'detect if query is sequence or plain text
			Search4sequence(query)
			else
			Search4text(query)
			end if
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function GenomeGenomeInfo() As Boolean Handles GenomeGenomeInfo.Action
			// show the header of GenBank file
			
			DocWin.Editor.text=Header
			DocWin.Title=self.Title+" Info"
			DocWin.show
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function GenomeGenomeStatistics() As Boolean Handles GenomeGenomeStatistics.Action
			GenomeStats
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function GenomeGetCRtags() As Boolean Handles GenomeGetCRtags.Action
			CRtagWin.show
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function GenomeGoto() As Boolean Handles GenomeGoto.Action
			GoToWin.parent=self
			GoToWin.ShowModalWithin(self)
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function GenomeListRegulons() As Boolean Handles GenomeListRegulons.Action
			OperOnOptions=""
			RegulonSettingsWin.showmodalwithin(self)
			if RegulonSettingsWin.OKpressed then
			OperOn
			end if
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function GenomeMergePlotData() As Boolean Handles GenomeMergePlotData.Action
			MergePlotDataWin.inFile1Field.Text=""
			MergePlotDataWin.inFile2Field.Text=""
			MergePlotDataWin.OutFileField.Text=""
			
			MergePlotDataWin.show
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function GenomeNewFeature() As Boolean Handles GenomeNewFeature.Action
			AddFeature
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function GenomePrintMap() As Boolean Handles GenomePrintMap.Action
			PrintMap
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function GenomeRemoveFeature() As Boolean Handles GenomeRemoveFeature.Action
			RemoveFeature(SelFeatureNo)
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function GenomeRemoveFeatures() As Boolean Handles GenomeRemoveFeatures.Action
			RemoveFeatures(SelFeatureNo)
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function GenomeRemovePlots() As Boolean Handles GenomeRemovePlots.Action
			redim genome.ReadDepth1(0)
			redim genome.ReadDepth2(0)
			redim genome.ReadDepth3(0)
			redim genome.ReadDepth4(0)
			genome.baselineY=20 'make room for the graph
			ExtractFragment(1,10000)
			TextMap(0,0)
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function GenomeRemoveSites() As Boolean Handles GenomeRemoveSites.Action
			// Code modified (simplified) from
			' RemoveFeature(ContextFeature)
			' being simplified, it doesn't handle situations with just added sites gracefully!
			
			// Assumes there's an object selected
			' all objects of the same type and with the same name will be deleted
			' (meant to be used with repeated features,
			' for single features contextual menu should be used)
			
			// Only TFBSs handled at this time!
			
			Dim n,u,topObj As Integer
			Dim p As picture
			Dim FeatureNo As Integer ' = ContextFeature
			
			p=Seq.Map
			topObj= p.Objects.Count-1
			
			For n=1 To topObj 'skip zero object that contains selection
			If p.Objects.Item(n) IsA cClickableShape Then
			
			If cClickableShape(p.Objects.Item(n)).Selected Then
			FeatureNo=n/2
			Exit
			Else
			
			End
			
			End
			Next
			
			If FeatureNo=0 Then Return False 'Nothing selected
			
			// get feature type and name
			' protein_bind    223284..223298
			' /inference="profile:nhmmer:3.1b1"
			' /bound_moiety="CpxR"
			
			Dim fname As String = seq.Features(FeatureNo).FeatureText
			fname=NthField(fname,"/bound_moiety=",2)
			fname=NthField(fname,Chr(34),2)
			fname="/bound_moiety="+Chr(34)+fname+Chr(34)
			
			
			
			'Convert FeatureNo to whole genome numbering and delete
			
			
			u=ubound(Genome.Features)
			
			For n=u DownTo 1
			If InStr(Genome.Features(n).FeatureText,fname)>0 Then
			Genome.Features.Remove n
			End If
			Next
			'update the display:
			ExtractFragment(GBrowseShift,GBrowseShift+DisplayInterval)
			
			'mark genome changed:
			GenomeChanged=True
			Self.IsModified=True
			
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function GenomeTFfamilySearch() As Boolean Handles GenomeTFfamilySearch.Action
			Dim boo As Boolean
			
			if HmmSearchCR then
			
			
			if hmmSearchSettingsWin.AddAnnotationCheckBox.value then
			'only add annotation if hmmsearch completed OK
			Dim gbkFile as folderitem
			Dim dlg as New SaveAsDialog
			dlg.InitialDirectory=GenomeFile.Parent
			dlg.promptText="Select where to save the modified GenBank file"
			dlg.SuggestedFileName=NthField(GenomeFile.displayname,".",1)+"_2"+".gbk"
			dlg.Title="Save .gbk file"
			dlg.Filter=FileTypes.GenBank
			dlg.CancelButtonCaption=kCancel
			dlg.ActionButtonCaption=kSave
			
			gbkFile=dlg.ShowModal
			If gbkFile <> Nil then
			'run annotation script:
			'ProtFamily.py <hmmsearch_result> <input_file> <output_file> -f family_name
			
			'This script adds feature notes (with TF family names) to a GenBank file based
			'on hmmsearch results.
			'
			'positional arguments:
			'hmmsearch_result  path to hmmsearch result file.
			'input_file        path to input Genbank file.
			'output_file       path to output Genbank file.
			'
			'optional arguments:
			'-h, --help        show this help message and exit
			'-f , --family     Adds the name of protein family in GenBank file
			
			dim cli as string
			
			logoWin.WriteToSTDOUT (EndofLine+EndofLine+"Running the ProtFamily script..."+EndofLine)
			dim GenomeFilePath,outFilePath as string
			#if TargetWindows
			'GenomeFilePath=GetShortPathName(GenomeFile.shellpath)
			FixPath4Windows(gbkFile)
			GenomeFilePath=chr(34)+GenomeFile.shellpath+chr(34)
			outFilePath=chr(34)+gbkFile.ShellPath+chr(34)
			#else
			GenomeFilePath=GenomeFile.shellpath
			outFilePath=gbkFile.ShellPath
			#endif
			
			dim protFamilyPath as string
			protFamilyPath=replace(logoWin.hmmGenPath,"hmmGen.py","ProtFamily.py")
			
			
			TFfamilyDesc=Trim(NthField(hmmSearchSettingsWin.PfamPopup.SelectedRowValue,"|",1))
			TFfamilyDesc=TFfamilyDesc+" family transcription factor'"    'should handle sigma factors differently
			'ProtFamily.py <hmmsearch_result> <input_file> <output_file> -f family_name
			cli=pythonPath+PlaceQuotesToPath(protFamilyPath)+" "
			hmmsearchResultFile=TemporaryFolder.child("hmmsearch.result")  'should not be required
			If hmmsearchResultFile=Nil Then Return False        
			cli=cli+PlaceQuotesToPath(hmmsearchResultFile.ShellPath)+" "
			cli=cli+PlaceQuotesToPath(GenomeFilePath)+" "
			cli=cli+PlaceQuotesToPath(outFilePath)
			cli=cli+" -f '"+TFfamilyDesc
			
			userShell(cli)
			If shError=0 Then
			
			LogoWin.WriteToSTDOUT (EndofLine+shResult)
			LogoWin.WriteToSTDOUT (EndofLine.unix+"Genbank file with added TF family notes written to "+gbkFile.ShellPath+EndofLine)
			else
			LogoWin.WriteToSTDOUT (EndofLine+"ProtFamily error code: "+Str(shError)+EndofLine)
			LogoWin.WriteToSTDOUT (EndofLine+shResult)
			LogoWin.WriteToSTDOUT (EndofLine+"ProtFamily command line was: "+cli+EndofLine)
			return false
			end if
			
			'WriteToSTDOUT (EndofLine.unix+"Loading the GenBank file...")
			
			
			
			end if
			end if
			end if
			
			Return True
			
			Exception err
			ExceptionHandler(err,"GenomeWin:GenomeTFfamilySearch")
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function RegPreciseCompareScores() As Boolean Handles RegPreciseCompareScores.Action
			'run nhmmer, then hmmgen, then convert hits to fasta string
			'and feed it to the actual comparison routine
			
			'for now, assume that both nhmmer and HmmGen have been run and we have the required hits.
			
			dim score as double
			
			LogoWin.show
			score=CompareScores(GenomeWin.GetCheckedHits,LogoWin.Sequences)
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function ViewViewDetails() As Boolean Handles ViewViewDetails.Action
			TMdisplay.Visible=NOT TMdisplay.Visible
			TMdisplayAdjustment
			Return True
			
		End Function
	#tag EndMenuHandler


	#tag Method, Flags = &h0
		Sub Add4plots(infile as folderitem)
		  
		  dim instream as TextInputStream
		  Dim aLine, InFileFolderPath As String
		  dim linecount, posNo as integer
		  dim tabChar as string = chr(9)
		  dim FileNameArr(4) as string
		  Dim n,ss,sl As Integer
		  dim plotFile as folderitem
		  
		  redim self.Genome.ReadDepth1(0)
		  redim self.Genome.ReadDepth2(0)
		  redim self.Genome.ReadDepth3(0)
		  redim self.Genome.ReadDepth4(0)
		  
		  InStream = infile.OpenAsTextFile
		  if instream=nil then return
		  FileNameArr(1)=Trim(InStream.readLine)
		  FileNameArr(2)=trim(InStream.readLine)
		  FileNameArr(3)=trim(InStream.readLine)
		  FileNameArr(4)=trim(InStream.readLine)
		  instream.close
		  
		  // Check if FileNameArr() contains paths or filenames (and prepend paths if required)
		  // .path file should be in the same folder with coverage files
		  If InStr(FileNameArr(1),"/")=0 Then  'only filename
		    InFileFolderPath=infile.Parent.ShellPath
		    For n=1 To 4
		      FileNameArr(n)=InFileFolderPath+"/"+FileNameArr(n)
		    Next
		  End If
		  
		  LogoWin.show
		  LogoWin.WriteToSTDOUT(EndOfLine.UNIX+"Adding coverage plots..."+EndOfLine.UNIX)
		  
		  
		  
		  
		  for n=1 to 4
		    plotFile=GetFolderItem(FileNameArr(n),FolderItem.PathTypeShell)
		    InStream = plotFile.OpenAsTextFile
		    If instream=Nil Then Return
		    If plotFile.Type="WIG" Then     'Rockhopper/IGV track: drop first two lines
		      aLine=trim(InStream.readLine)
		      aLine=trim(InStream.readLine)
		    End If
		    
		    select case n
		    case 1
		      while not InStream.EOF
		        aLine=trim(InStream.readLine)
		        Self.Genome.ReadDepth1.Append(Val(aLine))
		      Wend
		      LogoWin.WriteToSTDOUT(FileNameArr(1)+EndOfLine.UNIX,"Red")
		    Case 2
		      while not InStream.EOF
		        aLine=trim(InStream.readLine)
		        self.Genome.ReadDepth2.Append(val(aLine))
		      Wend
		      LogoWin.WriteToSTDOUT(FileNameArr(2)+EndOfLine.UNIX,"Brown")
		    Case 3
		      while not InStream.EOF
		        aLine=trim(InStream.readLine)
		        self.Genome.ReadDepth3.Append(val(aLine))
		      wend
		      LogoWin.WriteToSTDOUT(FileNameArr(3)+EndOfLine.UNIX,"Green")
		    Case 4
		      while not InStream.EOF
		        aLine=trim(InStream.readLine)
		        Self.Genome.ReadDepth4.Append(Val(aLine))
		      wend
		      LogoWin.WriteToSTDOUT(FileNameArr(4)+EndOfLine.UNIX,"Blue")
		    End Select
		    instream.close
		  next
		  LogoWin.WriteToSTDOUT(EndOfLine.UNIX,"Black")
		  genome.baselineY=100 'make room for the graph
		  ExtractFragment(1,10000)
		  TextMap(0,0)
		  me.show
		  
		  
		  Exception err
		    ExceptionHandler(err,"GenomeWin:GenomeAddPlot")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddFeature()
		  // adds a new feature for the selected piece
		  
		  dim fStart, fEnd, n, u as integer
		  dim LocusTag as string
		  dim ft as GBFeature
		  dim prevTag, nextTag, newTag as string
		  dim prevT, nextT, newT, tagLen as integer
		  
		  
		  'get selection coords
		  'fStart=seq.SelStart+GBrowseShift
		  'fEnd=fStart+seq.SelLength-1
		  fStart=val(nthField(SelRange.Text,"-",1))
		  fEnd=val(nthField(SelRange.Text,"-",2))
		  NewFeatureWin.fStartField.text=str(fStart)
		  NewFeatureWin.fEndField.text=str(fEnd)
		  
		  'guess locus_tag
		  '(assuming locus_tags increment  with step 10 or smth, otherwise the guess won't work)
		  u=ubound(seq.Features)
		  nextTag=""
		  for n=1 to u
		    if seq.Features(n).start>Seq.selstart then
		      nextTag = GetLocus_tag(seq.Features(n).FeatureText)
		      if n>1 then
		        prevTag = GetLocus_tag(seq.Features(n-1).FeatureText)
		      else
		        prevTag=""
		      end if
		      exit
		    end if
		  next
		  
		  if nextTag<>"" AND prevTag<>"" then
		    prevT=val(NthField(prevTag,"_",2))
		    nextT=val(NthField(nextTag,"_",2))
		    newT=ceil((prevT+nextT)/2)
		    tagLen=len(NthField(nextTag,"_",2))
		    if newT>prevT AND newT<nextT then
		      newTag=str(newT)
		      
		      while len(newTag)<tagLen
		        newTag="0"+newTag
		      wend
		      
		      newTag=NthField(nextTag,"_",1)+"_"+newTag
		    end if
		  end if
		  
		  NewFeatureWin.LocusTagField.text=newTag
		  
		  NewFeatureWin.ParentWin=self
		  NewFeatureWin.show
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub BLASTNsearch(GeneName as string)
		  
		  const URLstart as String = "https://blast.ncbi.nlm.nih.gov/Blast.cgi?CMD=Put&QUERY="
		  dim URLend as string= "&PROGRAM=blastn&HITLIST_SIZE=100&AUTO_FORMAT=Fullauto&DATABASE="
		  dim URL as string
		  dim theSeq, command, UUID, theURL as string
		  
		  'name the search tab:
		  FindTab("GB:"+GeneName)
		  BrowserTabs.RePaint
		  
		  'get the seq to search with:
		  
		  if seq.SelLength>0 then 'copy the highlighted piece
		    theSeq=mid(seq.Sequence,seq.SelStart,seq.SelLength)
		  else 'a feature is selected
		    theSeq=GetFeatureSeq
		  end if
		  
		  'format the BLAST request:
		  theURL=URLstart+theSeq+URLend+BLASTnDB
		  
		  'add "species" name, if any
		  if BLASTorganism<>"" then
		    theURL=theURL+"&ENTREZ_QUERY="+BLASTorganism+"&5BOrganism%5D"
		  end if
		  #if DebugBuild
		    theURL=theURL+"&EMAIL="+email+"&TOOL=SigmoID"
		  #endif
		  
		  CDDsearch=false
		  BLASTSocket.Secure = True
		  BLASTSocket.Post(theURL)
		  ProgressShow
		  
		  
		  
		  '&DATABASE=nr&HITLIST_SIZE=10&FILTER=L&EXPECT=10&FORMAT_TYPE=HTML&PROGRAM=blastn&CLIENT=web&SERVICE=plain&NCBI_GI=on&PAGE=Nucleotides&CMD=Put
		  
		  'https://blast.ncbi.nlm.nih.gov/Blast.cgi?\
		  'CMD=Put&QUERY=MKN&DATABASE=nr&PROGRAM=blastp&FILTER=L&HITLIST_SZE=500
		  
		  
		  Exception err
		    ExceptionHandler(err,"GenomeWin:BLASTNsearch")
		    
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub BLASTPsearch(ProtName as string)
		  
		  const URLstart as String = "https://blast.ncbi.nlm.nih.gov/Blast.cgi?CMD=Put&QUERY="
		  const URLend as string= "&PROGRAM=blastp&HITLIST_SIZE=100&CDD_SEARCH=true&DATABASE="
		  dim URL as string
		  dim theSeq, command, UUID, theURL as string
		  
		  'name the search tab:
		  'BrowserTabs.tabs(0).Caption=ProtName+":SwissProt"
		  FindTab("GB:"+ProtName)
		  BrowserTabs.RePaint
		  
		  ProgressShow
		  
		  'get the seq to search with:
		  if Seq.Features(ContextFeature).complement  then
		    FeatureLeft=Seq.Features(ContextFeature).start-Seq.Features(ContextFeature).length+1
		    FeatureRight=FeatureLeft+Seq.Features(ContextFeature).length-1
		    theSeq=gcodes(gCodeNo).Translate(ReverseComplement(midb(Genome.Sequence,FeatureLeft+GBrowseShift,FeatureRight-FeatureLeft)))
		  else
		    FeatureLeft=Seq.Features(ContextFeature).start
		    FeatureRight=FeatureLeft+Seq.Features(ContextFeature).length
		    theSeq=gcodes(gCodeNo).Translate(MidB(Genome.Sequence,FeatureLeft+GBrowseShift,FeatureRight-FeatureLeft))
		  end
		  
		  'format the BLASTP request:
		  theURL=URLstart+theSeq+URLend+BLASTpDB
		  
		  'add "species" name, if any
		  if BLASTorganism<>"" then
		    theURL=theURL+"&ENTREZ_QUERY="+BLASTorganism+"&5BOrganism%5D"
		  end if
		  #if DebugBuild
		    theURL=theURL+"&EMAIL="+email+"&TOOL=SigmoID"
		  #endif
		  
		  CDDsearch=false
		  BLASTSocket.Secure = True
		  BLASTSocket.Post(theURL)
		  'ProgressWheel1.top=BLASTSearchViewer.top+SPSearchViewer.Height/3
		  'ProgressWheel1.Visible=true
		  'ProgressWheel1.Enabled=true
		  
		  
		  
		  
		  '&DATABASE=nr&HITLIST_SIZE=10&FILTER=L&EXPECT=10&FORMAT_TYPE=HTML&PROGRAM=blastn&CLIENT=web&SERVICE=plain&NCBI_GI=on&PAGE=Nucleotides&CMD=Put
		  
		  'https://blast.ncbi.nlm.nih.gov/Blast.cgi?\
		  'CMD=Put&QUERY=MKN&DATABASE=nr&PROGRAM=blastp&FILTER=L&HITLIST_SZE=500
		  
		  Exception err
		    ExceptionHandler(err,"GenomeWin:BLASTPsearch")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub BLASTXsearch(GeneName as string)
		  
		  const URLstart as String = "https://blast.ncbi.nlm.nih.gov/Blast.cgi?CMD=Put&QUERY="
		  dim URLend as string= "&PROGRAM=blastx&HITLIST_SIZE=100&AUTO_FORMAT=Fullauto&DATABASE="
		  
		  
		  dim URL as string
		  dim theSeq, command, UUID, theURL as string
		  
		  'name the search tab:
		  FindTab("GB:"+GeneName)
		  BrowserTabs.RePaint
		  
		  ProgressShow
		  
		  'get the seq to search with:
		  
		  if seq.SelLength>0 then 'copy the highlighted piece
		    theSeq=mid(seq.Sequence,seq.SelStart,seq.SelLength)
		  else 'a feature is selected
		    theSeq=GetFeatureSeq
		  end if
		  
		  'format the BLAST request:
		  theURL=URLstart+theSeq+URLend+BLASTpDB
		  
		  'add "species" name, if any
		  if BLASTorganism<>"" then
		    theURL=theURL+"&ENTREZ_QUERY="+BLASTorganism+"&5BOrganism%5D"
		  end if
		  
		  #if DebugBuild
		    theURL=theURL+"&EMAIL="+email+"&TOOL=SigmoID"
		  #endif
		  
		  CDDsearch=false
		  BLASTSocket.Secure = True
		  BLASTSocket.Post(theURL)
		  
		  
		  
		  '&DATABASE=nr&HITLIST_SIZE=10&FILTER=L&EXPECT=10&FORMAT_TYPE=HTML&PROGRAM=blastn&CLIENT=web&SERVICE=plain&NCBI_GI=on&PAGE=Nucleotides&CMD=Put
		  
		  'https://blast.ncbi.nlm.nih.gov/Blast.cgi?\
		  'CMD=Put&QUERY=MKN&DATABASE=nr&PROGRAM=blastp&FILTER=L&HITLIST_SZE=500
		  Exception err
		    ExceptionHandler(err,"GenomeWin:BLASTPsearch")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CDsearch(ProtName as string)
		  const URLstart as String = "https://blast.ncbi.nlm.nih.gov/Blast.cgi?DATABASE=cdd&SERVICE=rpsblast&PROGRAM=blastp&CMD=Put&CDD_SEARCH=true&QUERY="
		  const URLend as string= "%0A%0A" 'protein seq is supposed to end with two newline chars, but works fine without those
		  dim URL as string
		  dim theSeq, command, UUID, theURL as string
		  
		  
		  'name the search tab:
		  'BrowserTabs.tabs(0).Caption=ProtName+":SwissProt"
		  FindTab("CDD:"+ProtName)
		  BrowserTabs.RePaint
		  ProgressShow
		  
		  'get the seq to search with:
		  if Seq.Features(ContextFeature).complement  then
		    FeatureLeft=Seq.Features(ContextFeature).start-Seq.Features(ContextFeature).length+1
		    FeatureRight=FeatureLeft+Seq.Features(ContextFeature).length-1
		    theSeq=gcodes(gCodeNo).Translate(ReverseComplement(midb(Genome.Sequence,FeatureLeft+GBrowseShift,FeatureRight-FeatureLeft)))
		  else
		    FeatureLeft=Seq.Features(ContextFeature).start
		    FeatureRight=FeatureLeft+Seq.Features(ContextFeature).length
		    theSeq=gcodes(gCodeNo).Translate(midb(Genome.Sequence,FeatureLeft+GBrowseShift,FeatureRight-FeatureLeft))
		  end
		  
		  'format the CDD request:
		  theURL=URLstart+theSeq'+URLend
		  #if DebugBuild
		    theURL=theURL+"&EMAIL=nikolaichik@bio.bsu.by&TOOL=SigmoID"
		  #endif
		  
		  CDDsearch=true
		  'BLASTSocket.Secure = True
		  BLASTSocket.Post(theURL)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CopyAA(FromContextualMenu as boolean)
		  Dim C As  Clipboard
		  C=New Clipboard
		  
		  Dim FtNo As Integer
		  
		  If FromContextualMenu Then
		    FtNo=ContextFeature
		  Else
		    FtNo=selFeatureNo
		  End If
		  
		  If seq.Features(FtNo).type="CDS" Then
		    'extract translation from feature table if present
		    '(takes care of frameshifts)
		    SelProtTranslation=NthField(seq.Features(FtNo).FeatureText,"/translation="+Chr(34),2)
		    SelProtTranslation=NthField(SelProtTranslation,Chr(34),1)
		    SelProtTranslation=ReplaceAll(SelProtTranslation,EndOfLine.unix,"")
		    
		    c.Text=SelProtTranslation
		  else
		    
		    dim fl,fr,gbs as integer
		    
		    fl=FeatureLeft
		    fr=FeatureRight
		    gbs=GBrowseShift
		    
		    
		    if FeatureLeft>0 then
		      if topstrand then
		        c.Text=gcodes(gCodeNo).Translate(midb(Genome.Sequence,FeatureLeft+GBrowseShift,FeatureRight-FeatureLeft))
		      else
		        c.Text=gcodes(gCodeNo).Translate(ReverseComplement(midb(Genome.Sequence,FeatureLeft+GBrowseShift,FeatureRight-FeatureLeft)))
		      end if
		    end if
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CopyDNA()
		  Dim C as  Clipboard
		  C=new Clipboard
		  
		  dim fl,fr,gbs as integer
		  
		  fl=FeatureLeft
		  fr=FeatureRight
		  gbs=GBrowseShift
		  
		  
		  
		  dim se as string
		  if FeatureLeft>0 then 'copy selected feature
		    se=midb(Genome.Sequence,FeatureLeft+GBrowseShift,FeatureRight-FeatureLeft)
		    if topstrand then
		      c.Text=se
		    else
		      c.Text=ReverseComplement(se)
		    end if
		  elseif seq.SelLength>0 then 'copy the highlighted piece
		    c.Text=mid(seq.Sequence,seq.SelStart,seq.SelLength)
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DeselectNames(p as picture) As integer
		  dim z, topObj as integer
		  
		  topObj= p.Objects.Count-1
		  if topObj>1 then
		    
		    while p.Objects.Item(topObj) IsA RectShape
		      
		      if topobj>1 then
		        p.Objects.Remove(topObj)    'remove selection rectangles
		        '!should refresh the rect of just erazed selection to remove its display
		        topObj=topObj-1
		        'selrect go after features (cClickableShapes), so no need to decrease the seq.ExtraObj
		        'seq.ExtraObj=seq.ExtraObj-1
		      else
		        exit
		      end
		      
		    wend
		    
		  end
		  
		  return topobj
		  
		  Exception err
		    ExceptionHandler(err,"GenomeWin:DeselectNames")
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DeselectShapes(p as picture)
		  dim z, topObj as integer
		  
		  topObj= p.Objects.Count-1
		  if topObj>1 then
		    for z=1 to topObj   'deselect all selected shapes
		      if  p.Objects.Item(z) IsA cClickableShape then
		        if cClickableShape(p.Objects.Item(z)).selected=true then
		          cClickableShape(p.Objects.Item(z)).ToggleSelection
		        end
		        
		      end
		    next
		  end
		  
		  Exception err
		    ExceptionHandler(err,"GenomeWin:DeselectShapes")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DrawFrameColors(g as graphics, string2draw as string, CurrentY as double)
		  'draw frame with colored start and stop codons (well, only for standard code and for ATG only as start)
		  
		  'need to take the real genetic code into account
		  
		  dim co as integer
		  
		  'draw base string
		  g.DrawString(string2draw,0,CurrentY)
		  
		  g.Bold=true 'highlight starts/stops
		  'draw starts:
		  co=instr(string2draw,"M")
		  while co>0
		    g.ForeColor=&c00804000 'draw "M" green
		    g.Drawstring("M", (co-1)*TMCharWidth,CurrentY)
		    g.ForeColor=&c00000000
		    co=instr(co+1,string2draw,"M")
		  wend
		  
		  'draw stops:
		  co=instr(string2draw,"*")
		  while co>0
		    g.ForeColor=&c80004000 'draw "*" red
		    g.Drawstring("*", (co-1)*TMCharWidth,CurrentY)
		    g.ForeColor=&c00000000
		    co=instr(co+1,string2draw,"*")
		  wend
		  g.Bold=false
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub EditFeature(f As gbFeature)
		  dim n,u,start as integer
		  dim OldFeatureText as string
		  
		  Global.ToolTip.Hide
		  
		  FeaturePropertiesWin.ParentWin=self
		  FeaturePropertiesWin.FeatureTextField.text=f.FeatureText
		  OldFeatureText=f.FeatureText
		  FeaturePropertiesWin.ShowmodalWithin(self)
		  
		  if FeaturePropertiesWin.OKpressed then
		    f.FeatureText=FeaturePropertiesWin.FeatureTextField.text
		    
		    'propagate this to the original genome feature:
		    u=ubound(Genome.Features)
		    if f.complement then
		      start=f.Start+GBrowseShift-1
		    else
		      start=f.Start+GBrowseShift
		    end if
		    for n=1 to u
		      if Genome.Features(n).start=Start then
		        if OldFeatureText=Genome.Features(n).FeatureText then
		          Genome.Features(n).FeatureText=f.FeatureText
		          FillFeatureProperties(Genome.Features(n),f.FeatureText)
		          exit
		        end if
		      end if
		    next
		    
		    'update the display:
		    ExtractFragment(GBrowseShift,GBrowseShift+DisplayInterval)
		    
		    'mark genome changed:
		    GenomeChanged=true
		    self.IsModified=true
		  else
		    'FeaturePropertiesWin.hide
		  end
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub EditGene(f As gbFeature)
		  dim n,u,start,geneLoc as integer
		  dim OldFeatureText, oldGeneName, locus_tag,featureArr() as string
		  dim upstream, downstream as string
		  
		  
		  Global.ToolTip.Hide
		  
		  EditGeneWin.ParentWin=self
		  OldFeatureText=f.FeatureText
		  
		  'find old gene name:
		  geneloc=InStr(f.FeatureText,"/gene=")
		  if geneLoc>0 then
		    Upstream=left(f.FeatureText,geneLoc+6)
		    Downstream=right(f.FeatureText,len(f.FeatureText)-geneLoc-6)
		    oldGeneName=NthField(downstream,chr(34),1)
		    geneloc=InStr(f.FeatureText,chr(34)) 'right doublequote
		    Downstream=NthField(downstream,oldGeneName,2)
		  else
		    'no gene name
		    Upstream=f.FeatureText
		    Downstream=""
		    oldGeneName=""
		  end if
		  
		  EditGeneWin.GeneNameField.text=oldGeneName
		  EditGeneWin.ShowmodalWithin(self)
		  
		  if EditGeneWin.OKpressed then
		    if EditGeneWin.GeneNameField.text="" then
		      'if oldGeneName<>"" then
		      if Downstream<>"" then
		        dim newfeat,scar as string
		        newfeat=Upstream+Downstream
		        scar=LineEnd+"/gene="+chr(34)+chr(34)
		        f.FeatureText=replaceall(newfeat,scar,"")
		      end if
		    else
		      
		      if geneLoc=0 then 'adding new name
		        f.FeatureText=Upstream+lineend+"/gene="+chr(34)+EditGeneWin.GeneNameField.text+chr(34)
		        
		      else
		        f.FeatureText=Upstream+EditGeneWin.GeneNameField.text+Downstream
		      end if
		    end if
		    
		    'propagate this to the original genome feature:
		    
		    
		    if EditGeneWin.EditWholeLocus.value then 'edit gene name for all features with the same locus_tag
		      'get locus_tag:
		      featureArr()=split(f.FeatureText,lineend)
		      for n=0 to UBound(featureArr)
		        if instr(featureArr(n),"locus_tag")>0 then
		          locus_tag=featureArr(n)
		        end if
		      next
		      
		      u=ubound(Genome.Features)
		      
		      for n=1 to u
		        if instr(Genome.Features(n).featuretext,locus_tag)>0 then
		          ReplaceGeneName(Genome.Features(n),EditGeneWin.GeneNameField.text)
		        end if
		      next
		      
		    else 'edit just one feature
		      u=ubound(Genome.Features)
		      if f.complement then
		        start=f.Start+GBrowseShift-1
		      else
		        start=f.Start+GBrowseShift
		      end if
		      for n=1 to u
		        if Genome.Features(n).start=Start then
		          if OldFeatureText=Genome.Features(n).FeatureText then
		            Genome.Features(n).FeatureText=f.FeatureText
		            FillFeatureProperties(Genome.Features(n),f.FeatureText)
		            exit
		          end if
		        end if
		      next
		    end if
		    
		    'update the display:
		    ExtractFragment(GBrowseShift,GBrowseShift+DisplayInterval)
		    
		    'mark genome changed:
		    GenomeChanged=true
		    self.IsModified=true
		  else
		    'FeaturePropertiesWin.hide
		  end
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub EnableSave(Ya as boolean)
		  
		  dim i as integer
		  
		  
		  if NOT Ya then
		    me.ContentsChanged=false
		  else
		    me.ContentsChanged=true
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ExportProteins(Outfile as folderitem, addGeneNames as boolean)
		  Dim prot,separTransl,separProtID,separGene,separProd,separ2,TitleLine As String
		  
		  dim n,u as integer
		  dim ft as GBFeature
		  
		  dim TFindex as new Dictionary
		  
		  
		  separTransl="/translation="+chr(34)
		  separProtID="/protein_id="+chr(34)
		  separGene="/gene="+chr(34)
		  separProd="/product="+chr(34)
		  separ2=Chr(34)
		  
		  Dim s as TextOutputStream=TextOutputStream.Create(outfile)
		  if s<> NIL then
		    u=ubound(Genome.Features)
		    for n=1 to u
		      ft=Genome.Features(n)
		      if left(ft.featuretext,3)="CDS" then
		        TitleLine=NthField(ft.FeatureText,separProtID,2)           'Protein_ID
		        TitleLine=">"+NthField(TitleLine,separ2,1)
		        prot=NthField(ft.FeatureText,separGene,2)                  'Gene
		        prot=NthField(prot,separ2,1)
		        If addGeneNames Then 
		          If prot<>"" Then
		            TitleLine=TitleLine+"_"+prot                             'ProteinID_Gene is more convenient for de novo TFBS pipeline
		          End If
		        End If
		        
		        'localTFIndex stores Protein_ID and index of corresponding Genome.Feature
		        TFindex.Value(Nthfield(TitleLine,">",2))=n
		        prot=NthField(ft.FeatureText,separProd,2)                  'Product
		        prot=NthField(prot,separ2,1)
		        TitleLine=TitleLine+" "+prot
		        TitleLine=replaceall(TitleLine,EndOfLine," ")
		        
		        prot=NthField(ft.FeatureText,separTransl,2)                'AA sequence
		        prot=trim(NthField(prot,separ2,1))
		        if prot<>"" then
		          s.Writeline TitleLine                                      'Write >Title
		          s.write prot+EndOfLine.unix                                'and AA seq
		        end if
		      end if
		    next
		    localTFIndex=TFindex
		    s.close
		    
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ExtractFragment(FragmentStart as integer, FragmentEnd as integer)
		  Dim n,m,u As Integer
		  dim FragmentFeature, ft as GBFeature
		  dim s,CurrentFeature,cf1, name,coord as string
		  
		  Featureleft=-1
		  
		  if FragmentStart<1 then
		    fragmentstart=1
		    FragmentEnd=FragmentStart+DisplayInterval
		  elseif FragmentEnd>lenb(Genome.sequence) then
		    FragmentEnd=lenb(Genome.sequence)
		    FragmentStart=FragmentEnd-DisplayInterval
		  end if
		  'GBrowseShift=FragmentStart
		  
		  'first clone the  fragment features:
		  FragmentFeature=new GBFeature(Genome.baselineY)
		  seq=new cSeqObject
		  u=ubound(Genome.Features)
		  seq.ScalePlotsSeparately=Genome.ScalePlotsSeparately
		  seq.PlotScaleMax=genome.PlotScaleMax
		  for n=1 to u
		    ft=Genome.Features(n)
		    if (ft.start>FragmentStart AND ft.start<FragmentEnd) OR (ft.finish>FragmentStart AND ft.finish<FragmentEnd) _
		      OR (ft.start<FragmentStart AND ft.finish>FragmentEnd) OR (ft.finish<FragmentStart AND ft.start>FragmentEnd) then
		      FragmentFeature=new GBFeature(Genome.baselineY)
		      'FragmentFeature.ArrowLength=ft.ArrowLength
		      'FragmentFeature.ArrowWidth=ft.ArrowWidth
		      'FragmentFeature.BaselineY=ft.BaselineY
		      'FragmentFeature.BorderColor=ft.BorderColor
		      'FragmentFeature.BorderWidth=ft.BorderWidth
		      'FragmentFeature.Color=ft.Color
		      FragmentFeature.complement=ft.complement
		      FragmentFeature.FeatureText=ft.FeatureText
		      FragmentFeature.Finish=ft.Finish
		      'FragmentFeature.hasArrow=ft.hasArrow
		      'FragmentFeature.LeftTrunc=ft.LeftTrunc
		      'FragmentFeature.length=ft.length
		      FragmentFeature.name=ft.name
		      'FragmentFeature.RightTrunc=ft.RightTrunc
		      FragmentFeature.start=ft.start
		      'FragmentFeature.type=ft.type
		      'FragmentFeature.Width=ft.Width
		      'FragmentFeature.linShape=New cClickableShape
		      'dim ls,fs as cClickableShape
		      'ls=FragmentFeature.linShape
		      'fs=ft.linShape
		      'fs=New cClickableShape
		      'ls.ArrowLength=fs.ArrowLength
		      'ls.ArrowWidth=fs.ArrowWidth
		      'ls.Border=fs.Border
		      'ls.BorderWidth=fs.BorderWidth
		      'ls.Colour=fs.Colour
		      'ls.Fill=fs.fill
		      'ls.FillColor=fs.FillColor
		      'ls.length=fs.length
		      'ls.Width=fs.Width
		      'ls.X=fs.X
		      'ls.Y=fs.Y
		      'FragmentFeature.ArrowInit
		      
		      CurrentFeature=FragmentFeature.FeatureText
		      
		      #if TargetWindows
		        CurrentFeature=ReplaceLineEndings(CurrentFeature,EndOfLine.Unix)
		      #endif
		      
		      'feature description parsing:
		      cf1=nthfield(CurrentFeature,cLineEnd,1)
		      name=trim(leftb(cf1,16))      'feature name
		      
		      'handle the new Genbank 2015 format (Feature table v. 10.4):
		      
		      'Riboswitches updated - change the code!!!
		      
		      if name="regulatory" then
		        dim r_class as string
		        r_class=NthField(CurrentFeature,"regulatory_class=",2)
		        r_class=NthField(r_class,EndOfLine.Unix,1)
		        FragmentFeature.type=ReplaceAll(r_class,Chr(34),"")
		        if FragmentFeature.type="other" then
		          'try to catch riboswitches
		          '(finally added as regulatory_class in 2017)
		          if instr(CurrentFeature,"/note="+chr(34)+"riboswitch")>0 then
		            FragmentFeature.type="riboswitch"
		          end if
		        end if
		      else
		        FragmentFeature.type=name
		      end if
		      'if leftb(start,1)=">" OR leftb(start,1)= "<" then
		      'start=midb(start,2,lenb(start)-1)
		      'NewFeature.lefttrunc=true
		      'end
		      'if leftb(finish,1)="<"  OR leftb(finish,1)=">" then
		      'finish=midb(finish,2,lenb(finish)-1)
		      'NewFeature.righttrunc=true
		      'end
		      
		      if FragmentFeature.complement then
		        FragmentFeature.start=FragmentFeature.start+1
		        
		      end if
		      FragmentFeature.length=abs(FragmentFeature.start-FragmentFeature.finish)+1 'may just leave the negative here and remove the complement boolean altogether
		      
		      'now try to guess a name:
		      GetFeatureName(FragmentFeature,CurrentFeature)
		      
		      seq.features.append FragmentFeature
		    else
		      ''beep
		    end if
		  next
		  
		  
		  'Clone RNA-seq data:
		  If ubound(genome.ReadDepth1)>0 Then
		    for n=FragmentStart to FragmentEnd
		      if n<=ubound(genome.ReadDepth1) then
		        seq.ReadDepth1.Append genome.ReadDepth1(n)
		      end if
		    next
		  end if
		  if ubound(genome.ReadDepth2)>0 then
		    for n=FragmentStart to FragmentEnd
		      if n<=ubound(genome.ReadDepth2) then
		        seq.ReadDepth2.Append genome.ReadDepth2(n)
		      end if
		    next
		  end if
		  if ubound(genome.ReadDepth3)>0 then
		    for n=FragmentStart to FragmentEnd
		      if n<=ubound(genome.ReadDepth3) then
		        seq.ReadDepth3.Append genome.ReadDepth3(n)
		      end if
		    next
		  end if
		  if ubound(genome.ReadDepth4)>0 then
		    for n=FragmentStart to FragmentEnd
		      if n<=ubound(genome.ReadDepth4) then
		        seq.ReadDepth4.Append genome.ReadDepth4(n)
		      end if
		    next
		  end if
		  
		  // get the sequence corresponding to the fragment:
		  dim Fragmentleft,Fragmentright as integer
		  FragmentLeft=FragmentStart
		  FragmentRight=FragmentEnd
		  GBrowseShift=FragmentLeft
		  
		  seq.Sequence=midb(genome.Sequence,FragmentLeft,FragmentRight-FragmentLeft+1)
		  
		  'adjust fragment feature coordinates:
		  u=ubound(Seq.Features)
		  for n=1 to u
		    seq.features(n).start=seq.features(n).start-Fragmentleft
		    seq.features(n).finish=seq.features(n).finish-Fragmentleft
		    'need to correct linshape.X too and only then call Arrowinit!
		    seq.features(n).linShape=new cClickableShape
		    seq.features(n).linShape.X=seq.features(n).linShape.X-Fragmentleft
		    seq.features(n).ArrowInit
		  next
		  
		  
		  'check for overlapping features and distribute picture objects accordingly.
		  'first assume all features will fit in one row:
		  m=ubound(seq.Features)
		  for n=1 to m
		    seq.FtRow.append 1
		  next
		  
		  dim CF,CM as GBFeature
		  
		  'spread overlapping features across rows:
		  'spread fails for SCRI1043 around birA
		  
		  Do
		    moving=false 'can be set true in SpreadFeatures
		    for n=1 to u
		      CF=seq.Features(n)
		      for m=1 to n-1
		        CM=seq.Features(m)
		        
		        If CF.finish>=CM.start And CF.start<=CM.start Then
		          SpreadFeatures(n,m,cf.type,cm.type)
		        Elseif CF.finish>=CM.finish And CF.start<=CM.finish Then
		          SpreadFeatures(n,m,cf.type,cm.type)
		        Elseif CF.start>=CM.finish And CF.finish<=CM.finish  Then
		          SpreadFeatures(n,m,cf.type,cm.type)
		        Elseif CF.start>=CM.start And CF.finish<=CM.start  Then
		          SpreadFeatures(n,m,cf.type,cm.type)
		        End If
		        
		        If CM.finish>=CF.start And CM.start<=CF.start Then
		          SpreadFeatures(n,m,cf.type,cm.type)
		        Elseif CM.finish>=CF.finish And CM.start<=CF.finish Then
		          SpreadFeatures(n,m,cf.type,cm.type)
		        Elseif CM.start>=CF.finish And CM.finish<=CF.finish  Then
		          SpreadFeatures(n,m,cf.type,cm.type)
		        Elseif CM.start>=CF.start And CM.finish<=CF.start  Then
		          SpreadFeatures(n,m,cf.type,cm.type)
		        End If
		        
		      Next 'm
		    Next 'n
		    if not moving then exit
		  loop 'loop until doesn't work here
		  
		  MapInit 'calculate all the rest SeqObject properties, including the map
		  'editor.text=seq.sequence
		  updateMapCanvas
		  
		  
		  'display the actual sequence around hit:
		  'disabled to keep textmap the same when scrolling the genome:
		  'if featureleft=-1 then
		  'dim FragmentCent as integer = lenb(seq.sequence)/2
		  'TextMap(FragmentCent,FragmentCent)
		  '
		  'end if
		  
		  'refresh
		  
		  Exception err
		    ExceptionHandler(err,"GenomeWin:ExtractFragment")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function fasta2html(fastaResult as String) As string
		  // Convert local result of protein fasta search vs EcoGene proteins 
		  // to simple html with Ecogene links
		  
		  
		  dim res as string
		  dim outfile as folderitem
		  
		  
		  //convert plain text into simple html:
		  dim resHtml as string
		  dim HitSeparator as string = EndOfLine.Unix+">>"
		  dim hrefLeft as string = "<a href="+chr(34)+"http://ecogene.org/?q=gene/"
		  dim hrefRight as string = "</a>"
		  dim hrefMid as string = chr(34)+">"
		  dim protID, hitData as string
		  dim HmmerHitArray(-1) as string 
		  dim n, u as integer
		  
		  'split the result file into single hit array
		  HmmerHitArray=split(res,HitSeparator)
		  u=UBound(HmmerHitArray)-2
		  
		  'convert protein names to links:
		  'link sample:
		  '<a href="http://ecogene.org/?q=gene/EG30013">EcoGene_ID</a>
		  for n=1 to u 'skip the zero and last elements, as they aren't hits
		    protID=NthField(HmmerHitArray(n)," ",1)
		    hitData=right(HmmerHitArray(n),len(HmmerHitArray(n))-len(protID))
		    HmmerHitArray(n)=hrefLeft+protID+hrefMid+protID+hrefRight+hitData
		  next
		  
		  'Join the hits back into a single file adding html header and footer
		  resHtml="<html><body><pre>"+join(HmmerHitArray,HitSeparator)+"</pre></body></html>"
		  
		  ''write the html to temp file:
		  '
		  'outfile = TemporaryFolder.child("HmmerResult.html")      'place to save
		  'if outfile<>nil then
		  'FixPath4Windows(outfile)
		  'if outfile.exists then
		  'outfile.Delete
		  'end if
		  '
		  'dim stream as TextOutputStream = TextOutputStream.Create(outfile)
		  'if stream<>nil then
		  'stream.Write(resHtml)
		  'stream.close
		  '
		  'return outfile  ' <-- proper converted output
		  '
		  'else
		  'msgbox "Can't write temporary file"
		  'return outfile  ' <-- nil
		  'end if
		  'else
		  'msgbox "Can't write temporary file"
		  'return outfile  ' <-- nil
		  'end if
		  '
		  
		  
		  
		  
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Filesaveproblem()
		  msgbox "The file wasn't saved because of an error!"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FillFeatureProperties(feature as GBFeature, FeatureText as string)
		  // code from OpenGenbankFile and Extract fragment with minimal mods
		  
		  Feature.FeatureText=FeatureText
		  
		  dim cf1,coord,splitCoords,name as string
		  
		  'get coordinates:
		  cf1=nthfield(FeatureText,cLineEnd,1)
		  name=trim(leftb(cf1,16))      'feature name
		  if InStrB(17,cf1,"complement")>0 then
		    Feature.complement=true
		    if InStrB(27,cf1,"order")>0 then
		      'split feature
		      Feature.start=val(nthfield(nthfield(cf1,"..",1),"(",3))
		      'example:
		      'misc_feature    complement(order(3576182..3576235,3576263..3576322,
		      '3576341..3576409,3576467..3576532))
		      splitCoords=NthFieldB(FeatureText,")",1)
		      Feature.finish=val(nthFieldB(splitCoords,"..",countfields(splitCoords,"..") ))
		    else
		      
		      coord=rightb(cf1,lenb(cf1)-instrb(cf1,"("))  'coords in brackets for complementary strand
		      Feature.start=val(nthField(coord,"..",2))
		      Feature.finish=val(nthField(coord,"..",1))
		      
		    end if
		  else
		    if InStrB(17,cf1,"order")>0 then
		      'split feature
		      Feature.start=val(nthfield(nthfield(cf1,"..",1),"(",2))
		      'misc_feature    order(343373..343441,343469..343537,343652..343720,
		      '343799..343867,343925..343984)
		      
		      splitCoords=NthFieldB(FeatureText,")",1)
		      Feature.finish=val(nthFieldB(splitCoords,"..",countfields(splitCoords,"..") ))
		    else
		      'Feature.complement=false false is the default
		      coord=ltrim(rightb(cf1,lenb(cf1)-lenb(name)))
		      Feature.start=val(nthField(coord,"..",1))
		      Feature.finish=val(nthField(coord,"..",2))
		    end if
		  end if
		  
		  'feature description parsing:
		  Feature.type=name
		  'if leftb(start,1)=">" OR leftb(start,1)= "<" then
		  'start=midb(start,2,lenb(start)-1)
		  'Feature.lefttrunc=true
		  'end
		  'if leftb(finish,1)="<"  OR leftb(finish,1)=">" then
		  'finish=midb(finish,2,lenb(finish)-1)
		  'Feature.righttrunc=true
		  'end
		  
		  
		  Feature.length=abs(Feature.start-Feature.finish)+1 'may just leave the negative here and remove the complement boolean altogether
		  
		  'now try to guess a name:
		  GetFeatureName(Feature,FeatureText)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FindTab(TabName as string)
		  'We are keeping only one tab for each search type
		  'All searches to BLAST servers including CDD search go into one tab.
		  
		  dim n,t as integer
		  dim tab2find,caption as string
		  t=-1
		  
		  if instr(TabName,"SP:")>0 then
		    tab2find="SP:"
		  elseif instr(TabName,"UP:")>0 then
		    tab2find="UP:"
		  elseif instr(TabName,"GB:")>0 then
		    tab2find="GB:"
		  elseif instr(TabName,"CDD:")>0 then
		    tab2find="CDD:"
		  end if
		  
		  
		  
		  if BrowserTabs.tabCount>0 then
		    if Tab2find="GB:" or tab2find="CDD:" then
		      for n=0 to BrowserTabs.tabCount-1
		        if instr(BrowserTabs.tabs(n).caption,"GB:")>0 OR instr(BrowserTabs.tabs(n).caption,"CDD:")>0 then
		          t=n
		          exit
		        end if
		      next
		      
		      
		    else
		      for n=0 to BrowserTabs.tabCount-1
		        if instr(BrowserTabs.tabs(n).caption,tab2find)>0 then
		          t=n
		          exit
		        end if
		      next
		    end if
		    
		    'remove the tab of the current type and append a new one
		    if t>-1 then
		      BrowserTabs.removeTab(t)
		    end if
		  end if
		  BrowserTabs.appendTab(TabName,True)
		  dim va as integer
		  va=BrowserPagePanel.value
		  'BrowserPagePanel.value=BrowserTabs.tabCount-1
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub gbk2fasta()
		  dim cli,gbk2tblPath as string
		  dim outfile As folderitem
		  
		  Dim dlg as New SaveAsDialog
		  dlg.InitialDirectory=genomefile.Parent
		  dlg.promptText="Select a name for Fasta file to export sequence to."
		  dlg.SuggestedFileName=nthfield(GenomeFile.Name,".",1)+".fasta"
		  dlg.Title="Export sequence in Fasta format"
		  dlg.Filter=FileTypes.Fasta
		  dlg.CancelButtonCaption=kCancel
		  dlg.ActionButtonCaption=kSave
		  
		  outfile=dlg.ShowModalwithin(self)
		  if outfile<>nil then
		    LogoWin.WriteToSTDOUT (EndofLine+"Exporting sequence in Fasta format...")
		    LogoWin.STDOUT.Refresh(false)
		    Logowin.show
		    
		    Dim s as TextOutputStream=TextOutputStream.Create(outfile)
		    if s<> NIL then
		      s.Writeline ">"+GenomeFile.Name
		      s.write Genome.Sequence
		      s.close
		      LogoWin.WriteToSTDOUT ("  Done!"+EndOfLine)
		    end if
		    
		    
		  end if
		  
		  Exception err
		    ExceptionHandler(err,"GenomeWin:gbk2tbl")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub gbk2protein()
		  dim cli,gbk2tblPath,prot,separTransl,separProtID,separGene,separProd,separ2,TitleLine as string
		  dim outfile As folderitem
		  dim n,u as integer
		  dim ft as GBFeature
		  
		  separTransl="/translation="+chr(34)
		  separProtID="/protein_id="+chr(34)
		  separGene="/gene="+chr(34)
		  separProd="/product="+chr(34)
		  separ2=chr(34)
		  Dim dlg as New SaveAsDialog
		  dlg.InitialDirectory=genomefile.Parent
		  dlg.promptText="Select a name for Fasta file to export protein sequences to."
		  dlg.SuggestedFileName=nthfield(GenomeFile.Name,".",1)+".fasta"
		  dlg.Title="Export protein sequences in Fasta format"
		  dlg.Filter=FileTypes.Fasta
		  dlg.CancelButtonCaption=kCancel
		  dlg.ActionButtonCaption=kSave
		  outfile=dlg.ShowModalwithin(self)
		  if outfile<>nil then
		    LogoWin.WriteToSTDOUT (EndofLine+"Exporting each protein sequence annotated in this genome in Fasta format...")
		    LogoWin.STDOUT.Refresh(false)
		    Logowin.show
		    
		    Dim s as TextOutputStream=TextOutputStream.Create(outfile)
		    if s<> NIL then
		      u=ubound(Genome.Features)
		      for n=1 to u
		        ft=Genome.Features(n)
		        if left(ft.featuretext,3)="CDS" then
		          TitleLine=NthField(ft.FeatureText,separProtID,2)           'Protein_ID
		          TitleLine=">"+NthField(TitleLine,separ2,1)
		          prot=NthField(ft.FeatureText,separGene,2)                  'Gene
		          prot=NthField(prot,separ2,1)
		          if prot<>"" then
		            TitleLine=TitleLine+" "+prot
		          end if
		          prot=NthField(ft.FeatureText,separProd,2)                  'Product
		          prot=NthField(prot,separ2,1)
		          TitleLine=TitleLine+" "+prot
		          TitleLine=replaceall(TitleLine,EndOfLine," ")
		          
		          prot=NthField(ft.FeatureText,separTransl,2)                'AA sequence
		          prot=trim(NthField(prot,separ2,1))
		          if prot<>"" then
		            s.Writeline TitleLine                                      'Write >Title
		            s.write prot+EndOfLine.unix                                'and AA seq
		          end if
		        end if
		      next
		      
		      s.close
		      LogoWin.WriteToSTDOUT ("  Done!"+EndOfLine)
		    end if
		    
		    
		  end if
		  
		  Exception err
		    ExceptionHandler(err,"GenomeWin:gbk2tbl")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub gbk2tbl()
		  'usage:
		  'Genbank to .tbl converter <input_file> [options]
		  '
		  'This script allows to convert genbank file into .tbl file format Requires
		  'Biopython 1.64 (or newer). Use '>' (stdout) to create a .tbl file
		  '
		  'positional arguments:
		  'input_file         path to input Genbank file.
		  '
		  'optional arguments:
		  '-h, --help         show this help message and exit
		  '-f, --fasta        creates fasta from genbank file.
		  '-p PREFIX, --prefix PREFIX
		  '-t, --translation  adds translation qualifier to CDS features in .tbl
		  '-v, --version      show program's version number and exit
		  
		  dim cli,gbk2tblPath as string
		  dim outfile As folderitem
		  
		  Dim dlg as New SaveAsDialog
		  dlg.InitialDirectory=genomefile.Parent
		  dlg.promptText="Select a name for Sequin file to export feature table to."
		  dlg.SuggestedFileName=nthfield(GenomeFile.Name,".",1)+".tbl"
		  dlg.Title="Export Sequin feature table (.tbl)"
		  dlg.Filter=FileTypes.Table
		  dlg.CancelButtonCaption=kCancel
		  dlg.ActionButtonCaption=kSave
		  outfile=dlg.ShowModalwithin(self)
		  if outfile<>nil then
		    LogoWin.WriteToSTDOUT (EndofLine+"Exporting Sequin feature table (takes a while)...")
		    LogoWin.STDOUT.Refresh(false)
		    Logowin.show
		    gbk2tblPath=Resources_f.Child("gbk2tbl.py").ShellPath
		    
		    dim GenomeFilePath,outFilePath as string
		    #if TargetWindows
		      'GenomeFilePath=GetShortPathName(GenomeFile.shellpath)
		      FixPath4Windows(outfile)
		      GenomeFilePath=chr(34)+GenomeFile.shellpath+chr(34)
		      outFilePath=chr(34)+outFile.ShellPath+chr(34)
		    #else
		      GenomeFilePath=GenomeFile.shellpath
		      outFilePath=outFile.ShellPath
		    #endif
		    cli=pythonPath+PlaceQuotesToPath(gbk2tblPath)+" "+PlaceQuotesToPath(GenomeFilePath)+" -p BSU > "+PlaceQuotesToPath(outFile.ShellPath)
		    
		    userShell(cli)
		    
		    If shError=0 Then
		      LogoWin.WriteToSTDOUT ("  Done!"+EndOfLine)
		      
		    else
		      LogoWin.WriteToSTDOUT (EndofLine+"gbk2tbl error code: "+Str(shError)+EndofLine)
		      LogoWin.WriteToSTDOUT (EndofLine+shResult)
		      
		    end if
		  end if
		  
		  Exception err
		    ExceptionHandler(err,"GenomeWin:gbk2tbl")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GenomeStats()
		  // Calculate various genome stats:
		  // nucleotide content,
		  // genome feature counts and percentage
		  
		  dim fType, fText, s, cf1, splitCoords, coord, name, splitFC, interval as string
		  dim types(0) as string
		  dim counts(0), lengths(0) as integer
		  dim m,n,u,o,p, start, finish, GeneCount, GeneLengths, PseudoCount, PseudoLengths, ftLength, intervals as integer
		  dim ft as GBFeature
		  
		  // initialise major feature types and their counts
		  types.Append "gene"
		  types.Append "CDS"
		  types.Append "tRNA"
		  types.Append "rRNA"
		  counts.Append 0
		  counts.Append 0
		  counts.Append 0
		  counts.Append 0
		  lengths.Append 0
		  lengths.Append 0
		  lengths.Append 0
		  lengths.Append 0
		  
		  
		  LogoWin.WriteToSTDOUT (EndofLine+"Calculating statistics for this genome...")
		  LogoWin.STDOUT.Refresh(false)
		  Logowin.show
		  
		  
		  // genome feature counts and percentage
		  u=ubound(Genome.Features)
		  for n=1 to u
		    fText=Genome.Features(n).FeatureText
		    'if left(ftext,4)="gene" then
		    fType=NthField(ftext," ",1)
		    ftLength=0
		    'get coordinates:
		    cf1=nthfield(ftext,cLineEnd,1)
		    if InStrB(17,cf1,"complement")>0 then
		      'Feature.complement=true
		      if InStrB(17,cf1,"order")>0 OR InStrB(17,cf1,"join")>0 then 'split feature: sum all intervals
		        'example:
		        'misc_feature    complement(order(3576182..3576235,3576263..3576322,
		        '3576341..3576409,3576467..3576532))
		        splitFC=nthfield(cf1,"(",3)
		        splitFC=nthfield(splitFC,")",1)
		        intervals=CountFields(splitFC,",")
		        for m=1 to intervals
		          interval=NthField(splitFC,",",m)
		          ftLength=ftLength+abs(val(nthfield(interval,"..",1))-val(nthfield(interval,"..",2)))+1
		        next
		      else
		        coord=rightb(cf1,lenb(cf1)-instrb(cf1,"("))  'coords in brackets for complementary strand
		        ftLength=abs(val(nthfield(coord,"..",1))-val(nthfield(coord,"..",2)))+1
		      end if
		    else
		      if InStrB(17,cf1,"order")>0 OR InStrB(17,cf1,"join")>0 then   'split feature: sum all intervals
		        'example:
		        'misc_feature    order(343373..343441,343469..343537,343652..343720,
		        '343799..343867,343925..343984)
		        splitFC=nthfield(cf1,"(",2)
		        splitFC=nthfield(splitFC,")",1)
		        intervals=CountFields(splitFC,",")
		        for m=1 to intervals
		          interval=NthField(splitFC,",",m)
		          ftLength=ftLength+abs(val(nthfield(interval,"..",1))-val(nthfield(interval,"..",2)))+1
		        next
		        
		      else
		        'Feature.complement=false false is the default
		        name=trim(leftb(cf1,16))
		        coord=ltrim(rightb(cf1,lenb(cf1)-lenb(name)))
		        ftLength=abs(val(nthfield(coord,"..",1))-val(nthfield(coord,"..",2)))+1
		        
		      end if
		    end if
		    
		    
		    if instr(ftext,"/pseudo")>0 then                           'pseudogenes are counted separately
		      PseudoCount=PseudoCount+1
		      PseudoLengths=PseudoLengths+ftLength
		    else
		      
		      o=ubound(types)
		      for p=1 to o
		        if fType=types(p) then
		          exit
		        end if
		      next
		      if p>o then
		        'new feature type
		        types.Append fType
		        counts.append 1
		        lengths.Append ftLength
		        'beepp
		      else
		        counts(p)=counts(p)+1
		        lengths(p)=lengths(p)+ftLength
		      end if
		      
		    end if
		    'end if   'left(ftext,4)="gene" then
		    
		  next
		  
		  Dim GenomeLength As Integer = Len(Genome.Sequence)
		  // Calculate nucleotide content 
		  
		  Dim pA,pC,pG,pT,pN As Double
		  pA=CountFields(Genome.Sequence,"A")*100/GenomeLength
		  pC=CountFields(Genome.Sequence,"C")*100/GenomeLength
		  pG=CountFields(Genome.Sequence,"G")*100/GenomeLength
		  pT=CountFields(Genome.Sequence,"T")*100/GenomeLength
		  pN=CountFields(Genome.Sequence,"N")*100/GenomeLength
		  
		  
		  // Write results to the main window
		  LogoWin.WriteToSTDOUT (EndOfLine+"Genome length: "+Str(GenomeLength)+" bp"+EndOfLine)
		  LogoWin.WriteToSTDOUT (EndOfLine+"Nucleotide content:")
		  LogoWin.WriteToSTDOUT (EndOfLine+"A – "+Str(pA)+"%")
		  LogoWin.WriteToSTDOUT (EndOfLine+"C – "+Str(pC)+"%")
		  LogoWin.WriteToSTDOUT (EndOfLine+"G – "+Str(pG)+"%")
		  LogoWin.WriteToSTDOUT (EndOfLine+"T – "+Str(pT)+"%")
		  LogoWin.WriteToSTDOUT (EndOfLine+"N – "+Str(pN)+"%"+EndOfLine)
		  LogoWin.WriteToSTDOUT (EndOfLine+"Feature stats:")
		  LogoWin.WriteToSTDOUT (EndofLine+"Feature"+chr(9)+"Count"+chr(9)+"Cumulative length"+chr(9)+"% of genome length")
		  for n=1 to UBound(types)
		    LogoWin.WriteToSTDOUT (EndofLine+types(n)+chr(9)+str(counts(n))+chr(9)+str(lengths(n))+chr(9)+str(100*lengths(n)/GenomeLength))
		  next
		  
		  
		  'LogoWin.WriteToSTDOUT ("  Done!"+EndOfLine)
		  
		  
		  // Calculate GC content
		  ' graph it?
		  
		  // Calculate GC skew?
		  ' only meaningful if shown in the graph area
		  
		  Exception err
		    ExceptionHandler(err,"GenomeWin:gbk2tbl")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetCheckedHits() As string
		  dim n as integer
		  dim hits as string
		  dim leftC, rightC as integer
		  dim hitseq as string
		  
		  for n=1 to ubound (hmmhits)
		    if HmmHitChecked(n) then
		      'get site sequence:
		      'determine the distance of the left edge of displayed fragment from start:
		      leftC=Val(NthField(HmmHitDescriptions(n),":",1))
		      rightC=Val(NthField(NthField(HmmHitDescriptions(n)," ",1),":",2))
		      if instr(HmmHitDescriptions(n),"(+)")>0 then
		        'top strand
		        hitseq=mid(Genome.Sequence,leftC,RightC-leftC+1)
		        
		      else
		        'bottom strand
		        hitseq=mid(Genome.Sequence,leftC,RightC-leftC+1)
		        hitseq=ReverseComplement(hitSeq)
		      end if
		      
		      genomeWin.TextMap(FeatureLeft,FeatureRight)
		      
		      Hits=Hits+">"+trim(HmmHitNames(n)+HmmHitDescriptions(n))+EndOfLine.Unix+HitSeq+EndOfLine.Unix
		    end if
		  next
		  
		  return Hits
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetConvertHMMERtext(theURL as String) As FolderItem
		  dim hts as new HTTPSocket
		  dim res as string
		  dim outfile as folderitem
		  
		  
		  
		  hts.Yield=true  'allow background activities while waiting
		  hts.SetRequestHeader("Content-Type:","text/plain")
		  
		  'set result format
		  theURL=theURL+"?&range=1,100"   'first 100 results, should probably be configurable
		  
		  res=hts.Get(theURL,0)  'adjust timeout?
		  
		  if hts.HTTPStatusCode>=200 AND hts.HTTPStatusCode<300 then 'successful
		    if Res="" then
		      'LogoWin.WriteToSTDOUT ("no response in 15 seconds")
		    else
		      //convert plain text into simple html:
		      dim resHtml as string
		      dim HitSeparator as string = "=========="+EndOfLine.unix
		      dim hrefLeft as string = "<a href="+chr(34)+"http://www.uniprot.org/uniprot/"
		      dim hrefRight as string = "</a>"
		      dim hrefMid as string = chr(34)+">"
		      dim protID, hitData as string
		      dim HmmerHitArray(-1) as string 
		      dim n, u as integer
		      'remove some extra lines:
		      res=replaceall(res,HitSeparator+EndOfLine.unix,HitSeparator)
		      'split the result file into single hit array
		      HmmerHitArray=split(res,HitSeparator)
		      u=UBound(HmmerHitArray)-2
		      
		      'convert protein names to links:
		      '<a href="http://www.uniprot.org/uniprot/PROT_ID">PROT_ID</a>
		      for n=1 to u 'skip the zero and last elements, as they aren't hits
		        protID=NthField(HmmerHitArray(n)," ",1)
		        hitData=right(HmmerHitArray(n),len(HmmerHitArray(n))-len(protID))
		        HmmerHitArray(n)=hrefLeft+protID+hrefMid+protID+hrefRight+hitData
		      next
		      
		      'Join the hits back into a single file adding html header and footer
		      resHtml="<html><body><pre>"+join(HmmerHitArray,HitSeparator)+"</pre></body></html>"
		      
		      'write the html to temp file:
		      
		      outfile = TemporaryFolder.child("HmmerResult.html")      'place to save
		      if outfile<>nil then
		        FixPath4Windows(outfile)
		        if outfile.exists then
		          outfile.Delete
		        end if
		        
		        dim stream as TextOutputStream = TextOutputStream.Create(outfile)
		        if stream<>nil then
		          stream.Write(resHtml)
		          stream.close
		          
		          return outfile  ' <-- proper converted output
		          
		        else
		          msgbox "Can't write temporary file"
		          return outfile  ' <-- nil
		        end if
		      else
		        msgbox "Can't write temporary file"
		        return outfile  ' <-- nil
		      end if
		      
		      
		    end if
		  else
		    ProgressHide
		    
		    dim httpErr as String = HTTPerror(hts.HTTPStatusCode, false)
		    LogoWin.WriteToSTDOUT (httpErr)
		    
		    
		  end if
		  
		  
		  
		  
		  
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetFeatureName(feature As GBFeature, featureText As string)
		  Dim m,n,p,p1,p2,p3,p4,p5 As Integer
		  dim name,coord as string
		  
		  name=trim(left(nthfield(FeatureText,EndOfLine.Unix,1),16))      'feature name
		  
		  'now try to guess a name:
		  p= instrb(featureText,"/gene=")
		  p1=instrb(featureText,"/product=")
		  p2=instrb(featureText,"/function=")
		  p3=instrb(featureText,"/note=")
		  p4=instrb(featureText,"/locus_tag=")
		  p5=instrb(featureText,"/protein_id=")
		  if name="gene" then
		    if p>0 then        'use gene name if available
		      coord=rightb(featureText,lenb(featureText)-p-6)
		      feature.name=nthField(coord,chr(34),1)
		    else               'gene name not there – use locus_tag
		      if p4>0 then
		        coord=rightb(featureText,lenb(featureText)-p4-11)
		        feature.name=nthField(coord,chr(34),1)
		      end if
		    end if
		  elseif name="CDS" then
		    if p1>0 then 'use /product
		      coord=rightb(featureText,lenb(featureText)-p1-9)
		      coord=replaceall(coord,EndOfLine.Unix," ")
		      feature.name=nthField(coord,chr(34),1)
		    elseif p5>0 then        'protein_id if available
		      coord=rightb(featureText,lenb(featureText)-p5-12)
		      feature.name=nthField(coord,chr(34),1)
		    else               'protein_id not there – use locus_tag
		      if p4>0 then
		        coord=rightb(featureText,lenb(featureText)-p4-11)
		        feature.name=nthField(coord,chr(34),1)
		      end if
		    end if
		    'store protein_id:
		    if p5>0 then        'protein_id if available
		      coord=rightb(featureText,lenb(featureText)-p5-12)
		      feature.protein_id=nthField(coord,chr(34),1)
		    end if
		  elseif name="mobile_element" then
		    'proper annotation should look like:
		    '/mobile_element_type="insertion sequence: ISPcc1"
		    coord=replace(featureText,": ", ":") 'remove extra space to save space ))
		    if instr(coord,"/mobile_element_type=")>0 then
		      coord=nthfield(featureText,"/mobile_element_type="+Chr(34),2)
		      coord=nthField(coord,chr(34),1)
		      coord=trim(nthField(coord,":",2)) 'remove mobile element type from display:
		      feature.name=coord
		    else 'otherwise, look for a note
		      if instr(coord,"/note=")>0 then
		        coord=nthfield(coord,"/note="+Chr(34),2)
		        feature.name=nthField(coord,chr(34),1)
		      else
		        feature.name="mobile element" 'no proper feature formatting, so just a generic name
		      end if
		    end if
		    
		  elseif name="repeat_region" then
		    'proper annotation should look like:
		    '/mobile_element_type="insertion sequence: ISPcc1"
		    If InStr(featureText,"/rpt_family=")>0 Then
		      coord=nthfield(featureText,"rpt_family="+Chr(34),2)
		      coord=nthField(coord,chr(34),1)
		      feature.name=coord
		    else 'otherwise, look for a note
		      if instr(coord,"/note=")>0 then
		        coord=nthfield(coord,"/note="+Chr(34),2)
		        feature.name=nthField(coord,chr(34),1)
		      else
		        feature.name="repeat_region" 'no proper feature formatting, so just a generic name
		      end if
		    end if
		    
		  elseif name="operon" then
		    coord=nthField(featureText,"/operon=",2)
		    coord=nthField(coord,chr(34),2)
		    feature.name=coord+" operon"
		  elseif name="promoter" then
		    feature.name=""
		  elseif name="regulatory" then
		    feature.name=""
		  Elseif name="protein_bind" Then
		    'proper annotation should look like:
		    '/bound_moiety="NarP"
		    If InStr(featureText,"/bound_moiety=")>0 Then
		      coord=NthField(featureText,"/bound_moiety="+Chr(34),2)
		      coord=NthField(coord,Chr(34),1)
		      feature.name=coord
		    End If
		  elseif name="regulatory" then
		    Feature.name=""
		  else
		    if p1>0 then
		      coord=rightb(featureText,lenb(featureText)-p1-9)
		      feature.name=nthField(coord,chr(34),1)
		    elseif p2>0 then
		      coord=rightb(featureText,lenb(featureText)-p2-10)
		      feature.name=nthField(coord,chr(34),1)
		    elseif p3>0 then
		      coord=rightb(featureText,lenb(featureText)-p3-6)
		      coord=nthField(coord,chr(34),1)
		      feature.name=nthField(coord,EndOfLine,1)
		    elseif p4>0 then
		      coord=rightb(featureText,lenb(featureText)-p4-11)
		      feature.name=nthField(coord,chr(34),1)
		    else
		      feature.name=""
		    end if
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetFeatureSeq() As string
		  if Seq.Features(ContextFeature).complement  then
		    FeatureLeft=Seq.Features(ContextFeature).start-Seq.Features(ContextFeature).length+1
		    FeatureRight=FeatureLeft+Seq.Features(ContextFeature).length-1
		    return ReverseComplement(midb(Genome.Sequence,FeatureLeft+GBrowseShift,FeatureRight-FeatureLeft))
		  else
		    FeatureLeft=Seq.Features(ContextFeature).start
		    FeatureRight=FeatureLeft+Seq.Features(ContextFeature).length
		    return midb(Genome.Sequence,FeatureLeft+GBrowseShift,FeatureRight-FeatureLeft)
		  end
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetMapBounds(Map As Group2D) As string
		  dim n as integer
		  dim topobj, featureCount as integer
		  dim minX, minY, maxX, MaxY as integer
		  dim miX, miY, maX, MaY as integer
		  dim minRX, minRY, maxRX, MaxRY as integer
		  dim out as string
		  dim rs as rectshape
		  dim cs,cs2 as curveshape
		  dim g2d as Group2D
		  dim click as cClickableshape
		  
		  if seq.Circular then
		    'Map=seq.Cmap
		    'minX=seq.centerX
		    'minY=seq.centerY
		    'maxX=seq.centerX
		    'maxY=seq.centerY
		    minRX=seq.centerX-seq.radius
		    minRY=seq.centerY-seq.radius
		    maxRX=seq.centerX+seq.radius
		    maxRY=seq.centerY+seq.radius
		    'else
		    'Map=seq.Lmap
		    'minX=20
		    'minY=seq.baselineY
		    'maxX=20
		    'maxY=seq.baselineY
		  end
		  minX=-1
		  minY=-1
		  maxX=-1
		  maxY=-1
		  
		  topObj= Map.Count-1
		  featureCount=ubound(Seq.features)
		  'skip first object that contains selection
		  dim o2d as object2d
		  for n=1 to topObj
		    'second (or more) obj. may contain the ruler, but not on the circular map
		    o2d=Map.Item(n)
		    if Map.Item(n) IsA rectshape then 'selrects and seq line/circle(a subclass of RectShape)
		      rs=new rectshape
		      rs=rectshape(Map.Item(n))
		      if rs.x=-1 AND rs.width<1 then
		        'uninit'ed cName (e.g. plasmid name from old files)
		        'just ignore it
		        miX=minX
		        maX=maxX
		        miY=maxY
		        maY=maxY
		      else
		        miX=rs.X-rs.width*rs.scale/2
		        maX=rs.X+rs.width*rs.scale/2
		        miY=rs.Y-rs.height*rs.scale/2
		        maY=rs.Y+rs.height*rs.scale/2
		      end if
		      'elseif Map.Item(n) IsA cName  then 'REnames and other cNames
		      '
		      'rs=new rectshape
		      'rs=cName(Map.Item(n)).selrect
		      'miX=rs.X-rs.width*rs.scale/2
		      'maX=rs.X+rs.width*rs.scale/2
		      'miY=rs.Y-rs.height*rs.scale/2
		      'maY=rs.Y+rs.height*rs.scale/2
		      'elseif Map.Item(n) IsA Group2D  then'lines connecting enzyme names to seq line/circle
		      'g2d = new Group2D
		      'g2d=Group2D(Map.Item(n))
		      'cs=new curveshape
		      'cs=curveshape(g2d.item(0))
		      'cs2= new curveshape
		      'cs2=curveshape(g2d.item(1))
		      'if cs.x<cs2.x then
		      'miX=cs.x
		      'maX=cs2.x
		      'else
		      'miX=cs2.x
		      'maX=cs.x
		      'end
		      'if cs.Y<cs2.Y then
		      'miY=cs.Y
		      'maY=cs2.Y
		      'else
		      'miY=cs2.Y
		      'maY=cs.Y
		      'end
		    elseif Map.Item(n) IsA cClickableShape then
		      click=new cClickableshape
		      click=cClickableshape(Map.Item(n))
		      if seq.circular then
		        'approximate calculations:
		        if click.arrowwidth>click.width then 'not quite correct
		          miX=(minRX-click.ArrowWidth/2)*click.scale
		          maX=(maxRX+click.ArrowWidth/2)*click.scale
		          miY=(minRY-click.ArrowWidth/2)*click.scale
		          maY=(maxRY+click.ArrowWidth/2)*click.scale
		        else
		          miX=(minRX-click.Width/2)*click.scale
		          maX=(maxRX+click.Width/2)*click.scale
		          miY=(minRY-click.Width/2)*click.scale
		          maY=(maxRY+click.Width/2)*click.scale
		        end
		      else
		        'the stuff below doesn't work for circular map because of rotation
		        miX=click.minx*click.scale
		        maX=click.maxx*click.scale
		        miY=click.miny*click.scale
		        maY=click.maxy*click.scale
		      end
		    end
		    
		    if minX=-1 then
		      minX=miX
		    else
		      if miX<minX then
		        minX=miX
		      end
		    end if
		    if maX>maxX then
		      maxX=maX
		    end
		    if minY=-1 then
		      minY=miY
		    else
		      if miY<minY then
		        minY=miY
		      end
		    end if
		    if maY>maxY then
		      maxY=maY
		    end
		  next
		  
		  if seq.circular then
		    out=str(minX+CmapDx*seq.Cscale)+";"+str(maxX+CmapDx*seq.Cscale)+";"+str(minY+CmapDy*seq.Cscale)+";"+str(maxY+CmapDy*seq.Cscale)
		  else
		    out=str(minX+LmapDx*seq.Lscale)+";"+str(maxX+LmapDx*seq.Lscale)+";"+str(minY+LmapDy*seq.Lscale)+";"+str(maxY+LmapDy*seq.Lscale)
		    'out=str(minX)+";"+str(maxX)+";"+str(minY)+";"+str(maxY)
		    
		  end if
		  
		  
		  return out
		  
		  
		  Exception err
		    ExceptionHandler(err,"GenomeWin:GetMapBounds")
		    
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetRaster(Width as integer, height As integer, theMap As Group2D) As double
		  dim minX,maxX,minY,maxY,sourceW,sourceH as integer
		  dim ratio as double
		  dim bounds as String
		  
		  Bounds=GetMapBounds(theMap)
		  minX=Val(NthField(bounds,";",1))
		  maxX=Val(NthField(bounds,";",2))
		  minY=Val(NthField(bounds,";",3))
		  maxY=Val(NthField(bounds,";",4))
		  sourceW=MaxX-minX
		  sourceH=MaxY-minY
		  MapRasterPic=new Picture (sourceW,sourceH,Screen(0).depth)
		  if MapRasterPic<>nil then
		    MapRasterPic.Graphics.DrawPicture  seq.map,0,0,sourceW,sourceH,minX,minY,sourceW,sourceH
		    if Width>=sourceW AND Height>=sourceH then      'no need to scale down (Scale up if necessary??)
		      'MapRasterPic.Graphics.DrawPicture  seq.map,0,0
		      ratio=1
		    else
		      
		      if sourceW/Width>sourceH/Height then
		        ratio=sourceW/Width
		      else
		        ratio=-sourceH/Height
		      end
		      'MapRasterPic.Graphics.DrawPicture  seq.map,0,0,Width/ratio,Height/ratio,minX,minY,sourceW,sourceH
		    end
		    
		  end
		  
		  return ratio
		  
		  
		  Exception err
		    ExceptionHandler(err,"GenomeWin:GetRaster")
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub HmmerSearchSwissProt(ProtName as string)
		  dim theSeq, command, UUID, theURL as string
		  
		  
		  'name the search tab:
		  'BrowserTabs.tabs(0).Caption=ProtName+":SwissProt"
		  FindTab("SP:"+ProtName)
		  BrowserTabs.RePaint
		  
		  'get the seq to search with:
		  if Seq.Features(ContextFeature).complement  then
		    FeatureLeft=Seq.Features(ContextFeature).start-Seq.Features(ContextFeature).length+1
		    FeatureRight=FeatureLeft+Seq.Features(ContextFeature).length-1
		    theSeq=gcodes(gCodeNo).Translate(ReverseComplement(midb(Genome.Sequence,FeatureLeft+GBrowseShift,FeatureRight-FeatureLeft)))
		  else
		    FeatureLeft=Seq.Features(ContextFeature).start
		    FeatureRight=FeatureLeft+Seq.Features(ContextFeature).length
		    theSeq=gcodes(gCodeNo).Translate(midb(Genome.Sequence,FeatureLeft+GBrowseShift,FeatureRight-FeatureLeft))
		  end
		  
		  'We want html results, but there's a bug in hmmer REST API with this format, hence a workaround
		  'First, launch the search to get the UUID:
		  'curl -L -H 'Expect:' -H 'Accept:text/plain' -F seqdb=swissprot  -F algo=phmmer -F seq=MSFAITY  http://hmmer.janelia.org/search/phmmer
		  
		  'command="curl -L -H 'Expect:' -H 'Accept:text/html' -F seqdb=swissprot  -F algo=phmmer -F seq="+theSeq+" http://hmmer.janelia.org/search/phmmer"
		  'SPshell.execute command
		  
		  
		  dim blankpath as string
		  dim f as FolderItem
		  f=resources_f.child("blank.html")
		  if f<>Nil then
		    if f.exists then
		      blankpath=f.ShellPath
		      theURL="file://"+blankpath
		    end if
		  end if
		  
		  if TMdisplay.Visible then
		    TMdisplay.Visible=false
		    TMdisplayAdjustment
		  end if
		  SPSearchViewer.LoadURL(theURL)
		  ProgressShow
		  #if TargetLinux
		    'self.Refresh
		    SPSearchViewer.Refresh
		    'ProgressWheel1.Invalidate
		    app.DoEvents
		  #endif
		  
		  SPSocket.SetRequestHeader("Expect:","")
		  SPSocket.SetRequestHeader("Accept:","text/html")
		  'SPSocket.SetRequestHeader("Accept:","text/xml")
		  
		  Dim form As Dictionary
		  'create and populate the form object
		  form = New Dictionary
		  form.Value("seqdb") = "swissprot"
		  form.Value("algo") = "phmmer"
		  form.Value("seq") = theSeq
		  SPSocket.SetFormData(form)
		  'SPSocket.Post("http://hmmer.janelia.org/search/phmmer")
		  'change to the EBI address
		  SPSocket.Post("https://www.ebi.ac.uk/Tools/hmmer/search/phmmer")
		  Exception err
		    ExceptionHandler(err,"GenomeWin:PhmmerSearchUniprot")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub HmmerSearchUniProt(ProtName as string)
		  Dim theSeq, command, UUID, theURL As String
		  
		  
		  'name the search tab:
		  FindTab("UP:"+ProtName)
		  BrowserTabs.RePaint
		  
		  ProgressShow
		  
		  'get the seq to search with:
		  if Seq.Features(ContextFeature).complement  then
		    FeatureLeft=Seq.Features(ContextFeature).start-Seq.Features(ContextFeature).length+1
		    FeatureRight=FeatureLeft+Seq.Features(ContextFeature).length-1
		    theSeq=gcodes(gCodeNo).Translate(ReverseComplement(midb(Genome.Sequence,FeatureLeft+GBrowseShift,FeatureRight-FeatureLeft)))
		  else
		    FeatureLeft=Seq.Features(ContextFeature).start
		    FeatureRight=FeatureLeft+Seq.Features(ContextFeature).length
		    theSeq=gcodes(gCodeNo).Translate(midb(Genome.Sequence,FeatureLeft+GBrowseShift,FeatureRight-FeatureLeft))
		  end
		  
		  'We want html results, but there's a bug in hmmer REST API with this format, hence a workaround
		  'First, launch the search to get the UUID:
		  'curl -L -H 'Expect:' -H 'Accept:text/plain' -F seqdb=swissprot  -F algo=phmmer -F seq=MSFAITY  http://hmmer.janelia.org/search/phmmer
		  
		  'command="curl -L -H 'Expect:' -H 'Accept:text/html' -F seqdb=uniprotkb  -F algo=phmmer -F seq="+theSeq+" http://hmmer.janelia.org/search/phmmer"
		  'UniprotShell.execute command
		  UniprotSocket.SetRequestHeader("Expect:","")
		  UniprotSocket.SetRequestHeader("Accept:","text/html")
		  Dim form As Dictionary
		  'create and populate the form object
		  form = New Dictionary
		  'form.Value("seqdb") = "uniprotkb"    'almost always hangs lately
		  form.Value("seqdb") = "uniprotrefprot"
		  form.Value("algo") = "phmmer"
		  'form.Value("seqdb_ranges") = "17277318..17420758" 'trying taxonomy restriction a la the browser version: doesn't work!
		  form.Value("seq") = theSeq
		  UniprotSocket.SetFormData(form)
		  UniprotSocket.Post("http://hmmer.janelia.org/search/phmmer")
		  'change to the EBI address
		  UniprotSocket.Post("https://www.ebi.ac.uk/Tools/hmmer/search/phmmer")
		  Exception err
		    ExceptionHandler(err,"GenomeWin:PhmmerSearchUniprot")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function hmmsearch() As boolean
		  'returns true if completed without errors
		  
		  hmmSearchSettingsWin.ShowModalWithin(self)
		  if hmmSearchSettings="" then
		    return false
		    
		  end if
		  
		  logowin.show
		  dim cli as string
		  
		  
		  if GenomeFile=Nil then
		    logoWin.WriteToSTDOUT("Please select a file to search first.")
		    return false
		  else
		    logoWin.WriteToSTDOUT("Exporting protein seqs..."+EndOfLine.UNIX)
		    
		  end if
		  
		  'export protein fastas:
		  dim CDSfasta as folderitem
		  CDSfasta=TemporaryFolder.child("CDS.fasta")
		  
		  if CDSfasta<>nil then
		    ExportProteins(CDSfasta,false)
		    cli=""
		    
		    
		    FixPath4Windows(CDSfasta)
		    
		    dim genomefilepath as string
		    #if TargetWindows
		      'GenomeFilePath=GetShortPathName(GenomeFile.shellpath)
		      GenomeFilePath=chr(34)+GenomeFile.shellpath+chr(34)
		    #else
		      GenomeFilePath=GenomeFile.shellpath
		    #endif
		    
		    dim modelFile as string
		    modelFile=hmmSearchSettingsWin.PopupFiles(hmmSearchSettingsWin.PfamPopup.ListIndex-1)
		    
		    dim HmmSearchPath as string = replace(nhmmerPath,"nhmmer","hmmsearch")
		    
		    cli=HmmSearchPath+" "+hmmSearchSettings
		    If hmmSearchSettingsWin.AddAnnotationCheckBox.Value Then
		      hmmsearchResultFile=TemporaryFolder.child("hmmsearch.result")
		      
		      if hmmsearchResultFile<>nil then
		        cli=cli +" -o "+PlaceQuotesToPath(MakeWSLPath(hmmsearchResultFile.shellpath))
		      else
		        return false
		      end if
		    end if
		    cli=cli+" "+modelFile+" "+PlaceQuotesToPath(MakeWSLPath(CDSfasta.ShellPath))
		    
		    logoWin.WriteToSTDOUT (EndofLine+EndofLine+"Running hmmsearch...")
		    userShell(cli)
		    If shError=0 Then
		      logoWin.WriteToSTDOUT (EndofLine+shResult)
		      'LogoWinToolbar.Item(2).Enabled=true
		      logoWin.LastSearch="hmmsearch" 'not used
		      
		      return true
		    else
		      logoWin.WriteToSTDOUT (EndofLine+shResult)
		      MsgBox "hmmsearch error code: "+Str(shError)
		      logoWin.WriteToSTDOUT (EndofLine+"hmmsearch command line was: "+cli+EndofLine)
		      'LogoWinToolbar.Item(2).Enabled=false
		      return false
		    end if
		  end if
		  
		  
		  
		  
		  Exception err
		    ExceptionHandler(err,"GenomeWin:hmmsearch")
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function hmmsearchCR() As boolean
		  'returns true if completed without errors
		  
		  hmmSearchSettingsWin.ShowModalWithin(self)
		  if hmmSearchSettings="" then
		    return false
		    
		  end if
		  
		  logowin.show
		  dim cli as string
		  
		  
		  if GenomeFile=Nil then
		    logoWin.WriteToSTDOUT("Please select a file to search first.")
		    return false
		  else
		    logoWin.WriteToSTDOUT("Exporting protein seqs..."+EndOfLine.UNIX)
		    
		  end if
		  
		  'export protein fastas:
		  dim CDSfasta as folderitem
		  CDSfasta=TemporaryFolder.child("CDS.fasta")
		  
		  if CDSfasta<>nil then
		    ExportProteins(CDSfasta, false)
		    cli=""
		    
		    
		    FixPath4Windows(CDSfasta)
		    
		    dim genomefilepath as string
		    #if TargetWindows
		      'GenomeFilePath=GetShortPathName(GenomeFile.shellpath)
		      GenomeFilePath=chr(34)+GenomeFile.shellpath+chr(34)
		    #else
		      GenomeFilePath=GenomeFile.shellpath
		    #endif
		    
		    dim modelFile as string
		    modelFile=hmmSearchSettingsWin.PopupFiles(hmmSearchSettingsWin.PfamPopup.ListIndex-1)
		    
		    
		    'HMMsearchWithCRtagsCR (CDSfile as folderitem, HMMfilePath as string)
		    
		    logoWin.WriteToSTDOUT (EndofLine+HMMsearchWithCRtagsCR(CDSfasta,modelFile,hmmSearchSettingsWin.AddAnnotationCheckBox.value))
		    
		    
		  end if
		  return true
		  
		  Exception err
		    ExceptionHandler(err,"GenomeWin:hmmsearchCR")
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function isACGT(query as string) As Boolean
		  dim l,n as integer
		  dim s,ACTG as string
		  
		  ACTG="ACTGN"
		  l=len(query)
		  for n=1 to l
		    s=mid(query,n,1)
		    if instr(ACTG,s)=0 then
		      return false
		    end if
		  next
		  
		  return true
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MapInit()
		  'this is to avoid calculations related to scale
		  dim scale as double
		  Seq.baselineY=genome.baselineY
		  if seq.map<>Nil then
		    if  seq.map.Objects.Scale<>1 then
		      scale=seq.map.Objects.Scale
		      SetScale 1
		      
		      Seq.init(Screen(0).width*4, Screen(0).height*4)
		      
		      'SetScale scale
		    else
		      Seq.init(Screen(0).width*4, Screen(0).height*4)
		    end
		  else
		    'Seq.init(Screen(0).width*4, Screen(0).height*4), me.Title
		    'height migh have to be adjusted
		    Seq.init(mapcanvas.width, height), me.Title
		  end
		  seq.Map.objects=seq.lmap
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MapScrollUpdate()
		  if NOT HScrollBarCodeLock then
		    if (HScrollBar.Value-DisplayInterval/2)<1 then
		      ExtractFragment(1,DisplayInterval)
		    elseif (HScrollBar.Value+DisplayInterval/2)>lenb(genome.sequence) then
		      ExtractFragment(lenb(genome.sequence)-DisplayInterval,lenb(genome.sequence))
		    else
		      ExtractFragment(HScrollBar.Value-DisplayInterval/2,HScrollBar.Value+DisplayInterval/2)
		    end if
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function mItem(mName As string) As menuitem
		  dim m As new menuItem
		  m.text=mName
		  return m
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function mItem(mName As string, enabl as boolean) As menuitem
		  dim m As new menuItem
		  m.text=mName
		  m.Enabled=enabl
		  return m
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub OpenGenBankFile(f as folderitem)
		  dim stre as textInputStream
		  dim s,s0,features,currentFeature, cf1,name,coord,start,finish,Separator,splitCoords,leftC,FeatureArray(-1) as string
		  dim en,st,l,m,n,p,p1,p2,p3,p4,p5 as integer
		  dim t as double
		  dim exitParsing as boolean
		  dim w, toClose as GenomeWin
		  Dim NewFeature As GBFeature
		  
		  w=self
		  genome=new cSeqObject
		  
		  'genome browser should be wide
		  if Screen(0).width>1280 then
		    w.Width=1280
		  else
		    w.Width=Screen(0).width-w.left-3
		  end if
		  
		  'Prepare MapCanvas for drawing:
		  
		  If f <> nil AND f.exists then
		    Stre=f.OpenAsTextFile
		    stre.Encoding=Encodings.ASCII   'Otherwise encoding can happen to be anything
		    s=stre.readall
		    w.FormattedSequence=Trim(RightB(s,Len(s)-InStrB(s,"ORIGIN")-7)) 
		    w.Genome.sequence=CleanUp(w.FormattedSequence)
		    
		    Stre.Close
		  End if
		  
		  if instrb(s,"LOCUS       ")>0 then
		    w.gbopened=true
		    '
		    '
		    '****************Opening Genbank file******************
		    '
		    'Genebank file - sequence starts after "ORIGIN"
		    'the entry starts with "LOCUS       ";
		    'description and references follow down to
		    '"FEATURES             Location/Qualifiers",
		    'after which the feature list goes
		    'the sequence starts right after "ORIGIN      <cr>        1 "
		    
		    'first, store file header
		    Header=nthfield(s,"FEATURES             Location/Qualifiers",1)
		    
		    'Now get the feature table:
		    st=instrb(s,"FEATURES             Location/Qualifiers")+41
		    's0=LineEnd+"BASE COUNT "  'this long in order to terminate parsing properly
		    
		    LineEnd=EndOfLine.unix
		    s0=LineEnd+"ORIGIN"
		    '^
		    '|
		    'SHOULD USE "origin" INSTEAD OF "BASE COUNT"
		    en=instrb(s,s0)-1
		    'line ends may vary wildly, so checking if platform-specific line ends are indeed used
		    cLineEnd=LineEnd
		    if en=-1 then  'line ends are different or this may be not a genebank file
		      s0=LF+"ORIGIN"
		      en=instrb(s,s0)-1
		      if en >= 0 then
		        'set the correct line ends for further use:
		        cLineEnd=LF
		      else
		        s0=CR+"ORIGIN"
		        en=instrb(s,s0)-1
		        if en > 0 then 'set the correct line ends for further use:
		          cLineEnd=CR
		        else
		          msgbox "Problem trying to read GenBank format! Annotated features may not be available."
		        end if
		      end
		    end
		    if cLineEnd="" then
		      cLineEnd=EndOfLine  'seems to be set wrong for some files
		    end if
		    LineEnd=cLineEnd
		    
		    features=midb(s,st,en-st+1)
		    
		    'get genetic code number
		    dim tt As string
		    if instr(features,"/transl_table=")>0 then
		      tt=NthField(features,"/transl_table=",2)
		      tt=trim(NthField(tt,EndOfLine.unix,1))
		      if len(tt)<3 then
		        gCodeNo=val(tt)
		      else
		        gCodeNo=1
		      end if
		    else
		      gCodeNo=1 'can't get the translation table – using the universal code
		    end if
		    
		    'save description:
		    Genome.Description=leftb(s,st)
		    
		    'now parse the feature table.
		    'every new feature is identified as the line having 5 rather than 21 leading spaces
		    
		    'First remove the blocks of 21 spaces:
		    features=ReplaceAll(features,"                     ","")
		    Separator=cLineEnd+"     "
		    m=countfields(features,Separator)
		    currentFeature=""
		    w.Genome.features(0)=New GBfeature(w.Genome.baselineY)   'this will store map title/sequence size
		    
		    
		    features=ConvertEncoding(features,Encodings.ASCII)
		    
		    featureArray=Split(features,Separator)
		    gbkSource=""
		    for n=0 to m-1
		      currentFeature=featureArray(n)
		      
		      'feature description parsing:
		      cf1=nthfield(currentFeature,cLineEnd,1)
		      name=trim(leftb(cf1,16))      'feature name
		      
		      if name ="source" then
		        'store source separately
		        gbkSource=currentFeature
		      else
		        NewFeature=new GBfeature(w.Genome.baselineY)
		        NewFeature.featureText=currentFeature
		        'now check the direction and coorginates:
		        cf1=replace((cf1),"<","")  'remove markers of truncated genes to simplify coordinate parsing
		        cf1=replace((cf1),">","")
		        if InStrB(17,cf1,"complement")>0 then
		          NewFeature.complement=true
		          'gene            complement(2659..4155)
		          if InStrB(27,cf1,"order")>0 OR InStrB(27,cf1,"join")>0 then
		            'split feature:
		            'misc_feature    complement(order(3576182..3576235,3576263..3576322,
		            '3576341..3576409,3576467..3576532))
		            'CDS             complement(join(2497077..2497340,2497344..2497514))
		            NewFeature.start=val(nthFieldB(cf1,"..",countfieldsB(cf1,"..")))  'replacement to correct for partial features
		            NewFeature.finish=val(nthfieldB(nthfieldB(cf1,"..",1),"(",3))
		          else
		            coord=rightb(cf1,lenb(cf1)-instrb(cf1,"("))  'coords in brackets for complementary strand
		            NewFeature.start=val(nthFieldB(coord,"..",2))
		            'NewFeature.finish=val(replace((nthFieldB(coord,"..",1)),"<",""))  'replacement to correct for partial features
		            NewFeature.finish=val(nthFieldB(coord,"..",1))  'replacement to correct for partial features
		          end if
		        else
		          If InStrB(17,cf1,"order")>0 Or InStrB(17,cf1,"join")>0 Then
		            'split feature:
		            'misc_feature    order(343373..343441,343469..343537,343652..343720,
		            '343799..343867,343925..343984)
		            'CDS             join(843475..843549,843551..844573)
		            
		            NewFeature.start=val(nthfieldB(nthfieldB(cf1,"..",1),"(",2))
		            'splitCoords=NthFieldB(currentFeature,")",1)
		            'NewFeature.finish=val(nthFieldB(splitCoords,"..",CountFieldsB(splitCoords,"..") ))
		            NewFeature.finish=val(nthFieldB(cf1,"..",CountFieldsB(cf1,"..")))
		          else
		            'NewFeature.complement=false false is the default
		            coord=ltrim(rightb(cf1,lenb(cf1)-lenb(name)))
		            NewFeature.start=Val(NthFieldB(coord,"..",1))
		            NewFeature.finish=val(nthFieldB(coord,"..",2))
		          end if
		        End If
		        
		        If InStrB(currentFeature,"CDS             ")>0  Then
		          If InStrB(currentFeature,"/translation=")=0  Then 'missing translation, have to restore
		            
		            Dim theSeq As String
		            If NewFeature.complement  Then
		              theSeq=gcodes(gCodeNo).Translate(ReverseComplement(MidB(Genome.Sequence,NewFeature.finish,NewFeature.start-NewFeature.finish+1)))
		            Else
		              theSeq=gcodes(gCodeNo).Translate(MidB(Genome.Sequence,NewFeature.start,NewFeature.finish-NewFeature.start+1))
		            End
		            theSeq=Left(theSeq,Len(theSeq)-1) 'Remove the asterisk
		            NewFeature.featureText=NewFeature.featureText+EndOfLine.UNIX+"/translation="+Chr(34)+theSeq+Chr(34)
		            
		          End If
		        End If
		        
		        w.Genome.features.Append NewFeature
		      end if
		      
		    next 'n
		    
		    
		  else
		    msgbox kInvalidGenbankFile
		    return
		  end 'if instrb(s,"LOCUS       ")>0
		  
		  w.selFeatureNo=0
		  
		  SetScrollbar
		  
		  'switch to the graphic:
		  w.GraphExists=true
		  
		  w.MapCanvas.visible=true
		  w.MapCanvas.enabled=true
		  w.MapCanvas.lockright=true
		  w.document=f                  //store a reference to the folderitem in the document property (variable) of SeqWindow
		  w.title=f.name                //set the window title to the name of the document that was opened
		  'w.ContentsChanged=false 'mac only: unset dirty bit
		  w.EnableEdit=false
		  w.GenomeChanged=false
		  
		  
		  w.GenomeFile=f
		  self.DocumentFile=f
		  self.IsModified=false
		  '
		  SegmentedControl1.Visible=false
		  w.mapCanvas.Invalidate(false)
		  Exception err
		    ExceptionHandler(err,"GenomeWin:OpenGenBankFile")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub OperOn()
		  dim cli as string
		  
		  'usage:
		  'RegOperon <input_file> [options]
		  '
		  'positional arguments:
		  'input_file            path to input Genbank file.
		  '
		  'optional arguments:
		  '-h, --help            show this help message and exit
		  '-g <int>, --gap <int>
		  'set a threshold for gaps between operons
		  '-i <int>, --indent <int>
		  'set a threshold for indentation from very first gene
		  'to regulatory region
		  '-t, --terminator      terminators are regarded as operon separator
		  '-r <name of regulator>, --regulator <name of regulator>
		  'only specified regulator are considered
		  '-p, --palindromic     binding sites are on both strands
		  
		  
		  Logowin.show
		  LogoWin.WriteToSTDOUT (EndofLine+EndofLine+"Running the OperOn script..."+EndofLine)
		  
		  cli=pythonPath+PlaceQuotesToPath(LogoWin.OperOnPath)+" "+PlaceQuotesToPath(GenomeFile.ShellPath)+" "+OperOnOptions
		  
		  userShell(cli)
		  If shError=0 Then
		    LogoWin.WriteToSTDOUT (EndofLine+"OperOn.py was run with these options: "+nthfield(cli,".gb",2)) ' 
		    LogoWin.WriteToSTDOUT (EndofLine+shResult)
		    
		  else
		    LogoWin.WriteToSTDOUT (EndofLine+"OperOn error code: "+Str(shError)+EndofLine)
		    LogoWin.WriteToSTDOUT (EndofLine+shResult)
		    
		  end if
		  
		  Exception err
		    ExceptionHandler(err,"GenomeWin:OperOn")
		    
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PrintMap()
		  Dim g as Graphics
		  Dim ps as PrinterSetup
		  
		  ps=new PrinterSetup
		  Dim pageWidth as Integer
		  Dim pageHeight as Integer
		  
		  If PageSetup <> "" then //PageSetup contains properties
		    ps.setupString=PageSetup
		    pageWidth=ps.Width-36
		    pageHeight=ps.Height-36
		    // open Print dialog with Page Setup properties
		    g=openPrinterDialog(ps)
		  else
		    g=openPrinterDialog() //open dg w/o Page Setup properties
		    pageWidth=72*7.5 //default width and height
		    pageHeight=72*9
		  end if
		  If g <> Nil then //user didn't cancel Print dialog
		    g.DrawPicture seq.map,0,0
		    'ratio=GetRaster(PageWidth,PageHeight,theMap)
		    'if MapRasterPic<>nil then
		    ''g.DrawPicture MapRasterPic,0,0,PageWidth/ratio,PageHeight/ratio,0,0,PageWidth,PageHeight
		    'if ratio>0 then 'scaling according to widths ratio
		    'g.DrawPicture MapRasterPic,0,0,PageWidth,MapRasterPic.Height/ratio,0,0,MapRasterPic.Width,MapRasterPic.Height
		    'else 'scaling according to heights ratio
		    'g.DrawPicture MapRasterPic,0,0,-MapRasterPic.width/ratio,PageHeight,0,0,MapRasterPic.Width,MapRasterPic.Height
		    'end
		    'else
		    'msgbox "Not enough memory to print!"
		    'end
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ProgressHide()
		  ProgressWheel1.Visible=false
		  'ProgressWheel1.Enabled=false
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ProgressShow()
		  ProgressWheel1.top=BrowserPagePanel.top+BrowserPagePanel.Height/3
		  ProgressWheel1.left=(Self.width-ProgressWheel1.Width)/2
		  
		  ProgressWheel1.Visible=True
		  ProgressWheel1.Enabled=True
		  ProgressWheel1.Refresh
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub QuitCheck()
		  #if TargetMacOS then
		    'Shouldn't quit on Mac OS when closing the last window
		    return
		  #else
		    
		    quit
		    
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveFeature(FeatureNo as integer)
		  Dim n,u As Integer
		  dim ft as string
		  
		  'Convert FeatureNo to whole genome numbering and delete
		  
		  ft=seq.Features(FeatureNo).FeatureText
		  
		  u=ubound(Genome.Features)
		  
		  for n=1 to u
		    if Genome.Features(n).FeatureText=ft then
		      Genome.Features.Remove n
		      
		      //check if we are deleting one of the just added nhmmer hits:
		      'there are three arrays that have to be handled:
		      'HmmHits
		      'contain just the left coordinate;
		      
		      'HmmHitNames
		      'have the format:
		      'rbsD GZ59_00100
		      '(or just locus_tag if there's no gene name);
		      
		      'HmmHitDescriptions
		      'have the format:
		      '10420:10443 (+) CRP score 6.7 E-value 110.0.
		      
		      //sufficient info is present in the /note of the feature being deleted:
		      'protein_bind    4047388..4047407
		      '/bound_moiety="LexA"
		      '/note="nhmmer score 10.9 E-value 5.2"
		      
		      
		      //So, only HmmHitDescriptions need to be parsed (for coordinate, then bound_moiety and both scores),
		      //but the matching item has to be removed from all three arrays
		      
		      if UBound(HmmHitDescriptions)>0 then
		        //get the name of the TF/sigma:
		        dim nm, cHit, scor as string
		        scor=NthField(ft,"/note="+chr(34)+"nhmmer score",2)
		        scor=NthField(scor,chr(34),1)
		        nm=NthField(HmmHitDescriptions(1),") ",2)
		        nm=NthField(nm," score",1)
		        if instr(ft,nm)>0 then'could be right hit
		          cHit=NthField(ft,"/bound_moiety="+chr(34),2)
		          cHit=NthField(cHit,chr(34),1)
		          if cHit=nm then 'almost certainly we have the right one within current hits
		            'scan the array for the actual hit
		            //get the coordinates:
		            dim coo as string
		            if seq.Features(FeatureNo).complement then
		              coo=str(seq.Features(FeatureNo).finish+GBrowseShift)+":"+str(seq.Features(FeatureNo).start+GBrowseShift-1)
		            else
		              coo=str(seq.Features(FeatureNo).start+GBrowseShift)+":"+str(seq.Features(FeatureNo).Finish+GBrowseShift)
		            end if
		            dim n1 as integer
		            for n1=1 to ubound(HmmHitDescriptions)
		              if instr(HmmHitDescriptions(n1),coo)>0 then 'almost there
		                if instr(HmmHitDescriptions(n1),scor)>0 then 'bingo!
		                  HmmHits.Remove n1
		                  HmmHitNames.Remove n1
		                  HmmHitDescriptions.Remove n1
		                  HmmHitChecked.Remove n1
		                  'need to update navigator counts here!
		                  Dim s0 As SegmentedControlItem = SegmentedControl1.Items( 0 )
		                  Dim s1 As SegmentedControlItem = SegmentedControl1.Items( 1 )
		                  Dim s2 As SegmentedControlItem = SegmentedControl1.Items( 2 )
		                  if n1<=CurrentHit then
		                    CurrentHit=CurrentHit-1
		                  end if
		                  
		                  
		                  if currentHit<=1 then
		                    s0.Enabled=false
		                  else
		                    s0.Enabled=true
		                  end if
		                  
		                  if currentHit=ubound(GenomeWin.HmmHits) then
		                    s2.Enabled=false
		                  else
		                    s2.Enabled=true
		                  end if
		                  'behaviour in not elegant at last hit, but is probably bearable
		                  s1.Title=str(CurrentHit)+"/"+str(ubound(HmmHits))
		                  
		                end if
		              end if
		            next
		          end if
		        end if
		        
		      end if
		      
		      exit
		    end if
		  next
		  'update the display:
		  ExtractFragment(GBrowseShift,GBrowseShift+DisplayInterval)
		  
		  'mark genome changed:
		  GenomeChanged=true
		  self.IsModified=true
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveFeatures(FeatureNo as integer)
		  // Code modified (simplified) from RemoveFeature(ContextFeature)
		  ' all objects of the same type and with the same name will be deleted
		  ' (meant to be used with repeated features, for single elements RemoveFeature() should be used)
		  
		  // Only TFBSs handled at this time
		  
		  Dim n,u As Integer
		  Dim Ftype As String = seq.Features(FeatureNo).type
		  Dim FtypeSelector As String
		  Dim Ftname As String
		  Dim Fcount As Integer
		  Dim AlreadyRemoved as boolean
		  
		  u=ubound(Genome.Features)
		  
		  If FeatureNo=0 Then Return 'Nothing selected
		  
		  Dim fname As String = seq.Features(FeatureNo).FeatureText
		  
		  If Ftype="promoter" Then
		    FtypeSelector="protein_bind"
		  Elseif Ftype="riboswitch" Then
		    FtypeSelector="protein_bind"
		  Else
		    FtypeSelector=Ftype
		  End If
		  
		  Select Case FtypeSelector
		  Case "mobile_element"
		    ' Annotation sample:
		    'mobile_element  1885723..1887005
		    '/mobile_element_type="insertion sequence:ISPcc1"
		    fname=NthField(fname,"/mobile_element_type=",2)
		    fname=NthField(fname,Chr(34),2)
		    Ftname=fname
		    fname="/mobile_element_type="+Chr(34)+fname+Chr(34)
		  Case "ncRNA"
		    ' Annotation sample:
		    'ncRNA           18607..18756
		    '/ncRNA_class="other"
		    '/locus_tag="OA04_00180"
		    '/product="StyR-44"
		    '/inference="COORDINATES: profile:Infernal:1.1"
		    '
		    'Annotation sample:
		    'ncRNA           396517..396895
		    '/ncRNA_class="RNase_P_RNA"
		    '/gene="rnpB"
		    '/locus_tag="OA04_03670"
		    '/product="RNaseP RNA"
		    '/inference="COORDINATES: profile:Infernal:1.1"
		    '
		    'Annotation sample:
		    'ncRNA           502324..502411
		    '/ncRNA_class="antisense_RNA"
		    '/locus_tag="OA04_04660"
		    '/product="C4 antisense RNA"
		    '/inference="COORDINATES: profile:Infernal:1.1"
		    
		    fname=NthField(fname,"/product=",2)
		    fname=NthField(fname,Chr(34),2)
		    Ftname=fname
		    fname="/product="+Chr(34)+fname+Chr(34)
		    
		  Case "protein_bind"      '"protein_bind" OR "promoter" OR "riboswitch"
		    ' Annotation sample:
		    ' protein_bind    223284..223298
		    ' /inference="profile:nhmmer:3.1b1"
		    ' /bound_moiety="CpxR"
		    
		    fname=NthField(fname,"/bound_moiety=",2)
		    fname=NthField(fname,Chr(34),2)
		    Ftname=fname
		    fname="/bound_moiety="+Chr(34)+fname+Chr(34)
		    
		    'Case "promoter"
		    ' Annotation sample:
		    'regulatory      complement(3791743..3791772)
		    '/regulatory_class="promoter"
		    '/inference="profile:nhmmer:3.1b1"
		    '/bound_moiety="RpoN alternative sigma factor"
		  Case "repeat_region"
		    ' Annotation sample:
		    'repeat_region   294656..294782
		    '/note="nhmmer score 108.8 E-value 5e-31"
		    '/rpt_type=inverted
		    '/rpt_family="ERIC"
		    '
		    'Annotation sample2:
		    'repeat_region   440205..440222
		    '/note="ISPcc1, terminal inverted repeat"
		    '/rpt_type=inverted
		    
		    If InStr(fname,"/rpt_family=")>0 Then
		      fname=NthField(fname,"/rpt_family=",2)
		      fname=NthField(fname,Chr(34),2)
		      Ftname=fname
		      fname="/rpt_family="+Chr(34)+fname+Chr(34)
		    Else
		      fname=NthField(fname,"/rpt_type",2)
		      fname=NthField(fname,"=",2)
		      fname=NthField(fname,EndOfLine.UNIX,1)
		      Ftname=fname
		      fname="/rpt_type="+fname
		    End If
		    
		    'Case "riboswitch"
		    ' Annotation sample:
		    'regulatory      complement(289320..289474)
		    '/regulatory_class="riboswitch"
		    '/gene="thiC"
		    '/locus_tag="OA04_02610"
		    '/inference="COORDINATES: profile:Infernal:1.1"
		    '/note="TPP riboswitch (THI element)"
		    '/bound_moiety="thiamin/thiaminpyrophosphate"
		    'Case "terminator"
		    ' Annotation sample:
		    'regulatory      complement(3792119..3792158)
		    '/regulatory_class="terminator"
		    '/locus_tag="OA04_35030"
		    'Case "sig_peptide"
		    ' Annotation sample:
		    'sig_peptide     complement(310075..310143)
		    '/locus_tag="OA04_02820"
		    '/inference="ab initio prediction:SignalP:4.1"
		    '/note="predicted cleavage at residue 23"
		    '/gene="tcyA"
		    
		  Else           'Features without subtypes
		    Dim d As New MessageDialog  //declare the MessageDialog object
		    Dim b As MessageDialogButton //for handling the result
		    d.icon=MessageDialog.GraphicCaution   //display warning icon
		    d.ActionButton.Caption=kRemove
		    d.CancelButton.Visible=True     //show the Cancel button
		    d.CancelButton.Caption=kCancel
		    
		    d.Message="Really remove all "+Ftype+" features?"
		    'd.Explanation="If you don't save, your changes will be lost. "
		    
		    b=d.ShowModalwithin(Self)     //display the dialog
		    Select Case b //determine which button was pressed.
		    Case d.ActionButton
		      
		      Dim txt2search As String
		      
		      Select Case Ftype
		      Case "CDS"
		        txt2search="CDS             "
		      Case "sig_peptide"
		        txt2search="sig_peptide     "
		      Case "rRNA"
		        txt2search="rRNA            "
		      Case "tRNA"
		        txt2search="tRNA            "
		      Case "gene"
		        txt2search="gene            "
		      Case "operon"
		        txt2search="operon          "
		      Case "mobile_element"
		        txt2search="mobile_element  "
		      Case  "terminator"
		        txt2search="/regulatory_class="+Chr(34)+"terminator"+Chr(34)
		      Else
		        txt2search=ftype+"  "   'two spaces to prevent accidental deletions of irrelevant features
		      End Select
		      
		      
		      
		      For n=u DownTo 1
		        If InStr(Genome.Features(n).FeatureText,txt2search)>0 Then
		          Genome.Features.Remove n
		          Fcount=Fcount+1
		        End If
		      Next
		      AlreadyRemoved=True
		      
		    Case d.CancelButton
		      Return //cancel feature removal
		    End Select
		    
		    
		    
		    
		    
		  End Select
		  
		  If Not AlreadyRemoved Then
		    // Delete features of particular subtype
		    
		    
		    Dim d As New MessageDialog  //declare the MessageDialog object
		    Dim b As MessageDialogButton //for handling the result
		    d.icon=MessageDialog.GraphicCaution   //display warning icon
		    d.ActionButton.Caption=kYes
		    d.CancelButton.Visible=True     //show the Cancel button
		    d.CancelButton.Caption=kCancel
		    
		    d.Message="All "+Ftype+" features named "+Chr(34)+Ftname+Chr(34)+" will be removed. Proceed?"
		    'd.Explanation="If you don't save, your changes will be lost. "
		    
		    b=d.ShowModalwithin(Self)     //display the dialog
		    Select Case b //determine which button was pressed.
		    Case d.ActionButton
		      
		      For n=u DownTo 1
		        If InStr(Genome.Features(n).FeatureText,fname)>0 Then
		          Genome.Features.Remove n
		          Fcount=Fcount+1
		        End If
		      Next
		      
		      
		    Case d.CancelButton
		      Return //cancel feature removal
		    End Select
		    
		  End If
		  
		  If Fcount>0 Then
		    Dim msg As String
		    If Ftname<>"" Then
		      msg=Str(Fcount)+" "+Ftype+" features named "+Chr(34)+Ftname+Chr(34)+" removed."
		    Else
		      msg=Str(Fcount)+" "+Ftype+" features removed."
		    End If
		    
		    MsgBox msg
		    
		    // update the display to reflect deletion
		    ExtractFragment(GBrowseShift,GBrowseShift+DisplayInterval)
		    
		    // mark genome changed:
		    GenomeChanged=True
		    Self.IsModified=True
		  End If
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ReplaceGeneName(feature as GBFeature, newGeneName as string)
		  'replace gene name within feature text, then use standard function to fill all GBFeature object properties
		  
		  
		  dim n,u,start,geneLoc as integer
		  dim OldFeatureText, oldGeneName, locus_tag,featureArr() as string
		  dim upstream, downstream as string
		  
		  
		  
		  EditGeneWin.ParentWin=self
		  OldFeatureText=feature.FeatureText
		  
		  'find old gene name:
		  geneloc=InStr(feature.FeatureText,"/gene=")
		  if geneLoc>0 then
		    Upstream=left(feature.FeatureText,geneLoc+6)
		    Downstream=right(feature.FeatureText,len(feature.FeatureText)-geneLoc-6)
		    oldGeneName=NthField(downstream,chr(34),1)
		    geneloc=InStr(feature.FeatureText,chr(34)) 'right doublequote
		    Downstream=NthField(downstream,oldGeneName,2)
		  else
		    'no gene name
		    Upstream=feature.FeatureText
		    Downstream=""
		    oldGeneName=""
		  end if
		  
		  
		  if newGeneName="" then
		    if Downstream<>"" then
		      dim newfeat,scar as string
		      newfeat=Upstream+Downstream
		      scar=LineEnd+"/gene="+chr(34)+chr(34)
		      feature.FeatureText=replaceall(newfeat,scar,"")
		    end if
		  else
		    
		    if geneLoc=0 then 'adding new name
		      feature.FeatureText=Upstream+lineend+"/gene="+chr(34)+newGeneName+chr(34)
		      
		    else
		      feature.FeatureText=Upstream+newGeneName+Downstream
		    end if
		  end if
		  
		  FillFeatureProperties(Feature,feature.FeatureText)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SaveCheck() As boolean
		  'returns true if the file is saved or the user pressed "Don't save"
		  'returns false if the save is cancelled
		  if GenomeFile=Nil then return true
		  
		  If GenomeChanged then
		    Dim d as New MessageDialog  //declare the MessageDialog object
		    Dim b as MessageDialogButton //for handling the result
		    d.icon=MessageDialog.GraphicCaution   //display warning icon
		    d.ActionButton.Caption=kSave
		    d.CancelButton.Visible=True     //show the Cancel button
		    d.CancelButton.Caption=kCancel
		    d.AlternateActionButton.Visible=True   //show the "Don't Save" button
		    
		    'the if block below only work if option was pressed together with command-Q (almost useless)
		    if keyboard.AsyncOptionKey then
		      d.AlternateActionButton.Caption=kSaveNone
		    else
		      d.AlternateActionButton.Caption=kDontSave
		    end if
		    d.Message=kSaveChanges+me.title+"?"
		    'd.Explanation="If you don't save, your changes will be lost. "
		    
		    b=d.ShowModalwithin(self)     //display the dialog
		    Select Case b //determine which button was pressed.
		    Case d.ActionButton
		      //user pressed Save
		      'prompt for file name and save
		      'dim f as folderitem
		      'f=GetSaveFolderItem("GenBank",GenomeFile.Name)
		      '
		      'if f<>nil then
		      'SaveGenBankFile(f)
		      SaveGenBankFile(GenomeFile)
		      GenomeChanged=false
		      self.IsModified=false
		      return true
		      'else
		      'return false
		      'end if
		      
		      
		    Case d.AlternateActionButton
		      //user pressed Don't Save
		      'if d.AlternateActionButton.Caption=kSaveNone then
		      'SaveNone=true
		      'end
		      return true
		    Case d.CancelButton
		      Return false //cancel the quit
		    End select
		  else
		    return true
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SaveGenBankFile(f as folderitem)
		  dim stream as TextOutputStream = TextOutputStream.Create(f)
		  dim m,n as integer
		  
		  
		  
		  if stream<>nil then
		    'write the header:
		    stream.Write(RTrim(Genome.Description))
		    stream.Write(LineEnd)
		    'write source:
		    if gbkSource<>"" then
		      dim aline as string
		      'aline="     "+NthField(gbkSource,LineEnd,1)
		      aline=NthField(gbkSource,LineEnd,1)
		      'write feature coordinates:
		      stream.WriteLine(aline)
		      for m=2 to CountFields(gbkSource,LineEnd)
		        aline="                     "+NthField(gbkSource,LineEnd,m)
		        stream.WriteLine(aline)
		      next
		    end if
		    'write features
		    for n=1 to ubound(genome.features)
		      'write feature coordinates:
		      stream.WriteLine("     "+NthField(genome.features(n).FeatureText,LineEnd,1))
		      for m=2 to CountFields(genome.features(n).FeatureText,LineEnd)
		        stream.WriteLine("                     "+NthField(genome.features(n).FeatureText,LineEnd,m))
		      next
		    next 'n
		    
		    'write formatted sequence:
		    stream.WriteLine("ORIGIN")
		    stream.Write("        ") '8 missing spaces
		    stream.Write(FormattedSequence)
		    
		    stream.close
		    
		  else
		    msgbox "Couldn't save file."
		  end if
		  
		  
		  Exception err
		    ExceptionHandler(err,"GenomeWin:SaveGenBankFile")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SaveGenome()
		  if GenomeFile<>Nil then
		    SaveGenBankFile(GenomeFile)
		    GenomeChanged=false
		    self.IsModified=false
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Search4sequence(query as string)
		  dim n,coord as integer
		  
		  'deselect other things
		  DeselectShapes(Seq.map)
		  
		  if NOT topStrandSearched then
		    'search top strand
		    n=instr(SearchPosition+1,genome.sequence,query)
		    if n>0 then
		      'set the scrollbar:
		      HScrollBar.value=n
		      
		      topstrand=true
		      
		      FeatureLeft=n-GBrowseShift
		      FeatureRight=n-GBrowseShift+len(query)
		      
		      'HighlightColour=HighlightColor        'return to default color
		      TextMap(FeatureLeft,FeatureRight)
		      
		      'add selection highlight:
		      UpdateMapCanvasSelection
		      
		      SearchPosition=n
		    else
		      topStrandSearched=true
		      SearchPosition=0
		    end if
		  end if
		  
		  if topStrandSearched then
		    'search bottom strand
		    if genome.RCsequence="" then
		      genome.RCsequence=ReverseComplement(genome.Sequence)
		    end if
		    n=instr(SearchPosition+1,genome.RCsequence,query)
		    dim gl as integer
		    gl=len(genome.RCsequence)
		    if n>0 then
		      'set the scrollbar:
		      HScrollBar.value=gl-n+2
		      
		      topstrand=false
		      'coord=n+len(query)/2
		      'ExtractFragment(coord-Genomewin.DisplayInterval/2,coord+Genomewin.DisplayInterval/2)
		      FeatureLeft=gl-n-GBrowseShift-len(query)+2
		      FeatureRight=gl-n-GBrowseShift+2
		      dim fl,fr as integer
		      fl=FeatureLeft
		      fr=FeatureRight
		      'HighlightColour=HighlightColor        'return to default color
		      TextMap(FeatureLeft,FeatureRight)
		      
		      'add selection highlight:
		      UpdateMapCanvasSelection
		      
		      SearchPosition=n
		    else
		      topStrandSearched=false
		      SearchPosition=0
		    end if
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Search4text(query as string)
		  'search for text within feature table
		  
		  dim m,n,u,coord As Integer
		  dim ft as GBFeature
		  dim genomeFtext as string
		  
		  u=ubound(Genome.Features)
		  
		  ''speed things up:
		  '#pragma BackgroundTasks false
		  '#pragma BoundsChecking false
		  '#pragma NilObjectChecking false
		  '#pragma StackOverflowChecking false
		  
		  for n=SearchPosition+1 to u
		    ft=Genome.Features(n)
		    if instrB(ft.FeatureText,query)>0 then
		      SearchPosition=n
		      'show the feature within genome context
		      coord=(ft.start+ft.Finish)/2
		      ExtractFragment(coord-Genomewin.DisplayInterval/2,coord+Genomewin.DisplayInterval/2)
		      'set the scrollbar:
		      Genomewin.HScrollBar.value=coord
		      
		      'find the feature number within the displayed fragment
		      genomeFtext=ft.FeatureText
		      for m=1 to UBound(seq.Features)
		        ft=Seq.Features(m)
		        if ft.FeatureText=genomeFtext then
		          SelectFeature(m)
		          exit
		        end if
		      next
		      exit
		    else
		      SearchPosition=0 'FindAgain resumes from the beginning
		    end if
		  next
		  
		  Exception err
		    ExceptionHandler(err,"GenomeWin:Search4text")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SearchAction()
		  Dim n As Integer
		  
		  
		  // Switch focus from Search field to the map:
		  MapCanvas.SetFocus
		  
		  SearchPosition=0
		  
		  query=trim(query)
		  if query<>"" then
		    'detect if query is sequence, coordinate or plain text
		    
		    if left(query,1)=chr(34) then
		      if right(query,1)=chr(34) then
		        'search for quoted text
		        query=mid(query,2,len(query)-2)
		        Search4text(query)
		      end if
		    elseif isACGT(query) then
		      topStrandSearched=false
		      Search4sequence(query)
		    elseif isNumeric(query) then
		      n=val(query)
		      'ExtractFragment(n-DisplayInterval/2,n+DisplayInterval/2)
		      'set the scrollbar:
		      HScrollBar.value=n 'Extracts fragment too
		    elseif countfields(query,"-")=2 then 'putative seq range
		      dim leftI, rightI as integer
		      if isNumeric(NthField(query,"-",1)) then
		        leftI=val(NthField(query,"-",1))
		        if isNumeric(NthField(query,"-",2)) then
		          rightI=val(NthField(query,"-",2))
		          
		          'select sequence range:
		          SelectSeqRange(leftI,rightI)
		        else
		          Search4text(query)
		        end if
		      else
		        Search4text(query)
		      end if
		      
		    else
		      if countfields(query,"..")=2 then 'putative seq range, GenBank-style range separator
		        dim leftI, rightI as integer
		        if isNumeric(NthField(query,"..",1)) then
		          leftI=val(NthField(query,"..",1))
		          if isNumeric(NthField(query,"..",2)) then
		            rightI=val(NthField(query,"..",2))
		            
		            'select sequence range:
		            SelectSeqRange(leftI,rightI)
		          else
		            Search4text(query)
		          end if
		        else
		          Search4text(query)
		        end if
		      else
		        Search4text(query)
		      end if
		    end if
		  else
		    'beepp
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SearchLiterature(FromContextualMenu as boolean)
		  Dim FtNo As Integer
		  
		  If FromContextualMenu Then
		    FtNo=ContextFeature
		  Else
		    FtNo=selFeatureNo
		  End If
		  
		  If seq.Features(FtNo).type="CDS" Then
		    'extract translation from feature table if present
		    '(takes care of frameshifts)
		    SelProtTranslation=NthField(seq.Features(FtNo).FeatureText,"/translation="+Chr(34),2)
		    SelProtTranslation=NthField(SelProtTranslation,Chr(34),1)
		    SelProtTranslation=ReplaceAll(SelProtTranslation,EndOfLine.unix,"")
		    
		    // Search here!
		    Dim URL As String
		    
		    URL="https://papers.genomics.lbl.gov/cgi-bin/litSearch.cgi?query="+SelProtTranslation+"&Search=Search"
		    If WebBrowserWin.Title="" Then
		      WebBrowserWin.Title="PaperBlast"
		    End If
		    WebBrowserWin.show
		    WebBrowserWin.AddNewTab.LoadURL(url)
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SelChange()
		  dim p as picture
		  dim m,n as integer
		  
		  p=Seq.Map
		  
		  ////if editor.ScrollPosition<>Currentscrollposition then
		  ////CurrentScrollPosition=Editor.ScrollPosition
		  ////end
		  
		  if  NOT Editorlock then
		    
		    
		    
		    ////if editor.selLength>0 then
		    
		    if seq.map<>nil then
		      UpdateMapCanvasSelection
		    end
		    ////end
		    
		    
		    'clear highlight of the selected features:
		    if p<>nil then
		      m= p.Objects.Count-1
		      for n=0 to m
		        if p.Objects.Item(n) IsA cClickableShape then
		          cClickableShape(p.Objects.Item(n)).selected=false
		          cClickableShape(p.Objects.Item(n)).fillColor=cClickableShape(p.Objects.Item(n)).Colour
		        end
		      next
		    end
		  end
		  UpdateSelRange
		  
		  'EnableMenuItems 'to properly enable menus
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SelectAll()
		  'Editor.SelStart=0
		  'Editor.SelLength=seq.length
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SelectFeature(SelFeatureNo as integer)
		  
		  
		  'deselect other things
		  DeselectShapes(Seq.map)
		  
		  'Select Sequence in the TextMap pane:
		  'HighlightColour=Seq.Features(selFeatureNo).linShape.Colour <-- changing highlight colour wasn't a good idea
		  if Seq.Features(selFeatureNo).complement  then
		    FeatureLeft=Seq.Features(selFeatureNo).start-Seq.Features(selFeatureNo).length+1
		    FeatureRight=FeatureLeft+Seq.Features(selFeatureNo).length-1
		    topstrand=false
		    'TextMap(FeatureRight,FeatureLeft)
		    TextMap(FeatureLeft,FeatureRight)
		  else
		    FeatureLeft=Seq.Features(selFeatureNo).start
		    FeatureRight=FeatureLeft+Seq.Features(selFeatureNo).length
		    topstrand=true
		    TextMap(FeatureLeft,FeatureRight)
		  end
		  
		  'Change selected feature colour
		  cClickableShape(Seq.Map.Objects.Item(selFeatureNo*2)).toggleSelection
		  
		  'add selection highlight:
		  UpdateMapCanvasSelection
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SelectSeqRange(leftI as integer, rightI as integer)
		  dim n,coord as integer
		  
		  'deselect other things
		  DeselectShapes(Seq.map)
		  
		  
		  'set the scrollbar:
		  HScrollBar.value=leftI '(leftI+rightI)/2
		  
		  topstrand=true
		  
		  FeatureLeft=leftI-GBrowseShift
		  FeatureRight=rightI-GBrowseShift+1
		  
		  'HighlightColour=HighlightColor        'return to default color
		  TextMap(FeatureLeft,FeatureRight)
		  
		  'add selection highlight:
		  UpdateMapCanvasSelection
		  
		  SearchPosition=leftI
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setMapCanvasScrollers()
		  'out=str(minX)+";"+str(maxX)+";"+str(minY)+";"+str(maxY)
		  if seq.map<>nil then
		    dim mapbounds As String = GetMapBounds(seq.map.objects)
		    dim maxX, maxY, minX, minY, sourceW, sourceH as integer
		    
		    mapbounds = GetMapBounds(seq.map.objects)
		    minX=Val(NthField(mapbounds,";",1))
		    maxX=Val(NthField(mapbounds,";",2))
		    minY=Val(NthField(mapbounds,";",3))
		    maxY=Val(NthField(mapbounds,";",4))
		    sourceW=MaxX-minX
		    sourceH=MaxY-minY
		    
		    if Seq.map<>nil then
		      '
		      'if maxX<=MapCanvas.width then
		      'MapScrollerH.Maximum=0
		      'else
		      'MapScrollerH.Maximum=100
		      'MapScrollerH.PageStep=100*MapCanvas.width/sourceW
		      'MapScrollerH.LineStep=MapScrollerH.PageStep/4
		      'end if
		    end if
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetScale(NewScale as double)
		  dim oldscale as double
		  dim n,m,dumm As Integer
		  dim map As Group2D
		  
		  if seq.circular then
		    map=seq.Cmap
		  else
		    map=seq.Lmap
		  end
		  
		  dumm=DeselectNames(seq.map) 'workaround to prevent scaling problem with selrects of selected (RE)names
		  oldscale=map.Scale
		  
		  map.scale=newscale
		  
		  if seq.circular then
		    seq.CScale=newscale
		  else
		    seq.LScale=newscale
		  end
		  
		  'm=map.count-1
		  'for n=0 to m
		  'if  map.Item(n) IsA cName then
		  'cName(map.Item(n)).selrect.scale=newscale
		  'cName(map.Item(n)).selrect.X=cName(map.Item(n)).selrect.X*newscale/oldscale
		  'cName(map.Item(n)).selrect.Y=cName(map.Item(n)).selrect.Y*newscale/oldscale
		  'end
		  'next
		  
		  SetScrollbars
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetScrollbar()
		  HScrollBarCodeLock=true
		  HScrollBar.Maximum=LenB(GenomeWin.Genome.sequence)
		  HScrollBar.Minimum=1
		  HScrollBar.PageStep=GenomeWin.DisplayInterval*3/4
		  HScrollBar.LineStep=GenomeWin.DisplayInterval/10
		  HScrollBarCodeLock=false
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetScrollbars()
		  'set scrollbar values and position
		  dim max as integer
		  if seq.map<>Nil then
		    max=100*seq.map.objects.scale
		    'PercentBox.text=str(Max)+" %"
		  end if
		  
		  'if usesOverlayScrollbars then
		  'MapScrollerV.left=self.width
		  'MapCanvas.width=self.width
		  'else
		  MapCanvas.width=self.width-16
		  'end if
		  
		  setMapCanvasScrollers
		  
		  'MapScrollerH.enabled=true
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowGenomeStart()
		  ExtractFragment(1,10000)
		  SegmentedControl1.Enabled=false
		  TextMap(0,0)
		  Show
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowHit()
		  SelFeatureNo=0
		  
		  SegmentedControl1.Visible=true
		  SegmentedControl1.Enabled=true
		  ExtractFragment(HmmHits(CurrentHit)-DisplayInterval/2,HmmHits(CurrentHit)+DisplayInterval/2)
		  FeatureBox.visible=true
		  FeatureBox.Caption=HmmHitDescriptions(CurrentHit)
		  Featurebox.Value=HmmHitChecked(currentHit)
		  
		  HScrollBarCodeLock=true
		  HScrollBar.Value=HmmHits(CurrentHit)
		  HScrollBarCodeLock=false
		  
		  'determine the distance of the left edge of displayed fragment from start:
		  FeatureLeft=Val(NthField(HmmHitDescriptions(CurrentHit),":",1))-GBrowseShift
		  FeatureRight=Val(NthField(NthField(HmmHitDescriptions(CurrentHit)," ",1),":",2))-GBrowseShift+1
		  
		  if instr(HmmHitDescriptions(CurrentHit),"(+)")>0 then
		    topstrand=true
		  else
		    topstrand=false
		  end if
		  
		  'if instr(HmmHitDescriptions(CurrentHit),"(+)")>0 then
		  'FeatureLeft=Val(NthField(HmmHitDescriptions(CurrentHit),":",1))-GBrowseShift
		  'FeatureRight=Val(NthField(NthField(HmmHitDescriptions(CurrentHit)," ",1),":",2))-GBrowseShift+1
		  'topstrand=true
		  'else
		  'FeatureRight=Val(NthField(HmmHitDescriptions(CurrentHit),":",1))-GBrowseShift
		  'FeatureLeft=Val(NthField(NthField(HmmHitDescriptions(CurrentHit)," ",1),":",2))-GBrowseShift+1
		  'topstrand=false
		  'end if
		  '
		  
		  
		  'need to set the correct highlightColour (according to feature being displayed) here
		  
		  me.TextMap(FeatureLeft,FeatureRight)
		  UpdateMapCanvas
		  UpdateMapCanvasSelection
		  me.Show
		  MapCanvas.setfocus
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SkimHits()
		  'skimming through the hits
		  
		  'HighlightColour=HighlightColor 'reset to avoid feature colours
		  '#if TargetWindows
		  'HighlightColour=&c66CCFF00
		  '#endif
		  
		  
		  if Keyboard.AsynckeyDown(&h7C) OR Keyboard.AsynckeyDown(&h7B) then
		    if CurrentHit > 0 then
		      if Keyboard.AsynckeyDown(&h7C) then 'Right
		        if CurrentHit<ubound(GenomeWin.HmmHits) then
		          CurrentHit=CurrentHit+1
		        else
		          'beep
		        end if
		      elseif Keyboard.AsynckeyDown(&h7B) then 'Left
		        if CurrentHit>1 then
		          CurrentHit=CurrentHit-1
		          leftarrow=true
		        else
		          'beep
		        end if
		      end if
		      
		      
		      Dim s0 As SegmentedControlItem = SegmentedControl1.Items( 0 )
		      Dim s1 As SegmentedControlItem = SegmentedControl1.Items( 1 )
		      Dim s2 As SegmentedControlItem = SegmentedControl1.Items( 2 )
		      if currentHit=1 then
		        s0.Enabled=false
		      else
		        s0.Enabled=true
		      end if
		      
		      if currentHit=ubound(GenomeWin.HmmHits) then
		        s2.Enabled=false
		      else
		        s2.Enabled=true
		      end if
		      
		      s1.Title=str(CurrentHit)+"/"+str(ubound(HmmHits))
		      
		      ShowHit
		    else
		      'beep
		    end if
		  end if
		  
		  
		  MapCanvas.setfocus
		  
		  Exception err
		    ExceptionHandler(err,"GenomeWin:SkimHits")
		    
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SpreadFeatures(firstF as integer, secF as integer, firstFtype as string, secFtype as string)
		  'spread overlapping features across rows according to
		  'preferred feature type order
		  
		  const PreferredOrder as string ="operon,other,regulatory,attenuator,terminator,protein_bind,promoter,CDS,gene" 'ascending preference
		  
		  dim pref1,pref2 as integer
		  
		  pref1=instr(PreferredOrder,firstFtype)
		  pref2=instr(PreferredOrder,secFtype)
		  
		  'dim firstRow as integer = seq.FtRow(firstF)
		  'dim secRow as integer = seq.FtRow(secF)
		  
		  if seq.FtRow(firstF)=seq.FtRow(secF) then
		    if Pref1>Pref2 then 'move second feature down
		      seq.FtRow(secF)=seq.FtRow(secF)+1
		      moving=true
		    else                'move first feature down
		      seq.FtRow(firstF)=seq.FtRow(firstF)+1
		      moving=true
		    end if
		  end if
		  
		  '
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub TextMap(HighlightFrom As integer, HighlightTo As integer)
		  'equal parameters mean no Highlight
		  'zeroes mean display start with no highlight
		  
		  dim  charsPerLine,  posInLine,lnl,cl,fullSize,halfSize As Integer
		  dim lineNum, j, k, l,m,n,tens, numb,numblen, arrScanEnd, CurrentY, SeqStart as integer
		  dim blocktoAdd,formattedSeq, rulerUnit,rulerLine, numberingLine,currNumb, spacer, revseq as string
		  dim sequence, REline, RElines(0), rl,nl, spaces(9), string2draw as string
		  dim HLtop,HLbottom,empty As boolean
		  dim REblock as MemoryBlock
		  dim bar as string
		  dim oldscroll as Double
		  dim ts as String
		  dim textmap as string
		  
		  'get the sequence to display:
		  charsPerLine=TMdisplay.width/TMCharWidth
		  if HighlightFrom=Highlightto then 'don't highlight anything
		    if HighlightFrom=0 then 'just show the start of the seq
		      SeqStart=1
		    else
		      SeqStart=HighlightFrom-charsPerLine/2+GBrowseShift
		    end if
		    sequence=midb(genome.Sequence,SeqStart,charsPerLine)
		    HLtop=false
		    HLbottom=false
		  elseif topstrand then 'highlight site on top strand
		    HLtop=true
		    SeqStart=(Highlightto+HighlightFrom)/2-charsPerLine/2+GBrowseShift
		    sequence=midb(genome.Sequence,SeqStart,charsPerLine)
		  else 'highlight site on bottom strand
		    HLbottom=true
		    SeqStart=(Highlightto+HighlightFrom)/2-charsPerLine/2+GBrowseShift
		    sequence=midb(genome.Sequence,SeqStart,charsPerLine)
		  end if
		  
		  
		  
		  revseq=Complement(Sequence)
		  
		  TextMap=DefineEncoding ("",Encodings.UTF8)
		  
		  'fill the spaces array 2 b used in numbering line:
		  nl=""
		  for n=9 downto 1
		    nl=nl+" "
		    spaces(n)=nl
		  next
		  
		  
		  rulerUnit="˙˙˙˙"+"'"+"˙˙˙˙"+"|"    // MAKE THE PROPER RULER FOR WINDOWS (WITH UNICODE SYMBOLS)
		  
		  tens=charsPerLine/10
		  
		  rulerLine="|" 'the start needs adjustment (rounding to tens)!
		  for n=1 to tens                                 'create ruler (500 bp max!)
		    rulerLine=rulerLine+rulerUnit
		  next
		  
		  
		  'translate the required frames and fill the array:
		  dim c as integer
		  c=seq.gCodeNo
		  
		  'Clear the background:
		  TextMapPic.Graphics.ForeColor=&cFFFFFF00
		  TextMapPic.Graphics.FillRect(0,0,TextMapPic.Width,TextMapPic.Height)
		  TextMapPic.Graphics.ForeColor=&c00000000
		  
		  'top frames:
		  CurrentY=TMLineHeight
		  DrawFrameColors(TextMapPic.Graphics,TranslateFrame(Sequence,1,c),CurrentY)
		  CurrentY=CurrentY+TMLineHeight
		  DrawFrameColors(TextMapPic.Graphics,TranslateFrame(Sequence,2,c),CurrentY)
		  CurrentY=CurrentY+TMLineHeight
		  DrawFrameColors(TextMapPic.Graphics,TranslateFrame(Sequence,3,c),CurrentY)
		  
		  'seq and ruler:
		  CurrentY=CurrentY+TMLineHeight
		  if HLtop then 'draw highlight rect:
		    TextMapPic.Graphics.ForeColor=HighlightColour
		    TextMapPic.Graphics.FillRect((HighlightFrom-SeqStart+GBrowseShift)*TMCharWidth,CurrentY-TMLineHeight+3,(HighlightTo-HighlightFrom)*TMCharWidth,TMLineHeight)
		    TextMapPic.Graphics.ForeColor=&c00000000
		  end if
		  TextMapPic.Graphics.DrawString(Sequence,0,CurrentY)
		  CurrentY=CurrentY+TMLineHeight
		  TextMapPic.Graphics.DrawString(RulerLine,0,CurrentY)
		  CurrentY=CurrentY+TMLineHeight
		  numberingline="         "
		  for n=1 to 50
		    currnumb=str(SeqStart+10*n)
		    'numblen=lenb(currnumb)
		    numberingline=numberingline+currnumb
		    'add required spacers (can speed this up by moving out of cycle!):
		    numberingline=numberingline+spaces(lenb(currnumb))
		  next
		  TextMapPic.Graphics.DrawString(numberingline,0,CurrentY)
		  CurrentY=CurrentY+TMLineHeight
		  if HLbottom then 'draw highlight rect:
		    TextMapPic.Graphics.ForeColor=HighlightColour
		    TextMapPic.Graphics.FillRect((HighlightFrom-SeqStart+GBrowseShift)*TMCharWidth,CurrentY-TMLineHeight+3,(HighlightTo-HighlightFrom)*TMCharWidth,TMLineHeight)
		    TextMapPic.Graphics.ForeColor=&c00000000
		  end if
		  TextMapPic.Graphics.DrawString(revseq,0,CurrentY)
		  
		  
		  'bottom frames:
		  CurrentY=CurrentY+TMLineHeight
		  DrawFrameColors(TextMapPic.Graphics,TranslateFrame(Sequence,4,c),CurrentY)
		  CurrentY=CurrentY+TMLineHeight
		  DrawFrameColors(TextMapPic.Graphics,TranslateFrame(Sequence,5,c),CurrentY)
		  CurrentY=CurrentY+TMLineHeight
		  DrawFrameColors(TextMapPic.Graphics,TranslateFrame(Sequence,6,c),CurrentY)
		  
		  'current TMdisplay.height=132
		  TMdisplay.Refresh(false)
		  
		  Exception err
		    ExceptionHandler(err,"GenomeWin:TextMap")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub TMDisplayAdjustment()
		  if TMdisplay.visible then
		    BrowserTabs.top=BrowserTabs.top+TMdisplay.height
		    'BrowserTabs.height=BrowserTabs.height-TMdisplay.height
		    BrowserPagePanel.top=BrowserPagePanel.top+TMdisplay.height
		    'BrowserPagePanel.height=BrowserPagePanel.height-TMdisplay.height
		    Splitter.top=Splitter.Top+TMdisplay.height
		  else
		    BrowserTabs.top=BrowserTabs.top-TMdisplay.height
		    'BrowserTabs.height=BrowserTabs.height+TMdisplay.height
		    BrowserPagePanel.top=BrowserPagePanel.top-TMdisplay.height
		    'BrowserPagePanel.height=BrowserPagePanel.height+TMdisplay.height
		    Splitter.top=Splitter.Top-TMdisplay.height
		  end if
		  BrowserTabs.height=self.height-BrowserTabs.top
		  BrowserPagePanel.height=self.height-BrowserTabs.top
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub updateMapCanvas()
		  Dim mapbounds As String
		  dim maxX, maxY,sourceW,sourceh,minX, minY as integer
		  
		  
		  if seq.map<>nil then
		    mapbounds = GetMapBounds(seq.map.objects)
		    minX=Val(NthField(mapbounds,";",1))
		    maxX=Val(NthField(mapbounds,";",2))
		    minY=Val(NthField(mapbounds,";",3))
		    maxY=Val(NthField(mapbounds,";",4))
		    sourceW=MaxX-minX
		    sourceH=MaxY-minY
		  else
		    sourceW=MapCanvas.width
		    sourceH=Mapcanvas.Height
		    return
		  end if
		  
		  //create a picture we can draw to offscreen
		  if seq.map.objects.scale>1 then
		    MapCanvasPicture=new Picture(MapCanvas.width*seq.map.objects.scale, Mapcanvas.Height*seq.map.objects.scale,Screen(0).depth)
		  else
		    MapCanvasPicture=new Picture(MapCanvas.width, Mapcanvas.Height,Screen(0).depth)
		  end
		  
		  if MapCanvasPicture<>Nil then
		    //set the foreColor
		    MapCanvasPicture.graphics.foreColor=RGB(255,255,255) 'white
		    //draw the background
		    MapCanvasPicture.graphics.fillRect 0,0,MapCanvasPicture.width,MapCanvasPicture.height
		    
		    //draw the graph
		    if len(seq.Sequence)>0 then                'avoid crash with latest Xojo during dummy map initialisation 
		      MapCanvasPicture.graphics.drawPicture seq.map,dX,dY
		    end if
		    
		  else
		    msgbox "Not enough memory to load/create picture"
		  end
		  
		  MapCanvas.Invalidate
		  Exception err
		    ExceptionHandler(err,"GenomeWin:UpdateMapCanvas")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UpdateMapCanvasSelection()
		  dim p as picture
		  dim rs as RectShape
		  
		  p=seq.map
		  
		  'set the boolean for proper contextual menu construction
		  if FeatureLeft<0 then
		    AnythingSelected=false
		  elseif FeatureRight=FeatureLeft then
		    AnythingSelected=false
		  else
		    AnythingSelected=true
		  end if
		  
		  if p<>nil then
		    if featureleft=-1 then
		      RectShape(p.Objects.Item(0)).width=0
		    else
		      RectShape(p.Objects.Item(0)).width=abs(FeatureLeft-FeatureRight)/seq.bpPerPixel
		      p.Objects.Item(0).x=((FeatureLeft+FeatureRight)/2)/seq.bpPerPixel'*seq.map.Objects.Scale
		      rs=RectShape(p.Objects.Item(0))
		      
		    end if
		  end
		  
		  
		  if MapCanvas.Visible then
		    updateMapCanvas
		  end if
		  
		  UpdateSelRange
		  SelRange.Refresh
		  App.DoEvents
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UpdateSelRange()
		  dim n as integer
		  n=Genome.length
		  
		  
		  if FeatureLeft>0 then
		    if FeatureLeft<FeatureRight then
		      SelRange.text=str(FeatureLeft+GBrowseShift)+"-"+str(FeatureRight+GBrowseShift-1)+":"+str(abs(FeatureRight-FeatureLeft))
		    else
		      SelRange.text=str(FeatureLeft+GBrowseShift-1)+"-"+str(FeatureRight+GBrowseShift)+":"+str(abs(FeatureRight-FeatureLeft))
		      
		    end if
		  else
		    if seq.SelLength>0 then
		      SelRange.text=str(seq.selstart+GBrowseShift)+"-"+str(seq.selstart+seq.sellength+GBrowseShift-1)+":"+str(seq.sellength)
		    else
		      SelRange.text=""
		    end if
		    
		  end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ZoomMapIn()
		  
		  dim dummy,n,m as integer
		  dim oldscale,newscale as double
		  
		  dummy=deselectnames(seq.map)
		  oldscale=seq.map.Objects.Scale
		  m=CountFields(Scales,",")
		  for n=1 to m
		    if val(NthField(Scales, ",", n))>seq.map.Objects.Scale*100 then
		      newscale=val(NthField(Scales, ",", n))/100
		      exit
		    end
		    
		  next
		  if n=m then
		    newscale=8
		  end
		  
		  SetScale newscale 'SetScale is the same for ZoomIn & ZoomOut
		  
		  
		  UpdateMapCanvas
		End Sub
	#tag EndMethod


	#tag Note, Name = 2 do
		+- correct search for short text ("tag") that looks like sequence
		   (currently a double quote anywhere within query leads to text search)
		- drag-select sequence in details pane
		- Memorise selection when scrolling genome
		-+ Sort hits before showing 'em (sorting done incorrectly)
		+- Proper sequence display with reading frames
		- add option to open genome browser after genome scan (with the list of all sites)
		
	#tag EndNote


	#tag Property, Flags = &h0
		AnyHitDeselected As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		AnyNameClicked As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		AnythingSelected As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		bppp2 As double
	#tag EndProperty

	#tag Property, Flags = &h0
		ccolumn As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		CDDsearch As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		CmapDx As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		CmapDy As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		CMpointedFeature As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		ConfigButtonType As string
	#tag EndProperty

	#tag Property, Flags = &h0
		ContentsChanged As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		ContextFeature As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		ContextProteinName As String
	#tag EndProperty

	#tag Property, Flags = &h0
		CurrentHit As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		CurrentScrollPosition As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		CX(0) As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		CY(0) As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		DirDown As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		DisplayInterval As Integer = 10000
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected DisplayToolTips As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Document As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h21
		Private DoubleClickedAlready As boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected DragStartY As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		dx As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		dy As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		editingFeature As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		EditorLock As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		EditorToolTip As string
	#tag EndProperty

	#tag Property, Flags = &h0
		EnableEdit As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		featuredeleted As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		FeatureLeft As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		FeatureRight As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		FindMode As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		FirstDrag As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		FormattedSequence As String
	#tag EndProperty

	#tag Property, Flags = &h0
		FoundCoords(0) As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		FoundSitesNumber As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		FoundTargetSize As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		gbkSource As string
	#tag EndProperty

	#tag Property, Flags = &h0
		GBOpened As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		genCode As gCode
	#tag EndProperty

	#tag Property, Flags = &h0
		Genome As cSeqObject
	#tag EndProperty

	#tag Property, Flags = &h0
		GenomeChanged As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		GenomeFile As Folderitem
	#tag EndProperty

	#tag Property, Flags = &h0
		GraphExists As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		Header As String
	#tag EndProperty

	#tag Property, Flags = &h0
		HmmHitChecked(0) As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		HmmHitDescriptions(0) As String
	#tag EndProperty

	#tag Property, Flags = &h0
		HmmHitNames(0) As String
	#tag EndProperty

	#tag Property, Flags = &h0
		HmmHits(0) As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		hmmsearchResultFile As folderitem
	#tag EndProperty

	#tag Property, Flags = &h0
		HScrollBarCodeLock As Boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected JustAddedGene As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		LastAngle As double
	#tag EndProperty

	#tag Property, Flags = &h0
		LastX As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		LastX2 As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		LastY As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		LastY2 As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		leftarrow As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		LmapDx As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		LmapDy As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		LX(0) As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		LY(0) As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		MapCanvasDragLock As boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected MapCanvasPict As picture
	#tag EndProperty

	#tag Property, Flags = &h0
		MapCanvasPicture As Picture
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected MapMode As string
	#tag EndProperty

	#tag Property, Flags = &h0
		MapRasterPic As Picture
	#tag EndProperty

	#tag Property, Flags = &h0
		moving As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		NameX As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		NameXL As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		NameY As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		NameYL As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		NewColor As color
	#tag EndProperty

	#tag Property, Flags = &h0
		NewFeature As boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected Newseq As string
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected Oldseq As string
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected OldY As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Opening As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		OperOnOptions As string
	#tag EndProperty

	#tag Property, Flags = &h0
		ORFclickedDir As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		ORFCoords(0,0) As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		ORFCurrCoord As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		ORFMap1 As picture
	#tag EndProperty

	#tag Property, Flags = &h0
		ORFMapScale As double = 1
	#tag EndProperty

	#tag Property, Flags = &h0
		ORFo As Group2d
	#tag EndProperty

	#tag Property, Flags = &h0
		PageSetup As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Query As string
	#tag EndProperty

	#tag Property, Flags = &h0
		RE1 As string
	#tag EndProperty

	#tag Property, Flags = &h0
		RE1cutposition As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		RE1overhang As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		RE1pos As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		RE1targetsize As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		RE2 As string
	#tag EndProperty

	#tag Property, Flags = &h0
		RE2cutposition As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		RE2overhang As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		RE2pos As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		RE2targetsize As Integer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected RedoSeq As string
	#tag EndProperty

	#tag Property, Flags = &h0
		RedundanciesPresent As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		rrow As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		rw As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		rx As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		ry As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Scales As string = "25,33,50,75,100,125,150,200,300,400,800"
	#tag EndProperty

	#tag Property, Flags = &h0
		SearchPosition As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		SelColor As color
	#tag EndProperty

	#tag Property, Flags = &h0
		SelectingREfragment As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		selFeatureNo As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected SelLength As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		SelNameNo As Integer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected SelNeedsRestoring As boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected SelProtTranslation As String
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected SelStart As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Seq As cSeqObject
	#tag EndProperty

	#tag Property, Flags = &h0
		SiteNo As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Sites(0) As GBFeature
	#tag EndProperty

	#tag Property, Flags = &h0
		sTBButtons As string = ",5,6,7,9,0,10,12,1,17,18,2,19,20,21,22,23,24,3,14,"
	#tag EndProperty

	#tag Property, Flags = &h0
		TextHeight As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		TextMapPic As Picture
	#tag EndProperty

	#tag Property, Flags = &h0
		TFfamilyDesc As String
	#tag EndProperty

	#tag Property, Flags = &h0
		TMCharWidth As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		TMLineHeight As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		ToolTipBlock As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		ToolTipX As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		ToolTipY As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		topstrand As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		topStrandSearched As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		ttip As string
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected tttext As string
	#tag EndProperty

	#tag Property, Flags = &h0
		TTx As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		TTy As Integer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected X1 As integer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected Y1 As integer
	#tag EndProperty


	#tag Constant, Name = kTextImportWarning, Type = String, Dynamic = True, Default = \"Importing sequence from plain text file: all valid IUB nucleotide symbols will be imported. Please check the resulting sequence", Scope = Public
		#Tag Instance, Platform = Any, Language = ru, Definition  = \"\xD0\xA2\xD0\xB5\xD0\xBA\xD1\x81\xD1\x82\xD0\xBE\xD0\xB2\xD1\x8B\xD0\xB9 \xD1\x84\xD0\xB0\xD0\xB9\xD0\xBB: \xD0\xB2\xD1\x81\xD0\xB5 \xD0\xBB\xD0\xB5\xD0\xB3\xD0\xB0\xD0\xBB\xD1\x8C\xD0\xBD\xD1\x8B\xD0\xB5 IUB-\xD0\xBA\xD0\xBE\xD0\xB4\xD1\x8B \xD0\xBD\xD1\x83\xD0\xBA\xD0\xBB\xD0\xB5\xD0\xBE\xD1\x82\xD0\xB8\xD0\xB4\xD0\xBE\xD0\xB2 \xD0\xB1\xD1\x83\xD0\xB4\xD1\x83\xD1\x82 \xD0\xB8\xD0\xBC\xD0\xBF\xD0\xBE\xD1\x80\xD1\x82\xD0\xB8\xD1\x80\xD0\xBE\xD0\xB2\xD0\xB0\xD0\xBD\xD1\x8B. \xD0\x9F\xD0\xBE\xD0\xB6\xD0\xB0\xD0\xBB\xD1\x83\xD0\xB9\xD1\x81\xD1\x82\xD0\xB0\x2C \xD0\xBF\xD1\x80\xD0\xBE\xD0\xB2\xD0\xB5\xD1\x80\xD1\x8C\xD1\x82\xD0\xB5 \xD1\x80\xD0\xB5\xD0\xB7\xD1\x83\xD0\xBB\xD1\x8C\xD1\x82\xD0\xB0\xD1\x82."
		#Tag Instance, Platform = Any, Language = be, Definition  = \"\xD0\xA2\xD1\x8D\xD0\xBA\xD1\x81\xD1\x82\xD0\xB0\xD0\xB2\xD1\x8B \xD1\x84\xD0\xB0\xD0\xB9\xD0\xBB: \xD1\x83\xD1\x81\xD0\xB5 \xD0\xBB\xD0\xB5\xD0\xB3\xD0\xB0\xD0\xBB\xD1\x8C\xD0\xBD\xD1\x8B\xD1\x8F IUB-\xD0\xBA\xD0\xBE\xD0\xB4\xD1\x8B \xD0\xBD\xD1\x83\xD0\xBA\xD0\xBB\xD0\xB5\xD0\xB0\xD1\x82\xD1\x8B\xD0\xB4\xD0\xB0\xD1\x9E \xD0\xB1\xD1\x83\xD0\xB4\xD1\x83\xD1\x86\xD1\x8C \xD1\x96\xD0\xBC\xD0\xBF\xD0\xB0\xD1\x80\xD1\x82\xD0\xB0\xD0\xB2\xD0\xB0\xD0\xBD\xD1\x8B. \xD0\x9A\xD0\xB0\xD0\xBB\xD1\x96 \xD0\xBB\xD0\xB0\xD1\x81\xD0\xBA\xD0\xB0\x2C \xD0\xBF\xD1\x80\xD0\xB0\xD0\xB2\xD0\xB5\xD1\x80\xD1\x86\xD0\xB5 \xD0\xB2\xD1\x8B\xD0\xBD\xD1\x96\xD0\xBA."
	#tag EndConstant

	#tag Constant, Name = TBstring, Type = String, Dynamic = False, Default = \"", Scope = Protected
	#tag EndConstant


#tag EndWindowCode

#tag Events MapCanvas
	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  
		  g.DrawPicture(MapCanvasPicture,0,0)
		  
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  Dim n,topObj,m,featureCount As Integer
		  dim AnyObjectClicked, RetValue as Boolean
		  dim p as picture
		  
		  me.setfocus 'to switch focus away from the SearchField
		  
		  ToolTipBlock=false
		  ToolTipTimer.Mode=1
		  
		  
		  
		  if IsContextualClick then
		    return false
		  else
		    ToolTipTimer.Mode=1
		  end if
		  
		  NewFeature=False
		  'scroll adjustment:
		  x=x-dx
		  y=y-dy
		  
		  
		  selFeatureNo=0
		  
		  LastX=X
		  LastX2=X
		  LastY=Y
		  LastY2=Y
		  
		  RetValue=False
		  FirstDrag=true
		  SelNameNo=0
		  
		  AnyObjectClicked=false
		  AnyNameClicked=false
		  p=Seq.Map
		  topObj= p.Objects.Count-1
		  featureCount=ubound(Seq.features)
		  
		  'Check if any object is clicked:
		  for n=1 to topObj 'skip zero object that contains selection
		    'second (or more) obj. may contain the ruler
		    if p.Objects.Item(n) IsA cClickableShape then
		      if cClickableShape(p.Objects.Item(n)).contains(X,Y) then
		        
		        
		        'p.Objects(0) is a selection rectangle
		        'p.Objects(1) is a sequence line (or circle) => subtract 1 below to get correct feature number
		        
		        selFeatureNo=n/2'+1 'correction for feature names
		        
		        if selFeatureNo>featureCount then selFeatureNo=featureCount  'correction for the complete site (unnecessary?)
		        
		        
		        
		        AnyObjectClicked=true
		        
		        SelectFeature(SelFeatureNo)
		        
		        exit
		      else
		        cClickableShape(p.Objects.Item(n)).selected=false
		        cClickableShape(p.Objects.Item(n)).fillColor=cClickableShape(p.Objects.Item(n)).Colour
		      end
		    end
		  next
		  
		  'Clear previous selection:
		  if AnyObjectClicked=false then
		    NewFeature=true
		    seq.SelLength=0
		    featureleft=-1     'to zero selrange
		    RetValue=True 'to trigger MouseDrag
		    
		    topobj=DeselectNames(p)
		    
		    RectShape(p.Objects.Item(0)).width=0
		    
		    for n=1 to p.Objects.Count-1
		      if p.Objects.Item(n) IsA cClickableShape then
		        cClickableShape(p.Objects.Item(n)).fillcolor=cClickableShape(p.Objects.Item(n)).colour
		      end
		    next
		  end
		  
		  
		  updateMapCanvas
		  UpdateMapCanvasSelection
		  
		  
		  return RetValue
		  Exception err
		    ExceptionHandler(err,"GenomeWin:MapCanvas:Mousedown")
		    
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseDrag(X As Integer, Y As Integer)
		  Dim p As picture
		  dim w,q,deltaX,deltaY as integer
		  dim arcAngle, currentAngle as double
		  dim selShape As ArcShape
		  'dim f as figureshape
		  'dim RE as REName
		  'dim GE as GeneName
		  'dim cN as cName
		  
		  'scroll adjustment:
		  x=x-dx
		  y=y-dy
		  
		  p=Seq.Map
		  
		  deltaX=X-LastX2
		  deltaY=Y-LastY2
		  
		  
		  'modification may be needed for when the user extends selection
		  'one way first and then moves in other direction past the original start of selection
		  
		  p.Objects.Item(0).FillColor=SelColor
		  
		  
		  
		  'if seq.Circular then  'circular map
		  'if SelNameNo>0 then 'drag cName object
		  'if EnableEdit then
		  'cN=new cName
		  'cN=cName(p.Objects.Item(SelNameNo))
		  '
		  'if MapCanvasDragLock then 'stick label positions to the fixed radius (more or less)
		  ''just get the angle and measure the fixed distance along the radius:
		  'q=cn.getQuadrant(seq.centerX, seq.centerY, X, Y)
		  'arcAngle=ATan((X-seq.centerX)/(seq.centerY-Y))
		  'select case q
		  'case 1
		  'cN.X=seq.centerX+sin(arcAngle)*(seq.radius+40)
		  'CN.Y=seq.centerY-cos(arcAngle)*(seq.radius+40)
		  'case 2
		  'cN.X=seq.centerX-sin(arcAngle)*(seq.radius+40)
		  'CN.Y=seq.centerY+cos(arcAngle)*(seq.radius+40)
		  'case 3
		  'cN.X=seq.centerX-sin(arcAngle)*(seq.radius+40)
		  'CN.Y=seq.centerY+cos(arcAngle)*(seq.radius+40)
		  'case 4
		  'cN.X=seq.centerX+sin(arcAngle)*(seq.radius+40)
		  'CN.Y=seq.centerY-cos(arcAngle)*(seq.radius+40)
		  'end
		  'cN.selrect.x=cN.x -1
		  'cN.selrect.y=cN.y-cN.height/2 +2
		  'else 'drag the labels anywhere
		  'cN.x=cN.X+deltaX
		  'cN.Y=cN.Y+deltaY
		  'cN.CornerX=cN.CornerX+deltaX
		  'cN.selrect.X=cN.selrect.X+deltaX
		  'cN.CornerY=cN.CornerY+deltaY
		  'cN.selrect.Y=cN.selrect.Y+deltaY
		  'end
		  'if p.Objects.Item(SelNameNo) isa REname then
		  ''remove the old and draw new connecting line:
		  'p.Objects.Remove(SelNameNo+1)
		  'RE=New REName
		  'RE=REName(p.Objects.Item(SelNameNo))
		  're.GetAttachmentPoint
		  're.appendLine p.Objects,SelNameNo+1
		  'elseif p.Objects.Item(SelNameNo) isa GeneName then
		  'p.Objects.Remove(SelNameNo+1)
		  'GE=New GeneName
		  'GE=GeneName(p.Objects.Item(SelNameNo))
		  'GE.GetAttachmentPoint
		  'GE.appendLine p.Objects,SelNameNo+1
		  'end
		  'updateMapCanvas
		  '
		  'EnableSave true ' to enable saving the file
		  'end
		  'else 'change only selection
		  'selShape=ArcShape(p.Objects.Item(0))
		  'currentAngle=getAngle(X,Y)
		  'if currentAngle>lastAngle AND  LastAngle<0.7 AND currentAngle >5.5 then 'crossing zero when going counter clockwise
		  'selShape.ArcAngle=selShape.ArcAngle+currentAngle-LastAngle-twoPi
		  'elseif currentAngle<LastAngle AND LastAngle>5.5 AND currentAngle<0.7 then 'crossing zero when going clockwise
		  'selShape.ArcAngle=selShape.ArcAngle+currentAngle-LastAngle+twoPi
		  'else 'most of the time
		  'selShape.ArcAngle=selShape.ArcAngle+currentAngle-LastAngle
		  'end
		  'lastAngle=CurrentAngle
		  'updateMapCanvas
		  ''set selection in editor and seq object:
		  '
		  'end
		  '
		  'else 'linear map
		  'set selection coordinates:
		  'if SelNameNo>0 then 'drag cName object
		  'if EnableEdit then
		  'cn=new cName
		  'cn=cName(p.Objects.Item(SelNameNo))
		  'cN.x=cN.X+deltaX
		  'cN.selrect.x=cn.selrect.x+deltaX
		  'if NOT MapCanvasDragLock then
		  'cN.Y=cN.Y+deltaY
		  'cN.selrect.Y=cn.selrect.Y+deltaY
		  'end
		  'if p.Objects.Item(SelNameNo) isa REname then
		  ''remove the old and draw new connecting line:
		  'p.Objects.Remove(SelNameNo+1)
		  ''f=new FigureShape
		  ''f.Border=100
		  'RE=New REName
		  'RE=REName(p.Objects.Item(SelNameNo))
		  ''re.GetAttachmentPoint
		  're.appendLine p.Objects,SelNameNo+1
		  ''f.AddLine RE.baseX,RE.baseY,RE.middleX,RE.middleY
		  ''f.AddLine RE.selrect.X,RE.selrect.Y+RE.selrect.height/2+1,RE.middleX,RE.middleY
		  ''p.Objects.Insert SelNameNo+1, f
		  ''set selection to cut site:
		  'RectShape(p.Objects.Item(0)).X=REName(p.Objects.Item(SelNameNo)).baseX
		  'RectShape(p.Objects.Item(0)).width=0
		  'elseif  p.Objects.Item(SelNameNo) isa GeneName then
		  'p.Objects.Remove(SelNameNo+1)
		  'GE=New GeneName
		  'GE=GeneName(p.Objects.Item(SelNameNo))
		  'GE.appendLine p.Objects,SelNameNo+1
		  'RectShape(p.Objects.Item(0)).X=GeneName(p.Objects.Item(SelNameNo)).baseX
		  'RectShape(p.Objects.Item(0)).width=0
		  'end
		  '
		  '
		  'updateMapCanvas
		  '
		  'EnableSave true ' to enable saving the file
		  'end
		  '
		  ''set selection in editor and seq object:
		  '
		  'else  'grow or shrink selection
		  'LastX is the coord at mousedown
		  w=Abs(X-LastX)/2
		  if X>=LastX then
		    RectShape(p.Objects.Item(0)).X=LastX+w
		  else
		    RectShape(p.Objects.Item(0)).X=X+w
		  end
		  RectShape(p.Objects.Item(0)).width=Abs(X-LastX)
		  updateMapCanvas
		  'UpdateMapCanvasSelection
		  'set selection in editor and seq object:
		  
		  'end
		  'end
		  lastX2=x
		  lastY2=Y
		  'EditorLock=TRUE
		  Exception err
		    ExceptionHandler(err,"GenomeWin:MapCanvas:Mousedrag")
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseUp(X As Integer, Y As Integer)
		  
		  dim p as picture
		  dim w as integer
		  dim aa,sa,sa_pi as double
		  
		  'scroll adjustment:
		  x=x-dx
		  y=y-dy
		  
		  p=Seq.Map
		  
		  if SelNameNo=0 then 'no objects were clicked/dragged, so setting the selection
		    EditorLock=true
		    
		    'set selection coordinates:
		    p.Objects.Item(0).FillColor=SelColor
		    'if seq.circular then
		    'aa=arcshape(p.Objects.Item(0)).arcangle
		    'sa_pi=arcshape(p.Objects.Item(0)).startangle+halfpi
		    'if sa_pi>twopi then
		    'sa_pi=sa_pi-twopi
		    'end
		    'if aa>0 then
		    'Editor.SelStart=sa_pi*seq.bpPerRad
		    'else
		    'Editor.SelStart=(sa_pi+aa)*seq.bpPerRad
		    'end
		    'Editor.SelLength=ABS(aa)*seq.bpPerRad
		    '
		    'else
		    w=abs(LastX-X)
		    RectShape(p.Objects.Item(0)).width=w
		    if x>=LastX then
		      p.Objects.Item(0).x=LastX+w/2
		      'refreshrect LastX,0,w,height
		      seq.SelStart=(lastx)*seq.bpPerPixel
		    else
		      p.Objects.Item(0).x=X+w/2
		      
		      'refreshrect X,0,w,height
		      seq.SelStart=(x)*seq.bpPerPixel
		    end
		    
		    'need to set selection in the seq object too
		    seq.Sellength=w*seq.bpPerPixel
		    'end
		    if seq.SelLength>0 then
		      AnythingSelected=true
		    end if
		    
		    
		    'refreshrect 0,0,width,height
		    'me.graphics.DrawPicture Seq.Map,0,0 '<- crashes with RS2011r3! (and not needed any more)
		    'me.refresh(false)
		  else
		    'name clicked - remove selection highlight
		    
		    if  NOT SelectingREfragment then
		      RectShape(p.Objects.Item(0)).width=0
		    end
		    
		  end
		  'SelectingREfragment=false
		  updateMapCanvas
		  UpdateSelRange
		  EditorLock=false
		  Exception err
		    ExceptionHandler(err,"GenomeWin:MapCanvas:MouseUp")
		End Sub
	#tag EndEvent
	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  Dim n,topObj,m,featureCount,currentFeature As Integer
		  Dim p As picture
		  
		  ToolTipBlock=true
		  ToolTipTimer.Reset
		  Global.ToolTip.hide
		  ToolTipTimer.Mode=0
		  
		  p=Seq.Map
		  topObj= p.Objects.Count-1
		  featureCount=ubound(Seq.features)
		  ContextFeature=0
		  'check if the click is over a feature
		  dim dbg as string=""
		  For n=1 To topObj 'skip zero object that contains selection
		    if p.Objects.Item(n) IsA cClickableShape then
		      
		      if cClickableShape(p.Objects.Item(n)).contains(X,Y) then
		        ContextFeature=n/2
		      else
		        
		      end
		      
		    end
		  next
		  
		  
		  
		  if ContextFeature>0 then
		    If seq.Features(ContextFeature).type="CDS" Then
		      base.Append mItem(kCopyProtein)
		      base.Append mItem(kSearchLiterature)  'PaperBlast with this CDS sequence
		      'extract translation from feature table if present
		      '(takes care of frameshifts)
		      SelProtTranslation=NthField(seq.Features(ContextFeature).FeatureText,"/translation="+Chr(34),2)
		      SelProtTranslation=nthfield(SelProtTranslation,chr(34),1)
		      SelProtTranslation=ReplaceAll(SelProtTranslation,EndOfLine.unix,"")
		    else
		      base.Append mItem(kCopyDNA)
		    end if
		    base.Append mItem(kEditFeature)
		    
		    If seq.Features(ContextFeature).type="CDS" Or seq.Features(ContextFeature).type="gene" Then
		      base.Append mItem(kEditGene)
		    End If
		    
		    base.Append mItem(kRemoveFeature)
		    base.Append mItem(kRemoveFeatures)
		    
		    if seq.Features(ContextFeature).protein_id<>"" then
		      ContextProteinName=seq.Features(ContextFeature).protein_id
		    else
		      ContextProteinName=seq.Features(ContextFeature).name
		    end if
		    'Add a Separator
		    base.Append( New MenuItem( MenuItem.TextSeparator ) )
		    'hmmer & BLAST searches
		    if seq.Features(ContextFeature).type="CDS" then
		      'if previous search is still running, add menus as disabled
		      dim boo as boolean
		      boo=NOT SPSocket.IsConnected
		      base.Append mItem(kHmmerSearchSwissprot,boo)
		      boo=NOT UniProtSocket.IsConnected
		      base.Append mItem(kHmmerSearchUniprot,boo)
		      base.Append mItem(kCDsearch,true)
		      base.Append mItem(kBLASTPsearch+BLASTpDB,True)
		      base.Append mItem(kThreeSearches,True)
		    else
		      dim boo as boolean
		      boo=NOT BLASTSocket.IsConnected
		      base.Append mItem(kBLASTNsearch+BLASTnDB,boo)
		      base.Append mItem(kBLASTXsearch+BLASTpDB,boo)
		    end if
		    
		  else
		    if AnythingSelected then
		      'Add a Separator
		      base.Append( New MenuItem( MenuItem.TextSeparator ) )
		      'BLASTN search
		      'if previous search is still running, add menus as disabled
		      dim boo as boolean
		      boo=NOT BLASTSocket.IsConnected
		      base.Append mItem(kBLASTNsearch+BLASTnDB,boo)
		      base.Append mItem(kBLASTXsearch+BLASTpDB,boo)
		      
		      'new feature
		      base.Append( New MenuItem( MenuItem.TextSeparator ) )
		      base.Append mItem(kNewFeature)
		      
		    else
		      'plot-related commands
		      if ubound(Genome.ReadDepth1)>0 then
		        base.Append( New MenuItem( MenuItem.TextSeparator ) )
		        
		        if Genome.ScalePlotsSeparately then
		          base.Append mItem(kScalePlotsTogether)
		        else
		          base.Append mItem(kScalePlotsSeparately)
		        end if
		        base.Append mItem(kSetPlotScaleMax)
		        
		      end if
		      
		      
		    end if
		    
		  end
		  
		  
		End Function
	#tag EndEvent
	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  ToolTipBlock=False
		  'ToolTipTimer.Reset
		  ToolTipTimer.Mode=1
		  'ToolTip.hide
		  select case hititem.text
		  case kCopyProtein
		    CopyAA(true)
		  Case kSearchLiterature
		    SearchLiterature(True)
		  Case kCopyDNA
		    CopyDNA
		  Case kEditFeature
		    EditFeature(seq.Features(ContextFeature))
		  case kEditGene
		    EditGene(seq.Features(ContextFeature))
		  Case kRemoveFeature
		    RemoveFeature(ContextFeature)  'Remove single feature
		    'featuredeleted=true
		  Case kRemoveFeatures
		    RemoveFeatures(ContextFeature) 'Remove all features of the same type and with the same name
		  case kHmmerSearchUniProt
		    HmmerSearchUniProt(ContextProteinName)
		  case kHmmerSearchSwissProt
		    HmmerSearchSwissProt(ContextProteinName)
		  case kBLASTPsearch+BLASTpDB
		    BLASTPsearch(ContextProteinName)
		  case kCDsearch
		    CDsearch(ContextProteinName)
		  case kBLASTNsearch+BLASTnDB
		    BLASTNsearch(NthField(selrange.text,":",1)) 'use selection coords for tab name
		  Case kBLASTXsearch+BLASTpDB
		    BLASTXsearch(NthField(selrange.Text,":",1)) 'use selection coords for tab name
		  Case kThreeSearches 'launch three searches at once
		    CDsearch(ContextProteinName)
		    HmmerSearchSwissProt(ContextProteinName)
		    SearchLiterature(true)
		  Case kNewFeature
		    AddFeature
		  case kScalePlotsSeparately
		    Genome.ScalePlotsSeparately=true
		    MapScrollUpdate 'apply change
		  case kScalePlotsTogether
		    Genome.ScalePlotsSeparately=false
		    MapScrollUpdate 'apply change
		  case kSetPlotScaleMax
		    PlotScaleMaxWin.show
		  End
		  
		  ContextFeature=0
		End Function
	#tag EndEvent
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  'space checks/unchecks the current hit
		  
		  if key=" " then 'toggle selection for current hit
		    FeatureBox.Value=NOT FeatureBox.Value
		    return true
		    'elseif key=decodehex("1D") then 'right (or chr(124?)
		    ''beep
		    'elseif key=decodehex("1C") then ' (chr123)? - left
		    ''beep
		    
		  end if
		  
		  SkimHits
		End Function
	#tag EndEvent
	#tag Event
		Function MouseWheel(X As Integer, Y As Integer, deltaX as Integer, deltaY as Integer) As Boolean
		  'MapScrollerH.value=MapScrollerH.value+deltaX
		  'MapScrollerV.value=MapScrollerV.value+deltaY
		  '
		  
		  
		  
		End Function
	#tag EndEvent
	#tag Event
		Sub Activate()
		  #if TargetWindows then
		    if me.DoubleBuffer then
		      'picture isn't drawn intil clicked!
		      me.refresh(false)
		    end if
		  #endif
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseMove(X As Integer, Y As Integer)
		  //show visible features names and types as tooltips
		  'if features overlap, only the one that's the first in the array will trigger the tooltip
		  'can display all overlapping features if required.
		  
		  dim PointedFeature as integer = -1
		  dim topobj, featureCount, n as integer
		  dim tt as string
		  dim p as picture
		  
		  ttip=""
		  
		  
		  p=Seq.Map
		  topObj= p.Objects.Count-1
		  featureCount=ubound(Seq.features)
		  
		  'Check if any object is under the pointer:
		  for n=1 to topObj 'skip zero object that contains selection
		    'second (or more) obj. may contain the ruler
		    if p.Objects.Item(n) IsA cClickableShape then
		      if cClickableShape(p.Objects.Item(n)).contains(X,Y) then
		        PointedFeature=n/2  'correction for feature names
		        
		        'make sure there are no hidden features, otherwise use the code below!
		        
		        'Now correct for the hidden features:
		        'for m=1 to featureCount
		        'if m>PointedFeature then
		        'exit
		        'end
		        'if seq.Features(m).Visible=false then
		        'PointedFeature=PointedFeature+1
		        'end
		        'next
		        
		        exit
		      else
		        PointedFeature=-1
		      end
		      
		    end if
		    
		  next
		  
		  'get tooltip text
		  if PointedFeature>0 then
		    dim trC as integer
		    dim ftL,ftR as string
		    
		    trC=InStr(seq.Features(PointedFeature).FeatureText,"/translation=")
		    if trC>0 then 'for CDS, translation has to be removed from tooltip
		      ftL=left(seq.Features(PointedFeature).FeatureText,trC-1)
		      ftR=mid(seq.Features(PointedFeature).FeatureText,trC+16)
		      trC=instr(ftR,"/")
		      if trC>0 then
		        ttip=ftL+right(ftR,len(ftR)-trC+1)
		      else
		        ttip=ftL
		      end if
		    else
		      ttip=seq.Features(PointedFeature).FeatureText
		    end if
		    
		    #if TargetWindows
		      dim CRLF as string = chr(13)+chr(10)
		      if instr(ttip, CRLF)=0 then
		        ttip=replaceall(ttip,EndOfLine.UNIX,EndOfLine) 'different line ends on different Windows machines
		      end if
		      ttip=trim(ttip)
		    #endif
		    
		    TTx=X+self.Left
		    TTy=Y+self.top
		    
		    ToolTipTimer.Mode=Timer.ModeSingle   
		    ToolTipTimer.Reset
		    
		    'ToolTip.Show(ttip, X+self.left, Y+self.top, True)
		  else
		    Global.ToolTip.hide
		  end if
		  
		  Exception err
		    ExceptionHandler(err,"GenomeWin:MapCanvas:MouseMove")
		End Sub
	#tag EndEvent
	#tag Event
		Sub DoubleClick(X As Integer, Y As Integer)
		  Dim n,topObj,m,featureCount,currentFeature As Integer
		  dim p as picture
		  
		  'ToolTipBlock=true
		  'ToolTipTimer.Reset
		  'ToolTip.hide
		  'ToolTipTimer.Mode=0
		  
		  p=Seq.Map
		  topObj= p.Objects.Count-1
		  featureCount=ubound(Seq.features)
		  ContextFeature=0
		  'check if the double click is within a feature
		  dim dbg as string=""
		  for n=1 to topObj 'skip zero object that contains selection
		    if p.Objects.Item(n) IsA cClickableShape then
		      
		      if cClickableShape(p.Objects.Item(n)).contains(X,Y) then
		        #if TargetMacOS 
		          ContextFeature=n/2
		          EditFeature(seq.Features(ContextFeature))
		          exit
		        #else
		          'Linix 64-bit gives two double click events,
		          'some Windows machines do the same
		          if DoubleClickedAlready then
		            DoubleClickedAlready=false
		            exit
		          else
		            ContextFeature=n/2
		            EditFeature(seq.Features(ContextFeature))
		            DoubleClickedAlready=true
		            exit
		          end if
		        #endif
		      end
		      
		    end
		  next
		  
		  if ContextFeature=0 then 'outside any object: center view at the coordinate
		    
		    n=x*seq.bpPerPixel  'bp within view
		    HScrollBar.value=n+GBrowseShift
		    'TextMap centers at the cursor coordinate AFTER the double click
		    'should probably adjust it to the middle of feature display
		    TextMap(n,n) 'scroll the detail view too
		    
		  end if
		  
		  
		  
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  Global.ToolTip.hide
		End Sub
	#tag EndEvent
	#tag Event
		Sub Deactivate()
		  'ToolTip.hide
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  If MapCanvasPicture=Nil Then
		    MapCanvasPicture=new Picture(me.width, me.Height,Screen(0).depth)
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ToolTipTimer
	#tag Event
		Sub Action()
		  if not ToolTipBlock then
		    
		    
		    #If XojoVersion < 2019.02
		      If TTip="" Then
		        Global.ToolTip.hide
		      Else
		        #if TargetWindows
		          Global.ToolTip.Show(ttip,System.MouseX, System.MouseY-20, False)
		        #else
		          Global.ToolTip.Show(ttip,System.MouseX, System.MouseY-20, True)
		        #endif
		      end if
		      
		      
		    #Else
		      If TTip="" Then
		        App.HideTooltip
		      Else
		        #If TargetWindows
		          App.ShowTooltip(ttip,System.MouseX, System.MouseY-20, False)
		        #Else
		          App.ShowTooltip(ttip,System.MouseX, System.MouseY-20, True)
		        #EndIf
		      End If
		    #EndIf
		  End If
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SegmentedControl1
	#tag Event
		Sub Action(itemIndex as integer)
		  Dim s0 As SegmentedControlItem = SegmentedControl1.Items( 0 )
		  Dim s1 As SegmentedControlItem = SegmentedControl1.Items( 1 )
		  Dim s2 As SegmentedControlItem = SegmentedControl1.Items( 2 )
		  
		  if CurrentHit >= 0 then
		    If itemIndex = 0 Then
		      'show previous hit
		      CurrentHit=CurrentHit-1
		    Elseif itemIndex = 2 then
		      'show next hit
		      CurrentHit=CurrentHit+1
		    End If
		    
		    
		    if currentHit=1 then
		      s0.Enabled=false
		    else
		      s0.Enabled=true
		    end if
		    
		    if currentHit=ubound(GenomeWin.HmmHits) then
		      s2.Enabled=false
		    else
		      s2.Enabled=true
		    end if
		    
		    s1.Title=str(CurrentHit)+"/"+str(ubound(HmmHits))
		    
		    ShowHit
		  else
		    'beep
		  end if
		  
		  Exception err
		    ExceptionHandler(err,"GenomeWin:SegmentedControl1:Action")
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  #If TargetCocoa
		    Me.Items(0).icon=SystemIcons.GoLeftTemplate
		    Me.Items(2).Icon=SystemIcons.GoRightTemplate
		  #EndIf
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events FeatureBox
	#tag Event
		Sub Action()
		  dim n as integer
		  
		  HmmHitChecked(currentHit)=me.value
		  
		  AnyHitDeselected=false
		  for n=1 to ubound(HmmHitChecked)
		    if not HmmHitChecked(currentHit) then
		      AnyHitDeselected=true
		      exit
		    end if
		  next
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events HScrollBar
	#tag Event
		Sub ValueChanged()
		  MapScrollUpdate
		  
		  'need to maintain selection!
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Magnifier
	#tag Event
		Sub Action(itemIndex as integer)
		  
		  Dim CurrentLoc as integer= GBrowseShift+DisplayInterval/2
		  
		  If itemIndex = 0 Then
		    'zoom in
		    If DisplayInterval>1500 Then
		      If Keyboard.AltKey Then
		        DisplayInterval=DisplayInterval/1.1 'fine adjustment
		      Else
		        DisplayInterval=DisplayInterval/1.5
		      End If
		    else
		      'beep
		    end if
		  Else
		    'zoom out
		    if DisplayInterval<22000 then
		      If Keyboard.AltKey Then
		        DisplayInterval=DisplayInterval*1.1 'fine adjustment
		      Else
		        DisplayInterval=DisplayInterval*1.5
		      End If
		    else
		      'beep
		    End If
		  End If
		  
		  'adjust scrolling steps:
		  HScrollBar.PageStep=GenomeWin.DisplayInterval*3/4
		  HScrollBar.LineStep=GenomeWin.DisplayInterval/10
		  
		  
		  ExtractFragment(CurrentLoc-DisplayInterval/2,CurrentLoc+DisplayInterval/2)
		  
		  
		  Exception err
		    ExceptionHandler(err,"GenomeWin:Magnifier:action")
		    
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  #If TargetCocoa
		    Me.Items(0).icon=SystemIcons.AddTemplate
		    Me.Items(1).Icon=SystemIcons.RemoveTemplate
		    Me.Items(0).title=""
		    Me.Items(1).title=""
		  #EndIf
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TMdisplay
	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  g.DrawPicture(TextMapPic,0,0)
		End Sub
	#tag EndEvent
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  SkimHits
		End Function
	#tag EndEvent
	#tag Event
		Sub Open()
		  If gCodes(11)=Nil Then   'translation may be not ready if SigmoID is launched by opening a gbk file 
		    GeneticCodesInit
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BrowserTabs
	#tag Event
		Sub TabChanged(tabIndex as integer)
		  'BrowserPagePanel positions are fixed as follows:
		  '0-SPSearchViewer
		  '1-UPSearchViewer
		  '2-TFSearchViewer
		  '3-BLASTSearchViewer
		  
		  
		  dim Tabname as string
		  
		  Tabname=BrowserTabs.tabs(tabIndex).caption
		  
		  if instr(TabName,"SP:")>0 then
		    SPSearchViewer.Visible=True
		    BrowserPagePanel.value=0
		  elseif instr(TabName,"UP:")>0 then
		    UPSearchViewer.Visible=true
		    BrowserPagePanel.value=1
		  elseif instr(TabName,"GB:")>0 OR instr(TabName,"CDD:")>0 then
		    BLASTSearchViewer.Visible=true
		    BrowserPagePanel.value=3
		  end if
		  
		  'dim va as integer
		  'va=BrowserPagePanel.value
		  ''beep
		  
		  'BrowserPagePanel.value=tabIndex
		End Sub
	#tag EndEvent
	#tag Event
		Sub TabRemoved(tabIndex as integer)
		  
		End Sub
	#tag EndEvent
	#tag Event
		Function CancelRemoveTab(tabIndex as integer) As boolean
		  
		  if tabIndex>0 then
		    Me.value=tabIndex-1
		  Else
		    Me.value=0
		  end if
		  
		  ''BrowserPagePanel positions are fixed as follows:
		  ''0-SPSearchViewer
		  ''1-UPSearchViewer
		  ''2-TFSearchViewer
		  '
		  '
		  'dim Tabname as string
		  '
		  'Tabname=BrowserTabs.tabs(tabIndex).caption
		  '
		  'if instr(TabName,"SwissProt")>0 then
		  'SPSearchViewer.Visible=false
		  'elseif instr(TabName,"UniProt")>0 then
		  'UPSearchViewer.Visible=false
		  'end if
		  '
		  
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events SPSearchViewer
	#tag Event
		Sub DocumentProgressChanged(URL as String, percentageComplete as Integer)
		  if instr(URl,"blank.html")>0 then
		    'just the first blank page
		  else
		    ProgressHide
		    'ProgressWheel1.Visible=true
		    'ProgressWheel1.Enabled=true
		    'ProgressWheel1.Refresh
		  end if
		End Sub
	#tag EndEvent
	#tag Event
		Sub Error(errorNumber as Integer, errorMessage as String)
		  if errorMessage<>"" then
		    SocketError(errorNumber, errorMessage)
		  else
		    SocketError errorNumber
		  end if
		End Sub
	#tag EndEvent
	#tag Event
		Function CancelLoad(URL as String) As Boolean
		  If Keyboard.CommandKey Then 'Open this link in new tab
		    If Not AlreadyOpeningTab Then
		      AlreadyOpeningTab=True
		      WebBrowserWin.show
		      WebBrowserWin.AddNewTab.LoadURL(url)
		      Return True
		    End If
		  End If
		End Function
	#tag EndEvent
	#tag Event
		Function NewWindow() As Object
		  Return WebBrowserWin.AddNewTab
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events UPSearchViewer
	#tag Event
		Sub DocumentProgressChanged(URL as String, percentageComplete as Integer)
		  if instr(URl,"blank.html")>0 then
		    'just the first blank page
		  else
		    ProgressHide
		  end if
		End Sub
	#tag EndEvent
	#tag Event
		Sub Error(errorNumber as Integer, errorMessage as String)
		  if errorMessage<>"" then
		    SocketError(errorNumber, errorMessage)
		  else
		    SocketError errorNumber
		  end if
		End Sub
	#tag EndEvent
	#tag Event
		Function CancelLoad(URL as String) As Boolean
		  If Keyboard.CommandKey Then 'Open this link in new tab
		    If Not AlreadyOpeningTab Then
		      AlreadyOpeningTab=True
		      WebBrowserWin.show
		      WebBrowserWin.AddNewTab.LoadURL(url)
		      Return True
		    End If
		  End If
		End Function
	#tag EndEvent
	#tag Event
		Function NewWindow() As Object
		  Return WebBrowserWin.AddNewTab
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events BLASTSearchViewer
	#tag Event
		Sub Error(errorNumber as Integer, errorMessage as String)
		  if errorMessage<>"" then
		    if errorNumber<>-999 then
		      SocketError(errorNumber, errorMessage)
		    else
		      SocketError errorNumber
		    end if
		  else
		    'The operation couldn’t be completed. (NSURLErrorDomain error -999.)
		    'This error can be safely ignored
		  end if
		End Sub
	#tag EndEvent
	#tag Event
		Sub DocumentProgressChanged(URL as String, percentageComplete as Integer)
		  if instr(URl,"blank.html")>0 then
		    'just the first blank page
		  else
		    ProgressHide
		  end if
		End Sub
	#tag EndEvent
	#tag Event
		Function NewWindow() As Object
		  Return WebBrowserWin.AddNewTab
		End Function
	#tag EndEvent
	#tag Event
		Function CancelLoad(URL as String) As Boolean
		  If Keyboard.CommandKey Then 'Open this link in new tab
		    If Not AlreadyOpeningTab Then
		      AlreadyOpeningTab=True
		      WebBrowserWin.show
		      WebBrowserWin.AddNewTab.LoadURL(url)
		      Return True
		    End If
		  End If
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events SelRange
	#tag Event
		Sub Open()
		  me.textfont=fixedFont
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SPSocket
	#tag Event
		Sub PageReceived(url as string, httpStatus as integer, headers as internetHeaders, content as string)
		  dim UUID,theURL as string
		  
		  'get the UUID from text result that looks like this:
		  'href="/results/62A7A0BC-D3DE-11E4-A3D4-5D4A59DEE9FE/score">Score</a></li><li class="taxlink "><a :
		  
		  UUID=NthField(Content,"/results/",2)
		  UUID=NthField(UUID,"/score",1)
		  'theURL="http://hmmer.janelia.org/results/score/"+UUID
		  'theURL="https://www.ebi.ac.uk/Tools/hmmer/results/score/"+UUID
		  theURL="https://www.ebi.ac.uk/Tools/hmmer/results/"+UUID+"/score"
		  
		  'now simply load the corrected URL:
		  if TMdisplay.Visible then
		    TMdisplay.Visible=false
		    TMdisplayAdjustment
		  end if
		  
		  
		  if LoadPlainResult then
		    dim resultfile as folderitem
		    resultfile=GetConvertHMMERtext(theURL)
		    if resultfile<>nil and resultfile.exists then
		      SPSearchViewer.LoadPage(resultfile)
		    else
		      'beep
		    end if
		  else
		    
		    SPSearchViewer.LoadURL(theURL)
		    
		  end if
		  
		  
		  Exception err
		    ExceptionHandler(err,"GenomeWin:SPSocket")
		End Sub
	#tag EndEvent
	#tag Event
		Sub Connected()
		  #if TargetLinux
		    'self.Refresh
		    SPSearchViewer.Refresh
		    ProgressWheel1.Refresh
		    app.DoEvents
		  #endif
		  
		  
		  
		  
		  
		  Exception err
		    ExceptionHandler(err,"GenomeWin:SPSocket")
		End Sub
	#tag EndEvent
	#tag Event
		Sub Error(code as integer)
		  SocketError Code
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events UniProtSocket
	#tag Event
		Sub PageReceived(url as string, httpStatus as integer, headers as internetHeaders, content as string)
		  dim UUID,theURL as string
		  
		  
		  'get the UUID from html result that looks like this:
		  'href="/results/62A7A0BC-D3DE-11E4-A3D4-5D4A59DEE9FE/score">Score</a></li><li class="taxlink "><a :
		  
		  UUID=NthField(content,"/results/",2)
		  UUID=NthField(UUID,"/score",1)
		  'theURL="http://hmmer.janelia.org/results/score/"+UUID
		  theURL="https://www.ebi.ac.uk/Tools/hmmer/results/"+UUID+"/score"
		  
		  'now simply load the corrected URL:
		  if TMdisplay.Visible then
		    TMdisplay.Visible=false
		    TMdisplayAdjustment
		  end if
		  
		  
		  if LoadPlainResult then
		    dim resultfile as folderitem
		    resultfile=GetConvertHMMERtext(theURL)
		    if resultfile<>nil and resultfile.exists then
		      UPSearchViewer.LoadPage(resultfile)
		    else
		      'beep
		    end if
		  else
		    
		    UPSearchViewer.LoadURL(theURL)
		    
		  end if
		  'ProgressHide
		  
		  
		  'UPSearchViewer.LoadURL(theURL)
		  
		  'ProgressHide
		End Sub
	#tag EndEvent
	#tag Event
		Sub Connected()
		  dim theURL,blankpath as string
		  dim f as FolderItem
		  
		  
		  f=resources_f.child("blank.html")
		  if f<>Nil then
		    if f.exists then
		      blankpath=f.ShellPath
		      theURL="file://"+blankpath
		    end if
		  end if
		  
		  if TMdisplay.Visible then
		    TMdisplay.Visible=false
		    TMdisplayAdjustment
		  end if
		  UPSearchViewer.LoadURL(theURL)
		  'ProgressWheel1.top=SPSearchViewer.top+SPSearchViewer.Height/3
		  'ProgressWheel1.Visible=true
		  'ProgressWheel1.Enabled=true
		  
		  
		  
		  
		  Exception err
		    ExceptionHandler(err,"GenomeWin:UniProtSocket")
		End Sub
	#tag EndEvent
	#tag Event
		Sub Error(code as integer)
		  SocketError Code
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events NSSearchField1
	#tag Event
		Sub MenuAction(item as NSMenuItem)
		  me.PlaceholderText = item.Title
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  me.TabStop = true
		  me.SendWholeSearchString = true
		  me.FocusRing = false
		  NSSearchField1.ShowMenu = true
		  'NSSearchField1.AddMenuItem "Foo"
		  'NSSearchField1.AddMenuSeparator
		  'NSSearchField1.AddMenuItem "Bar"
		  
		  
		  NSSearchField1.PlaceholderText = "Search..."
		  
		  
		  //setting this name means that recent searches will be saved to user defaults under this name.
		  //the shared NSUserDefaults object is saved periodically.
		  NSSearchField1.RecentsAutosaveName = "SigmoID.RecentSearches"
		  
		  NSSearchField1.ShowRecentSearches = true
		End Sub
	#tag EndEvent
	#tag Event
		Sub Action()
		  query=me.StringValue
		  SelFeatureNo=0
		  SearchAction
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SearchField
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  #if targetLinux
		    'probably relevant to 64-bit only
		    me.Enabled=true
		  #endif
		  
		  'check for CR/enter key
		  if key=chr(13) OR key=chr(3) then
		    
		    query=me.text
		    SelFeatureNo=0
		    SearchAction
		    
		    
		  end if
		End Function
	#tag EndEvent
	#tag Event
		Sub GotFocus()
		  #if TargetLinux then
		    if leftarrow then
		      leftarrow=false
		      MapCanvas.SetFocus
		    end if
		  #endif
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  #if targetLinux
		    'probably relevant to 64-bit only
		    me.Enabled=true
		  #endif
		End Function
	#tag EndEvent
	#tag Event
		Sub TextChange()
		  #if targetLinux
		    'probably relevant to 64-bit only
		    me.Enabled=true
		  #endif
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BLASTSocket
	#tag Event
		Sub PageReceived(url as string, httpStatus as integer, headers as internetHeaders, content as string)
		  Dim RID,theURL,ltag As String
		  
		  'this socket should process all requests to BLAST servers, including CD search
		  
		  ' NCBI asks to specify contact details by adding two fields:
		  ' &EMAIL=' field (and the '&TOOL=' for distributed software
		  
		  if CDDsearch then  'CDD search
		    //get CDD search RID using hidden, but almost documented data in BLAST output that looks like:
		    '<input name="RID" value="UB0V1HJK014" type="hidden" />
		    '<input name="CDD_RID" value="data_cache_seq:641743590" type="hidden" />
		    '<input name="CDD_SEARCH_STATE" type="hidden" value="4" />
		    
		    'concise results are displayed by default, hence &mode=std to display standard ones
		    
		    ltag="<input name="+chr(34)+"RID"+chr(34)+" value="+chr(34)
		    RID=NthField(content,ltag,2)
		    RID=NthField(RID,chr(34),1)
		    theURL="https://www.ncbi.nlm.nih.gov/Structure/cdd/wrpsb.cgi?RID="+RID+"&CMD=Get&mode=std"
		    #if DebugBuild
		      theURL=theURL+"&EMAIL="+email+"&TOOL=SigmoID"
		    #endif
		  else
		    
		    //get the Request ID for blastp/n/x from result that looks like this:
		    '<!--QBlastInfoBegin
		    'RID = UB0V1HJK014
		    'RTOE = 17
		    'QBlastInfoEnd
		    '-->
		    
		    
		    
		    RID=NthField(content,"RID = ",2)
		    RID=NthField(RID,EndOfLine.UNIX,1)
		    theURL="https://blast.ncbi.nlm.nih.gov/Blast.cgi?RID="+RID+"&CMD=Get"
		    #if DebugBuild
		      theURL=theURL+"&EMAIL="+email+"&TOOL=SigmoID"
		    #endif
		  end if
		  
		  'now load the URL:
		  BLASTSearchViewer.LoadURL(theURL)
		  'ProgressHide
		End Sub
	#tag EndEvent
	#tag Event
		Sub Connected()
		  dim theURL,blankpath as string
		  dim f as FolderItem
		  
		  if TMdisplay.Visible then
		    TMdisplay.Visible=false
		    TMdisplayAdjustment
		  end if
		  
		  f=resources_f.child("blank.html")
		  if f<>Nil then
		    if f.exists then
		      blankpath=f.ShellPath
		      theURL="file://"+blankpath
		    end if
		  end if
		  BLASTSearchViewer.LoadURL(theURL) 'blank page to remove previous result
		  
		  
		  
		  
		  
		  Exception err
		    ExceptionHandler(err,"GenomeWin:BlastSocket")
		End Sub
	#tag EndEvent
	#tag Event
		Sub Error(code as integer)
		  SocketError Code
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Splitter
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  DragStartY=Y
		  'Me.MouseCursor=System.Cursors.HandClosed
		  return true
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseUp(X As Integer, Y As Integer)
		  DragStartY=Y
		  Self.invalidate(False)
		  updateMapCanvas
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseDrag(X As Integer, Y As Integer)
		  if Y<>DragStartY then
		    dim deltaY as integer = Y-DragStartY
		    
		    MapCanvas.Height=MapCanvas.Height+deltaY
		    
		    'TMdisplay.height=TMdisplay.height-deltaY
		    TMdisplay.top=TMdisplay.top+deltaY
		    
		    'HscrollBar.height=HscrollBar.height-deltaY
		    HscrollBar.top=HscrollBar.top+deltaY
		    
		    BrowserTabs.height=BrowserTabs.height-deltaY
		    BrowserTabs.top=BrowserTabs.top+deltaY
		    
		    BrowserPagePanel.height=BrowserTabs.height
		    BrowserPagePanel.top=BrowserTabs.top
		    'BrowserPagePanel.height=BrowserPagePanel.height-deltaY
		    'BrowserPagePanel.top=BrowserPagePanel.top+deltaY
		    '
		    'BLASTSearchViewer.height=BLASTSearchViewer.height-deltaY
		    'BLASTSearchViewer.top=BLASTSearchViewer.top+deltaY
		    '
		    'SPSearchViewer.height=SPSearchViewer.height-deltaY
		    'SPSearchViewer.top=SPSearchViewer.top+deltaY
		    '
		    'UPSearchViewer.height=UPSearchViewer.height-deltaY
		    'UPSearchViewer.top=UPSearchViewer.top+deltaY
		    '
		    'TFSearchViewer.height=TFSearchViewer.height-deltaY
		    'TFSearchViewer.top=TFSearchViewer.top+deltaY
		    
		    
		    me.top=me.top+deltaY
		    'DragStartY=Y
		    #if TargetWindows
		      'too much flicker
		    #else
		      self.invalidate(false)
		    #endif
		    MapCanvas.invalidate(false)
		  end if
		  
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  Me.MouseCursor=System.Cursors.ArrowNorthSouth
		End Sub
	#tag EndEvent
	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  'draw three little dots in the centre
		  
		  g.ForeColor=DarkBevelColor
		  
		  g.FillOval(me.width/2,0,3,3)
		  g.FillOval(me.width/2-7,0,3,3)
		  g.FillOval(me.width/2+7,0,3,3)
		  
		  g.DrawLine(me.left,me.Height-1,me.left+me.width,me.Height-1)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EBISocket
	#tag Event
		Sub PageReceived(url as string, httpStatus as integer, headers as internetHeaders, content as string)
		  dim NCBIid as string
		  ncbiID=NthField(content,"'",2)
		  'ncbiID=NthField(ncbiID,separ2,1)
		  'LogoWin.WriteToSTDOUT (ncbiID)
		  'LogoWin.WriteToSTDOUT (EndOfLine)
		  
		  
		  
		  
		  'dim RID,theURL,ltag as string
		  '
		  ''this socket should process all requests to BLAST servers, including CD search
		  '
		  '' NCBI asks to specify contact details by adding two fields:
		  '' &EMAIL=' field (and the '&TOOL=' for distributed software
		  '
		  'if CDDsearch then  'CDD search
		  '//get CDD search RID using hidden, but almost documented data in BLAST output that looks like:
		  ''<input name="RID" value="UB0V1HJK014" type="hidden" />
		  ''<input name="CDD_RID" value="data_cache_seq:641743590" type="hidden" />
		  ''<input name="CDD_SEARCH_STATE" type="hidden" value="4" />
		  '
		  'ltag="<input name="+chr(34)+"RID"+chr(34)+" value="+chr(34)
		  'RID=NthField(content,ltag,2)
		  'RID=NthField(RID,chr(34),1)
		  'theURL="https://www.ncbi.nlm.nih.gov/Structure/cdd/wrpsb.cgi?RID="+RID+"&CMD=Get"
		  '#if DebugBuild
		  'theURL=theURL+"&EMAIL="+email+"&TOOL=SigmoID"
		  '#endif
		  'else
		  '
		  '//get the Request ID for blastp/n/x from result that looks like this:
		  ''<!--QBlastInfoBegin
		  ''RID = UB0V1HJK014
		  ''RTOE = 17
		  ''QBlastInfoEnd
		  ''-->
		  '
		  '
		  '
		  'RID=NthField(content,"RID = ",2)
		  'RID=NthField(RID,EndOfLine.UNIX,1)
		  'theURL="https://blast.ncbi.nlm.nih.gov/Blast.cgi?RID="+RID+"&CMD=Get"
		  '#if DebugBuild
		  'theURL=theURL+"&EMAIL="+email+"&TOOL=SigmoID"
		  '#endif
		  'end if
		  '
		  ''now load the URL:
		  'BLASTSearchViewer.LoadURL(theURL)
		  ''ProgressHide
		End Sub
	#tag EndEvent
	#tag Event
		Sub Connected()
		  'dim theURL,blankpath as string
		  'dim f as FolderItem
		  '
		  'if TMdisplay.Visible then
		  'TMdisplay.Visible=false
		  'TMdisplayAdjustment
		  'end if
		  '
		  'f=resources_f.child("blank.html")
		  'if f<>Nil then
		  'if f.exists then
		  'blankpath=f.ShellPath
		  'theURL="file://"+blankpath
		  'end if
		  'end if
		  'BLASTSearchViewer.LoadURL(theURL) 'blank page to remove previous result
		  '
		  '
		  '
		  '
		  '
		  'Exception err
		  'ExceptionHandler(err,"GenomeWin:BlastSocket")
		End Sub
	#tag EndEvent
	#tag Event
		Sub Error(code as integer)
		  SocketError Code
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
		Name="AnyHitDeselected"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="AnyNameClicked"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="AnythingSelected"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="boolean"
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
		Name="bppp2"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="double"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ccolumn"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="CDDsearch"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="CmapDx"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="CmapDy"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="CMpointedFeature"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
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
		Name="ConfigButtonType"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="string"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="ContentsChanged"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ContextFeature"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ContextProteinName"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="CurrentHit"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="CurrentScrollPosition"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="DirDown"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="DisplayInterval"
		Visible=false
		Group="Behavior"
		InitialValue="10000"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="dx"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="dy"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="editingFeature"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="EditorLock"
		Visible=false
		Group="Behavior"
		InitialValue="false"
		Type="boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="EditorToolTip"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="string"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="EnableEdit"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="featuredeleted"
		Visible=false
		Group="Behavior"
		InitialValue="false"
		Type="boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="FeatureLeft"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="FeatureRight"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="FindMode"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="FirstDrag"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="FormattedSequence"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="FoundSitesNumber"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="FoundTargetSize"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreen"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="gbkSource"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="string"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="GBOpened"
		Visible=false
		Group="Behavior"
		InitialValue="false"
		Type="boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="GenomeChanged"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="GraphExists"
		Visible=false
		Group="Behavior"
		InitialValue="false"
		Type="boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Header"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
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
		Name="HScrollBarCodeLock"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
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
		Name="LastAngle"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="double"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LastX"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LastX2"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LastY"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LastY2"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="leftarrow"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LmapDx"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LmapDy"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
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
		Name="MapCanvasDragLock"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MapCanvasPicture"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Picture"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MapRasterPic"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="Picture"
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
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="moving"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="boolean"
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
		Name="NameX"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="NameXL"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="NameY"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="NameYL"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="NewColor"
		Visible=false
		Group="Behavior"
		InitialValue="&h000000"
		Type="color"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="NewFeature"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Opening"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="OperOnOptions"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="string"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="ORFclickedDir"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ORFCurrCoord"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ORFMap1"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="picture"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ORFMapScale"
		Visible=false
		Group="Behavior"
		InitialValue="1"
		Type="double"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="PageSetup"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Query"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="string"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="RE1"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="string"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="RE1cutposition"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="RE1overhang"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="RE1pos"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="RE1targetsize"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="RE2"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="string"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="RE2cutposition"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="RE2overhang"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="RE2pos"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="RE2targetsize"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="RedundanciesPresent"
		Visible=false
		Group="Behavior"
		InitialValue="0"
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
		Name="rrow"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="rw"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="rx"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ry"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Scales"
		Visible=false
		Group="Behavior"
		InitialValue="25,33,50,75,100,125,150,200,300,400"
		Type="string"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="SearchPosition"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="SelColor"
		Visible=false
		Group="Behavior"
		InitialValue="&h000000"
		Type="color"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="SelectingREfragment"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="selFeatureNo"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="SelNameNo"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="SiteNo"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="sTBButtons"
		Visible=false
		Group="Behavior"
		InitialValue=",1,2,3,5,0,6,8,11,12,18,13,14,19,15,16,17,10,"
		Type="string"
		EditorType="MultiLineEditor"
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
		Name="TextHeight"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="TextMapPic"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Picture"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="TFfamilyDesc"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
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
		Name="TMCharWidth"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Double"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="TMLineHeight"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Double"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ToolTipBlock"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ToolTipX"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ToolTipY"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="topstrand"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="topStrandSearched"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ttip"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="string"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="TTx"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="TTy"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
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
