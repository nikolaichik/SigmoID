#tag Window
Begin Window deNovoWin
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   450
   ImplicitInstance=   True
   LiveResize      =   "True"
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinHeight       =   450
   MinimizeButton  =   True
   MinWidth        =   450
   Placement       =   0
   Resizeable      =   True
   Title           =   "de novo TFBS inference "
   Visible         =   True
   Width           =   1022
   Begin PushButton RunButton
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   0
      Cancel          =   False
      Caption         =   "#kRun"
      Default         =   True
      Enabled         =   False
      Height          =   29
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   912
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
      Top             =   410
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
      Caption         =   "Stop"
      Default         =   False
      Enabled         =   False
      Height          =   32
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   810
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
      Top             =   410
      Transparent     =   False
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
      TabStop         =   True
      Text            =   "#kOutFolder"
      TextAlign       =   2
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   377
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   103
   End
   Begin TextField OutputField
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   False
      BackColor       =   &cFFFF00FF
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
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
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
      Top             =   376
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   765
   End
   Begin PushButton ChooseButton
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   0
      Cancel          =   False
      Caption         =   "#kChoose"
      Default         =   False
      Enabled         =   True
      Height          =   32
      HelpTag         =   "Select genome to search"
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   912
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
      Top             =   372
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   90
   End
   Begin Listbox HmmList
      AutoDeactivate  =   True
      AutoHideScrollbars=   True
      Bold            =   False
      Border          =   False
      ColumnCount     =   7
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
      Height          =   334
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
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   0
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   1022
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
      Begin TextArea TextArea1
         AllowAutoDeactivate=   True
         AllowFocusRing  =   True
         AllowSpellChecking=   True
         AllowStyledText =   True
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
         HasHorizontalScrollbar=   False
         HasVerticalScrollbar=   True
         Height          =   334
         HideSelection   =   True
         Index           =   -2147483648
         InitialParent   =   "HmmList"
         Italic          =   False
         Left            =   0
         LineHeight      =   0.0
         LineSpacing     =   1.0
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         MaximumCharactersAllowed=   0
         Multiline       =   True
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         TextAlignment   =   "1"
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   0
         Transparent     =   False
         Underline       =   False
         ValidationMask  =   ""
         Value           =   ""
         Visible         =   False
         Width           =   1022
      End
   End
   Begin nSocket hts2
      Index           =   -2147483648
      LockedInPosition=   False
      Scope           =   0
      TabPanelIndex   =   0
      ValidateCertificates=   False
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
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Number of proteins with the same CR tag to process:"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   347
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   393
   End
   Begin TextField Proteins2processField
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   False
      BackColor       =   &cFFFF00FF
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
      Left            =   425
      LimitText       =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Mask            =   ""
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "300"
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   346
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   80
   End
   Begin CheckBox RunTomTomBox
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Run TomTom"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   "Experimental option. Avoid on machines with 1-2 processor cores."
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   600
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      State           =   0
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   347
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   402
   End
   Begin Timer TTtimer
      Index           =   -2147483648
      LockedInPosition=   False
      Mode            =   2
      Period          =   500
      Scope           =   0
      TabPanelIndex   =   0
   End
   Begin CheckBox runChipMunk
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Run ChIPmunk"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   810
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      State           =   0
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   346
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   192
   End
   Begin Timer OutputTimer
      Index           =   -2147483648
      LockedInPosition=   False
      Period          =   1000
      RunMode         =   "0"
      Scope           =   0
      TabPanelIndex   =   0
   End
   Begin PushButton PushButton1
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "Pause"
      Default         =   True
      Enabled         =   False
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   32
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   717
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MacButtonStyle  =   "0"
      Scope           =   0
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   409
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   81
   End
   Begin Timer RunTImer
      Index           =   -2147483648
      LockedInPosition=   False
      Period          =   1000
      RunMode         =   "0"
      Scope           =   0
      TabPanelIndex   =   0
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
		Sub MouseEnter()
		  mouseInWin=true
		End Sub
	#tag EndEvent

	#tag Event
		Sub MouseExit()
		  mouseInWin=false
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  AdjustLayout4linux(me)
		  RunCheck
		  rp = new deNovoSearch
		  TextArea1.TextFont=FixedFont 
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h1, Description = 4275696C645369674172726179
		Protected Sub BuildHmmArray()
		  dim l,m,n as integer
		  dim f as folderitem
		  dim hmmPath, fName, aLine,lineStart as string
		  dim inStream as TextInputStream
		  dim aNAME, ACC, DESC, CRtag, CRtagFileName, PAL, mWIDTH as string
		  
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
		          fName = left(fName,len(fName)-4) 'drop the extension
		          
		          //get HMM info
		          'standard PFAM models must be modified for SigmoID 
		          'by adding three lines with TFBS related info like this:
		          'CRTAG 41,43,44,45,47,48,49,51,52,55
		          'PAL   no
		          'WIDTH 16-22
		          
		          instream=f.Item(n).OpenAsTextFile
		          
		          if instream<>nil then
		            aNAME=""
		            ACC=""
		            DESC=""
		            CRtag=""
		            PAL=""
		            mWIDTH=""
		            
		            while (aNAME="" OR ACC="" OR DESC="" OR CRTAG="" OR PAL="" OR mWIDTH="")
		              aLine=inStream.ReadLine
		              lineStart=left(aline,6)
		              select case lineStart
		              case "NAME  "
		                aNAME=NthField(aLine,"NAME  ",2)
		              case "ACC   "
		                ACC=NthField(aLine,"ACC   ",2)
		              case "DESC  "
		                DESC=NthField(aLine,"DESC  ",2)
		              case "CRTAG "
		                CRtag=NthField(aLine,"CRTAG ",2)
		              case "PAL   "
		                PAL=NthField(aLine,"PAL   ",2)
		              case "WIDTH "
		                mWIDTH=NthField(aLine,"WIDTH ",2)
		              end select
		              if inStream.EOF then
		                exit
		              end if
		            wend
		            
		          end if
		          
		          ''find matching CRtag file:
		          'CRtagFileName=fName+".CRtag"
		          'CRtag=""
		          'for l=1 to m
		          'if f.Item(l).name=CRtagFilename then
		          'instream=f.Item(l).OpenAsTextFile
		          '
		          'if instream<>nil then
		          'CRtag=trim(inStream.ReadAll)
		          'instream.close
		          'exit
		          'end if
		          'end if
		          'next
		          'if CRtag="" then
		          'MsgBox "Can't find CR tag file for "+aName+".hmm"
		          'return
		          'end if
		          
		          
		          
		          
		          HmmList.AddRow
		          HmmList.Cell(HmmList.LastIndex, 1) = aNAME
		          HmmList.Cell(HmmList.LastIndex, 2) = ACC
		          HmmList.Cell(HmmList.LastIndex, 3) = CRtag
		          HmmList.Cell(HmmList.LastIndex, 4) = Pal
		          HmmList.Cell(HmmList.LastIndex, 5) = mWidth
		          HmmList.Cell(HmmList.LastIndex, 6) = DESC
		          HmmList.Cell(HmmList.LastIndex, 7) = hmmPath
		          HmmList.CellCheck(HmmList.LastIndex,0) = false
		          
		          
		          
		          
		        end if
		      next
		      HmmList.SortedColumn=1
		      HmmList.ColumnsortDirection(1)=ListBox.SortAscending
		      HmmList.sort
		    else
		      MsgBox("Check folder: "+str(f.NativePath)+" existence")
		    end if
		  end if
		  
		  
		  'self.height=HmmList.RowHeight*HmmList.ListCount+110
		  
		  Exception err
		    ExceptionHandler(err,"deNovoWin:BuildHmmArray")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CDHitClustering(infile as folderitem, outfile as folderitem) As string
		  dim CDhit as folderitem
		  dim instream as TextInputStream
		  dim outstream as TextOutputStream
		  dim sh as shell
		  dim outSeqs as string
		  
		  
		  #if TargetWindows
		    CDhit=Resources_f.child("cd-hit-est.exe")
		  #else
		    CDhit=Resources_f.child("cd-hit-est")
		  #endif
		  
		  if CDhit<>nil AND CDhit.exists then
		    dim cli as string
		    cli=CDhit.ShellPath+" -i " + infile.ShellPath + " -o "+ outfile.ShellPath + " -d 100  -c 0.8 -n 5 -G 0 -aS 0.1 -aL 0.1"
		    
		    sh=New Shell
		    sh.mode=0
		    sh.TimeOut=-1
		    sh.execute ("bash --login -c "+chr(34)+cli+chr(34))
		    
		    If sh.errorCode <> 0 then
		      msgbox "Problem running CD-Hit"
		      return ""
		    else
		      'read CDhit filtered data
		      'dim inStream as TextInputStream
		      InStream = outfile.OpenAsTextFile
		      if inStream<>NIl then
		        outSeqs=InStream.ReadAll
		        inStream.close
		        LogoWin.WriteToSTDOUT(EndOfLine.Unix + CountSeqs(outSeqs)+" fragments left after CD-hit-est clustering.")
		        
		        return outSeqs
		      End If
		    end if
		  else
		    return ""
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CountSeqs(inData as string) As string
		  return str(CountFields(inData, ">")-1)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetTTlibString()
		  Dim LibFolder as FolderItem
		  dim m,n as integer
		  
		  LibFolder=Resources_f.child("TF_families")
		  
		  if LibFolder<>Nil then
		    if LibFolder.exists then
		      m=LibFolder.Count
		      for n=1 to m
		        
		        if right(LibFolder.Item(n).Name,5)=".meme" then
		          TTlibstring=TTlibstring+" "+LibFolder.Item(n).ShellPath
		          
		        end if
		      next
		    end if
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function MeshClustering(infile as folderitem, outfile as folderitem) As string
		  //***********************************************************************
		  'Relacement of CD-Hit by a new program:
		  'MeShClust: an intelligent tool for clustering DNA sequences
		  'Benjamin T. James, Brian B. Luczak, Hani Z. Girgis
		  'doi: https://doi.org/10.1101/207720
		  'https://github.com/TulsaBioinformaticsToolsmith/MeShClust
		  'seems to self-adjust to the level of similarity and perform a bit better
		  //***********************************************************************
		  
		  
		  Dim MeshClustTemp As folderitem
		  dim instream as TextInputStream
		  dim outstream as TextOutputStream
		  dim infilePath as string
		  dim outfilePath as string
		  dim outSeqs as string
		  dim sh as shell
		  
		  infilePath=infile.ShellPath
		  outfilePath=outfile.ShellPath
		  
		  if MeshClustPath<>"" then
		    dim cli as string
		    MeshClustTemp= TemporaryFolder.child("meshclust.out")
		    If meshClustTemp <> Nil Then
		      
		      ' If compiled for OpenMP, MeshClust should use all cores available by default, so we aren't using the --threads setting
		      
		      cli=MeshClustPath + " " + infilePath + " --output "+ MeshClustTemp.ShellPath
		      
		      sh=New Shell
		      sh.mode=0
		      sh.TimeOut=-1
		      sh.execute ("bash --login -c "+chr(34)+cli+chr(34))
		      
		      If sh.errorCode <> 0 then
		        MsgBox "Problem running MeShClust"
		        LogoWin.WriteToSTDOUT(EndOfLine.Unix+sh.Result+EndOfLine.Unix)
		        return ""
		      else
		        'MeshClust only writes cluster data, but doesn't export cluster representatives, 
		        'so we have to process cluster info here 
		        
		        'first, read all input seqs:
		        dim inputSeqs as string
		        InStream = infile.OpenAsTextFile
		        if inStream<>NIl then
		          inputSeqs=InStream.ReadAll
		          instream.close
		        else
		          return ""
		        end if
		        
		        InStream = MeshClustTemp.OpenAsTextFile
		        dim clusters as string
		        
		        if inStream<>NIl then
		          clusters=InStream.ReadAll
		          
		          if countfields(clusters,"*")<10 then 'look for iterations with more clusters
		            instream.close
		            
		            'Meshclust doesn't save previous iterations any more, so we just return the input data
		            InStream = infile.OpenAsTextFile
		            if inStream<>NIl then
		              outSeqs=InStream.ReadAll
		              instream.close
		              return outSeqs
		            end if
		            
		            '
		            'dim n as integer
		            'dim iterFile as FolderItem
		            'dim iterName as string
		            ''cycle through MeshClust iterations (numbered 0-14)
		            ''to find the one with reasonable (10-30) seq number:
		            'for n=0 to 14 
		            'itername=MeshClustTemp.ShellPath+str(n)
		            'iterfile=GetFolderItem(itername,FolderItem.PathTypeShell)
		            'InStream = iterfile.OpenAsTextFile
		            'if inStream<>NIl then
		            'clusters=InStream.ReadAll
		            'if countfields(clusters,"*")<30 then
		            'instream.close
		            'InStream = iterfile.OpenAsTextFile 'reopen the stream
		            'exit                               'the desired iteration is being streamed
		            'end if
		            'instream.close
		            'end if
		            'next
		          else
		            instream.close
		            InStream = MeshClustTemp.OpenAsTextFile 'reopen the stream
		          end if
		          
		          dim aLine, theSeq as string
		          dim seqStart, seqEnd as integer
		          while Not instream.EOF
		            aLine=InStream.ReadLine
		            if right(aLine,1)="*" then 'cluster centre
		              aline=">"+NthField(aline,">",2)
		              aline=NthField(aline," ",1) 'seq title
		              seqStart=instr(inputSeqs,aline)
		              seqEnd=instr(seqStart+1,inputSeqs,">")-1
		              theSeq=mid(inputSeqs,seqStart,seqEnd-seqstart)
		              outSeqs=outSeqs+theSeq+EndOfLine.UNIX
		            end if
		          wend
		          inStream.close
		          LogoWin.WriteToSTDOUT(EndOfLine.Unix + CountSeqs(outSeqs)+" fragments left after MeShClust clustering.")
		          OutStream = TextOutputStream.Create(outfile)
		          if OutStream<>NIL then
		            OutStream.Write(outSeqs)
		            OutStream.Close
		            return outSeqs
		          end if
		          
		        End If
		      end if
		    end if
		  else
		    return ""
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function phmmerTextSearch(query as string, DB as string) As string
		  'DB should be one of:
		  ' uniprotrefprot, uniprotkb, swissprot, pdb, rp15, rp35, rp55, rp75, ensemblgenomes, 
		  ' (ensembl - eukaryote only, qfo - Quest for Orthologs)
		  
		  'query should preferably be in the fasta format 
		  
		  dim command,theURL as string
		  dim hts as new HTTPSecureSocket
		  dim res as string
		  
		  
		  'configure request
		  'hts.SetRequestHeader("Expect:","")
		  
		  Dim form As Dictionary
		  'create and populate the form object
		  form = New Dictionary
		  form.Value("seqdb") = DB
		  'form.Value("seqdb") = "uniprotrefprot"
		  form.Value("algo") = "phmmer"
		  'form.Value("seqdb_ranges") = "17277318..17420758" 'trying taxonomy restriction a la the browser version: doesn't work!
		  form.Value("seq") = query
		  
		  form.Value("E") = "0.0001"
		  form.Value("domE") = "0.1"
		  
		  'domain thresholds don't seem to work 
		  'weak domain hits could be reported alongside the proper ones (and berofe them!)
		  'this breaks CR tag filtering!
		  form.Value("incE") = "0.0001"
		  form.Value("incdomE") = "0.1"
		  
		  hts.SetFormData(form)
		  hts.SetRequestHeader("Accept","text/plain")
		  hts.SetRequestHeader("Content-type","text/plain")
		  'Content-type is reset when setting form data, hence the result is always returned as html 
		  
		  hts.Yield=true  'allow background activities while waiting
		  
		  'UniprotSocket.Post("http://hmmer.janelia.org/search/phmmer")
		  'change to the EBI address
		  res=hts.Post("https://www.ebi.ac.uk/Tools/hmmer/search/phmmer",0)
		  
		  'phmmerRes=""
		  'hts2.ClearRequestHeaders
		  'hts2.RequestHeader("Accept") = "text/plain"
		  'hts2.RequestHeader("Content-type") = "text/plain"
		  'Dim data As Xojo.Core.MemoryBlock
		  'Dim FormData As String
		  'FormData="seqdb="+DB
		  'FormData=FormData+"&algo=phmmer&seq="+query
		  'FormData=FormData+"&E0.0001&domE=0.1&incE=0.0001&incdomE=0.1"
		  'data = Xojo.Core.TextEncoding.UTF8.ConvertTextToData(FormData.toText)
		  'hts2.SetRequestContent(data, "application/x-www-form-urlencoded")
		  'theURL="https://www.ebi.ac.uk/Tools/hmmer/search/phmmer"
		  'hts2.Send("POST",theURL.toText)
		  'while deNovoWin.phmmerRes=""
		  'app.DoEvents
		  'wend
		  'res=deNovoWin.phmmerRes
		  if hts.HTTPStatusCode=302 then 'redirect: issue a request to retrieve results
		    'just extract the redirect URL from a single <a> tag of the response
		    theURL=NthField(res,"<a href="+chr(34),2)
		    theURL=NthField(theURL,chr(34),1)
		    
		    'we want text format:
		    theURL=DefineEncoding(theURL+"?output=text",Encodings.ASCII) 'encoding has to be set for later conversion to text
		    
		    phmmerRes=""
		    hts2.ClearRequestHeaders
		    hts2.RequestHeader("Accept") = "text/plain"
		    hts2.RequestHeader("Content-type") = "text/plain"
		    hts2.Send("GET",theURL.toText)
		    
		    
		    while deNovoWin.phmmerRes=""
		      App.DoEvents
		    wend
		    res=deNovoWin.phmmerRes
		    'dim hts3 as new HTTPSecureSocket
		    '
		    'hts3=new HTTPSecureSocket
		    'hts3.SetRequestHeader("Expect","")
		    'hts3.SetRequestHeader("Accept","text/plain")
		    'hts3.SetRequestHeader("Content-type","text/plain")
		    'hts3.Yield=true  'allow background activities while waiting
		    '
		    ''res=hts.Get(theURL,0)
		    'res=hts3.Get(theURL,300)
		    'if hts3.ErrorCode=-1 then
		    'logowin.WriteToSTDOUT("No response from HMMer serverin five minutes"+EndOfLine.UNIX)
		    '
		    'end if
		    'res=hts.Get(theURL,300)
		    'if hts.ErrorCode=-1 then
		    'logowin.WriteToSTDOUT("No responce in five minutes"+EndOfLine.UNIX)
		    '
		    'end if
		    'res=hts.Get(theURL,120)
		    'if hts.ErrorCode=-1 then
		    'logowin.WriteToSTDOUT("No responce in two more minutes"+EndOfLine.UNIX)
		    '
		    'end if
		    'end if
		    'AddHandler hts2.PageReceived , AddressOf GetPhmmerResult
		    ''res=
		    'hts2.Get(theURL)
		    
		    
		  end if
		  
		  'if hts2.HTTPStatusCode>=200 AND hts.HTTPStatusCode<300 then 'successful
		  return res
		  'else
		  '
		  'dim httpErr as String = HTTPerror(hts.HTTPStatusCode, false)
		  'LogoWin.WriteToSTDOUT (httpErr)
		  '
		  'end if
		  
		  'UniprotShell.execute command
		  Exception err
		    ExceptionHandler(err,"GenomeWin:PhmmerSearchUniprot")
		End Function
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
		hts2res As String
	#tag EndProperty

	#tag Property, Flags = &h0
		MEME_results As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		mouseInWin As boolean
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
		rp As deNovoSearch
	#tag EndProperty

	#tag Property, Flags = &h0
		RunThreadState As string = "not running"
	#tag EndProperty

	#tag Property, Flags = &h0
		TFfeature As integer = -1
	#tag EndProperty

	#tag Property, Flags = &h0
		TomTom_results As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		TTthreadsRunnin As Integer = 0
	#tag EndProperty


#tag EndWindowCode

#tag Events RunButton
	#tag Event
		Sub Action()
		  if logoWin.TopPanel.Visible then
		    
		    logoWin.DownshiftLog true
		    logoWin.DownshiftLog false
		  else
		    logoWin.DownshiftLog true
		    logoWin.DownshiftLog false
		  end if
		  self.TextArea1.Text=""
		  LogoWin.WriteToSTDOUT (EndOfLine.unix+EndOfLine.unix+"Running de novo TFBS inference pipeline with SigmoID "+app.LongVersion)
		  
		  'self.hide
		  'dim rp as new RunPipelineThread
		  rp.hmmPath=HmmList.Cell(HmmList.ListIndex,7) 'was five
		  rp.CRtagPositions=HmmList.Cell(HmmList.ListIndex,3)
		  rp.hmmName=HmmList.Cell(HmmList.ListIndex,1)
		  
		  rp.OutF=OutF
		  rp.Fasta_files=Fasta_files
		  rp.Genome_fragments=Genome_fragments
		  rp.MEME_results=MEME_results
		  rp.mWidth=HmmList.Cell(deNovoWin.HmmList.ListIndex,5)
		  if HmmList.Cell(deNovoWin.HmmList.Listindex,4)="yes" then
		    rp.palindromic=True
		  end
		  if RunTomTomBox.State = CheckBox.CheckedStates.Checked Then
		    rp.RunTomTom = True
		  end
		  if runChipMunk.State = CheckBox.CheckedStates.Checked Then
		    rp.RunChipMunk = True
		  end
		  rp.hmmlist = HmmList
		  DeNovoTFBSinference.Proteins2process=Val(deNovoWin.Proteins2processField.text)
		  
		  RunThreadState = "running"
		  'Try
		  'if rp.State = Thread.Running Then 
		  'rp.Stop
		  'else
		  rp.isFinished = False
		  CancelButton.Caption="Stop"
		  CancelButton.Enabled = True
		  PushButton1.Enabled = True
		  TextArea1.Visible = True
		  RunTImer.Mode= Timer.ModeMultiple
		  RunTImer.Enabled = True
		  ChooseButton.Enabled=False
		  me.Enabled=false
		  
		  'rp.Start
		  'end
		  'end Try
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CancelButton
	#tag Event
		Sub Action()
		  RunThreadState="stopped"
		  TextArea1.Visible= False
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
		    'phmmer_results=OutF.child("phmmer_results")
		    'phmmer_results.createAsFolder
		    'if not phmmer_results.Exists or not phmmer_results.Directory Then
		    'logowin.WriteToSTDOUT EndOfLine.UNIX+EndOfLine.UNIX+"Cannot create a folder to store intermediate files. Have to abort motif search." 
		    'Return 
		    'End If
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
		    'TomTom_results=OutF.child("TomTom_results")
		    'TomTom_results.createAsFolder
		    'if not TomTom_results.Exists or not TomTom_results.Directory Then
		    'logowin.WriteToSTDOUT EndOfLine.UNIX+EndOfLine.UNIX+"Cannot create a folder to store intermediate files. Have to abort motif search." 
		    'Return
		    'End If
		    
		    RunCheck
		    
		    hmmlist.SetFocus
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events HmmList
	#tag Event
		Sub Open()
		  me.ColumnWidths="0,110,85,205,80,85,*,0" 'checkboxes hidden for now
		  me.ColumnType(0)=Listbox.TypeCheckbox
		  
		  me.Heading(1)="Name"
		  me.Heading(2)="Accession"
		  me.Heading(3)="CR tag residues"
		  me.Heading(4)="Palindrome"
		  me.Heading(5)="TFBS width"
		  me.Heading(6)="Description"
		  
		  'column 7 stores file path
		  
		  me.GridLinesHorizontal = ListBox.BorderThinDotted
		  'me.GridLinesVertical = ListBox.BorderThinSolid
		  
		  me.ColumnAlignment(4) = ListBox.AlignCenter
		  me.ColumnAlignment(5) = ListBox.AlignCenter
		  
		  me.ColumnType(3) = ListBox.TypeEditable
		  me.ColumnType(4) = ListBox.TypeEditable
		  me.ColumnType(5) = ListBox.TypeEditable
		  
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
		  // 
		  
		  RunCheck
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events hts2
	#tag Event
		Sub PageReceived(URL as Text, HTTPStatus as Integer, Content as xojo.Core.MemoryBlock)
		  
		  if httpStatus>=200 AND httpStatus<300 then 'successful
		    PhmmerRes=Xojo.Core.TextEncoding.ASCII.ConvertDataToText(Content)
		  else
		    
		    dim httpErr as String = HTTPerror(httpStatus,true)
		    LogoWin.WriteToSTDOUT (httpErr)
		    
		    
		  end if
		End Sub
	#tag EndEvent
	#tag Event
		Sub Error(err as RuntimeException)
		  'beep
		  PhmmerRes=err.Message+" "
		End Sub
	#tag EndEvent
	#tag Event
		Function AuthenticationRequired(Realm as Text, ByRef Name as Text, ByRef Password as Text) As Boolean
		  beep
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events Proteins2processField
	#tag Event
		Sub LostFocus()
		  Dim p2p As Integer
		  
		  p2p=Val(Me.Text)
		  
		  If p2p<30 Then
		    Me.Text="30"
		    MsgBox "30 is the minimal number here"
		  End If
		  
		  If p2p>1000 Then
		    Me.Text="1000"
		    MsgBox "1000 is the maximal number here. Please think if you really want to fetch this many seqs. It's slow and doesn't really help."
		  End If
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TTtimer
	#tag Event
		Sub Action()
		  dim n,tc as integer
		  for n=0 to UBound(TTshellArray)
		    if TTshellArray(n).finished=false then
		      tc=tc+1
		    end if
		  next
		  
		  if tc<rp.TTthreadsRunning then
		    rp.TTthreadsRunning=tc
		    if tc=0 then
		      'LogoWin.WriteToSTDOUT (EndofLine.unix+"All TomTom tasks finished."+EndofLine.unix)
		      TextArea1.AppendText(EndofLine.unix+"All TomTom tasks finished."+EndofLine.unix)
		      me.Enabled=false
		    else
		      if tc=1 then
		        'LogoWin.WriteToSTDOUT (EndofLine.unix+"1 TomTom task is still running..."+EndofLine.unix)
		        TextArea1.AppendText(EndofLine.unix+"1 TomTom task is still running..."+EndofLine.unix)
		      else
		        'LogoWin.WriteToSTDOUT (EndofLine.unix+str(TC)+" TomTom tasks are still running..."+EndofLine.unix)
		        TextArea1.AppendText(EndofLine.unix+str(TC)+" TomTom tasks are still running..."+EndofLine.unix)
		      end if
		      
		    end if
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events runChipMunk
	#tag Event
		Sub Action()
		  select Case me.State
		  case CheckBox.CheckedStates.Checked
		    dim w as new ChipMParam
		    dim chipset as new ChipMSettings
		  end Select
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events OutputTimer
	#tag Event
		Sub Action()
		  if rp.MsgOutput<>"" Then
		    
		    'rp.MsgOutput = ""
		    'LogoWin.WriteToSTDOUT(temp)'
		    'stdout.TextFont=FixedFont  'workaround for problems setting font at initialisation 
		    TextArea1.AppendText(rp.MsgOutput)
		    rp.MsgOutput=""
		    if mouseInWin=false and TextArea1.Visible=True then
		      TextArea1.ScrollPosition=TextArea1.LineNumber(Len(TextArea1.Text))
		    end
		    TextArea1.Refresh(False)
		    'App.DoEvents
		    if TextArea1.Visible=False then me.Enabled=False
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton1
	#tag Event
		Sub Action()
		  if me.Caption = "Pause" then
		    RunThreadState = "paused"
		    me.Caption = "Resume"
		  else
		    RunThreadState="resume"
		    me.Caption="Pause"
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RunTImer
	#tag Event
		Sub Action()
		  
		  Select case RunThreadState
		  case "running"
		    if rp.ThreadState<>Thread.ThreadStates.Running then
		      rp.Start
		    end
		  case "paused"
		    if rp.ThreadState=Thread.ThreadStates.Running then
		      rp.Pause
		      rp.MsgOutput=rp.MsgOutput+"Thread paused..."
		    end
		  case "resume"
		    if rp.ThreadState=Thread.ThreadStates.Paused then
		      rp.Resume
		      rp.MsgOutput=rp.MsgOutput+"Thread resumed"+EndOfLine.UNIX
		    end
		  case "stopped"
		    if rp.ThreadState<>Thread.ThreadStates.NotRunning then
		      rp.Stop
		    end
		    dim resFile as FolderItem
		    dim OutStream as TextOutputStream
		    resFile=OutF.child("Search.log")
		    if resFile<>Nil then
		      OutStream = TextOutputStream.Create(resFile)
		      if outStream<>Nil then
		        outstream.Write(self.TextArea1.Text)
		        outstream.close
		        Self.TextArea1.Text=""
		      end if
		    end if
		    CancelButton.Enabled=false
		    PushButton1.Enabled=false
		    RunButton.Enabled=true
		    ChooseButton.Enabled=True
		    'if RunTomTomBox.State = CheckBox.CheckedStates.Checked then
		    dim n,tc as integer
		    for n=0 to UBound(TTshellArray)
		      if TTshellArray(n).finished=false then
		        TTshellArray(n).Close
		      end if
		    next
		    'end
		    if PushButton1.Caption="Resume" then PushButton1.Caption="Pause"
		    me.enabled=False
		    OutputTimer.Enabled = False
		  end
		  if rp.ThreadState=Thread.ThreadStates.NotRunning and CancelButton.Caption="Stop" then
		    CancelButton.Caption="Finish"
		    PushButton1.Enabled=False
		  end
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
		Group="Background"
		InitialValue=""
		Type="Picture"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Visible=false
		Group="OS X (Carbon)"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreen"
		Visible=false
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Size"
		InitialValue="400"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="hts2res"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Behavior"
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
		Visible=false
		Group="OS X (Carbon)"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBar"
		Visible=true
		Group="Menus"
		InitialValue=""
		Type="MenuBar"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Visible=false
		Group="Behavior"
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
		Name="phmmerRes"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Resizeable"
		Visible=true
		Group="Frame"
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
		Name="TFfeature"
		Visible=false
		Group="Behavior"
		InitialValue="-1"
		Type="integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Frame"
		InitialValue="Untitled"
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="TTthreadsRunnin"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Size"
		InitialValue="600"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="RunThreadState"
		Visible=false
		Group="Behavior"
		InitialValue="not running"
		Type="string"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="mouseInWin"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="boolean"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
