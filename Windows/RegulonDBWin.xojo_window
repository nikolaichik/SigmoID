#tag Window
Begin Window RegulonDBWin
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   520
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   149806200
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   True
   MinWidth        =   64
   Placement       =   0
   Resizeable      =   True
   Title           =   "E. coli regulons (RegulonDB)"
   Visible         =   False
   Width           =   678
   Begin Listbox RegulatorList
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
      Height          =   391
      HelpTag         =   ""
      Hierarchical    =   False
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   "#kTFname	#kNumberOfSites	#kGenesControlled	#kSiteWidth"
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
      SelectionType   =   1
      ShowDropIndicator=   False
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   77
      Transparent     =   "False"
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   678
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin ProgressWheel ProgressWheel1
      AutoDeactivate  =   True
      Enabled         =   False
      Height          =   16
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   292
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   -58
      Transparent     =   "False"
      Visible         =   True
      Width           =   94
   End
   Begin PushButton LogoButton
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "#kShowLogo"
      Default         =   True
      Enabled         =   False
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   532
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   480
      Transparent     =   "False"
      Underline       =   False
      Visible         =   True
      Width           =   126
   End
   Begin BevelButton InfoButton
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
      Icon            =   495161343
      IconAlign       =   1
      IconDX          =   0
      IconDY          =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   478
      Transparent     =   "False"
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   22
   End
   Begin Label RegulonDBinfoLabel
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
      Left            =   54
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlign       =   1
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   480
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   279
   End
   Begin GroupBox GroupBox1
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "#kEvidenceConfidenceLevel"
      Enabled         =   True
      Height          =   56
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   318
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   13
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   9
      Transparent     =   "False"
      Underline       =   False
      Visible         =   True
      Width           =   350
      Begin RadioButton ConfirmedRadio
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "#kConfirmed"
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   338
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   35
         Transparent     =   "False"
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   126
      End
      Begin RadioButton WeakRadio
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "#kWeak"
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   580
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   35
         Transparent     =   "False"
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   77
      End
      Begin RadioButton StrongRadio
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "#kStrong"
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   476
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   35
         Transparent     =   "False"
         Underline       =   False
         Value           =   True
         Visible         =   True
         Width           =   100
      End
   End
   Begin GroupBox GroupBox2
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "#kDataset"
      Enabled         =   True
      Height          =   56
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   12
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   14
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   9
      Transparent     =   "False"
      Underline       =   False
      Visible         =   True
      Width           =   280
      Begin RadioButton TFBSRadio
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "#kTFbindingsites"
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox2"
         Italic          =   False
         Left            =   32
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   35
         Transparent     =   "False"
         Underline       =   False
         Value           =   True
         Visible         =   True
         Width           =   130
      End
      Begin RadioButton PromotersRadio
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "#kPromoters"
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox2"
         Italic          =   False
         Left            =   185
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   35
         Transparent     =   "False"
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   100
      End
   End
   Begin PushButton FastaButton
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "#kCheckTF"
      Default         =   False
      Enabled         =   False
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   345
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   15
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   480
      Transparent     =   "False"
      Underline       =   False
      Visible         =   True
      Width           =   175
   End
   Begin mHTTPSocket RegulonDBSocket
      Address         =   ""
      BytesAvailable  =   0
      BytesLeftToSend =   0
      Enabled         =   True
      Handle          =   0
      httpProxyAddress=   ""
      httpProxyPort   =   0
      Index           =   -2147483648
      InitialParent   =   ""
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
   Begin mHTTPSocket RDBSocket
      Address         =   ""
      BytesAvailable  =   0
      BytesLeftToSend =   0
      Enabled         =   True
      Handle          =   0
      httpProxyAddress=   ""
      httpProxyPort   =   0
      Index           =   -2147483648
      InitialParent   =   ""
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
		Sub EnableMenuItems()
		  if RegulatorList.SelCount=1 then
		    RegPreciseRegulonInfo.enabled=true
		    RegPreciseRegulonInfo.Text=kRegulonInfo
		    RegulonShowLogo.Enabled=true
		    if LogoWin.GenomeFile<>nil then
		      RegulonCheckTF.Enabled=true
		    else
		      RegulonCheckTF.Enabled=false
		    end if
		  end if
		  
		  
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  AdjustLayout4linux(me)
		End Sub
	#tag EndEvent


	#tag MenuHandler
		Function FileClose() As Boolean Handles FileClose.Action
			Close
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function RegulonCheckTF() As Boolean Handles RegulonCheckTF.Action
			
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function RegulonGetRegPreciseTFseqs() As Boolean Handles RegulonGetRegPreciseTFseqs.Action
			'just run tfasty/tfastx
			
			'get the ID:
			logowin.show
			logowin.WriteToSTDOUT("Contacting RegulonDB... ")
			dim TF_ID, theURL as string
			TF_ID=RegulatorList.Cell(RegulatorList.ListIndex,4)
			TF_name=RegulatorList.Cell(RegulatorList.ListIndex,0)
			if instr(TF_name,"-")>0 then
			LogoWin.WriteToSTDOUT(EndOfLine.UNIX+"Sorry, you have to check heterodimeric regulators manually."+EndOfLine.UNIX)
			end if
			if TFBSRadio.value then 'TF
			theURL="http://regulondb.ccg.unam.mx/regulon?term="+TF_ID
			theURL=theURL+"&organism=ECK12&format=jsp&type=regulon"
			else                    'sigma
			theURL="http://regulondb.ccg.unam.mx/sigmulon?term="+TF_ID
			theURL=theURL+"&organism=ECK12&format=jsp&type=sigmulon"
			end if
			
			dim res as string
			dim hts as new HTTPSocket
			hts.Yield=true
			res=hts.Get(theURL,0)
			if hts.HTTPStatusCode>=200 AND hts.HTTPStatusCode<300 then 'successful
			if res<>"" then
			dim ProteinID, fastaURL as string
			dim n,geneNo as integer
			
			'get the gene/ProteinID from the first (there'll be many) html tag that look like this:
			'<a href="/gene?term=ECK120000719&organism=ECK12&format=jsp&type=gene">phoB</a></span></td>
			
			'the page may contain several genes (e.g. the rcsB page), hence the dances below
			
			geneno=CountFields(res,"/gene?term=")
			for n=2 to geneNo+2
			ProteinID=NthField(res,"/gene?term=",n)
			ProteinID=NthField(ProteinID,"</a>",1)
			if instr(ProteinID,TF_name)>0 then
			ProteinID=NthField(ProteinID,"&organism=",1)
			exit
			end if
			next
			
			if ProteinID<>"" then
			fastaURL="http://regulondb.ccg.unam.mx/sequence?type=PD&term="+ProteinID+"&format=fasta"
			
			res=hts.Get(fastaURL,0)
			if res<>"" then
			dim ProteinFasta as string
			
			'extract Fasta formatted protein seq
			'the seq is within the <pre> tag, but there are two of those, so we're searching for "<pre>>"
			'content supposedly has the ISO-8859-1 encoding, but Xojo gets line ends wrongx
			
			ProteinFasta=defineEncoding(NthField(res,"<pre>>",2),Encodings.ISOLatin1)
			ProteinFasta=">"+NthField(ProteinFasta,"</pre>",1)
			ProteinFasta=ConvertEncoding(trim(ProteinFasta),Encodings.ASCII)
			logowin.WriteToSTDOUT(ProteinFasta+EndOfLine)
			end if
			else
			msgbox "Can't get TF data from RegulonDB."
			end if
			end if
			else
			LogoWin.WriteToSTDOUT ("Server error (HTTP status code "+str(hts.HTTPStatusCode)+")")
			LogoWin.show
			end if
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function RegulonShowLogo() As Boolean Handles RegulonShowLogo.Action
			ShowLogo
		End Function
	#tag EndMenuHandler


	#tag Method, Flags = &h0
		Sub CheckTF()
		  'just run tfasty/tfastx
		  
		  'get the ID:
		  logowin.show
		  logowin.WriteToSTDOUT("Contacting RegulonDB... ")
		  dim TF_ID, theURL as string
		  TF_ID=RegulatorList.Cell(RegulatorList.ListIndex,4)
		  TF_name=RegulatorList.Cell(RegulatorList.ListIndex,0)
		  if instr(TF_name,"-")>0 then
		    LogoWin.WriteToSTDOUT(EndOfLine.UNIX+"Sorry, you have to check heterodimeric regulators manually."+EndOfLine.UNIX)
		  end if
		  if TFBSRadio.value then 'TF
		    theURL="http://regulondb.ccg.unam.mx/regulon?term="+TF_ID
		    theURL=theURL+"&organism=ECK12&format=jsp&type=regulon"
		  else                    'sigma
		    theURL="http://regulondb.ccg.unam.mx/sigmulon?term="+TF_ID
		    theURL=theURL+"&organism=ECK12&format=jsp&type=sigmulon"
		  end if
		  
		  
		  RegulonDBSocket.Get(theURL)
		  if RegulonDBSocket.ErrorCode<>0 then
		    SocketError RegulonDBSocket.ErrorCode
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FillRegulatorList(RegulonDBfile as folderitem)
		  
		  'tab-sepaprated columns:
		  '# Columns:
		  '# (1) Transcription Factor (TF) identifier assigned by RegulonDB
		  '# (2) TF name
		  '# (3) TF binding site (TF-bs) identifier assigned by RegulonDB
		  '# (4) TF-bs left end position in the genome
		  '# (5) TF-bs right end position in the genome
		  '# (6) DNA strand where the  TF-bs is located
		  '# (7) TF-Gene interaction identifier assigned by RegulonDB (related to the "TF gene interactions" file)
		  '# (8) Transcription unit regulated by the TF
		  '# (9) Gene expression effect caused by the TF bound to the  TF-bs (+ activation, - repression, +- dual, ? unknown)
		  '# (10) Promoter name
		  '# (11) Center position of TF-bs, relative to Transcription Start Site
		  '# (12) TF-bs sequence (upper case)
		  '# (13) Evidence that supports the existence of the TF-bs
		  '# (14) Evidence confidence level (Confirmed, Strong, Weak)
		  'ECK125140816    AccB    ECK120011222    0    0    forward    ECK120032360    accBC    -    accBp
		  'ECK120015994    AcrR    ECK120018491    484933    484956    reverse    ECK120033472    acrAB    -    acrAp    -22.5    gcgttagattTACATACATTTGTGAATGTATGTAccatagcacg    [BCE|W|Binding of cellular extracts],[GEA|W|Gene expression analysis]
		  
		  'Some 'sites' are empty!
		  
		  'We convert some of the available info into fasta title, changing the order slightly:
		  '# (8) Transcription unit regulated by the TF
		  '# (11) Center position of TF-bs, relative to Transcription Start Site
		  '# (10) Promoter name
		  '# (9) Gene expression effect caused by the TF bound to the  TF-bs (+ activation, - repression, +- dual, ? unknown)
		  '# (1) Transcription Factor (TF) identifier assigned by RegulonDB
		  '# (2) TF name
		  '# (3) TF binding site (TF-bs) identifier assigned by RegulonDB
		  '# (4) TF-bs left end position in the genome
		  '# (5) TF-bs right end position in the genome
		  '# (6) DNA strand where the  TF-bs is located
		  '# (7) TF-Gene interaction identifier assigned by RegulonDB (related to the "TF gene interactions" file)
		  '# (13) Evidence that supports the existence of the TF-bs
		  '# (14) Evidence confidence level (Confirmed, Strong, Weak)
		  
		  'Evidence confidence level added in version 9
		  
		  'Promoter set:
		  '# Columns:
		  '# (1) Promoter identifier assigned by RegulonDB
		  '# (2) Promoter Name
		  '# (3) DNA strand where the promoter is located
		  '# (4) Genome map position of Transcription Start Site (+1)
		  '# (5) Sigma Factor that recognize the promoter
		  '# (6) Promoter Sequence (+1 upper case)
		  '# (7) Evidence that supports the existence of the promoter
		  '# (8) Evidence confidence level (Confirmed, Strong, Weak)
		  
		  
		  dim tis as TextInputStream
		  dim tos as TextOutputStream
		  dim BSarr() as string
		  dim tab as string = chr(9)
		  dim aline, tline as string
		  dim theSeq, aGene, currentGene, geneArr() as string
		  dim linecount, n, GeneNo, Confidence,currentConfidence as integer
		  dim newgene, isPromoterSet as boolean
		  dim aTF, currentTF, TFdata, TF_ID as string
		  dim siteSeq, conf as string
		  
		  
		  'Evidence confidence level:
		  if WeakRadio.Value then
		    Confidence=0
		  elseif StrongRadio.value then
		    Confidence=1
		  else
		    confidence=2 'confirmed
		  end if
		  
		  tis=RegulonDBfile.OpenAsTextFile
		  
		  if tis<>nil then
		    'reinitialise the list and the array
		    RegulatorList.DeleteAllRows
		    redim regulatorArray(-1)
		    
		    
		    'skip the header, but get version number:
		    while not tis.EOF
		      aLine=tis.readLine
		      if instr(aline,"# Release:")>0 then
		        RegulonDBVersion=NthField(aline,"# Release: ",2)
		        RegulonDBVersion=replace(RegulonDBVersion," Date: "," (")
		        RegulonDBVersion=RegulonDBVersion+")"
		        exit
		      end if
		    wend
		    while not tis.EOF
		      aLine=tis.readLine
		      if instr(aline,"Evidence confidence level")>0 then
		        exit
		      end if
		    wend
		    
		    if PromotersRadio.value then
		      isPromoterSet=true
		    end if
		    
		    minlen=100
		    while not tis.EOF
		      aLine=tis.readLine
		      if len(aline)>60 then 'skip empty lines
		        BSarr()=split(aline,tab)
		        BSarr.Insert(0,"") 'zero based array correction
		        
		        
		        if isPromoterSet then
		          siteSeq=BSarr(6)
		        else
		          siteSeq=BSarr(12)
		        end if
		        if siteSeq<>"" then 'filter out empty sites
		          
		          'check confidence:
		          if isPromoterSet then
		            conf=BSarr(8)
		          else
		            conf=BSarr(14)
		          end if
		          
		          if conf="Confirmed" then
		            currentConfidence=2
		          elseif conf="Strong" then
		            currentConfidence=1
		          else
		            currentConfidence=0 'Weak
		          end if
		          
		          if currentConfidence>=Confidence then
		            aTF=BSarr(2)
		            if aTF<>currentTF then 'new TF
		              'First, fill the table and array with the data for the previous TF:
		              MinLen=MinLen-20 '10 bases added by RegulonDB on each side
		              MaxLen=maxLen-20
		              GeneNo=UBound(geneArr)+1
		              
		              if GeneNo>0 then
		                RegulatorArray.Append TFdata
		                'RegulatorList columns are:
		                'TF name    Number of sites    Genes controlled    Site width    RegulonDB_TF_ID
		                dim reg() as string
		                if MinLen=MaxLen then
		                  reg=array(currentTF, str(linecount), str(GeneNo), str(minLen), TF_ID)
		                else
		                  reg=array(currentTF, str(linecount), str(GeneNo), str(minLen)+"-"+str(maxLen), TF_ID)
		                end if
		                RegulatorList.AddRow(reg)
		              end if
		              
		              'reinitialise counters and accumulators
		              currentTF=aTF
		              linecount=0
		              MinLen=100
		              MaxLen=0
		              redim geneArr(-1)
		              TFdata=""
		              TF_ID=BSarr(1)
		            end if
		            
		            linecount=linecount+1
		            
		            currentGene=BSarr(8)
		            newgene=true
		            for n=0 to UBound(genearr)
		              if currentGene=genearr(n) then
		                newgene=false
		                exit
		              end if
		            next
		            if newgene then
		              geneArr.append(currentGene)
		            end if
		            
		            'BSarr(8)+"_"+BSarr(11) gives unique name
		            
		            tline=">"+BSarr(8)+"_"+BSarr(11)+" "+BSarr(10)+" "+BSarr(9)+" "+BSarr(1)+" "+BSarr(2)+" "+BSarr(3)+" "+BSarr(4)+" "+BSarr(5)+" "+BSarr(6)+" "+BSarr(7)+" "+BSarr(13)+" "+BSarr(14)
		            
		            theSeq=BSarr(12)
		            
		            if lenb(theSeq)<minLen then
		              minLen=lenb(theSeq)
		            end if
		            
		            if lenb(theSeq)>maxLen then
		              maxLen=lenb(theSeq)
		            end if
		            
		            TFdata=TFdata+tline+EndOfLine.Unix
		            'RC should be an option
		            if BSarr(6)="forward" then
		              TFdata=TFdata+theSeq+EndOfLine.Unix
		            else
		              TFdata=TFdata+ReverseComplement(theSeq)+EndOfLine.Unix
		            end if
		          end if
		          
		        end if
		      end if
		    wend
		    'add the last TF
		    MinLen=MinLen-20 '10 bases added by RegulonDB on each side
		    MaxLen=maxLen-20
		    GeneNo=UBound(geneArr)+1
		    if GeneNo>0 then
		      RegulatorArray.Append TFdata
		      'RegulatorList columns are:
		      'TF name    Number of sites    Genes controlled    Site width
		      dim reg() as string
		      if MinLen=MaxLen then
		        reg=array(currentTF, str(linecount), str(GeneNo), str(minLen), TF_ID)
		      else
		        reg=array(currentTF, str(linecount), str(GeneNo), str(minLen)+"-"+str(maxLen), TF_ID)
		      end if
		      RegulatorList.AddRow(reg)
		    end if
		    
		    
		  end if
		  RegulonDBinfoLabel.text="RegulonDB "+RegulonDBVersion+". "+str(RegulatorList.ListCount)+" TFs."
		  
		  Exception err
		    ExceptionHandler(err,"RegPreciseWin:FillRegulatorList")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FillRegulatorList2(RegulonDBfile as folderitem)
		  
		  'tab-sepaprated columns:
		  '# Columns:
		  '# (1) Transcription Factor (TF) identifier assigned by RegulonDB
		  '# (2) TF name
		  '# (3) TF binding site (TF-bs) identifier assigned by RegulonDB
		  '# (4) TF-bs left end position in the genome
		  '# (5) TF-bs right end position in the genome
		  '# (6) DNA strand where the  TF-bs is located
		  '# (7) TF-Gene interaction identifier assigned by RegulonDB (related to the "TF gene interactions" file)
		  '# (8) Transcription unit regulated by the TF
		  '# (9) Gene expression effect caused by the TF bound to the  TF-bs (+ activation, - repression, +- dual, ? unknown)
		  '# (10) Promoter name
		  '# (11) Center position of TF-bs, relative to Transcription Start Site
		  '# (12) TF-bs sequence (upper case)
		  '# (13) Evidence that supports the existence of the TF-bs
		  '# (14) Evidence confidence level (Confirmed, Strong, Weak)
		  'ECK125140816    AccB    ECK120011222    0    0    forward    ECK120032360    accBC    -    accBp
		  'ECK120015994    AcrR    ECK120018491    484933    484956    reverse    ECK120033472    acrAB    -    acrAp    -22.5    gcgttagattTACATACATTTGTGAATGTATGTAccatagcacg    [BCE|W|Binding of cellular extracts],[GEA|W|Gene expression analysis]
		  
		  
		  'This is the version modofied for promoters
		  
		  'Promoter set:
		  '# Columns:
		  '# (1) Promoter identifier assigned by RegulonDB
		  '# (2) Promoter Name
		  '# (3) DNA strand where the promoter is located
		  '# (4) Genome map position of Transcription Start Site (+1)
		  '# (5) Sigma Factor that recognize the promoter
		  '# (6) Promoter Sequence (+1 upper case)
		  '# (7) Evidence that supports the existence of the promoter
		  '# (8) Evidence confidence level (Confirmed, Strong, Weak)
		  
		  
		  dim tis as TextInputStream
		  dim tos as TextOutputStream
		  dim BSarr() as string
		  dim tab as string = chr(9)
		  dim aline, tline as string
		  dim theSeq, aGene, currentGene, geneArr() as string
		  dim linecount, n, GeneNo, Confidence,currentConfidence as integer
		  dim newgene, isPromoterSet as boolean
		  dim aTF, currentTF, TFdata, TF_ID as string
		  dim siteSeq, conf as string
		  
		  
		  'Evidence confidence level:
		  if WeakRadio.Value then
		    Confidence=0
		  elseif StrongRadio.value then
		    Confidence=1
		  else
		    confidence=2 'confirmed
		  end if
		  
		  tis=RegulonDBfile.OpenAsTextFile
		  
		  if tis<>nil then
		    'reinitialise the list and the array
		    RegulatorList.DeleteAllRows
		    redim regulatorArray(-1)
		    
		    
		    'skip the header, but get version number:
		    while not tis.EOF
		      aLine=tis.readLine
		      if instr(aline,"# Release:")>0 then
		        RegulonDBVersion=NthField(aline,"# Release: ",2)
		        RegulonDBVersion=replace(RegulonDBVersion," Date: "," (")
		        RegulonDBVersion=RegulonDBVersion+")"
		        exit
		      end if
		    wend
		    while not tis.EOF
		      aLine=tis.readLine
		      if instr(aline,"Evidence confidence level")>0 then
		        exit
		      end if
		    wend
		    
		    if PromotersRadio.value then
		      isPromoterSet=true
		    end if
		    
		    minlen=100
		    while not tis.EOF
		      aLine=tis.readLine
		      if len(aline)>60 then 'skip empty lines
		        BSarr()=split(aline,tab)
		        BSarr.Insert(0,"") 'zero based array correction
		        
		        
		        if isPromoterSet then
		          siteSeq=BSarr(6)
		        else
		          siteSeq=BSarr(12)
		        end if
		        if siteSeq<>"" then 'filter out empty sites
		          
		          'check confidence:
		          if isPromoterSet then
		            conf=BSarr(8)
		          else
		            conf=BSarr(14)
		          end if
		          
		          if conf="Confirmed" then
		            currentConfidence=2
		          elseif conf="Strong" then
		            currentConfidence=1
		          else
		            currentConfidence=0 'Weak
		          end if
		          
		          if currentConfidence>=Confidence then
		            
		            aTF=BSarr(5)
		            if aTF<>"" then
		              if aTF<>currentTF then 'new TF
		                'First, fill the table and array with the data for the previous TF:
		                MinLen=MinLen-20 '10 bases added by RegulonDB on each side
		                MaxLen=maxLen-20
		                GeneNo=UBound(geneArr)+1
		                
		                if GeneNo>0 then
		                  RegulatorArray.Append TFdata
		                  'RegulatorList columns are:
		                  'TF name    Number of sites    Genes controlled    Site width    RegulonDB_TF_ID
		                  dim reg() as string
		                  if MinLen=MaxLen then
		                    reg=array(currentTF, str(linecount), str(GeneNo), str(minLen), TF_ID)
		                  else
		                    reg=array(currentTF, str(linecount), str(GeneNo), str(minLen)+"-"+str(maxLen), TF_ID)
		                  end if
		                  RegulatorList.AddRow(reg)
		                end if
		                
		                'reinitialise counters and accumulators
		                currentTF=aTF
		                linecount=0
		                MinLen=100
		                MaxLen=0
		                redim geneArr(-1)
		                TFdata=""
		                TF_ID=BSarr(1)
		              end if
		              
		              linecount=linecount+1
		              
		              currentGene=BSarr(2)
		              if right(currentGene,1)<>"p" then 'drop the number
		                currentGene=left(currentGene,lenb(currentGene)-1)
		              end if
		              newgene=true
		              for n=0 to UBound(genearr)
		                if currentGene=genearr(n) then
		                  newgene=false
		                  exit
		                end if
		              next
		              if newgene then
		                geneArr.append(currentGene)
		              end if
		              
		              'BSarr(2) is supposedly unique
		              tline=">"+BSarr(2)+" "+BSarr(5)+" "+BSarr(3)+" "+BSarr(4)+" "+BSarr(7)+" "+BSarr(8)
		              theSeq=BSarr(6)
		              
		              if lenb(theSeq)<minLen then
		                minLen=lenb(theSeq)
		              end if
		              
		              if lenb(theSeq)>maxLen then
		                maxLen=lenb(theSeq)
		              end if
		              
		              TFdata=TFdata+tline+EndOfLine.Unix
		              'RC should be an option
		              'if BSarr(6)="forward" then
		              TFdata=TFdata+theSeq+EndOfLine.Unix
		              'else
		              'TFdata=TFdata+ReverseComplement(theSeq)+EndOfLine.Unix
		              'end if
		              
		            end if
		          end if
		          
		        end if
		      end if
		    wend
		    'add the last TF
		    MinLen=MinLen-20 '10 bases added by RegulonDB on each side
		    MaxLen=maxLen-20
		    GeneNo=UBound(geneArr)+1
		    if GeneNo>0 then
		      RegulatorArray.Append TFdata
		      'RegulatorList columns are:
		      'TF name    Number of sites    Genes controlled    Site width
		      dim reg() as string
		      if MinLen=MaxLen then
		        reg=array(currentTF, str(linecount), str(GeneNo), str(minLen), TF_ID)
		      else
		        reg=array(currentTF, str(linecount), str(GeneNo), str(minLen)+"-"+str(maxLen), TF_ID)
		      end if
		      RegulatorList.AddRow(reg)
		    end if
		    
		    
		  end if
		  RegulonDBinfoLabel.text="RegulonDB "+RegulonDBVersion+". "+str(RegulatorList.ListCount)+" TFs."
		  
		  Exception err
		    ExceptionHandler(err,"RegPreciseWin:FillRegulatorList")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RegulonInfo()
		  'get the ID:
		  dim TF_ID, theURL as string
		  TF_ID=RegulatorList.Cell(RegulatorList.ListIndex,4)
		  
		  if TFBSRadio.value then 'TF
		    theURL="http://regulondb.ccg.unam.mx/regulon?term="+TF_ID
		    theURL=theURL+"&organism=ECK12&format=jsp&type=regulon"
		  else                    'sigma
		    theURL="http://regulondb.ccg.unam.mx/sigmulon?term="+TF_ID
		    theURL=theURL+"&organism=ECK12&format=jsp&type=sigmulon"
		  end if
		  
		  WebBrowserWin.show
		  WebBrowserWin.LoadPage(theURL)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowLogo()
		  dim tmpfile as folderitem
		  dim TFname as string
		  
		  TFname=RegulatorList.Cell(RegulatorList.ListIndex,0)
		  tmpfile=TemporaryFolder.child("RegulonDBtmp.fasta")
		  if tmpfile<>nil then
		    if tmpfile.Exists then
		      #if TargetLinux
		        tmpfile.delete  'SpecialFolder.Trash returns NIL in Linux
		      #else
		        tmpfile.MoveFileTo(SpecialFolder.Trash)
		      #endif
		      tmpfile=TemporaryFolder.child("RegulonDBtmp.fasta")
		    end if
		    dim OutStream As TextOutputStream
		    OutStream = TextOutputStream.Create(tmpfile)
		    if OutStream<>Nil then
		      outstream.Write(RegulatorArray(RegulatorList.ListIndex))
		      OutStream.Close
		      logowin.Title="SigmoID: "+TFname+" (RegulonDB)"
		      logowin.LoadAlignment(tmpfile)
		      if LengthsDiffer then
		        logowin.ChangeView("Sequences")
		      else
		        logowin.ChangeView("Logo")
		      end if
		      HmmGenSettingsWin.ValueField.text=TFname
		      MASTGenSettingsWin.ValueField.text=TFname
		      ProfileWizardWin.ValueField.text=TFname
		      
		      'determine site width(s):
		      dim instream as TextInputStream
		      dim aLine as string
		      minLen=100
		      maxLen=0
		      InStream = tmpfile.OpenAsTextFile
		      
		      if instream<>Nil then
		        while not InStream.EOF
		          aLine=trim(InStream.readLine)
		          if left(aLine,1)=">" then
		          else
		            if lenb(aline)<minLen then
		              minLen=lenb(aline)
		            end if
		            if lenb(aline)>maxLen then
		              maxLen=lenb(aline)
		            end if
		          end if
		        wend
		        instream.close
		        minLen=minlen-20
		        maxLen=maxLen-20
		      else
		        msgbox "can't read temporary file "+tmpfile.ShellPath
		      end if
		      
		    else
		      msgbox "can't write temporary file "+tmpfile.ShellPath
		    end if
		    
		  end if
		  
		  LogoWin.show
		  
		  Exception err
		    if err isa IOException then
		      msgbox "A problem creating/reading temporaty file. Please try to clean your temp folder"
		    end if
		    ExceptionHandler(err,"RegulonDBWin:ShowLogo")
		    
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		RegulatorArray(-1) As string
	#tag EndProperty

	#tag Property, Flags = &h0
		RegulonDBfile As folderitem
	#tag EndProperty

	#tag Property, Flags = &h0
		RegulonDBVersion As String
	#tag EndProperty

	#tag Property, Flags = &h0
		TF_name As String
	#tag EndProperty


#tag EndWindowCode

#tag Events RegulatorList
	#tag Event
		Sub Change()
		  if me.SelCount=1 then
		    LogoButton.Enabled=true
		    InfoButton.Enabled=true
		    InfoButton.HelpTag=""
		    if LogoWin.GenomeFile<>nil then
		      FastaButton.Enabled=true
		    else
		      FastaButton.Enabled=false
		    end if
		  else
		    LogoButton.Enabled=false
		    InfoButton.Enabled=false
		    InfoButton.HelpTag="Select a single TF to enable this button"
		    FastaButton.Enabled=false
		  end if
		  
		  'if me.SelCount>=1 then
		  'DeselectAllButton.enabled=true
		  'SearchButton.Enabled=true
		  'else
		  'DeselectAllButton.enabled=true
		  'SearchButton.Enabled=true
		  'end if
		  
		  'if me.SelCount=me.ListCount then
		  'SelectAllButton.enabled=false
		  'else
		  'SelectAllButton.enabled=true
		  'end if
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  me.ColumnWidths="25%,25%,25%,25%,0%"
		  'the last column is invisible and holds RegulonDB ID
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events LogoButton
	#tag Event
		Sub Action()
		  ShowLogo
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events InfoButton
	#tag Event
		Sub Open()
		  #if TargetCocoa then
		    me.Icon=SystemIcons.Info(20,20)
		    me.Caption=""
		  #endif
		End Sub
	#tag EndEvent
	#tag Event
		Sub Action()
		  RegulonInfo
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ConfirmedRadio
	#tag Event
		Sub Action()
		  if TFBSRadio.value then
		    FillRegulatorList(RegulonDBfile)
		  else
		    FillRegulatorList2(RegulonDBfile)
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events WeakRadio
	#tag Event
		Sub Action()
		  if TFBSRadio.value then
		    FillRegulatorList(RegulonDBfile)
		  else
		    FillRegulatorList2(RegulonDBfile)
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events StrongRadio
	#tag Event
		Sub Action()
		  if TFBSRadio.value then
		    FillRegulatorList(RegulonDBfile)
		  else
		    FillRegulatorList2(RegulonDBfile)
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TFBSRadio
	#tag Event
		Sub Action()
		  if ConfirmedRadio.value then
		    StrongRadio.value=true
		  end if
		  ConfirmedRadio.Enabled=false
		  RegulonDBfile=Resources_f.child("RegulonDB").child("BindingSiteSet.txt")
		  FillRegulatorList(RegulonDBfile)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PromotersRadio
	#tag Event
		Sub Action()
		  ConfirmedRadio.Enabled=true
		  RegulonDBfile=Resources_f.child("RegulonDB").child("PromoterSet.txt")
		  FillRegulatorList2(RegulonDBfile)
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events FastaButton
	#tag Event
		Sub Action()
		  CheckTF
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RegulonDBSocket
	#tag Event
		Sub PageReceived(url as string, httpStatus as integer, headers as internetHeaders, content as string)
		  dim ProteinID, fastaURL as string
		  dim n,geneNo as integer
		  
		  'get the gene/ProteinID from the first (there'll be many) html tag that look like this:
		  '<a href="/gene?term=ECK120000719&organism=ECK12&format=jsp&type=gene">phoB</a></span></td>
		  
		  'the page may contain several genes (e.g. the rcsB page), hence the dances below
		  
		  if httpStatus>=200 AND httpStatus<300 then 'successful
		    geneno=CountFields(Content,"/gene?term=")
		    for n=2 to geneNo+2
		      ProteinID=NthField(Content,"/gene?term=",n)
		      ProteinID=NthField(ProteinID,"</a>",1)
		      if instr(ProteinID,TF_name)>0 then
		        ProteinID=NthField(ProteinID,"&organism=",1)
		        exit
		      end if
		    next
		    
		    if ProteinID<>"" then
		      fastaURL="http://regulondb.ccg.unam.mx/sequence?type=PD&term="+ProteinID+"&format=fasta"
		      
		      RDBSocket.Get(fastaURL)
		    else
		      msgbox "Can't get TF data from RegulonDB."
		    end if
		    
		  else
		    MsgBox "Can't connect to RegulonDB (HTTP status code "+str(httpStatus)+")"
		  end if
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Connected()
		  logowin.WriteToSTDOUT("OK."+EndOfLine.unix)
		  
		  logowin.WriteToSTDOUT("Getting TF protein ID... ")
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RDBSocket
	#tag Event
		Sub PageReceived(url as string, httpStatus as integer, headers as internetHeaders, content as string)
		  dim ProteinFasta as string
		  
		  'extract Fasta formatted protein seq
		  'the seq is within the <pre> tag, but there are two of those, so we're searching for "<pre>>"
		  'content supposedly has the ISO-8859-1 encoding, but Xojo gets line ends wrongx
		  
		  if httpStatus>=200 AND httpStatus<300 then 'successful
		    ProteinFasta=defineEncoding(NthField(Content,"<pre>>",2),Encodings.ISOLatin1)
		    ProteinFasta=">"+NthField(ProteinFasta,"</pre>",1)
		    ProteinFasta=ConvertEncoding(trim(ProteinFasta),Encodings.ASCII)
		    
		    'msgbox ProteinFasta
		    
		    tfastx(ProteinFasta)
		  else
		    MsgBox "Can't connect to RegulonDB (HTTP status code "+str(httpStatus)+")"
		  end if
		End Sub
	#tag EndEvent
	#tag Event
		Sub Connected()
		  logowin.WriteToSTDOUT("OK."+EndOfLine.unix)
		  
		  logowin.WriteToSTDOUT("Getting TF protein sequence... ")
		  
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
		Name="RegulonDBVersion"
		Group="Behavior"
		Type="String"
		EditorType="MultiLineEditor"
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
		Name="Super"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="TF_name"
		Group="Behavior"
		Type="String"
		EditorType="MultiLineEditor"
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
