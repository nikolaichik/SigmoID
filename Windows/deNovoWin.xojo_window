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
   Height          =   450
   ImplicitInstance=   True
   LiveResize      =   True
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
      ButtonStyle     =   "0"
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
      Transparent     =   True
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
      Transparent     =   True
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
      Top             =   376
      Transparent     =   True
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   765
   End
   Begin PushButton ChooseButton
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
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
      Transparent     =   True
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
      Transparent     =   True
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   1022
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin nSocket hts2
      Enabled         =   True
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
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
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
      Italic          =   False
      Left            =   425
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
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "300"
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   346
      Transparent     =   True
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
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
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
      Enabled         =   True
      Index           =   -2147483648
      LockedInPosition=   False
      Mode            =   2
      Period          =   500
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
		Sub Open()
		  AdjustLayout4linux(me)
		  RunCheck
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
		    sh.execute cli
		    
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
		  
		  
		  dim MeshClustTemp as folderitem
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
		    if meshClustTemp <> nil then
		      cli=MeshClustPath + " " + infilePath + " --output "+ MeshClustTemp.ShellPath
		      
		      sh=New Shell
		      sh.mode=0
		      sh.TimeOut=-1
		      sh.execute cli
		      
		      If sh.errorCode <> 0 then
		        msgbox "Problem running MeShClust"
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

	#tag Property, Flags = &h0
		TTthreadsRunning As Integer
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
		  dim hmmPath, hmmName as string
		  dim CrTagsCodes as String
		  dim CrBaseTags(0) as String
		  dim CrBaseECodes(0) as String
		  dim CDSfile as folderitem
		  dim resFile as folderitem
		  dim resfile2 as folderitem
		  dim BaseLocation as FolderItem
		  dim instream as TextInputStream
		  dim outStream as TextOutputStream
		  dim theProtName as string
		  redim TTshellArray(-1)
		  dim ttt,ttt2 as TTshell
		  
		  dim phmmerSearchSeparator as string = "================================================================================================================"
		  dim hitCount,crIndex as integer
		  'BaseLocation=GetFolderItem("").Parent
		  BaseLocation=Resources_f
		  CDSseqs=""
		  
		  hmmPath=HmmList.Cell(HmmList.ListIndex,7) 'was five
		  CRtagPositions=HmmList.Cell(HmmList.ListIndex,3)
		  hmmName=HmmList.Cell(HmmList.ListIndex,1)
		  
		  if RunTomTomBox.Value then GetTTlibString  'assemble motif library path for running TomTom later
		  
		  BaseLocation=BaseLocation.Child("CRtagBase").Child(hmmName+".crtag")
		  
		  try
		    instream=BaseLocation.OpenAsTextFile
		  catch e as NilObjectException
		    MsgBox("Check the crtags base's path: "+str(BaseLocation.NativePath))
		    exit
		  end try
		  while not instream.EOF 
		    CrTagsCodes=instream.ReadLine
		    CrTagsCodes=Replaceall(CrTagsCodes,".1;",",")
		    CrBaseTags.append(trim(NthField(CrTagsCodes," ",1)))
		    CrBaseECodes.Append(trim(NthField(CrTagsCodes," ",2)))
		  wend
		  instream.Close
		  
		  //Run hmmsearch and screen the output for CR tags.
		  sh=New Shell
		  sh.mode=0
		  sh.TimeOut=-1
		  
		  //'export protein sequences
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
		    
		    //'store the CDSs as a string for possible further use:
		    instream=CDSfile.OpenAsTextFile
		    
		    if instream<>nil then
		      CDSseqs=replaceall(trim(instream.ReadAll),EndOfLine.unix,"")
		      instream.close
		    end if
		  else
		    msgbox "Can't create a file to store CDS sequences, have to abort search"
		    
		  end if
		  alignmentsFile=TemporaryFolder.Child("alignments.table")
		  if alignmentsFile<>nil then
		    if alignmentsFile.exists then
		      alignmentsFile.Delete
		    end if
		    LogoWin.WriteToSTDOUT (EndofLine.unix+"Running hmmsearch...")
		    dim HmmSearchPath as string = replace(nhmmerPath,"nhmmer","hmmsearch")
		    
		    cli=HmmSearchPath+" --cut_ga --notextw -A "+alignmentsFile.ShellPath+" "+hmmPath+" "+CDSfile.ShellPath
		    
		    sh.execute cli
		    If sh.errorCode=0 then
		      LogoWin.WriteToSTDOUT (" OK"+EndofLine.unix)
		      
		      instream=alignmentsFile.OpenAsTextFile
		      
		      if instream<>nil then         'save hmmsearch results
		        table=trim(instream.ReadAll)
		        instream.close
		        hmmSearchRes=GetCRtags(sh.Result,Table,CRtagPositions)
		        'LogoWin.WriteToSTDOUT EndofLine.unix+hmmSearchRes
		        
		        'save HmmSearch results (with CR tags), just in case:
		        resFile=OutF.child("hmmsearch_result_withCRtags.txt")
		        if resFile<>Nil then
		          OutStream = TextOutputStream.Create(resFile)
		          if outStream<>Nil then
		            outstream.Writeline("HMM file used: "+hmmPath)
		            outstream.Writeline("CRtag positions used: " +CRtagPositions)
		            outstream.Writeline(EndOfLine.unix)
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
		  
		  // Run searches and filter out results without the CR tag
		  'names, hit seqs and CR tags are in these arrays:
		  ' ProtNames()
		  ' HmmSearchMatches()
		  ' CRtags()
		  dim query, res, filteredRes As string
		  dim n as integer
		  
		  LogoWin.WriteToSTDOUT (EndofLine.unix+"Running online search and genome fragment retrieval.")
		  
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
		      
		      //masked in new approach
		      'if RefProtBut.Value then
		      'LogoWin.WriteToSTDOUT (EndofLine.unix+EndofLine.unix+"Searching Uniprot Reference Proteins with "+ProtNames(n)+"...")
		      'else
		      'LogoWin.WriteToSTDOUT (EndofLine.unix+EndofLine.unix+"Searching Uniprot (full) with "+ProtNames(n)+"...")
		      'end if
		      
		      
		      theProtName=replaceall(ProtNames(N),":","_") 'OS X precaution
		      '//'resFile=phmmer_results.child(ProtNames(n)+".raw")
		      'resFile=phmmer_results.child(theProtName+".raw")
		      '
		      'if resFile<>Nil then
		      'if resfile.exists then
		      '//'load existing data
		      'LogoWin.WriteToSTDOUT (EndOfLine.unix+"phmmer results file exists in the working directory and will be reused"+EndOfLine.unix)
		      '
		      'instream=resFile.OpenAsTextFile
		      'if instream<>nil then
		      'res=instream.ReadAll
		      'instream.close
		      'end if
		      '
		      'else
		      '//'run phmmer search vs primary DB
		      'if RefProtBut.Value then
		      'res=phmmerTextSearch(query, "uniprotrefprot")
		      '//'return 'debug
		      'else
		      'res=phmmerTextSearch(query, "uniprotkb")
		      '//'return 'debug
		      'end if
		      '
		      'if res<>"" then
		      '//'save raw phmmer results
		      'resFile=phmmer_results.child(theProtName+".raw")
		      'if resFile<>Nil then
		      'OutStream = TextOutputStream.Create(resFile)
		      'if outStream<>Nil then
		      'outstream.Write(res)
		      'outstream.close
		      '//'LogoWin.WriteToSTDOUT (" Done.")
		      '
		      'end if
		      '
		      'end if
		      '
		      'end if
		      'end if
		      '
		      'end if
		      '
		      '// Filter phmmer results
		      'if res<>"" then
		      'FilteredRes=DefineEncoding(WebGetCRtags(Res,CRtagPositions,CRtags(n)),Encodings.ASCII)
		      'else
		      'logowin.WriteToSTDOUT(EndOfLine.UNIX+"phmmer search returned empty result!"+EndOfLine.UNIX)
		      'end if
		      '
		      '//' issue a warning if there's less than 10 or over 100 seqs.
		      'hitcount=CountFields(FilteredRes,phmmerSearchSeparator)-2
		      'if hitcount<0 then hitcount=0
		      '
		      'if hitcount<10 then
		      'LogoWin.WriteToSTDOUT (" Warning! Too few ("+str(hitcount)+") filtered hits.")
		      'if FallBackCheck.value then
		      'LogoWin.WriteToSTDOUT (EndOfLine.unix+"Running search vs full UniProt...")
		      '
		      'resFile=phmmer_results.child(ProtNames(n)+".UniProt_raw")
		      'if resFile<>Nil then
		      'if resfile.exists then
		      '//'load existing data
		      'LogoWin.WriteToSTDOUT (EndOfLine.unix+"phmmer results file exists in the working directory and will be reused"+EndOfLine.unix)
		      'instream=resFile.OpenAsTextFile
		      'if instream<>nil then
		      'res=instream.ReadAll
		      'instream.close
		      'end if
		      '
		      'else
		      '//'run phmmer search vs fallback DB
		      'res=phmmerTextSearch(query, "uniprotkb")
		      '
		      'if res<>"" then
		      '//'save raw phmmer results
		      'resFile=phmmer_results.child(theProtName+".UniProt_raw")
		      'if resFile<>Nil then
		      'OutStream = TextOutputStream.Create(resFile)
		      'if outStream<>Nil then
		      'outstream.Write(res)
		      'outstream.close
		      '
		      'end if
		      'end if
		      '
		      'end if
		      'end if
		      '
		      '
		      '// Filter phmmer results
		      'if res<>"" then
		      'FilteredRes=DefineEncoding(WebGetCRtags(Res,CRtagPositions,CRtags(n)),Encodings.ASCII)
		      '
		      'hitcount=CountFields(FilteredRes,phmmerSearchSeparator)-2
		      '
		      'LogoWin.WriteToSTDOUT (" "+str(hitcount)+" filtered hits found.")
		      '
		      '
		      'else
		      'logowin.WriteToSTDOUT(EndOfLine.UNIX+"phmmer search returned empty result!")
		      'end if
		      'hitcount=CountFields(FilteredRes,phmmerSearchSeparator)-2
		      'end if
		      '
		      '
		      'end if
		      'end if
		      '
		      'if hitcount>100 then
		      'LogoWin.WriteToSTDOUT (" Warning! Over 100 ("+str(hitcount)+") filtered hits.")
		      'if hitCount>300 then
		      'LogoWin.WriteToSTDOUT (" Only the first 300 will be processed.")
		      'end if
		      'else
		      'LogoWin.WriteToSTDOUT (str(hitcount)+" filtered hits.")
		      'end if
		      '
		      '
		      '//'save CR tag filtered phmmer results
		      'resFile=phmmer_results.child(theProtName+".filtered")
		      'if resFile<>Nil then
		      'OutStream = TextOutputStream.Create(resFile)
		      'if outStream<>Nil then
		      'outstream.Write(FilteredRes)
		      'outstream.close
		      'LogoWin.WriteToSTDOUT (" Done.")
		      '
		      'end if
		      '
		      'end if
		      '
		      
		      
		      '
		      // Extract promoter regions from the target operon and its two neighbours
		      
		      'if res<>"" then
		      resfile=Fasta_files.child(theProtName+"_unfiltered.fasta")
		      if resFile<>Nil then
		        if resfile.exists then
		          //'load existing data
		          LogoWin.WriteToSTDOUT (EndOfLine.unix+"a fasta file presumably with genome fragments exists in the working directory and will be reused."+EndOfLine.unix)
		          instream=resFile.OpenAsTextFile
		          if instream<>nil then
		            res=instream.ReadAll
		            instream.close
		            DataForMeme=res
		          end if
		          'resfile2=Fasta_files.child(theProtName+".fasta")
		        else
		          
		          dim FragmentsForAhitF As folderitem
		          
		          FragmentsForAhitF=Genome_fragments.child(theProtName)
		          if NOT FragmentsForAhitF.exists then
		            FragmentsForAhitF.createAsFolder
		          end if
		          
		          if FragmentsForAhitF=Nil then
		            MsgBox "Can't create a folder "+FragmentsForAhitF.ShellPath+"to store genome fragments"
		            return
		          end if
		          
		          
		          
		          LogoWin.WriteToSTDOUT (EndOfLine.unix+"Extracting promoter fragments for the operon coding for "+theProtName+" and two neighbour operons..."+EndOfLine.unix)
		          
		          
		          
		          //add file existence check somewhere here (or within GetOrthoRegSeq) and reuse existing .gb files
		          crIndex=CrBaseTags.indexof(Crtags(n))
		          if crIndex>0 then
		            filteredRes=CrBaseECodes(crindex)
		          else
		            LogoWin.WriteToSTDOUT (EndOfLine.unix+"CrTag "+Crtags(n)+" was not found in the local base (protein seq accession "+theProtName+")"+EndOfLine.unix)
		            continue for n
		          end if
		          DataForMeme=GetOrthoRegSeq(FilteredRes, FragmentsForAhitF)
		        end if
		        
		        
		        
		        if dataForMeme<>"" then
		          
		          // Remove extra (repetitive/too close) seqs
		          ' leave one seq per species,
		          ' or one seq per genus if too many seqs
		          
		          ' Save unfiltered UPS fragments
		          resfile=Fasta_files.child(theProtName+"_unfiltered.fasta")
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
		          
		          
		          
		          
		          LogoWin.WriteToSTDOUT (" Done extracting genome fragments."+EndOfLine.unix)
		          
		          // Save UPS fragments used for MEME run
		          
		          
		          
		          
		          
		          
		          LogoWin.WriteToSTDOUT(EndOfLine.Unix + CountSeqs(dataForMeme)+" genome fragments extracted.")
		          
		          
		          resfile2=Fasta_files.child(ProtNames(n)+"_CDhit_filtered.fasta")
		          
		          if resfile2<>nil then
		            
		            if countfields(DataForMeme,">")>30 then 'too many seqs - reduce the number!
		              
		              'run cd-hit if present
		              dim clustered as string
		              'clustered=CDHitClustering(resFile,resFile2)
		              clustered=MeshClustering(resFile,resFile2)
		              if clustered<>"" then 'empty string can be returned in case of an error
		                DataForMeme=clustered
		              end if
		              
		              'use genus and then species filtering anyway, as cd-hit filtering is far from perfect
		              DataForMeme=RemoveRedundantSeqs(DataForMeme,false)
		              'LogoWin.WriteToSTDOUT(EndOfLine.Unix + CountSeqs(dataForMeme)+" fragments after removing redundant species.")
		              
		              DataForMeme=RemoveRedundantSeqs(DataForMeme,true)
		              'LogoWin.WriteToSTDOUT(EndOfLine.Unix + CountSeqs(dataForMeme)+" fragments after removing redundant genera.")
		              
		              resfile2=Fasta_files.child(ProtNames(n)+".fasta")
		              OutStream = TextOutputStream.Create(resFile2)
		              if outStream<>Nil then
		                outstream.Write(DataForMeme)
		                outstream.close
		                'LogoWin.WriteToSTDOUT (" Done.")
		                
		              end if
		              
		            else 'countfields(DataForMeme,">")>30
		              resfile2=resFile
		              
		            end if 'countfields(DataForMeme,">")>30
		            
		          else 'resfile2<>nil
		            LogoWin.WriteToSTDOUT (EndOfLine.unix+"Can't create a file to store superpromoters around the genes coding for "+ProtNames(n)+".")
		            
		          end if 'resfile2<>nil
		          
		        end if
		        
		        
		        
		        
		        
		        // Run MEME in two modes
		        dim memeF,f1 as folderitem
		        
		        memeF=MEME_results.child(ProtNames(n))
		        
		        If memeF <> Nil Then
		          if memeF.Exists then
		            LogoWin.WriteToSTDOUT ("MEME results folder exists, so MEME will not be run. Remove this folder ("+memeF.shellpath+") and re-run this procedure if you want to re-generate the  results"+EndOfLine.unix)
		            
		          else
		            memeF.createAsFolder
		            
		            dim opt as string
		            dim ErrCode as integer
		            
		            if CPUcores>1 then
		              opt=" -p " + str(CPUcores)  'for parallelised meme
		              'opt=" -p 2"
		            end if
		            
		            dim mWidth as string=HmmList.Cell(HmmList.ListIndex,5) 'motif widths are stored in the table (and can be changed here)
		            
		            opt=opt+" -dna -minw "+ trim(nthfield(mWidth,"-",1))
		            opt=opt+" -maxw "+ trim(nthfield(mWidth,"-",2))
		            
		            
		            '[-pal]            force palindromes (requires -dna)
		            if HmmList.Cell(HmmList.ListIndex,4)="yes" then
		              opt=opt+" -pal"
		            end if
		            
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
		            
		            if resfile2<>Nil then
		              if f1<>NIL then
		                if f1.Exists then
		                  f1.Delete
		                end if
		                
		                'LogoWin.show
		                LogoWin.WriteToSTDOUT (EndofLine.unix+EndofLine.unix+"Running MEME in zoops mode...")
		                
		                ErrCode=MEME(resfile2, f1, opt+" -mod zoops")
		                'sh=New Shell
		                'sh.mode=0
		                'sh.TimeOut=-1
		                dim zclean, aclean as boolean 
		                If ErrCode=0 then
		                  LogoWin.WriteToSTDOUT (" done."+EndofLine.unix)
		                  
		                  'create TomTom thread
		                  ttt = new TTshell(f1.child("meme.txt"))
		                  zclean=true
		                else
		                  zclean=false
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
		                  
		                  ErrCode=MEME(resfile2, f1, opt+" -mod anr")
		                  If ErrCode=0 then
		                    
		                    LogoWin.WriteToSTDOUT (" done."+EndofLine.unix)
		                    'create TomTom thread
		                    ttt2 = new TTshell(f1.child("meme.txt"))
		                    aclean=true
		                  else
		                    aclean=false
		                  end if
		                  
		                  if RunTomTomBox.Value then 
		                    'launch TomTom threads
		                    TTshellArray.Append ttt
		                    TTshellArray(UBound(TTshellArray)).RunTomTom
		                    TTshellArray.Append ttt2
		                    TTshellArray(UBound(TTshellArray)).RunTomTom
		                    
		                    ttt = new TTshell(f1.child("meme.txt")) 'remove reference to array element
		                    ttt2 = new TTshell(f1.child("meme.txt"))
		                  end if
		                  
		                  LogoWin.WriteToSTDOUT (EndofLine+"Results written to "+outf.Shellpath)
		                  
		                  
		                else
		                  msgbox "Can't create MEME output folder!"
		                  'return -1
		                end if
		                
		              else
		                
		              End If
		              resfile2=new FolderItem
		            else
		              LogoWin.WriteToSTDOUT (EndofLine.unix+"Not running MEME (empty file)")
		              
		            End If
		            
		          end if
		          
		          
		        else
		          LogoWin.WriteToSTDOUT (EndOfLine.unix+"Can't create a folder to store MEME results for "+ProtNames(n)+".")
		          
		        end if
		      else
		        LogoWin.WriteToSTDOUT (EndOfLine.unix+"Can't create a folder to store genome fragments for "+ProtNames(n)+".")
		      end if
		      'end if
		      
		      
		      
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
		  '
		  'LogoWin.WriteToSTDOUT (EndofLine.unix+"TomTomThreadArray size: "+str(Ubound(TTthreadArray))+EndofLine.unix)
		  '
		  '
		  if RunTomTomBox.Value then 
		    dim tc as integer
		    for n=0 to UBound(TTshellArray)
		      if TTshellArray(n).finished=false then
		        tc=tc+1
		      end if
		    next
		    
		    if tc>0 then
		      TTthreadsRunning=tc
		      LogoWin.WriteToSTDOUT (EndofLine.unix+str(TC)+" TomTom tasks are still running. Don't quit SigmoID or repeat de novo search until these threads are finished."+EndofLine.unix)
		      TTtimer.Enabled=true
		    end if
		  end if
		  
		  
		  // Reutilise data from incomplete searches!
		  
		  
		  
		  Exception err
		    
		    if err isa IOException then
		      LogoWin.WriteToSTDOUT(EndOfLine.unix+"IOException has occurred.")
		      LogoWin.WriteToSTDOUT(EndOfLine.unix+"ErrorNumber: "+str(err.ErrorNumber))
		      LogoWin.WriteToSTDOUT(EndOfLine.unix+"Message: "+err.Message)
		      LogoWin.WriteToSTDOUT(EndOfLine.unix+"Reason: "+err.Reason)
		    end if
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
		Sub TextChange()
		  dim p2p as integer
		  
		  p2p=val(me.text)
		  
		  if p2p<30 then
		    me.text="30"
		    msgbox "30 is the minimal number here"
		  end if
		  
		  if p2p>1000 then
		    me.text="1000"
		    msgbox "1000 is the maximal number here. Please think if you really want to fetch this many seqs. It's slow and doesn't really help."
		  end if
		  
		  
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
		  
		  if tc<TTthreadsRunning then
		    TTthreadsRunning=tc
		    if tc=0 then
		      LogoWin.WriteToSTDOUT (EndofLine.unix+"All TomTom tasks finished."+EndofLine.unix)
		      me.Enabled=false
		    else
		      if tc=1 then
		        LogoWin.WriteToSTDOUT (EndofLine.unix+"1 TomTom task is still running..."+EndofLine.unix)
		      else
		        LogoWin.WriteToSTDOUT (EndofLine.unix+str(TC)+" TomTom tasks are still running..."+EndofLine.unix)
		      end if
		      
		    end if
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
		Name="hts2res"
		Group="Behavior"
		Type="String"
		EditorType="MultiLineEditor"
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
		Name="TTthreadsRunning"
		Group="Behavior"
		Type="Integer"
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
