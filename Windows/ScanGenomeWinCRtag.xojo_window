#tag Window
Begin Window ScanGenomeWinCRtag
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Composite       =   False
   Frame           =   8
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   516
   ImplicitInstance=   True
   LiveResize      =   "True"
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
   Width           =   408
   Begin PushButton RunButton
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   0
      Cancel          =   False
      Caption         =   "#kRun"
      Default         =   True
      Enabled         =   True
      Height          =   31
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   298
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
      Top             =   469
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   90
   End
   Begin Separator Separator2
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   13
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
      Top             =   444
      Transparent     =   True
      Visible         =   True
      Width           =   408
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
      Height          =   373
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
      Top             =   73
      Transparent     =   True
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   408
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin PushButton PushButton1
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
      Left            =   206
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MacButtonStyle  =   "0"
      Scope           =   0
      TabIndex        =   20
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   474
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
      Height          =   52
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   9
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Multiline       =   True
      Scope           =   0
      Selectable      =   False
      TabIndex        =   21
      TabPanelIndex   =   0
      TabStop         =   True
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   20
      Transparent     =   False
      Underline       =   False
      Value           =   "Search the built-in CR tagged TFBS profile library for CR tags matching TFs  from this genome. One TF family at a time."
      Visible         =   True
      Width           =   390
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  BuildHMMArrayCR
		  AdjustLayout4linux(me)
		  
		End Sub
	#tag EndEvent


	#tag MenuHandler
		Function FileClose() As Boolean Handles FileClose.Action
			Close
			Return True
			
		End Function
	#tag EndMenuHandler


	#tag Method, Flags = &h1, Description = 4275696C645369674172726179
		Protected Sub BuildHMMArrayCR()
		  Dim m,n,k As Integer
		  dim froot,f,f2, fitemn, fitemk as folderitem
		  dim aName, sigfolpath, temp as string
		  
		  'froot=GetFolderItem("").Parent
		  if Resources_f=Nil then 'there's a glitch with event order on some systems
		    GetResources_f
		  end if
		  froot=Resources_f  
		  
		  f2=froot.child("TF_HMMs") 
		  'f=froot.child("RegPreciseExport") 
		  f=froot.child("CalibratedProfiles")
		  
		  if not f.Exists then
		    MsgBox("Folder with sig profiles not found, check path: "+str(f.ShellPath))
		    exit
		  end 
		  m=f2.Count
		  
		  for n=1 to m
		    if f2.item(n).Visible=True then
		      fitemn=f2.item(n)
		      '#if Target64Bit 
		      if right(fitemn.Name,4)=".hmm" then 
		        aName = Replaceall(fitemn.DisplayName, ".hmm","")
		        'handle special names:
		        
		        
		        aname=FamilyNameFromHmmName(aname)
		        
		        'if InStr(aName,"_")>0 then
		        'aName=NthField(aName,"_",1) 
		        'end
		        
		        for k=1 to f.Count
		          if f.Item(k).Directory=false then
		            Continue 
		          end
		          fitemk=f.item(k)
		          temp= fitemk.DisplayName
		          if instr(temp, aName)>0 then                          'allows customised (to an extent) folder names
		            if sigfolpath="" then
		              sigfolpath=fitemk.ShellPath
		            else
		              sigfolpath=sigfolpath+";"+fitemk.ShellPath       'only the 1st path is used now
		            end
		          end
		        next
		        SigList.AddRow
		        SigList.Cell(SigList.LastIndex, 3)= fitemn.ShellPath
		        SigList.Cell(SigList.LastIndex, 1) = fitemn.DisplayName
		        if sigfolpath="" then msgbox("Missing CalibratedProfiles sub-folder for"+" "+aname)
		        siglist.Cell(SigList.LastIndex,2)=sigfolpath
		        SigList.CellCheck(SigList.LastIndex,0) = false
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
		Function CompareTags(tag1 as string, tag2 as string, maxdiff as integer) As integer
		  // returns Levenshtein distance between two strings
		  // (doesn't count indels as they are not expected in CR tags)
		  
		  If  tag1.LenB<>tag2.LenB Then 
		    return maxdiff+1
		  else
		    dim mb1 as MemoryBlock =tag1
		    dim mb2 as MemoryBlock=tag2
		    if mb1.size<>mb2.size then
		      return maxdiff+1
		    Else
		      dim diff as integer=0
		      dim lastIndex as integer = mb1.Size - 1
		      for mbindex as integer=0 to lastIndex
		        if diff>maxdiff then return diff
		        if mb1.byte(mbindex)<>mb2.byte(mbindex) then
		          diff=diff+1
		        end
		      next
		      return diff
		    end
		  end
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ScanGenomeCR()
		  dim k,SigCount,HitCount as integer
		  dim time as double
		  dim f,f3 as folderitem
		  dim infileName, crtags(-1), sigtagbase(-1), sigpathbase(-1), protdescr(-1),notfound(-1), summary(-1), hmmsearch, hmmsearchcopy, fname, summstring as string
		  dim cdsfile as FolderItem
		  dim count1 as Integer
		  
		  cdsfile=TemporaryFolder.child("gbkProtexport.fasta") 'getting converted gbk file 
		  Logowin.ScanningGenome=true 'to prevent file writing messages
		  infileName=logowin.genomefile.displayname
		  
		  Sigcount=0
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
		        hmmsearch=HMMsearchWithCRtagsCR(cdsfile, str(SigList.Cell(k,3)),true)
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
		              LogoWin.LogoTabs.TabIndex=0
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
		        summstring=EndOfLine.Unix+"For the model "+Str(SigList.Cell(k,3))+" total tags count is: "+Str(ubound(crtags)+1)+", no profiles with matching CR tags found for "+Str(count1)+EndOfLine.Unix+" proteins: "+Str(Join(notfound, ";"))+EndOfLine.Unix
		        summary.Append(summstring)
		      end
		    next
		    
		    if f2.Exists then
		      f2.Delete
		    End If
		    'if TerminatorCheckBox.value then
		    'LogoWin.outfile=f2
		    'if LogoWin.TermGen then
		    ''if TermGenSettingsWin.GenomeBrowserCheckBox.Value then 'Load the Seq into browser
		    ''GenomeWin.opengenbankfile(outFile)
		    ''GenomeWin.ShowGenomeStart
		    '''genomeWin.ShowHit
		    ''end if
		    'end if
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
		  'End If
		  
		  Exception err
		    ExceptionHandler(err,"ScanGenomeWinCRtag:ScanGenomeCR")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ScanGenomeCR1()
		  Dim k,SigCount As Integer
		  'dim time as double
		  dim f,f3 as folderitem ' f - path to folder with sig files of the selected family, f3 - path to sig with matched crtag 
		  dim infileName, crtags(-1), sigtagbase(-1), sigpathbase(-1), protdescr(-1),notfound(-1), summary(-1), hmmsearch, fname, summstring, tag, basename,content as string
		  dim cdsfile as FolderItem
		  dim protNFound as Integer
		  if GenomeWin.GenomeFile <> Nil then
		    'LogoWin.WriteToSTDOUT (EndofLine+"Genome from "+LogoWin.GenomeFile.shellpath+" loaded.")
		    gbk2fasta(GenomeWin.GenomeFile)
		  else
		    MsgBox("Please, load the genome file first (File -> Open Genome...")
		    return
		  end
		  
		  cdsfile=TemporaryFolder.child("gbkProtexport.fasta") 'getting converted gbk file 
		  if cdsfile is Nil then
		    MsgBox("Exporting genome file to fasta failed, check destination path: "+str(TemporaryFolder)+EndOfLine.UNIX)
		    return
		  end
		  Logowin.ScanningGenome=true 'to prevent file writing messages
		  infileName=logowin.genomefile.displayname
		  Sigcount=0
		  For k=0 To SigList.ListCount-1
		    if SigList.CellCheck(k,0) = true then
		      dim w as new ScanGenomeCRtagMotifs
		      w.Title=str(SigList.Cell(k,1))+" family"
		      protNFound =0 'counting proteins without crtag in base
		      redim crtags(-1)
		      redim protdescr(-1) 
		      redim sigtagbase(-1)
		      redim sigpathbase(-1)
		      redim notfound(-1)
		      hmmsearch=HMMsearchWithCRtagsCR(cdsfile, Str(SigList.Cell(k,3)),false)
		      for tagCount as integer =1 to UBound(DeNovoTFBSinference.CRtags)
		        tag=DeNovoTFBSinference.CRtags(tagCount)
		        if instr(tag,"[indel")>0 or instr(tag,"error")>0 or InStr(tag,"no_CRtag")>0 then Continue
		        crtags.Append(DeNovoTFBSinference.CRtags(tagCount))
		        protdescr.Append(DeNovoTFBSinference.ProtNames(tagCount))
		      next
		      
		      dim index as integer
		      dim apath as string=Siglist.Cell(k,2)
		      dim sigf as FolderItem
		      If InStr(apath, ";")>0 Then
		        apath=NthField(apath, ";", 1) 'multiple paths for one hmm family are allowed, but not done yet, processing just the first one  
		        ' put all profiles for the family into one folder for now
		      end
		      f=getfolderitem(apath, FolderItem.PathTypeShell)
		      for j as integer = 1 to f.count
		        if f.Item(j).Visible<>True then Continue
		        sigf=f.Item(j)
		        fname = sigf.DisplayName
		        if right(fname,4)<>".sig" or instr(fname,"[indel")>0 or instr(fname,"error")>0 or InStr(fname,"no_CRtag")>0 then Continue
		        fname=NthField(fname,"_",1)
		        index=sigtagbase.IndexOf(fname)
		        'grouping sig-files with the same crtags
		        if  index>-1 then
		          sigpathbase(index)=sigpathbase(index)+sigf.ShellPath+EndOfLine.UNIX
		        else
		          sigtagbase.append(fname)
		          sigpathbase.append(sigf.ShellPath+EndOfLine.UNIX)
		        end
		      next
		      
		      for tagsCount as integer =0 to ubound(CRtags) 
		        'compare crtags in genome with tags in sigs from selected family folder 
		        index=sigtagbase.indexof(CRtags(tagsCount))
		        if index>-1 then
		          if instr(sigpathbase(index), EndOfLine.unix)>0 then 
		            dim tmPath(-1) as string
		            tmPath=sigpathbase(index).Split(EndOfLine.UNIX)
		            for pathCount as integer=0 to UBound(tmPath)-1
		              f3=getfolderitem(tmPath(pathCount),FolderItem.PathTypeShell)
		              if f3.Exists then 
		                dim vv as VirtualVolume
		                dim sigfasta as FolderItem
		                dim infofile as FolderItem
		                dim tis as textinputstream
		                vv=f3.openAsVirtualVolume
		                if vv<> nil then
		                  basename=nthfield(f3.DisplayName,".sig",1)
		                  sigfasta=vv.root.child(basename+".fasta")
		                  infofile=vv.root.child(basename+".info")
		                  
		                  tis=sigfasta.OpenAsTextFile
		                  
		                  if tis<>nil then
		                    content=tis.ReadAll   'hmmfile
		                    tis.Close
		                    dim p as Picture = MakeLogoPic(content, 60)
		                    w.Listbox1.AddRow
		                    
		                    // Listbox1 columns are:
		                    '0 - checkbox
		                    '1 - Profile name
		                    '2 - Protein_ID
		                    '3 - Gene
		                    '4 – Logo
		                    '5 - Site #
		                    '6 - ShellPath to profile file
		                    '7 - Profile info
		                    
		                    w.Listbox1.Cell(w.Listbox1.LastIndex,1)=basename
		                    w.Listbox1.Cell(w.Listbox1.LastIndex,2)=protdescr(tagsCount)
		                    w.Listbox1.Cell(w.Listbox1.LastIndex,3)=NthField(NthField(DeNovoTFBSinference.CDSseqs,protdescr(tagsCount),2)," ",2)
		                    w.Listbox1.RowTag(w.Listbox1.LastIndex)=p
		                    w.Listbox1.Cell(w.Listbox1.LastIndex,5)=str(countSubst(content,">"))
		                    w.Listbox1.Cell(w.Listbox1.LastIndex,6)=f3.ShellPath
		                    tis=infofile.OpenAsTextFile
		                    if tis<> nil then 
		                      content=tis.ReadAll 
		                      tis.close
		                      'content=ReplaceAll(content,". ","."+EndOfLine.UNIX)
		                    end
		                    w.Listbox1.Cell(w.Listbox1.LastIndex,7)=content
		                    
		                  end if
		                  for sigTCount as integer=0 to UBound(sigtagbase)
		                    dim tagsDiff as Integer
		                    tagsDiff=CompareTags(CRtags(tagsCount),sigtagbase(sigTCount),2) '
		                    if  tagsDiff>0 and tagsDiff<=2 then
		                      if instr(sigpathbase(index), EndOfLine.unix)>0 then 
		                        dim tmPath2(-1) as string
		                        tmPath2=sigpathbase(sigTCount).Split(EndOfLine.UNIX)
		                        for pathCount2 as integer=0 to UBound(tmPath2)-1
		                          f3=getfolderitem(tmPath2(pathCount2),FolderItem.PathTypeShell)
		                          if f3.Exists then 
		                            vv=f3.openAsVirtualVolume
		                            if vv<> nil then
		                              basename=nthfield(f3.DisplayName,".sig",1)
		                              sigfasta=vv.root.child(basename+".fasta")
		                              infofile=vv.root.child(basename+".info")
		                              tis=sigfasta.OpenAsTextFile
		                              
		                              if tis<>nil then
		                                content=tis.ReadAll   'hmmfile
		                                tis.Close
		                                dim p as Picture = MakeLogoPic(content, 60)
		                                w.Listbox1.AddRow
		                                w.Listbox1.Cell(w.Listbox1.LastIndex,1) = str(tagsDiff)+"~"+str(basename)
		                                w.Listbox1.Cell(w.Listbox1.LastIndex,2)=protdescr(tagsCount) 'added TF name
		                                w.Listbox1.Cell(w.Listbox1.LastIndex,3)=Nthfield(Nthfield(DeNovoTFBSinference.CDSseqs,protdescr(tagsCount),2)," ",2)
		                                w.Listbox1.RowTag(w.Listbox1.LastIndex)=p
		                                w.Listbox1.Cell(w.Listbox1.LastIndex,5)=str(countSubst(content,">"))
		                                w.Listbox1.Cell(w.Listbox1.LastIndex,6)=f3.ShellPath
		                                
		                                tis=infofile.OpenAsTextFile
		                                if tis<> nil then 
		                                  content=tis.ReadAll 
		                                  tis.close
		                                  'content=ReplaceAll(content,". ",EndOfLine.UNIX+".")
		                                end
		                                w.Listbox1.Cell(w.Listbox1.LastIndex,7)=content
		                                
		                              end if
		                              
		                            end
		                            
		                          else
		                            LogoWin.WriteToSTDOUT(EndOfLine.UNIX+"Model path not found"+EndOfLine.UNIX)
		                            Continue
		                          end if
		                        next
		                        
		                      end
		                    end
		                  next
		                  
		                end
		                
		              else
		                LogoWin.WriteToSTDOUT(EndOfLine.UNIX+"Model path not found"+EndOfLine.UNIX)
		                Continue
		              end if
		            next
		            
		          end
		        else
		          basename=""
		          for sigTCount as integer=0 to UBound(sigtagbase)
		            dim tagsDiff as Integer
		            tagsDiff=CompareTags(CRtags(tagsCount),sigtagbase(sigTCount),2) '
		            if  tagsDiff>0 and tagsDiff<=2 then
		              if instr(sigpathbase(sigTCount), EndOfLine.unix)>0 then 
		                dim tmPath2(-1) as string
		                tmPath2=sigpathbase(sigTCount).Split(EndOfLine.UNIX)
		                for pathCount2 as integer=0 to UBound(tmPath2)-1
		                  f3=getfolderitem(tmPath2(pathCount2),FolderItem.PathTypeShell)
		                  dim vv as VirtualVolume
		                  dim sigfasta as FolderItem
		                  dim infofile as FolderItem
		                  dim tis as textinputstream
		                  if f3.Exists then 
		                    vv=f3.openAsVirtualVolume
		                    if vv<> nil then
		                      basename=nthfield(f3.DisplayName,".sig",1)
		                      sigfasta=vv.root.child(basename+".fasta")
		                      infofile=vv.root.child(basename+".info")
		                      tis=sigfasta.OpenAsTextFile
		                      
		                      if tis<>nil then
		                        content=tis.ReadAll   'hmmfile
		                        tis.Close
		                        dim p as Picture = MakeLogoPic(content, 60)
		                        w.Listbox1.AddRow
		                        w.Listbox1.Cell(w.Listbox1.LastIndex,1)="!_"+str(tagsDiff)+"_"+basename
		                        w.Listbox1.Cell(w.Listbox1.LastIndex,2)=protdescr(tagsCount) 'added TF name
		                        w.Listbox1.Cell(w.Listbox1.LastIndex,3)=Nthfield(Nthfield(DeNovoTFBSinference.CDSseqs,protdescr(tagsCount),2)," ",2)
		                        w.Listbox1.RowTag(w.Listbox1.LastIndex)=p
		                        w.Listbox1.Cell(w.Listbox1.LastIndex,5)=str(countSubst(content,">"))
		                        w.Listbox1.Cell(w.Listbox1.LastIndex,6)=f3.ShellPath
		                        
		                        tis=infofile.OpenAsTextFile
		                        if tis<> nil then 
		                          content=tis.ReadAll 
		                          tis.close
		                          'content=ReplaceAll(content,". ",EndOfLine.UNIX+".")
		                        end
		                        w.Listbox1.Cell(w.Listbox1.LastIndex,7)=content
		                        
		                      end if
		                      
		                    end
		                    
		                  else
		                    LogoWin.WriteToSTDOUT(EndOfLine.UNIX+"Model path not found"+EndOfLine.UNIX)
		                    Continue
		                  end if
		                next
		                
		              end
		            end
		          next
		          if basename ="" then
		            notfound.append(protdescr(tagsCount)) 
		            protNFound=protNFound+1
		          end
		        end
		      next
		      
		      ' summary stats
		      summstring=Endofline.Unix+"For the model "+str(SigList.Cell(k,3))+" total tags count is: "+str(ubound(CRtags)+1)
		      if protNFound>0 then
		        summstring=summstring+", no profiles with matching CR tags found for "+Str(protNFound)+EndOfLine.Unix+" proteins: "+Str(Join(notfound, ";"))+EndOfLine.Unix
		      End
		      summary.Append(summstring)
		      
		      w.Show
		    end
		    
		  next
		  
		  
		  logowin.WriteToSTDOUT(Endofline.unix+"Summary: "+endofline.UNIX)
		  for sum as Integer=0 to summary.Ubound
		    logowin.WriteToSTDOUT(str(summary(sum)))
		  next
		  
		  
		  Exception err
		    ExceptionHandler(err,"ScanGenomeWinCRtag:ScanGenomeCR1")
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
		  self.ScanGenomeCR1
		  
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
	#tag Event
		Sub CellAction(row As Integer, column As Integer)
		  'preventing a multiple choice of the hmm models 
		  If column = 0 Then
		    For i As Integer = 0 To Me.ListCount-1
		      If i <> row Then
		        Me.CellCheck(i, column) = False
		      End If
		    Next
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton1
	#tag Event
		Sub Action()
		  self.close
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
		Name="Resizeable"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="SigArrayCount"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
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
