#tag Window
Begin Window deNovoWin
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   530
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   True
   MinWidth        =   64
   Placement       =   0
   Resizeable      =   True
   Title           =   "de novo TFBS inference "
   Visible         =   True
   Width           =   878
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
      Left            =   768
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
      Top             =   490
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
      Left            =   666
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
      Top             =   490
      Underline       =   False
      Visible         =   True
      Width           =   90
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
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   2
      TabPanelIndex   =   0
      Text            =   "#kOutFolder"
      TextAlign       =   2
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   458
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   111
   End
   Begin TextField OutputField
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
      Left            =   135
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
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   456
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   621
   End
   Begin PushButton ChooseButton
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
      Left            =   768
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   457
      Underline       =   False
      Visible         =   True
      Width           =   90
   End
   Begin GroupBox GroupBox1
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Protein database to search"
      Enabled         =   True
      Height          =   123
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
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   323
      Underline       =   False
      Visible         =   True
      Width           =   838
      Begin RadioButton RadioButton1
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "UniProt (full)"
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   359
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   798
      End
      Begin RadioButton RefProtBut
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "UniProt Reference Proteins"
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   391
         Underline       =   False
         Value           =   True
         Visible         =   True
         Width           =   798
      End
      Begin CheckBox FallBackCheck
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Look in full UniProt if less than 10 hits"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   61
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         State           =   1
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   417
         Underline       =   False
         Value           =   True
         Visible         =   True
         Width           =   777
      End
   End
   Begin Listbox HmmList
      AutoDeactivate  =   True
      AutoHideScrollbars=   True
      Bold            =   False
      Border          =   False
      ColumnCount     =   5
      ColumnsResizable=   True
      ColumnWidths    =   ""
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   -1
      Enabled         =   True
      EnableDrag      =   False
      EnableDragReorder=   False
      GridLinesHorizontal=   0
      GridLinesVertical=   0
      HasHeading      =   True
      HeadingIndex    =   -1
      Height          =   289
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
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   0
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   878
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
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
      Left            =   279
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   289
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   600
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
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   289
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   140
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
      Left            =   139
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   289
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   140
   End
   Begin mHTTPSocket hts2
      Address         =   ""
      BytesAvailable  =   0
      BytesLeftToSend =   0
      Handle          =   0
      httpProxyAddress=   ""
      httpProxyPort   =   0
      Index           =   -2147483648
      IsConnected     =   False
      LastErrorCode   =   0
      LocalAddress    =   ""
      LockedInPosition=   False
      Port            =   0
      RemoteAddress   =   ""
      Scope           =   0
      TabPanelIndex   =   0
      yield           =   False
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Activate()
		  hmmlist.SetFocus
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  RunCheck
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h1, Description = 4275696C645369674172726179
		Protected Sub BuildHmmArray()
		  dim l,m,n as integer
		  dim f as folderitem
		  dim hmmPath, fName, aLine,lineStart as string
		  dim inStream as TextInputStream
		  dim aNAME, ACC, DESC, CRtag, CRtagFileName as string
		  
		  'f=Profile_f
		  f=Resources_f.Child("TF_HMMs")
		  if f<>Nil then
		    if f.exists then
		      
		      m=f.Count
		      for n=1 to m
		        'dim dis as string= f.Item(n).DisplayName+": "+f.Item(n).type
		        'msgbox dis
		        
		        if right(f.Item(n).name,4)=".hmm" then
		          hmmPath = f.Item(n).ShellPath
		          fName = f.Item(n).DisplayName
		          fName = left(fName,len(fName)-4) 'drop the .sig part
		          
		          'get HMM info
		          instream=f.Item(n).OpenAsTextFile
		          
		          if instream<>nil then
		            aNAME=""
		            ACC=""
		            DESC=""
		            while (aNAME="" OR ACC="" OR DESC="")
		              aLine=inStream.ReadLine
		              lineStart=left(aline,6)
		              select case lineStart
		              case "NAME  "
		                aNAME=NthField(aLine,"NAME  ",2)
		              case "ACC   "
		                ACC=NthField(aLine,"ACC   ",2)
		              case "DESC  "
		                DESC=NthField(aLine,"DESC  ",2)
		              end select
		            wend
		            
		          end if
		          
		          'find matching CRtag file:
		          CRtagFileName=fName+".CRtag"
		          CRtag=""
		          for l=1 to m
		            if f.Item(l).name=CRtagFilename then
		              instream=f.Item(l).OpenAsTextFile
		              
		              if instream<>nil then
		                CRtag=trim(inStream.ReadAll)
		                instream.close
		                exit
		              end if
		            end if
		          next
		          if CRtag="" then
		            MsgBox "Can't find CR tag file for "+aName+".hmm"
		            return
		          end if
		          
		          'me.Heading(1)="Name"
		          'me.Heading(2)="Accession"
		          'me.Heading(3)="CR tag residues"
		          'me.Heading(4)="Description"
		          
		          
		          HmmList.AddRow
		          HmmList.Cell(HmmList.LastIndex, 1) = aNAME
		          HmmList.Cell(HmmList.LastIndex, 2) = ACC
		          HmmList.Cell(HmmList.LastIndex, 3) = CRtag
		          HmmList.Cell(HmmList.LastIndex, 4) = DESC
		          HmmList.Cell(HmmList.LastIndex, 5) = hmmPath
		          
		          HmmList.CellCheck(HmmList.LastIndex,0) = false
		          
		        end if
		        
		        
		        
		      next
		      HmmList.SortedColumn=1
		      HmmList.ColumnsortDirection(1)=ListBox.SortAscending
		      HmmList.sort
		      
		    end if
		  end if
		  
		  Exception err
		    ExceptionHandler(err,"deNovoWin:BuildHmmArray")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RunCheck()
		  RunButton.Enabled=true
		  
		  if HmmList.SelCount=0 then
		    RunButton.Enabled=false
		    return
		  end if
		  
		  if outF=nil then
		    RunButton.Enabled=false
		    return
		  end if
		  
		  if NOT OutF.exists then
		    RunButton.Enabled=false
		    return
		  end if 
		  
		  if LogoWin.GenomeFile=nil then
		    RunButton.Enabled=false
		    return
		  end if
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h1
		Protected alignmentsFile As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		Fasta_files As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		MEME_results As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected OutF As folderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		phmmerRes As String
	#tag EndProperty

	#tag Property, Flags = &h0
		phmmer_results As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		TomTom_results As FolderItem
	#tag EndProperty


#tag EndWindowCode

#tag Events RunButton
	#tag Event
		Sub Action()
		  'a fix for wrong log pane height on mac:
		  if logoWin.TopPanel.Visible then
		    
		    logoWin.DownshiftLog true
		    logoWin.DownshiftLog false
		  else
		    logoWin.DownshiftLog true
		    logoWin.DownshiftLog false
		  end if
		  
		  self.hide
		  
		  
		  
		  dim cli, hmmSearchRes, CRtagPositions, table, currentHit as string
		  dim dataForMeme as string
		  dim sh as shell
		  dim hmmPath as string
		  dim CDSfile as folderitem
		  dim resFile as folderitem
		  dim instream as TextInputStream
		  dim outStream as TextOutputStream
		  
		  dim phmmerSearchSeparator as string = "================================================================================================================"
		  dim hitCount as integer
		  
		  
		  CDSseqs=""
		  
		  hmmPath=HmmList.Cell(HmmList.ListIndex,5)
		  CRtagPositions=HmmList.Cell(HmmList.ListIndex,3)
		  
		  // Run hmmsearch and screen the output for CR tags.
		  sh=New Shell
		  sh.mode=0
		  sh.TimeOut=-1
		  
		  'export protein sequences
		  LogoWin.show
		  CDSfile=OutF.Child("CDS.fasta")
		  if CDSfile<>nil then
		    if CDSfile.exists then
		      LogoWin.WriteToSTDOUT (EndofLine.unix+EndofLine.unix+"An existing CDS sequences file was found at "+CDSfile.shellpath+" and will be reused.")
		      
		    else
		      LogoWin.WriteToSTDOUT (EndofLine.unix+EndofLine.unix+"Exporting CDS sequences...")
		      GenomeWin.ExportProteins(CDSfile)
		      LogoWin.WriteToSTDOUT (" OK")
		    end if
		    
		    'store the CDSs as a string for possible further use:
		    instream=CDSfile.OpenAsTextFile
		    
		    if instream<>nil then
		      CDSseqs=replaceall(trim(instream.ReadAll),EndOfLine.unix,"")
		      instream.close
		    end if
		  else
		    msgbox "Can't create a file to store CDS sequences, have to abort search"
		    
		  end if
		  
		  alignmentsFile=SpecialFolder.Temporary.Child("alignments.table")
		  if alignmentsFile<>nil then
		    if alignmentsFile.exists then
		      alignmentsFile.Delete
		    end if
		    LogoWin.WriteToSTDOUT (EndofLine.unix+"Running hmmsearch...")
		    
		    cli="/usr/local/bin/hmmsearch --cut_ga -A "+alignmentsFile.ShellPath+" "+hmmPath+" "+CDSfile.ShellPath
		    
		    sh.execute cli
		    If sh.errorCode=0 then
		      LogoWin.WriteToSTDOUT (" OK"+EndofLine.unix)
		      
		      instream=alignmentsFile.OpenAsTextFile
		      
		      if instream<>nil then
		        table=trim(instream.ReadAll)
		        instream.close
		        hmmSearchRes=GetCRtags(sh.Result,Table,CRtagPositions)
		        'LogoWin.WriteToSTDOUT EndofLine.unix+hmmSearchRes
		        
		        'save HmmSearch results (with CR tags), just in case:
		        resFile=OutF.child("hmmsearch_result_withCRtags.txt")
		        if resFile<>Nil then
		          OutStream = TextOutputStream.Create(resFile)
		          if outStream<>Nil then
		            outstream.Write(hmmSearchRes)
		            outstream.close
		            
		          end if
		          
		        end if
		        
		      end if
		      
		      
		      
		    else
		      LogoWin.WriteToSTDOUT sh.Result
		      
		    End If
		  else
		    LogoWin.WriteToSTDOUT (EndofLine.unix+"Can't create temporary file, have to abort search.")
		    return
		  end if
		  
		  // Run phmmer searches and filter out results without the CR tag
		  
		  'names, hit seqs and CR tags are in these arrays:
		  ' ProtNames()
		  ' HmmSearchMatches()
		  ' CRtags()
		  dim query, res, filteredRes As string
		  dim n as integer
		  
		  LogoWin.WriteToSTDOUT (EndofLine.unix+"Running online Uniprot searches.")
		  
		  if ubound(ProtNames)>10 then
		    LogoWin.WriteToSTDOUT (" Relax and have a cup of coffee. Or two..."+EndofLine.unix)
		  else
		    LogoWin.WriteToSTDOUT ("..")
		  end if
		  
		  for n=1 to ubound(ProtNames)
		    res=""
		    
		    if CRtags(n)="[indel within CR tag region]" then
		      LogoWin.WriteToSTDOUT (EndofLine.unix+EndofLine.unix+ProtNames(n)+" has an indel within CR tag region. Skipping it.")
		    else
		      
		      
		      if RefProtBut.Value then
		        LogoWin.WriteToSTDOUT (EndofLine.unix+EndofLine.unix+"Searching Uniprot Reference Proteins with "+ProtNames(n)+"...")
		      else
		        LogoWin.WriteToSTDOUT (EndofLine.unix+EndofLine.unix+"Searching Uniprot (full) with "+ProtNames(n)+"...")
		      end if
		      
		      query =">"+ProtNames(n)+EndOfLine.unix+HmmSearchMatches(n)
		      
		      resFile=phmmer_results.child(ProtNames(n)+".raw")
		      if resFile<>Nil then
		        if resfile.exists then
		          'load existing data
		          LogoWin.WriteToSTDOUT (EndOfLine.unix+"phmmer results file exists in the working directory and will be reused"+EndOfLine.unix)
		          
		          instream=resFile.OpenAsTextFile
		          if instream<>nil then
		            res=instream.ReadAll
		            instream.close
		          end if
		          
		        else
		          'run phmmer search vs primary DB
		          if RefProtBut.Value then
		            res=phmmerTextSearch(query, "uniprotrefprot")
		          else
		            res=phmmerTextSearch(query, "uniprotkb")
		          end if
		          
		          if res<>"" then
		            'save raw phmmer results
		            resFile=phmmer_results.child(ProtNames(n)+".raw")
		            if resFile<>Nil then
		              OutStream = TextOutputStream.Create(resFile)
		              if outStream<>Nil then
		                outstream.Write(res)
		                outstream.close
		                'LogoWin.WriteToSTDOUT (" Done.")
		                
		              end if
		              
		            end if
		            
		          end if
		        end if
		        
		      end if
		      
		      // Filter phmmer results
		      if res<>"" then
		        FilteredRes=DefineEncoding(WebGetCRtags(Res,CRtagPositions,CRtags(n)),Encodings.ASCII)
		      else
		        logowin.WriteToSTDOUT(EndOfLine.UNIX+"phmmer search returned empty result!")
		      end if
		      
		      ' issue a warning if there's less than 10 or over 100 seqs.
		      hitcount=CountFields(FilteredRes,phmmerSearchSeparator)-2
		      if hitcount<10 then
		        LogoWin.WriteToSTDOUT (" Warning! Less then 10 ("+str(hitcount)+") filtered hits.")
		        if FallBackCheck.value then
		          LogoWin.WriteToSTDOUT (EndOfLine.unix+"Running search vs full UniProt...")
		          
		          resFile=phmmer_results.child(ProtNames(n)+".UniProt_raw")
		          if resFile<>Nil then
		            if resfile.exists then
		              'load existing data
		              LogoWin.WriteToSTDOUT (EndOfLine.unix+"phmmer results file exists in the working directory and will be reused"+EndOfLine.unix)
		              instream=resFile.OpenAsTextFile
		              if instream<>nil then
		                res=instream.ReadAll
		                instream.close
		              end if
		              
		            else
		              'run phmmer search vs fallback DB
		              res=phmmerTextSearch(query, "uniprotkb")
		              
		              if res<>"" then
		                'save raw phmmer results
		                resFile=phmmer_results.child(ProtNames(n)+".UniProt_raw")
		                if resFile<>Nil then
		                  OutStream = TextOutputStream.Create(resFile)
		                  if outStream<>Nil then
		                    outstream.Write(res)
		                    outstream.close
		                    
		                  end if
		                end if
		                
		              end if
		            end if
		            
		            
		            // Filter phmmer results
		            if res<>"" then
		              FilteredRes=DefineEncoding(WebGetCRtags(Res,CRtagPositions,CRtags(n)),Encodings.ASCII)
		              
		              hitcount=CountFields(FilteredRes,phmmerSearchSeparator)-2
		              
		              LogoWin.WriteToSTDOUT (" "+str(hitcount)+" filtered hits found.")
		              
		              
		            else
		              logowin.WriteToSTDOUT(EndOfLine.UNIX+"phmmer search returned empty result!")
		            end if
		            hitcount=CountFields(FilteredRes,phmmerSearchSeparator)-2
		          end if
		          
		          
		        end if
		      end if
		      
		      if hitcount>100 then
		        LogoWin.WriteToSTDOUT (" Warning! Over 100 ("+str(hitcount)+") filtered hits.")
		        if hitCount>300 then
		          LogoWin.WriteToSTDOUT (" Only the first 300 will be processed.")
		        end if
		      else
		        LogoWin.WriteToSTDOUT (str(hitcount)+" filtered hits.")
		      end if
		      
		      
		      'save CR tag filtered phmmer results
		      resFile=phmmer_results.child(ProtNames(n)+".filtered")
		      if resFile<>Nil then
		        OutStream = TextOutputStream.Create(resFile)
		        if outStream<>Nil then
		          outstream.Write(FilteredRes)
		          outstream.close
		          LogoWin.WriteToSTDOUT (" Done.")
		          
		        end if
		        
		      end if
		      
		      
		      
		      // Extract promoter regions from the target operon and its two neighbours
		      
		      if res<>"" then
		        resfile=Fasta_files.child(ProtNames(n)+".fasta")
		        if resFile<>Nil then
		          if resfile.exists then
		            'load existing data
		            LogoWin.WriteToSTDOUT (EndOfLine.unix+"a fasta file presumably with genome fragments exists in the working directory and will be reused."+EndOfLine.unix)
		            instream=resFile.OpenAsTextFile
		            if instream<>nil then
		              res=instream.ReadAll
		              instream.close
		            end if
		            
		          else
		            
		            dim FragmentsForAhitF As folderitem
		            
		            FragmentsForAhitF=Genome_fragments.child(ProtNames(n))
		            if NOT FragmentsForAhitF.exists then
		              FragmentsForAhitF.createAsFolder
		            end if
		            
		            if FragmentsForAhitF<>Nil then
		              LogoWin.WriteToSTDOUT (EndOfLine.unix+"Extracting promoter fragments for the hit and neighbour operons..."+EndOfLine.unix)
		              
		              
		              
		              //add file existence check somewhere here (or within GetOrthoRegSeq) and reuse existing .gb files
		              
		              
		              DataForMeme=GetOrthoRegSeq(FilteredRes, FragmentsForAhitF)
		              if dataForMeme<>"" then
		                // Remove extra (repetitive/too close) seqs
		                ' leave one seq per species,
		                ' or one seq per genus if too many seqs
		                
		                // Save unfiltered UPS fragments
		                resfile=Fasta_files.child(ProtNames(n)+"_unfiltered.fasta")
		                if resfile<>nil then
		                  OutStream = TextOutputStream.Create(resFile)
		                  if outStream<>Nil then
		                    outstream.Write(DataForMeme)
		                    outstream.close
		                    'LogoWin.WriteToSTDOUT (" Done.")
		                    
		                  end if
		                  
		                else
		                  LogoWin.WriteToSTDOUT (EndOfLine.unix+"Can't create a file to store superpromoters around the genes coding for "+ProtNames(n)+".")
		                  
		                  
		                  
		                end if
		                
		                DataForMeme=RemoveRedundantSeqs(DataForMeme,false)
		                DataForMeme=RemoveRedundantSeqs(DataForMeme,true)
		                
		                LogoWin.WriteToSTDOUT (" Done extracting genome fragments."+EndOfLine.unix)
		                
		                // Save UPS fragments used for MEME run
		                resfile=Fasta_files.child(ProtNames(n)+".fasta")
		                if resfile<>nil then
		                  OutStream = TextOutputStream.Create(resFile)
		                  if outStream<>Nil then
		                    outstream.Write(DataForMeme)
		                    outstream.close
		                    'LogoWin.WriteToSTDOUT (" Done.")
		                    
		                  end if
		                  
		                else
		                  LogoWin.WriteToSTDOUT (EndOfLine.unix+"Can't create a file to store superpromoters around the genes coding for "+ProtNames(n)+".")
		                  
		                end if
		                
		              end if
		            else
		              MsgBox "Can't create a folder "+FragmentsForAhitF.ShellPath+"to store genome fragments"
		            end if
		            
		            
		          end if
		          
		          
		          
		          // Run MEME in two modes
		          dim memeF,f1 as folderitem
		          
		          memeF=MEME_results.child(ProtNames(n))
		          
		          If memeF <> Nil Then
		            if memeF.Exists then
		              LogoWin.WriteToSTDOUT ("MEME results folder exists, so MEME will not be run. remove this folder ("+memeF.shellpath+") and re-run this procedure if you want to re-generate the  results"+EndOfLine.unix)
		              
		            else
		              memeF.createAsFolder
		              
		              dim opt as string
		              dim ErrCode as integer
		              
		              if CPUcores>1 then
		                opt=" -p " + str(CPUcores)  'for parallelised meme
		              end if
		              
		              opt=opt+" -dna -minw 16"+" -maxw 23"        ' <-- should be configurable!
		              
		              '[-pal]            force palindromes (requires -dna)
		              'if PalindromicBox.Value then
		              opt=opt+" -pal"
		              'end if
		              
		              '[-revcomp]        allow sites on + or - DNA strands
		              'if GivenStrandBox.Value then
		              'else
		              opt=opt+" -revcomp"
		              'end if
		              
		              '[-nmotifs <nmotifs>]    maximum number of motifs to find
		              opt=opt+" -nmotifs 5"'+MotifNoPopup.Text
		              
		              
		              
		              'Run MEME in Zero or One per sequence' mode:
		              f1=memeF.child("Zoops")
		              FixPath4Windows(MEMEf)
		              
		              if f1<>NIL then
		                if f1.Exists then
		                  f1.Delete
		                end if
		                
		                'LogoWin.show
		                LogoWin.WriteToSTDOUT (EndofLine.unix+EndofLine.unix+"Running MEME in zoops mode...")
		                
		                ErrCode=MEME(resfile, f1, opt+" -mod zoops")
		                'sh=New Shell
		                'sh.mode=0
		                'sh.TimeOut=-1
		                
		                If ErrCode=0 then
		                  LogoWin.WriteToSTDOUT (" done."+EndofLine.unix)
		                  
		                  
		                else
		                  
		                end if
		                
		                
		                'Run MEME in Zero or One per sequence' mode:
		                f1=memeF.child("Anr")
		                FixPath4Windows(f1)
		                
		                if f1<>NIL then
		                  if f1.Exists then
		                    f1.Delete
		                  end if
		                  
		                  'LogoWin.show
		                  LogoWin.WriteToSTDOUT (EndofLine.unix+"Running MEME in anr mode...")
		                  
		                  ErrCode=MEME(resfile, f1, opt+" -mod anr")
		                  If ErrCode=0 then
		                    
		                    LogoWin.WriteToSTDOUT (" done."+EndofLine.unix)
		                  else
		                    
		                  end if
		                  
		                  LogoWin.WriteToSTDOUT (EndofLine+"Results written to "+outf.Shellpath)
		                  
		                  
		                else
		                  msgbox "Can't create MEME output folder!"
		                  'return -1
		                end if
		                
		                
		              else
		                
		              End If
		            End If
		            
		          else
		            LogoWin.WriteToSTDOUT (EndOfLine.unix+"Can't create a folder to store MEME results for "+ProtNames(n)+".")
		            
		          end if
		        else
		          LogoWin.WriteToSTDOUT (EndOfLine.unix+"Can't create a folder to store genome fragments for "+ProtNames(n)+".")
		        end if
		      end if
		      
		      
		      
		      '
		      'else
		      'LogoWin.WriteToSTDOUT (" phmmer search error!")
		      'end if
		    end if
		  next
		  
		  resFile=OutF.child("Search.log")
		  if resFile<>Nil then
		    OutStream = TextOutputStream.Create(resFile)
		    if outStream<>Nil then
		      outstream.Write(logowin.STDOUT.Text)
		      outstream.close
		      
		    end if
		    
		  end if
		  
		  LogoWin.WriteToSTDOUT (EndofLine.unix+"All searches completed."+EndofLine.unix)
		  
		  
		  
		  
		  // Report all errors!
		  ' phmmer searches fail too often: report http error codes and save the server response anyway
		  ' same with NCBI server
		  
		  // Reutilise data from incomplete searches!
		  
		  
		  
		  
		  
		  // Compare MEME results with known motifs (TomTom)
		  
		  
		  // Write final output files
		  
		  
		  
		  Exception err
		    ExceptionHandler(err,"deNovoWin:RunButton")
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
#tag Events OutputField
	#tag Event
		Sub Open()
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ChooseButton
	#tag Event
		Sub Action()
		  Dim dlg As New SelectFolderDialog
		  dlg.ActionButtonCaption = "Select"
		  dlg.Title = "Select Folder for de novo TF Motif Search Output"
		  dlg.PromptText = "Select Folder for de novo TF motif search results"
		  'dlg.InitialDirectory = Profile_f.parent
		  
		  OutF = dlg.ShowModal
		  If OutF <> Nil Then
		    OutputField.text=OutF.ShellPath
		    
		    // Create folders to store intermediate files:
		    'phmmer results:
		    phmmer_results=OutF.child("phmmer_results")
		    phmmer_results.createAsFolder
		    if not phmmer_results.Exists or not phmmer_results.Directory Then
		      logowin.WriteToSTDOUT EndOfLine.UNIX+EndOfLine.UNIX+"Cannot create a folder to store intermediate files. Have to abort motif search." 
		      Return 
		    End If
		    'Genome_fragments, Fasta_files, MEME_results, TomTom_results as FolderItem
		    Genome_fragments=OutF.child("Genome_fragments")
		    Genome_fragments.createAsFolder
		    if not Genome_fragments.Exists or not Genome_fragments.Directory Then
		      logowin.WriteToSTDOUT EndOfLine.UNIX+EndOfLine.UNIX+"Cannot create a folder to store intermediate files. Have to abort motif search." 
		      Return 
		    End If
		    
		    'Fasta_files
		    Fasta_files=OutF.child("Fasta_files")
		    Fasta_files.createAsFolder
		    if not Fasta_files.Exists or not Fasta_files.Directory Then
		      logowin.WriteToSTDOUT EndOfLine.UNIX+EndOfLine.UNIX+"Cannot create a folder to store intermediate files. Have to abort motif search." 
		      Return
		    End If
		    
		    'MEME_results
		    MEME_results=OutF.child("MEME_results")
		    MEME_results.createAsFolder
		    if not MEME_results.Exists or not MEME_results.Directory Then
		      logowin.WriteToSTDOUT EndOfLine.UNIX+EndOfLine.UNIX+"Cannot create a folder to store intermediate files. Have to abort motif search." 
		      Return
		    End If
		    
		    'TomTom_results
		    TomTom_results=OutF.child("TomTom_results")
		    TomTom_results.createAsFolder
		    if not TomTom_results.Exists or not TomTom_results.Directory Then
		      logowin.WriteToSTDOUT EndOfLine.UNIX+EndOfLine.UNIX+"Cannot create a folder to store intermediate files. Have to abort motif search." 
		      Return
		    End If
		    
		    RunCheck
		    
		    hmmlist.SetFocus
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton1
	#tag Event
		Sub Action()
		  hmmlist.SetFocus
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RefProtBut
	#tag Event
		Sub Action()
		  hmmlist.SetFocus
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events HmmList
	#tag Event
		Sub Open()
		  me.ColumnWidths="0,100,100,200,*,0" 'checkboxes hidden for now
		  me.ColumnType(0)=Listbox.TypeCheckbox
		  
		  me.Heading(1)="Name"
		  me.Heading(2)="Accession"
		  me.Heading(3)="CR tag residues"
		  me.Heading(4)="Description"
		  'column 5 stores file path
		  
		  
		  BuildHmmArray
		  
		  
		End Sub
	#tag EndEvent
	#tag Event
		Function CellClick(row as Integer, column as Integer, x as Integer, y as Integer) As Boolean
		  'RunCheck
		End Function
	#tag EndEvent
	#tag Event
		Sub Change()
		  RunCheck
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SelectAllButton
	#tag Event
		Sub Action()
		  dim k as integer
		  
		  for k=0 to HmmList.ListCount-1
		    HmmList.CellCheck(k,0) = true
		  next
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events DeselectAllButton
	#tag Event
		Sub Action()
		  dim k as integer
		  
		  for k=0 to HmmList.ListCount-1
		    HmmList.CellCheck(k,0) = false
		  next
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events hts2
	#tag Event
		Sub PageReceived(url as string, httpStatus as integer, headers as internetHeaders, content as string)
		  
		  if httpStatus>=200 AND httpStatus<300 then 'successful
		    PhmmerRes=defineEncoding(Content,Encodings.ASCII)
		  else
		    MsgBox "Problems connecting to HMMER server (HTTP status code "+str(httpStatus)+")"
		  end if
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
		Group="Background"
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
		Group="OS X (Carbon)"
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
		Group="Behavior"
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
		Group="Size"
		InitialValue="400"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Behavior"
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
		Group="OS X (Carbon)"
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
		Group="Menus"
		Type="MenuBar"
		EditorType="MenuBar"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Group="Behavior"
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
		Name="phmmerRes"
		Group="Behavior"
		Type="String"
		EditorType="MultiLineEditor"
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
		Group="Frame"
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
		Group="Frame"
		InitialValue="Untitled"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Size"
		InitialValue="600"
		Type="Integer"
	#tag EndViewProperty
#tag EndViewBehavior
