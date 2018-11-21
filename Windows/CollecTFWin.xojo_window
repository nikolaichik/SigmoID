#tag Window
Begin Window CollecTFWin
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
   Title           =   "CollecTF"
   Visible         =   False
   Width           =   678
   Begin Listbox RegulatorList
      AutoDeactivate  =   True
      AutoHideScrollbars=   True
      Bold            =   False
      Border          =   False
      ColumnCount     =   5
      ColumnsResizable=   True
      ColumnWidths    =   "*,70,70,70"
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
      Height          =   468
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
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   0
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
      Text            =   "CollecTF December 17, 2015 release"
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
   Begin mHTTPSocket RegulonDBSocket
      Address         =   ""
      BytesAvailable  =   0
      BytesLeftToSend =   0
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
			'if TFBSRadio.value then 'TF
			theURL="http://regulondb.ccg.unam.mx/regulon?term="+TF_ID
			theURL=theURL+"&organism=ECK12&format=jsp&type=regulon"
			'else                    'sigma
			'theURL="http://regulondb.ccg.unam.mx/sigmulon?term="+TF_ID
			'theURL=theURL+"&organism=ECK12&format=jsp&type=sigmulon"
			'end if
			
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
		Sub FillRegulatorList(RegulonDBfile as folderitem)
		  
		  'tab-sepaprated columns:
		  '# Columns:
		  '1 TF name
		  '2 TF_accession
		  '3 genome_accession
		  '4 organism
		  '5 site_start
		  '6 site_end
		  '7 site_strand
		  '8 sequence
		  '9  mode (repressor/activator)
		  '10 experimental_evidence
		  '11 regulated genes (locus_tags)
		  
		  
		  dim tis as TextInputStream
		  dim tos as TextOutputStream
		  dim BSarr() as string
		  dim tab as string = chr(9)
		  dim aline, tline as string
		  dim theSeq, aGene, currentGene, geneArr() as string
		  dim linecount, n, GeneNo, Confidence,currentConfidence as integer
		  dim newgene, isPromoterSet as boolean
		  dim aTF, currentTF, TFdata, TF_ID as string
		  dim TFBSname as string
		  dim anOrg, currentOrg as string
		  dim siteSeq, conf as string
		  
		  
		  
		  tis=RegulonDBfile.OpenAsTextFile
		  
		  if tis<>nil then
		    'reinitialise the list and the array
		    RegulatorList.DeleteAllRows
		    redim regulatorArray(-1)
		    
		    
		    aLine=tis.readLine 'skip header line
		    
		    
		    minlen=100
		    while not tis.EOF
		      aLine=tis.readLine
		      
		      BSarr()=split(aline,tab)
		      BSarr.Insert(0,"") 'zero based array correction
		      
		      
		      
		      siteSeq=BSarr(8)
		      
		      if siteSeq<>"" then 'filter out empty sites
		        
		        aTF=BSarr(2)
		        anOrg=BSarr(1)+" "+BSarr(4)
		        if aTF<>currentTF then 'new TF
		          'First, fill the table and array with the data for the previous TF:
		          GeneNo=UBound(geneArr)+1
		          
		          if GeneNo>0 then
		            RegulatorArray.Append TFdata
		            'RegulatorList columns are:
		            'TF name    Number of sites    Genes controlled    Site width    RegulonDB_TF_ID
		            dim reg() as string
		            if MinLen=MaxLen then
		              reg=array(currentOrg, str(linecount), str(GeneNo), str(minLen), TF_ID)
		            else
		              reg=array(currentOrg, str(linecount), str(GeneNo), str(minLen)+"-"+str(maxLen), TF_ID)
		            end if
		            RegulatorList.AddRow(reg)
		          end if
		          
		          'reinitialise counters and accumulators
		          currentTF=aTF
		          currentOrg=anOrg
		          linecount=0
		          MinLen=100
		          MaxLen=0
		          redim geneArr(-1)
		          TFdata=""
		          TF_ID=BSarr(2)
		        end if
		        
		        linecount=linecount+1
		        
		        currentGene=BSarr(11)
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
		        
		        'BSarr(11)+"_"+BSarr(5) gives unique name
		        
		        if CountFields(BSarr(11),",")>1 then
		          TFBSname=nthField(BSarr(11),",",1)
		        else
		          TFBSname=BSarr(11)
		        end if
		        tline=">"+TFBSname+"_"+BSarr(5)+"-"+BSarr(6)+"("+BSarr(7)+ ") "+BSarr(1)+" ProteinID:"+BSarr(2)+" "+BSarr(4)+" GenomeAccession:"+BSarr(3)+" "+BSarr(9)+" "+BSarr(11)+" | "+BSarr(10)
		        theSeq=BSarr(8)
		        
		        if lenb(theSeq)<minLen then
		          minLen=lenb(theSeq)
		        end if
		        
		        if lenb(theSeq)>maxLen then
		          maxLen=lenb(theSeq)
		        end if
		        
		        TFdata=TFdata+tline+EndOfLine.Unix
		        TFdata=TFdata+theSeq+EndOfLine.Unix
		        
		      end if
		    wend
		    
		    'add the last TF
		    GeneNo=UBound(geneArr)+1
		    if GeneNo>0 then
		      RegulatorArray.Append TFdata
		      'RegulatorList columns are:
		      'TF name    Number of sites    Genes controlled    Site width
		      dim reg() as string
		      if MinLen=MaxLen then
		        reg=array(currentOrg, str(linecount), str(GeneNo), str(minLen), TF_ID)
		      else
		        reg=array(currentOrg, str(linecount), str(GeneNo), str(minLen)+"-"+str(maxLen), TF_ID)
		      end if
		      RegulatorList.AddRow(reg)
		    end if
		    
		    
		  end if
		  
		  
		  Exception err
		    ExceptionHandler(err,"RegPreciseWin:FillRegulatorList")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RegulonInfo()
		  'get the ID:
		  dim TF_ID, theURL as string
		  TF_ID=RegulatorList.Cell(RegulatorList.ListIndex,4)
		  
		  theURL="http://collectf.umbc.edu/browse/search_terms/?search-term="+TF_ID
		  
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
		CollecTFfile As folderitem
	#tag EndProperty

	#tag Property, Flags = &h0
		CollecTFVersion As String
	#tag EndProperty

	#tag Property, Flags = &h0
		RegulatorArray(-1) As string
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
		  else
		    LogoButton.Enabled=false
		    InfoButton.Enabled=false
		    InfoButton.HelpTag="Select a single TF to enable this button"
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
		Name="CollecTFVersion"
		Group="Behavior"
		Type="String"
		EditorType="MultiLineEditor"
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
