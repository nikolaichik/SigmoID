#tag Window
Begin Window NewFeatureWin
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   485
   ImplicitInstance=   True
   LiveResize      =   "True"
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
      BackColor       =   &c00FFFFFF
      Bold            =   False
      Border          =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   317
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
      Top             =   118
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   524
   End
   Begin PushButton OKButton
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   0
      Cancel          =   False
      Caption         =   "#kOK"
      Default         =   False
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
      Top             =   447
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
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   312
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
      Top             =   447
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   90
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
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   12
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "#kLeftCoordinate"
      TextAlign       =   1
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   20
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   131
   End
   Begin TextField fStartField
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   False
      BackColor       =   &c00FFFFFF
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
      Left            =   153
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
      TabIndex        =   13
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   20
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   87
   End
   Begin TextField fEndField
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   False
      BackColor       =   &c00FFFFFF
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
      Left            =   417
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
      TabIndex        =   14
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   20
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   87
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
      InitialParent   =   ""
      Italic          =   False
      Left            =   264
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   15
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "#kRightCoordinate"
      TextAlign       =   1
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   20
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   154
   End
   Begin CheckBox ComplementBox
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "#kComplement"
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
      TabIndex        =   16
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   52
      Transparent     =   False
      Underline       =   False
      Value           =   "False"
      Visible         =   True
      Width           =   242
   End
   Begin CheckBox AddGeneBox
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "#kAddGene"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   264
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      State           =   1
      TabIndex        =   17
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   54
      Transparent     =   False
      Underline       =   False
      Value           =   "True"
      Visible         =   True
      Width           =   154
   End
   Begin TextField GeneNameField
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   False
      BackColor       =   &c00FFFFFF
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
      Left            =   417
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
      TabIndex        =   18
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   52
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   87
   End
   Begin TextField LocusTagField
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   False
      BackColor       =   &c00FFFFFF
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
      Left            =   112
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
      TabIndex        =   19
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   82
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   128
   End
   Begin Label LocusTagLabel
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
      TabIndex        =   20
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "locus_tag:"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   84
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   91
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
      Left            =   264
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   21
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "#kFeatureType"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   86
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   123
   End
   Begin ComboBox FeatureTypeCombo
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
      InitialValue    =   "CDS\ngene\npromoter\nterminator\nattenuator\nmisc_binding\nmisc_feature\nmisc_RNA\nncRNA\noperon\nprotein_bind\nRBS\nrepeat_region\nrRNA\nsig_peptide\ntRNA\n"
      Italic          =   False
      Left            =   386
      ListIndex       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   22
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   84
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   118
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
		  
		  dim ft as GBFeature
		  dim NewFeatureNo,n,m,leftC as integer
		  
		  
		  FeatureTextField.text=trim(FeatureTextField.text) 'a precaution to remove possible extra white space
		  
		  
		  'determine the position to insert the feature(s)
		  m=Ubound(ParentWin.Genome.Features)
		  
		  NewFeatureNo=0
		  if ParentWin.Genome.Features(n).complement then
		    for n=1 to m
		      if ParentWin.Genome.Features(n).start-ParentWin.Genome.Features(n).length>leftC then
		        NewFeatureNo=n-1
		        exit
		      end if
		    next
		  else
		    for n=1 to m
		      if ParentWin.Genome.Features(n).start>leftC then
		        NewFeatureNo=n-1
		        exit
		      end if
		    next
		  end if
		  
		  if NewFeatureNo=0 then 'unlikely to happen, but still...
		    NewFeatureNo=m
		  end if
		  
		  'add the actual new feature:
		  ft=new GBFeature(parentWin.Genome.baselineY)
		  ft.FeatureText=trim(FeatureTextField.Text)
		  ParentWin.FillFeatureProperties(ft,ft.FeatureText)
		  ParentWin.Genome.Features.Insert(NewFeatureNo,ft) '
		  
		  
		  'create and add gene feature if required:
		  if AddGeneBox.Value then
		    ft=new GBFeature(parentWin.Genome.baselineY)
		    'add gene properties here
		    dim geneFeatureText as string
		    if ComplementBox.Value then
		      geneFeatureText="gene            complement("+trim(fStartField.Text)+".."+trim(fEndField.Text)+")"
		    else
		      geneFeatureText="gene            "+trim(fStartField.Text)+".."+trim(fEndField.Text)
		    end if
		    
		    'add locus-tag line
		    geneFeatureText=geneFeatureText+EndOfLine+"/locus_tag="+Chr(34)+trim(LocusTagField.text)+chr(34)
		    
		    'add gene line
		    if AddGeneBox.value then
		      geneFeatureText=geneFeatureText+EndOfLine+"/gene="+Chr(34)+trim(geneNameField.text)+chr(34)
		    end if
		    
		    ft.FeatureText=geneFeatureText
		    ParentWin.FillFeatureProperties(ft,ft.FeatureText)
		    
		    ParentWin.Genome.Features.Insert(NewFeatureNo,ft)
		    
		  end if
		  
		  
		  OKPressed=true
		  self.hide
		  
		  'update the display:
		  ParentWin.ExtractFragment(GBrowseShift,GBrowseShift+ParentWin.DisplayInterval)
		  
		  'mark genome changed:
		  ParentWin.GenomeChanged=true
		  ParentWin.IsModified=true
		  
		  
		  self.ParentWin.Show
		  'self.close
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UpdateFeatureText()
		  // save all lines potentially entered by the user
		  'and regenerate the others from control-derived values
		  
		  
		  dim m,n as integer
		  dim oldFtTxt, newFtTxt, aline, featuretype as string 
		  dim enableSave as boolean = true
		  dim LocusTagRequired as boolean
		  
		  
		  'Generate feature line:
		  'promoter, terminator, attenuator should be expanded to regulatory with appropriate class qualifier
		  
		  'if featureType="promoter" then
		  'opt=opt+" -q "+chr(34)+"regulatory_class"+chr(34)+"#"+chr(34)+"promoter"
		  '
		  'end if
		  
		  'check if Locus_tag and gene qualifiers are required for the selected feature
		  dim ftt as string = trim(FeatureTypeCombo.text)
		  if ftt="CDS" OR ftt="gene" OR ftt="rRNA" OR ftt="tRNA" OR ftt="ncRNA" OR ftt="misc_RNA" then
		    AddGeneBox.value=true
		    GeneNameField.enabled=true
		    LocusTagRequired=true
		  else
		    AddGeneBox.value=false
		    GeneNameField.enabled=false
		    LocusTagRequired=false
		  end if
		  
		  newFtTxt=trim(FeatureTypeCombo.Text)
		  featureType=newFtTxt
		  if newFtTxt="promoter" OR newFtTxt="terminator" OR newFtTxt="attenuator" then
		    newFtTxt="regulatory"
		  end if
		  
		  newFtTxt=newFtTxt+"                "
		  
		  if ComplementBox.Value then
		    newFtTxt=leftb(newFtTxt,16)+"complement("+trim(fStartField.Text)+".."+trim(fEndField.Text)+")"
		  else
		    newFtTxt=leftb(newFtTxt,16)+trim(fStartField.Text)+".."+trim(fEndField.Text)
		  end if
		  
		  'add regulatory_class if required
		  select case featureType
		  case "promoter"
		    newFtTxt=newFtTxt+EndOfLine+"/regulatory_class="+chr(34)+"promoter"+chr(34)
		  case "terminator"
		    newFtTxt=newFtTxt+EndOfLine+"/regulatory_class="+chr(34)+"terminator"+chr(34)
		  case "attenuator"
		    newFtTxt=newFtTxt+EndOfLine+"/regulatory_class="+chr(34)+"attenuator"+chr(34)
		  end select
		  
		  'add locus_tag line
		  if LocusTagRequired then
		    newFtTxt=newFtTxt+EndOfLine+"/locus_tag="+Chr(34)+trim(LocusTagField.text)+chr(34)
		  end if
		  
		  'add gene line
		  if AddGeneBox.value then
		    newFtTxt=newFtTxt+EndOfLine+"/gene="+Chr(34)+trim(geneNameField.text)+chr(34)
		  end if
		  
		  // append user entered lines
		  'the lines like these are ignored, others are saved:
		  'CDS             complement(3652..5151)
		  '/locus_tag="GZ59_00050"
		  '/gene="ravA"
		  oldFtTxt=me.FeatureTextField.text
		  for n=1 to CountFields(oldFtTxt, EndOfLine)
		    aline=NthField(oldFtTxt, EndOfLine,n)
		    if instr(aline, "..")>17 then
		      'coordinate line - ignore
		    elseif left(aline, 11)="/locus_tag=" then
		      'locus_tag - ignore
		    elseif left(aline, 6)="/gene=" then
		      'gene - ignore
		    elseif left(aline, 18)="/regulatory_class=" then
		      'regulatory_class - ignore (incorrect for all the classes except three!)
		    else
		      newFtTxt=newFtTxt+EndOfLine+aline
		    end if
		  next
		  
		  FeatureTextField.text=newFtTxt
		  
		  
		  //check for annotation completeness:
		  if val(fStartField.Text)<1 then
		    enableSave=false
		    fStartField.BackColor=&cFFFF6600
		  else
		    fStartField.BackColor=&cFFFFFF00
		  end if
		  
		  if val(fEndField.Text)<1 then
		    enableSave=false
		    fEndField.BackColor=&cFFFF6600
		  else
		    fEndField.BackColor=&cFFFFFF00
		  end if
		  
		  if LocusTagRequired then
		    LocusTagField.enabled=true
		    LocusTagLabel.enabled=true
		    GeneNameField.enabled=true
		    if len(trim(LocusTagField.text))<7 then
		      enableSave=false
		      LocusTagField.BackColor=&cFFFF6600
		    else
		      LocusTagField.BackColor=&cFFFFFF00
		    end if
		  else
		    LocusTagField.Enabled=false
		    LocusTagLabel.enabled=false
		    GeneNameField.enabled=false
		    LocusTagField.BackColor=&cFFFFFF00
		    LocusTagField.text=""
		  end if
		  
		  if len(trim(FeatureTypeCombo.text))<3 then
		    enableSave=false
		    FeatureTypeCombo.Italic=true
		    FeatureTypeCombo.SetFocus
		  else
		    FeatureTypeCombo.Italic=false
		  end if
		  
		  if enableSave then
		    OKButton.enabled=true
		  else
		    OKButton.enabled=false
		  end if
		  
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
#tag Events fStartField
	#tag Event
		Sub TextChange()
		  UpdateFeatureText
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events fEndField
	#tag Event
		Sub TextChange()
		  UpdateFeatureText
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ComplementBox
	#tag Event
		Sub Action()
		  UpdateFeatureText
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events GeneNameField
	#tag Event
		Sub TextChange()
		  UpdateFeatureText
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events LocusTagField
	#tag Event
		Sub TextChange()
		  UpdateFeatureText
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events FeatureTypeCombo
	#tag Event
		Sub Change()
		  UpdateFeatureText()
		End Sub
	#tag EndEvent
	#tag Event
		Sub TextChanged()
		  UpdateFeatureText
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
		Name="baselineY"
		Visible=false
		Group="Behavior"
		InitialValue="0"
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
		Name="FullScreen"
		Visible=true
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
		Visible=true
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
		Name="OKpressed"
		Visible=false
		Group="Behavior"
		InitialValue="false"
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
