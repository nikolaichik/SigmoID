#tag Window
Begin Window CRtagBaseConstructor
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   596
   ImplicitInstance=   True
   LiveResize      =   "True"
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
   Title           =   "Untitled"
   Visible         =   True
   Width           =   699
   Begin Listbox hmmlist
      AllowAutoDeactivate=   True
      AllowAutoHideScrollbars=   True
      AllowExpandableRows=   False
      AllowFocusRing  =   True
      AllowResizableColumns=   False
      AllowRowDragging=   False
      AllowRowReordering=   False
      Bold            =   False
      ColumnCount     =   7
      ColumnWidths    =   ""
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   -1
      DropIndicatorVisible=   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      GridLinesHorizontalStyle=   "0"
      GridLinesVerticalStyle=   "0"
      HasBorder       =   True
      HasHeader       =   False
      HasHorizontalScrollbar=   False
      HasVerticalScrollbar=   True
      HeadingIndex    =   -1
      Height          =   200
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      RequiresSelection=   False
      RowSelectionType=   "0"
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   0
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   699
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
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
      Height          =   26
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   35
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Select sequences file"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   238
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   453
   End
   Begin Label Label2
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
      Left            =   35
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Select .fasta file"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   299
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   363
   End
   Begin PushButton runbutton
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "Start!"
      Default         =   True
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   34
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   559
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MacButtonStyle  =   "0"
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   356
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   76
   End
   Begin PushButton PushButton2
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "trEMBL.dat(.gz)"
      Default         =   True
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   37
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   410
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MacButtonStyle  =   "0"
      Scope           =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   224
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   233
   End
   Begin PushButton PushButton3
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "trEMBL.fasta"
      Default         =   True
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   34
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   410
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MacButtonStyle  =   "0"
      Scope           =   0
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   284
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   233
   End
   Begin TextArea TextArea1
      AllowAutoDeactivate=   True
      AllowFocusRing  =   True
      AllowSpellChecking=   True
      AllowStyledText =   True
      AllowTabs       =   False
      BackgroundColor =   &c00000000
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
      Height          =   194
      HideSelection   =   True
      Index           =   -2147483648
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
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "READ FIRST:\nThe process of CR-tag base creation uses Cdbfasta software for quick sequence retrieval from large fasta files. It's necessary to install this program from repository or by link: https://github.com/gpertea/cdbfasta.\nAfter the installation, check, please, that its path was added to your PATH environment: the command ""cdbfasta"" should be executed successfully outside the installation directory in the command line.\n\nThe source file should contain EMBL codes for all sequences and can be compressed (.gz). That file will be used by hmmsearch tool with chosen HMM model.\n\nNext, create a .fasta file from your sequences file (if it's not .fasta), after that make an index file for it. You need to execute command ""cdbfasta /path/to/your fasta"" - new .cidx file will be created in the directory with your fasta. \n\nNow you can provide paths to the original file with EMBL codes (""Select sequences file"" line) and the index file was made from corresponding .fasta (""Select .cidx file"") by dialog buttons above; choose right HMM model from the list and press ""Start!"" button in order to activate base creation process."
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   402
      Transparent     =   True
      Underline       =   False
      ValidationMask  =   ""
      Visible         =   True
      Width           =   699
   End
End
#tag EndWindow

#tag WindowCode
	#tag Method, Flags = &h0
		Sub buildhmmarray()
		  dim m,n as integer
		  dim f as folderitem
		  dim hmmPath, fName, aLine,lineStart as string
		  dim inStream as TextInputStream
		  dim aNAME, ACC, DESC, CRtag, PAL, mWIDTH as string
		  
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
		Sub EmblArrayPrep(Hmmsearchoutput as string)
		  dim m,n as Integer
		  dim cli as String
		  dim reg1 as New RegEx
		  dim reg2 as new RegEx
		  dim protcode, emblcode as RegExMatch
		  ' matches seq code  (any non space chars between >> and second space) in strings like ">> A0A0Q6YNG8_9ACTN  SubName: Full=Two-component system response regulator {ECO:0000313|EMBL:KQW12458.1};" - 
		  reg1.SearchPattern="(?<=^\>\>\s)\S*(?=\s)"  
		  'extracts code after EMBL: and dot from string like ">> A0A0Q6YNG8_9ACTN  SubName: Full=Two-component system response regulator {ECO:0000313|EMBL:KQW12458.1};"
		  reg2.SearchPattern="(?<=EMBL:)\S*(?=\.)"
		  redim emblcom(0)
		  redim emblPrCodes(0)
		  redim EmblPrSeq(0)
		  prot2exclude=""
		  
		  cli="grep -Po "+chr(34)+"^\>\>.*$"+chr(34)+" "+Hmmsearchoutput ' here we get all lines, that start with ">>" from hmmsearch output file
		  userShell(cli)
		  If shError=0 Then
		    emblcom=shResult.Split(EndOfLine.UNIX)
		  else
		    LogoWin.WriteToSTDOUT(EndOfLine.Unix+str(shResult)+EndOfLine.UNIX)
		  end if
		  n=Ubound(EmblCom)
		  For m=0 to n
		    protcode=reg1.Search(emblcom(m))
		    emblcode=reg2.Search(emblcom(m))
		    if protcode<>Nil and emblcode<>NIl then
		      EmblPrSeq.Append(protcode.SubExpressionString(0))
		      EmblPrCodes.Append(emblcode.SubExpressionString(0))
		    else
		      if protcode<>Nil then prot2exclude=prot2exclude+protcode.SubExpressionString(0)+EndOfLine.UNIX
		    end
		  next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetCrtags(SearchResRaw as string, SearchResTable as string, CRs as string) As string
		  // Add Critical Residues (CRs) according to Sahota and Stormo (2010; doi:10.1093/bioinformatics/btq501) 
		  ' to hmmsearch output 
		  ' CRs should be in the format "2,3,7,9,11,13,14,21"
		  ' requires an alignment table (example below) in addition to standard hmmsearch output to simplify things a bit.
		  ' the dot denotes a 'gap' in the position where an insertion relative to the hmm occurred:
		  ' such dots should be skipped, but the the sequence with lowercase letter in this position 
		  ' has the actual insertion and should be ignored (its tag is likely to be invalid)
		  ' the target should also have no dashes (gaps) within the CR range
		  ' also, seqs with duplicate domains should probably be ignored (like OA04_28280 in the sample)
		  
		  'hmmsearch command:
		  'hmmsearch --domE 0.1 -A hmmer.table LacI.hmm CDSs.fasta
		  
		  '# STOCKHOLM 1.0
		  '
		  '#=GS OA04_12200/36-82   DE [subseq from] acrR AcrAB operon repressor
		  '#=GS OA04_28280/12-54   DE [subseq from] transcriptional regulator, TetR family
		  '#=GS OA04_28280/249-295 DE [subseq from] transcriptional regulator, TetR family
		  '#=GS OA04_32680/23-68   DE [subseq from] HTH-type transcriptional regulator TcmR
		  '
		  '
		  'OA04_12200/36-82           ILDTAL.RVFSEHGVSATSLSDIATAAGVTRGAIYWHFKNKAEIFDEI
		  '#=GR OA04_12200/36-82   PP 9*****.**************************************996
		  'OA04_28280/12-54           ILDAAE.KVLLRDGVHRFTLDAVAAEAGISKGGLVYSFPSKDLL----
		  '#=GR OA04_28280/12-54   PP 9*****.**********************************966....
		  'OA04_28280/249-295         IVETAM.NIIKRDGIGALTHRAVANEAHVPLGSTTYHFKSLDDMLNAV
		  '#=GR OA04_21850/18-62   PP 9*****.*********************************998875..
		  'OA04_43270/21-62           --EAAFsQLSAERSFASLSLREVAREAGIAPTSFYRHFRDVDEL----
		  '#=GR OA04_43270/21-62   PP ..555415679***************************986665....
		  
		  
		  'Hits truncated at termini are not handled properly (if truncation eats into CR tag region)
		  
		  dim CRarray(0) as integer
		  'dim TableArray(0) as string
		  dim AlignmentArray(0) as string
		  dim ProtName As string
		  'dim currentCDS as string
		  dim hitSeq,CDStmp, CRtag, CRtagRegion, EmblCode as string
		  dim m,n,o,p,q,r,fst,CRlen,EmblPrIndex as integer
		  dim tempseq as string
		  dim cdsID as string 
		  ReDim ProtNames(0)
		  ReDim hmmSearchMatches(0)
		  ReDim CRtags(0)
		  // add shell for seq exctration
		  dim cli as string 
		  
		  // Store CR positions
		  m=CountFields(CRs,",")
		  for n=1 to m 
		    CRarray.Append(Val(NthField(CRs,",",n)))
		  next
		  fst=CRarray(1)
		  CRlen=CRarray(m)-fst+1
		  
		  cli="grep "+chr(34)+"^[^#;]"+chr(34)+" "+SearchResTable 'get lines, that don't start with #
		  userShell(cli)
		  AlignmentArray=shResult.Split(EndOfLine.UNIX) 
		  
		  cli="grep "+Chr(34)+"^[^#;]"+Chr(34)+" "+SearchResTable+"  "+Chr(124)+" grep -Po "+Chr(34)+"^\S.*(?=\/)"+Chr(34)+"  "+Chr(124)+" sort "+Chr(124)+" uniq -cd" ' get list of non unique (thus multidomain) seq codes  
		  userShell(cli)
		  dim uniqprot as string=shResult
		  uniqprot=uniqprot+prot2exclude ' add seq codes that don't have EMBL codes to multidomain seq list - all of them must be skipped
		  redim EmblCom(0)
		  
		  // Extract CR tag
		  m=ubound(AlignmentArray)-1 'removed -4
		  o=ubound(CRarray)
		  for n=0 to m 
		    hitseq=AlignmentArray(n)
		    ProtName=NthField(hitSeq,"/",1)
		    'if InStr(ProtName,"|")>0 then 'questionable: this will prevent adding CR tags to hmmsearch result
		    'ProtName=NthField(ProtName,"|",2)
		    'end if
		    if uniqprot.InStr(ProtName)>0 then Continue
		    
		    ProtNames.Append(ProtName)
		    hitseq=NthField(hitSeq," ",countfields(hitseq," ")) 'the seq goes after the last space
		    tempseq=hitSeq
		    hitSeq=ReplaceAll(hitseq,".","") 'removing gaps resulting from insertions in other seqs: probably not the wise thing to do! 
		    
		    
		    
		    'extending hits to equal lengths at ends (if necessary)
		    'checking for alignments truncated at ends (and fixing this when possible)
		    if instr(hitSeq,"-")>0 then
		      dim currentHit As string=hitseq
		      q=0
		      if left(hitSeq, 1)="-" then 
		        'hitSeq=Replace(hitSeq,"-","x")
		        r=len(hitSeq)
		        for q=2 to r     'trim left end
		          if mid(hitSeq,q,1)<>"-" then exit
		        next
		        q=q-1
		        
		        currentHit=right(hitseq,len(hitseq)-q)
		        
		      end if
		      
		      while right(currentHit,1)="-"     'trim right end
		        currentHit=left(currentHit,len(currentHit)-1)
		      wend
		      
		      'get extended hit
		      CDStmp=NthField(CDSseqs,">"+ProtNames(ubound(ProtNames)),2)'precaution for paralogues
		      // get extended hit for base
		      
		      // cdbyank version:
		      'assume bash is the normal user shell
		      'execute bash with login scripts to set the same env as in terminal
		      'command must be in single quotes
		      'Should be corrected
		      'cli="bash --login -c 'cdbyank -a "+Str(ProtNames(ubound(ProtNames)))+" "+trEMBL_fasta.ShellPath+"'"
		      cli="'cdbyank -a "+Str(ProtNames(ubound(ProtNames)))+" "+PlaceQuotesToPath(trEMBL_fasta.ShellPath)+"'"
		      
		      // samtools version:
		      'cli="samtools faidx "+fastasource.shellpath+" "+str(ProtNames(ubound(ProtNames)))
		      'cli="samtools faidx "+trEMBL_fasta.shellpath+" "+str(ProtNames(ubound(ProtNames)))
		      
		      #if TargetWindows
		        ExecuteWSL(cli)
		      #else
		        userShell(cli)
		      #endif
		      
		      if shError<>0 then
		        LogoWin.WriteToSTDOUT (EndOfLine.unix+"Error retrieving "+str(ProtNames(ubound(ProtNames)))+" from trEMBL"+EndOfLine.unix)
		        CDStmp=""
		      else
		        cdsID=NthField(shResult,EndOfLine.unix,1)
		        CDStmp=trim(ReplaceAll(NthField(shResult,cdsID,2),EndOfLine.UNIX,""))
		      end if
		      dim gapPos,leftPartStart, rightPartStart as integer
		      dim leftPart, rightPart, leftExt, rightExt as string
		      
		      'if the left end was truncated, we get completely wrong tag here!
		      'so, we extend the left end by required number of residues first:
		      gapPos=instr(currenthit,"-")
		      leftPart=nthfield(currentHit,"-",1)
		      leftPartStart=instr(CDStmp,leftPart)
		      leftExt=mid(CDStmp,leftPartStart-q,q)
		      currenthit=leftext+currentHit
		      
		      'extend the right end
		      rightPart=nthfield(currentHit,"-",countfields(currentHit,"-"))
		      rightPartStart=instr(CDStmp,rightPart)
		      rightExt=mid(CDStmp,rightPartStart+len(rightPart),len(hitseq)-len(currenthit))
		      
		      'replace dashes so that phmmer doesn't bark at them later
		      dim hitpos as integer = instr(CDStmp,currenthit)
		      if hitpos=0 then
		        'zero should be due to gap(s) in the central part of the hit region
		        'these can probably be tolerated if located outside of the CR tag region,
		        'so we are replacing 'em with small 'x' here 
		        'This may leave C terminus truncated, and this could be a problem 
		        
		        'An example of a complex situation (CR tag positions are marked by astericks:
		        '                            *        ***                  **                           
		        ' ----VINQIIDDMARGHIP--SPLPSQNALAEMYNISRTTVRHILAHLRDCGVLT---------
		        '(a warning should be issued if CR tag positions are in non-conserved part of the HTH like in this example)
		        
		        currenthit=ReplaceAll(currenthit,"-","x")+rightExt
		      else
		        'currenthit=mid(CDStmp,hitpos-q,len(hitSeq))
		        'if len(currentHit)<len(hitSeq) then
		        ''extend the right end
		        'rightPartStart=instr(CDStmp,currenthit)
		        'rightExt=mid(CDStmp,rightPartStart+len(currenthit),len(hitseq)-len(currenthit))
		        'currenthit=currenthit+rightExt
		        'end if
		        
		      end if
		      
		      CRtag=""
		      for p=1 to o
		        CRtag=CRtag+mid(currenthit,CRarray(p),1)
		      next
		      
		      hmmSearchMatches.Append currenthit
		      hitseq=currenthit
		    else
		      hmmSearchMatches.Append hitseq
		    end
		    
		    
		    'gaps in the modelbefore the CRtag region should be corrected for, e.g
		    'XRE_superfamily  1 rLrelReer....gLtqeelAellGisrstlsryEnGrrkPsqevlkklakaLgvsldel 56
		    '                   rL+++ e++    gL+qe +A+++G+++s + +++nG    +  ++ +lak L+vs++e+
		    '     ABO40696.1 18 RLKAIYEKKknelGLSQESVADKMGMGQSGVGALFNGINALNAYNAALLAKILNVSVEEF 77
		    ' 
		    CRtagRegion=left(hitSeq,fst)
		    
		    if strcomp(CRtagRegion,Uppercase(CRtagRegion),0)<>0 then
		      dim p2 as integer =1
		      dim gapChars as integer
		      dim ch as string
		      for p2=1 to len(CRtagRegion)
		        ch =mid(CRtagRegion,p2,1)
		        if strcomp(ch,Uppercase(ch),0)<>0 then
		          gapChars=gapChars+1
		        end if
		      next
		      
		      hitseq=Right(hitseq,len(hitseq)-gapChars)
		      hmmSearchMatches(ubound(hmmSearchMatches))=hitseq
		      
		    end if
		    
		    'checking for gaps/insertions within CR range
		    CRtagRegion=mid(hitSeq,fst,CRlen)
		    
		    if strcomp(CRtagRegion,Uppercase(CRtagRegion),0)=0 then
		      'no problems
		      CRtag=""
		      for p=1 to o
		        'CRtag=CRtag+mid(hitseq,CRarray(p),1)
		        CRtag=CRtag+mid(hitseq,CRarray(p),1)
		      next
		      
		    else
		      'should capture gaps both in the model and in the hit seq
		      CRtag="[indel within CR tag region]"
		    end if
		    
		    // if cr tag is not corrupted add it's embl code to array
		    if CRtag<>"[indel within CR tag region]" then
		      EmblPrIndex=EmblPrSeq.IndexOf(ProtName)
		      if EmblPrIndex>-1 then
		        'EmblCode=Nthfield(EmblPrCodes(EmblPrIndex),"EMBL:",2)
		        'EmblCode=leftb(EmblCode,instrb(EmblCode,"};")-1)
		        'EmblCode=NthField(EmblCode,".",1)
		        EmblCode=emblPrCodes(EmblPrIndex)
		        if EmblCode<>"" then
		          EmblCom.append(EmblCode)
		        else
		          'EmblCom.append("No EMBL")
		          EmblCom.append("")
		        end
		      else
		        'EmblCom.append("Protein not found")
		        EmblCom.append("")
		      end
		    else
		      EmblCom.append("indel within reg")
		    end
		    
		    'CRtags=CRtags+CRtag+","
		    if CRtag="" or CRtag=" " then
		      Crtag=tempseq
		    end if
		    CRtags.append(CRtag)
		  next
		  
		  'return CRtags for saving to the file (commented wtih '
		  m=ubound(CRtags)
		  
		  dim z,t,crtaglen as Integer
		  dim CRtagsFilt(-1) as String
		  dim protnamesCon(-1) as string
		  dim ready,readyf,temp as string = ""
		  for n=0 to m
		    crtaglen=Len(CRtags(n))
		    if CRtags(n)<>"[indel within CR tag region]" and crtaglen=o then
		      t=CRtagsFilt.indexof(CRtags(n)) 
		      if t>-1 then 
		        temp=protnamescon(t)+","+EmblCom(n)
		        protnamescon(t)=temp
		        temp=""
		      else
		        crtagsFilt.append(CRtags(n))
		        protnamescon.append(EmblCom(n))
		      end
		    end
		  next
		  z=ubound(CRtagsFilt)
		  for n=0 to z
		    ready=CRtagsFilt(n)+" "+Protnamescon(n)+EndOfLine.unix
		    readyf=Readyf+ready
		  next
		  return readyf
		  
		  Exception err
		    ExceptionHandler(err,"CRtagBaseConstructor:GetCRtags")
		    
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub startcheck()
		  RunButton.Enabled=true
		  
		  if HmmList.SelCount=0 then
		    RunButton.Enabled=false
		    return
		  end if
		  
		  if trEMBL_fasta=nil then
		    RunButton.Enabled=false
		    return
		  end if
		  
		  if NOT trEMBL_fasta.exists then
		    RunButton.Enabled=false
		    return
		  end if 
		  
		  if trEMBL_dat=nil then
		    RunButton.Enabled=false
		    return
		  end if
		  if NOT trEMBL_dat.exists then
		    RunButton.Enabled=false
		    return
		  end if 
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		emblcom(0) As string
	#tag EndProperty

	#tag Property, Flags = &h0
		emblPrCodes(0) As string
	#tag EndProperty

	#tag Property, Flags = &h0
		EmblPrSeq(0) As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Outf As folderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			prot2exclude
		#tag EndNote
		prot2exclude As string
	#tag EndProperty

	#tag Property, Flags = &h0
		trEMBL_dat As folderitem
	#tag EndProperty

	#tag Property, Flags = &h0
		trEMBL_fasta As folderItem
	#tag EndProperty


#tag EndWindowCode

#tag Events hmmlist
	#tag Event
		Sub Change()
		  
		  startcheck
		End Sub
	#tag EndEvent
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
#tag EndEvents
#tag Events runbutton
	#tag Event
		Sub Action()
		  
		  dim cli as string
		  'dim dataForMeme as string
		  
		  dim hmmPath as string
		  'dim CrTagsCodes as String
		  'dim CrBaseTags(0) as String
		  'dim CrBaseECodes(0) as String
		  'dim CDSfile as folderitem
		  'dim resFile as folderitem'
		  'dim resfile2 as folderitem
		  'dim BaseLocation as FolderItem
		  dim instream as TextInputStream
		  dim outStream as TextOutputStream
		  'dim theProtName as string
		  
		  CDSseqs=""
		  hmmPath=HmmList.Cell(HmmList.ListIndex,7)
		  CRtagPositions=HmmList.Cell(HmmList.ListIndex,3)
		  //comment untill SOURCE files for get
		  //Run hmmsearch and screen the output for CR tags.
		  'sh=New Shell
		  'sh.mode=0
		  'sh.TimeOut=-1
		  
		  //'export protein sequences
		  LogoWin.show
		  
		  dim hmmsTrembl,path2hmmsearchoutput, path2alignmentsfile as String
		  dim outf as FolderItem
		  'dim tableinstr as TextInputStream
		  'dim outstream1 as TextOutputStream
		  dim  Base as string
		  dim AlignmentsFile, hmmsearchoutput as FolderItem
		  
		  path2alignmentsfile=TemporaryFolder.ShellPath+trEMBL_dat.Name+CRtagPositions+"-alignments"
		  path2hmmsearchoutput=TemporaryFolder.ShellPath+trEMBL_dat.Name+CRtagPositions+"-hmmsearch"
		  AlignmentsFile=new FolderItem(path2alignmentsfile, FolderItem.PathTypeShell)
		  hmmsearchoutput=new FolderItem(path2hmmsearchoutput, FolderItem.PathTypeShell)
		  While outf=nil
		    outf = GetSaveFolderItem("????",str(HmmList.Cell(HmmList.ListIndex,1))+".crtag")
		  wend
		  
		  if hmmsearchoutput<>nil and AlignmentsFile<>nil then
		    if hmmsearchoutput.exists=False and AlignmentsFile.Exists=False then
		      LogoWin.WriteToSTDOUT (EndofLine.unix+"Running hmmsearch...")
		      dim HmmSearchPath as string = replace(nhmmerPath,"nhmmer","hmmsearch")
		      if instr(trEMBL_dat.ShellPath,".gz")>0 then
		        cli="gunzip -c "+PlaceQuotesToPath(MakeWSLPath(trEMBL_dat.ShellPath))+" "+chr(124)+" "+ PlaceQuotesToPath(MakeWSLPath(HmmSearchPath))+" --cut_tc --notextw -A "+PlaceQuotesToPath(MakeWSLPath(alignmentsFile.ShellPath))+" -o "+PlaceQuotesToPath(MakeWSLPath(hmmsearchoutput.ShellPath))+" "+PlaceQuotesToPath(MakeWSLPath(hmmPath))+" -"
		      else
		        cli=HmmSearchPath+" --cut_ga --notextw -A "+PlaceQuotesToPath(MakeWSLPath(alignmentsFile.ShellPath))+" -o "+PlaceQuotesToPath(MakeWSLPath(hmmsearchoutput.ShellPath))+" "+PlaceQuotesToPath(MakeWSLPath(hmmPath))+" "+PlaceQuotesToPath(MakeWSLPath(trEMBL_dat.ShellPath))
		      end
		      
		      #if TargetWindows
		        ExecuteWSL(cli)
		      #else
		        userShell(cli)
		      #endif
		      
		      If shError=0 Then
		        LogoWin.WriteToSTDOUT (" OK"+EndofLine.unix)
		        instream=TextInputStream.Open(hmmsearchoutput)
		        hmmsTrembl=instream.ReadAll
		        EmblArrayPrep(hmmsearchoutput.ShellPath)
		        base=GetCRtags(hmmsTrembl,AlignmentsFile.ShellPath,CRtagPositions)
		        Outstream=TextOutputStream.create(outf)
		        outstream.Write(base)
		        outstream.close
		        
		      end if
		      
		    end if
		    instream=TextInputStream.Open(hmmsearchoutput)
		    hmmsTrembl=instream.ReadAll
		    EmblArrayPrep(hmmsearchoutput.ShellPath)
		    base=GetCRtags(hmmsTrembl,AlignmentsFile.ShellPath,CRtagPositions)
		    Outstream=TextOutputStream.create(outf)
		    outstream.Write(base)
		    outstream.close
		    
		  end if
		  
		  'end if
		  
		  'else
		  'LogoWin.WriteToSTDOUT shResult
		  '
		  'End If
		  'else
		  'LogoWin.WriteToSTDOUT (EndofLine.unix+"Can't create temporary file, have to abort search.")
		  ''return
		  'end if
		  
		  
		  
		  'outf= New FolderItem("/home/aither/Sources/LocalSearchBase")
		  '
		  'hmmsTrembl=GetFolderItem("/home/aither/Sources/LocalSearchBase/luxr-hmmsearch-out/hmmSearchTrembl")
		  'tableTrembl=GetFolderItem("/home/aither/Sources/LocalSearchBase/luxr-hmmsearch-out/tableTrembl")
		  'hmmInstr=hmmsTrembl.OpenAsTextFile
		  'Searchresraw=hmmInstr.ReadAll
		  'hmminstr.close
		  ''tableinstr=tableTrembl.OpenAsTextfile
		  ''Tbl=trim(tableinstr.ReadAll)
		  'Tbl=tableTrembl.NativePath
		  'resultBase=getcrtags(Searchresraw,Tbl,CRtagPositions)
		  'resultF=OutF.child("CRtagBaseLuxR")
		  'Outstream1=TextOutputStream.create(resultF)
		  'outstream1.Write(resultBase)
		  'outstream1.close
		  'exit
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton2
	#tag Event
		Sub Action()
		  trEMBL_dat=GetOpenFolderItem("")
		  if trEMBL_dat<> Nil then
		    LogoWin.WriteToSTDOUT (EndofLine+"Genome from "+trEMBL_dat.NativePath+" loaded.")
		    Label1.text=trEMBL_dat.NativePath
		  end if
		  startcheck
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton3
	#tag Event
		Sub Action()
		  trEMBL_fasta=GetOpenFolderItem("")
		  if trEMBL_fasta<> Nil then
		    'LogoWin.WriteToSTDOUT (EndofLine+"Genome from "+CRtagBaseConstructor.cidxbase+" loaded.")
		    Label2.text=trEMBL_fasta.ShellPath
		  end if
		  startcheck
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
		Visible=true
		Group="Deprecated"
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
		Name="prot2exclude"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="string"
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
		Name="Title"
		Visible=true
		Group="Frame"
		InitialValue="Untitled"
		Type="String"
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
#tag EndViewBehavior
