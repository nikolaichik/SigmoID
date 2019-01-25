#tag Window
Begin Window ScanGenomeWin
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   False
   Frame           =   8
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   494
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   1024
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinHeight       =   124
   MinimizeButton  =   True
   MinWidth        =   400
   Placement       =   0
   Resizeable      =   True
   Title           =   "#kScanGenomeTitle"
   Visible         =   False
   Width           =   406
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
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
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
      Top             =   419
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   67
   End
   Begin TextField GenomeField
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   False
      BackColor       =   &cFF00FFFF
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
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
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
      Top             =   420
      Transparent     =   "False"
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   191
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
      Left            =   296
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
      Top             =   454
      Transparent     =   "False"
      Underline       =   False
      Visible         =   True
      Width           =   90
   End
   Begin PushButton CancelButt
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
      Left            =   194
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
      Top             =   454
      Transparent     =   "False"
      Underline       =   False
      Visible         =   True
      Width           =   90
   End
   Begin PushButton SelectGenomeButt
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
      Left            =   296
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   13
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   421
      Transparent     =   "False"
      Underline       =   False
      Visible         =   True
      Width           =   90
   End
   Begin CheckBox TerminatorCheckBox
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "#kScan4terminators"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
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
      TabIndex        =   16
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   376
      Transparent     =   "False"
      Underline       =   False
      Value           =   True
      Visible         =   True
      Width           =   366
   End
   Begin Separator Separator2
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   18
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   18
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   396
      Transparent     =   "False"
      Visible         =   True
      Width           =   406
   End
   Begin Listbox SigList
      AutoDeactivate  =   True
      AutoHideScrollbars=   True
      Bold            =   False
      Border          =   False
      ColumnCount     =   2
      ColumnsResizable=   False
      ColumnWidths    =   ""
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   -1
      Enabled         =   True
      EnableDrag      =   False
      EnableDragReorder=   False
      GridLinesHorizontal=   0
      GridLinesVertical=   0
      HasHeading      =   False
      HeadingIndex    =   -1
      Height          =   341
      HelpTag         =   "The genome will be searched with all the profiles checked"
      Hierarchical    =   False
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      RequiresSelection=   False
      Scope           =   0
      ScrollbarHorizontal=   False
      ScrollBarVertical=   True
      SelectionType   =   0
      ShowDropIndicator=   False
      TabIndex        =   19
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   0
      Transparent     =   "False"
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   406
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin BevelButton SelectAllButton
      AcceptFocus     =   True
      AutoDeactivate  =   True
      BackColor       =   &c00000000
      Bevel           =   4
      Bold            =   False
      ButtonType      =   0
      Caption         =   "#kSelectAll"
      CaptionAlign    =   3
      CaptionDelta    =   0
      CaptionPlacement=   1
      Enabled         =   True
      HasBackColor    =   False
      HasMenu         =   0
      Height          =   22
      HelpTag         =   ""
      Icon            =   0
      IconAlign       =   0
      IconDX          =   0
      IconDY          =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   20
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   342
      Transparent     =   "False"
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   120
   End
   Begin BevelButton DeselectAllButton
      AcceptFocus     =   True
      AutoDeactivate  =   True
      BackColor       =   &c00000000
      Bevel           =   4
      Bold            =   False
      ButtonType      =   0
      Caption         =   "#kDeselectAll"
      CaptionAlign    =   3
      CaptionDelta    =   0
      CaptionPlacement=   1
      Enabled         =   True
      HasBackColor    =   False
      HasMenu         =   0
      Height          =   22
      HelpTag         =   ""
      Icon            =   0
      IconAlign       =   0
      IconDX          =   0
      IconDY          =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   119
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   21
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   342
      Transparent     =   "False"
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   120
   End
   Begin BevelButton BevelButton3
      AcceptFocus     =   True
      AutoDeactivate  =   True
      BackColor       =   &c00000000
      Bevel           =   4
      Bold            =   False
      ButtonType      =   0
      Caption         =   ""
      CaptionAlign    =   3
      CaptionDelta    =   0
      CaptionPlacement=   1
      Enabled         =   False
      HasBackColor    =   False
      HasMenu         =   0
      Height          =   22
      HelpTag         =   ""
      Icon            =   0
      IconAlign       =   0
      IconDX          =   0
      IconDY          =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   238
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   22
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   342
      Transparent     =   "False"
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   168
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  BuildSigArray
		  AdjustLayout4linux(me)
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h1, Description = 4275696C645369674172726179
		Protected Sub BuildSigArray()
		  dim m,n as integer
		  dim f as folderitem
		  dim aName as string
		  
		  f=Profile_f
		  m=f.Count
		  for n=1 to m
		    'dim dis as string= f.Item(n).DisplayName+": "+f.Item(n).type
		    'msgbox dis
		    #if Target64Bit 
		      if right(f.Item(n).name,4)=".sig" then
		        aName = f.Item(n).DisplayName
		        aName = left(aName,len(aName)-4) 'drop the .sig part
		        SigList.AddRow
		        SigList.Cell(SigList.LastIndex, 1) = aName
		        SigList.CellCheck(SigList.LastIndex,0) = true
		      end if
		    #else
		      if f.Item(n).Type="SigmoidFile" then
		        aName = f.Item(n).DisplayName
		        aName = left(aName,len(aName)-4) 'drop the .sig part
		        SigList.AddRow
		        SigList.Cell(SigList.LastIndex, 1) = aName
		        SigList.CellCheck(SigList.LastIndex,0) = true
		      end if
		    #endif
		  next
		  SigList.SortedColumn=1
		  SigList.ColumnsortDirection(1)=ListBox.SortAscending
		  SigList.sort
		  
		  Exception err
		    ExceptionHandler(err,"ScanGenomeWin:BuildSigArray")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ScanGenome()
		  dim k,l,m,n,SigCount,HitCount as integer
		  dim time as double
		  dim f as folderitem
		  dim infileName as string
		  
		  Logowin.ScanningGenome=true 'to prevent file writing messages
		  infileName=logowin.genomefile.displayname
		  f=Profile_f
		  m=f.Count
		  Sigcount=0
		  dim GenomeScanOut as new FolderItem
		  GenomeScanOut = TemporaryFolder.child("GenomeScanOut")
		  time= Microseconds
		  'HmmGenSettingsWin.EvalueField.text="300"        'workaround for bitscore threshold not available
		  Dim f2 as FolderItem=GetSaveFolderItem("????","hmm_out.gbk")
		  If f2 <> nil then
		    for n=1 to m
		      'dim dis as string= f.Item(n).DisplayName+": "+f.Item(n).type
		      'msgbox dis
		      if f.Item(n).Type="SigmoidFile" OR (f.Item(n).Directory AND right(f.Item(n).Name,4)=".sig") then
		        for k=0 to SigList.ListCount-1
		          if SigList.CellCheck(k,0) = true AND f.Item(n).DisplayName=SigList.Cell(k,1)+".sig" then
		            'Scan the genome!
		            LogoWin.LoadAlignment f.Item(n)
		            logowin.ChangeView("Logo")
		            app.DoEvents  'otherwise logo picture isn't updated
		            nhmmerSettingsWin.GenomeField.text=LogoWin.GenomeFile.ShellPath
		            nhmmerSettingsWin.ReadOptions
		            if NOT LogoWin.nhmmer then
		              'exit on error
		              LogoWin.WriteToSTDOUT(lineEnd+"Genome scan interrupted due to nhmmer error")
		              return
		            end if
		            HmmGenSettingsWin.ReadOptions
		            LogoWin.outfile=GenomeScanOut
		            if NOT LogoWin.HmmGen then
		              'exit on error
		              LogoWin.WriteToSTDOUT(lineEnd+"Genome scan interrupted due to HmmGen.py script error")
		              return
		            end if
		            HitCount=HitCount+LogoWin.LastHitNo
		            dim tmpfile as folderitem
		            tmpfile=TemporaryFolder.child("GenomeScanIn")
		            if tmpfile.Exists then
		              tmpfile.Delete
		            End If
		            GenomeScanOut.CopyFileTo tmpfile
		            LogoWin.genomefile=tmpfile
		            SigCount=SigCount+1
		          end if
		        next
		      end if
		    next
		    
		    if f2.Exists then
		      f2.Delete
		    End If
		    if TerminatorCheckBox.value then
		      LogoWin.outfile=f2
		      if LogoWin.TermGen then
		        'if TermGenSettingsWin.GenomeBrowserCheckBox.Value then 'Load the Seq into browser
		        'GenomeWin.opengenbankfile(outFile)
		        'GenomeWin.ShowGenomeStart
		        ''genomeWin.ShowHit
		        'end if
		      end if
		    else
		      GenomeScanOut.CopyFileTo f2
		    End If
		    
		    dim min, sec As integer
		    dim timestring As string
		    sec=(Microseconds-Time)/1000000
		    if sec>60 then
		      min=sec/60
		      sec=sec-min*60
		      timestring= str(min)+" minutes "+str(sec)+" seconds "
		    else
		      timestring= str(sec)+" seconds "
		    End If
		    
		    
		    logowin.WriteToSTDOUT(EndOfLine+EndOfLine+timestring+"spent scanning "+infileName+" with "+str(SigCount)+" profiles.")
		    logowin.WriteToSTDOUT(EndOfLine+str(HitCount)+" sites added to feature table.")
		    logowin.WriteToSTDOUT(EndOfLine+"Modified GenBank file written to "+f2.ShellPath+endofline)
		    Logowin.ScanningGenome=false
		    
		  End If
		  
		  Exception err
		    ExceptionHandler(err,"ScanGenomeWin:ScanGenome")
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		SigArrayCount As Integer
	#tag EndProperty


#tag EndWindowCode

#tag Events RunButton
	#tag Event
		Sub Action()
		  
		  self.hide
		  self.ScanGenome
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CancelButt
	#tag Event
		Sub Action()
		  self.hide
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SelectGenomeButt
	#tag Event
		Sub Action()
		  LogoWin.GenomeFile=GetOpenFolderItem("")
		  if LogoWin.GenomeFile<> Nil then
		    LogoWin.WriteToSTDOUT (EndofLine+"Genome from "+LogoWin.GenomeFile.shellpath+" loaded.")
		    if LogoWin.Logofile<>nil then
		      LogoWin.LogoWinToolbar.Item(1).Enabled=true
		      LogoWin.LogoWinToolbar.Item(2).Enabled=false 'new genome, no nhmmer output yet
		      LogoWin.LogoWinToolbar.Item(3).Enabled=true
		      
		    end if
		    GenomeField.text=LogoWin.Genomefile.shellpath
		    RunButton.enabled=true
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SigList
	#tag Event
		Sub Open()
		  me.ColumnWidths="30,*"
		  me.ColumnType(0)=Listbox.TypeCheckbox
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SelectAllButton
	#tag Event
		Sub Action()
		  dim k as integer
		  
		  for k=0 to SigList.ListCount-1
		    SigList.CellCheck(k,0) = true
		  next
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events DeselectAllButton
	#tag Event
		Sub Action()
		  dim k as integer
		  
		  for k=0 to SigList.ListCount-1
		    SigList.CellCheck(k,0) = false
		  next
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
		InitialValue="True"
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
		Name="SigArrayCount"
		Group="Behavior"
		Type="Integer"
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
