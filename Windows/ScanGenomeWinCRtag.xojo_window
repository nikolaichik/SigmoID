#tag Window
Begin Window ScanGenomeWinCRtag
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
		  BuildSigArrayCR
		  AdjustLayout4linux(me)
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h1, Description = 4275696C645369674172726179
		Protected Sub BuildSigArrayCR()
		  dim m,n,k,k1 as integer
		  dim froot,f,f2, fitemn, fitemk as folderitem
		  dim aName, sigfolpath, temp, profilespath as string
		  
		  'froot=GetFolderItem("").Parent
		  if Resources_f=Nil then 'there's a glitch with event order on some systems
		    GetResources_f
		  end if
		  froot=Resources_f  
		  
		  f2=froot.child("TF_HMMs") 
		  f=froot.child("RegPreciseExport") 
		  if not f.Exists then
		    MsgBox("Folder with sig profiles not found, check path: "+str(f.NativePath))
		    exit
		  end 
		  m=f2.Count
		  
		  for n=1 to m
		    if f2.item(n).Visible=True then
		      fitemn=f2.item(n)
		      '#if Target64Bit 
		      if right(fitemn.Name,4)=".hmm" then 
		        aName = Replaceall(fitemn.DisplayName, ".hmm","")
		        if InStr(aName,"_")>0 then
		          aName=NthField(aName,"_",1) 
		        end
		        if InStr(aname, "GerE")>0 then
		          aName="LuxR"
		        end
		        for k=1 to f.Count
		          if f.Item(k).Directory=false then
		            Continue 
		          end
		          fitemk=f.item(k)
		          temp= fitemk.DisplayName
		          if instr(temp, aName)>0 then
		            if sigfolpath="" then
		              sigfolpath=fitemk.NativePath
		            else
		              sigfolpath=sigfolpath+";"+fitemk.NativePath
		            end
		          end
		        next
		        SigList.AddRow
		        SigList.Cell(SigList.LastIndex, 3)= fitemn.NativePath
		        SigList.Cell(SigList.LastIndex, 1) = fitemn.DisplayName
		        siglist.Cell(SigList.LastIndex,2)=sigfolpath
		        SigList.CellCheck(SigList.LastIndex,0) = true
		        sigfolpath=""
		      end if
		      '#else
		      'if f.Item(n).Type="SigmoidFile" then
		      'aName = f.Item(n).DisplayName
		      'aName = left(aName,len(aName)-4) 'drop the .sig part
		      'SigList.AddRow
		      'SigList.Cell(SigList.LastIndex, 1) = aName
		      'SigList.CellCheck(SigList.LastIndex,0) = true
		      'end if
		      '#endif
		    end
		  next
		  SigList.SortedColumn=1
		  SigList.ColumnsortDirection(1)=ListBox.SortAscending
		  SigList.sort
		  
		  Exception err
		    ExceptionHandler(err,"ScanGenomeWinCR:BuildSigArrayCR")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ScanGenomeCR()
		  dim k,l,m,n,SigCount,HitCount as integer
		  dim time as double
		  dim f,f3 as folderitem
		  dim infileName, crtags(-1), sigtagbase(-1), sigpathbase(-1), protdescr(-1),notfound(-1), summary(-1), hmmsearch, hmmsearchcopy, fname, summstring as string
		  dim cdsfile as FolderItem
		  dim count1 as Integer
		  
		  cdsfile=TemporaryFolder.child("gbkProtexport.fasta") 'getting converted gbk file 
		  Logowin.ScanningGenome=true 'to prevent file writing messages
		  infileName=logowin.genomefile.displayname
		  
		  Sigcount=0
		  dim checked as integer = 0
		  dim GenomeScanOut as new FolderItem
		  GenomeScanOut = TemporaryFolder.child("GenomeScanOut")
		  time= Microseconds
		  'HmmGenSettingsWin.EvalueField.text="300"        'workaround for bitscore threshold not available
		  Dim f2 as FolderItem=GetSaveFolderItem("????","hmm_out.gbk")
		  If f2 <> nil then
		    
		    for k=0 to SigList.ListCount-1
		      if SigList.CellCheck(k,0) = true then
		        count1 =0 'counting proteins without crtag in base
		        redim crtags(-1)
		        redim protdescr(-1) 
		        redim sigtagbase(-1)
		        redim sigpathbase(-1)
		        redim notfound(-1)
		        hmmsearch=HMMsearchWithCRtagsCR(cdsfile, str(SigList.Cell(k,3)))
		        hmmsearchcopy=hmmsearch
		        dim rx1 as new RegEx
		        dim rx2 as new RegEx
		        rx1.SearchPattern = "(?<=^\>)(.*)(?=\>)" ' find a crtag in hmmsearch output, mask for strings like: >CRTAG>
		        dim match as RegExMatch = rx1.Search(hmmsearchcopy)
		        dim matchstring, matchstring2 as string = " "
		        dim c1 as integer = 0
		        ' making array from crtags, that hmmsearch has found
		        'while matchs isa Object 'loop
		        while matchstring<>"" 
		          try
		            matchstring=match.SubExpressionString(0)
		          catch NilObjectException ' some strange thing with cycle, sometimes gets loop
		          end try
		          Crtags.append(matchstring)
		          rx2.SearchPattern = "(?<="+trim(matchstring)+">)\s*\S*\s*\S*" ' getting protein description for given crtag 
		          dim match2 as RegExMatch = rx2.search(hmmsearchcopy)
		          try 
		            matchstring2=match2.SubExpressionString(0)
		          catch NilObjectException
		            c1=c1+1 'count exceptions
		          end try
		          protdescr.Append(matchstring2) ' creating array with protein description
		          hmmsearchcopy=Replace(hmmsearchcopy, matchstring, "del")
		          hmmsearchcopy=Replace(hmmsearchcopy, ">del>", "")
		          match = rx1.Search(hmmsearchcopy) 
		          try
		            matchstring=match.SubExpressionString(0)
		          catch NilObjectException
		            exit
		          end try
		        wend
		        dim apath as string=Siglist.Cell(k,2)
		        dim ftest as FolderItem
		        if instr(apath, ";")>0 then
		          apath=NthField(apath, ";", 1) 'multiple pathes for one hmm family is allowed, but not done yet, process first  
		        end
		        f=getfolderitem(apath, FolderItem.PathTypeNative)
		        for j as integer = 1 to f.count
		          if f.Item(j).Visible<>True then Continue
		          ftest=f.Item(j)
		          fname = ftest.DisplayName
		          if right(fname,4)<>".sig" or instr(fname,"[indel")>0 or instr(fname,"error")>0 or InStr(fname,"no_CRtag")>0 then Continue
		          sigtagbase.append(NthField(fname,"_",1))
		          sigpathbase.append(ftest.ShellPath)
		        next
		        
		        for j1 as integer =0 to ubound(crtags)
		          dim index as integer
		          index=sigtagbase.indexof(crtags(j1))
		          if index>-1 then
		            f3=getfolderitem(sigpathbase(index),FolderItem.PathTypeShell)
		            if f3.Exists then 
		              LogoWin.LoadAlignment f3
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
		            else
		              LogoWin.WriteToSTDOUT(EndOfLine.UNIX+"Model path not found"+EndOfLine.UNIX)
		              Continue
		            end if
		          else
		            notfound.append(protdescr(j1))
		            count1=count1+1
		          end
		        next
		        ' summary stats
		        summstring=Endofline.Unix+"For the model "+str(SigList.Cell(k,3))+" total tags count is: "+str(ubound(crtags)+1)+", CRtags that were not processed: "+str(count1)+Endofline.Unix+"Details of proteins with tags that were not found in base: "+str(join(notfound, ";"))+EndOfLine.Unix
		        summary.Append(summstring)
		      end
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
		    dim sum as Integer = summary.Ubound
		    logowin.WriteToSTDOUT(Endofline.unix+"Summary: "+endofline.UNIX)
		    for i1 as Integer=0 to sum
		      logowin.WriteToSTDOUT(str(summary(i1)))
		    next
		    
		    logowin.WriteToSTDOUT(EndOfLine+EndOfLine+timestring+"spent scanning "+infileName+" with "+str(SigCount)+" profiles." )
		    logowin.WriteToSTDOUT(EndOfLine+str(HitCount)+" sites added to feature table.")
		    logowin.WriteToSTDOUT(EndOfLine+"Modified GenBank file written to "+f2.ShellPath+endofline)
		    Logowin.ScanningGenome=false
		    LogoWin.Refresh
		    //'next
		  End If
		  
		  Exception err
		    ExceptionHandler(err,"ScanGenomeWinCRtag:ScanGenomeCR")
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
		  self.ScanGenomeCR
		  
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
		  gbk2fasta(LogoWin.GenomeFile)
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
		  me.ColumnCount=4
		  me.ColumnWidths="30,*,0,0"
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
