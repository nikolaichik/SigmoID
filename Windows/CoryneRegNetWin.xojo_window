#tag Window
Begin Window CoryneRegNetWin
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   520
   ImplicitInstance=   True
   LiveResize      =   "True"
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
   Title           =   "CoryneRegNet"
   Visible         =   False
   Width           =   678
   Begin Listbox RegulatorList
      AllowAutoDeactivate=   True
      AllowAutoHideScrollbars=   True
      AllowExpandableRows=   False
      AllowFocusRing  =   True
      AllowResizableColumns=   True
      AllowRowDragging=   False
      AllowRowReordering=   False
      Bold            =   False
      ColumnCount     =   5
      ColumnWidths    =   "*,70,70,70"
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
      HasBorder       =   False
      HasHeader       =   True
      HasHorizontalScrollbar=   False
      HasVerticalScrollbar=   True
      HeadingIndex    =   -1
      Height          =   468
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
      RowSelectionType=   "1"
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   0
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   678
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin ProgressWheel ProgressWheel1
      AllowAutoDeactivate=   True
      Enabled         =   False
      Height          =   16
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
      Tooltip         =   ""
      Top             =   -58
      Transparent     =   False
      Visible         =   True
      Width           =   94
   End
   Begin PushButton LogoButton
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "#kShowLogo"
      Default         =   True
      Enabled         =   False
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   532
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MacButtonStyle  =   "0"
      Scope           =   0
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   480
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   126
   End
   Begin BevelButton InfoButton
      AllowAutoDeactivate=   True
      AllowFocus      =   True
      BackgroundColor =   &c00000000
      BevelStyle      =   "4"
      Bold            =   False
      ButtonStyle     =   "0"
      Caption         =   ""
      CaptionAlignment=   "3"
      CaptionDelta    =   0
      CaptionPosition =   "1"
      Enabled         =   False
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      HasBackgroundColor=   False
      Height          =   22
      Icon            =   495161343
      IconAlignment   =   "1"
      IconDeltaX      =   0
      IconDeltaY      =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      MenuStyle       =   "0"
      Scope           =   0
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   478
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   22
   End
   Begin Label RegulonDBinfoLabel
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
      TextAlignment   =   "2"
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   480
      Transparent     =   False
      Underline       =   False
      Value           =   "CoryneRegNet 7.0 (2020)"
      Visible         =   True
      Width           =   279
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
		  // Modified CollecTF window
		  
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
		  
		  'comma-sepaprated columns:
		  '# Columns:
		  '1 TF_locusTag    
		  '2 TF_altLocusTag    
		  '3 TF_name    
		  '4 TF_role    
		  '5 TG_locusTag    
		  '6 TG_altLocusTag    
		  '7 TG_name    
		  '8 Operon    
		  '9 Binding_site    
		  '10 Role    
		  '11 Is_sigma_factor    
		  '12 Evidence    
		  '13 PMID    
		  '14 Source
		  
		  
		  dim tis as TextInputStream
		  dim tos as TextOutputStream
		  dim BSarr() as string
		  Dim tab As String = ","
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
		      
		      
		      
		      siteSeq=BSarr(9)
		      
		      if siteSeq<>"" then 'filter out empty sites
		        
		        'aTF=BSarr(2)
		        'anOrg=BSarr(1)+" "+BSarr(4)
		        aTF=BSarr(1)
		        anOrg=BSarr(3)
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
		          'TF_ID=BSarr(2)
		          TF_ID=BSarr(1)
		        end if
		        
		        linecount=linecount+1
		        
		        'currentGene=BSarr(11)
		        currentGene=BSarr(5)
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
		        
		        'if CountFields(BSarr(11),",")>1 then
		        'TFBSname=NthField(BSarr(11),",",1)
		        'else
		        'TFBSname=BSarr(11)
		        TFBSname=BSarr(5)
		        'end if
		        
		        'tline=">"+TFBSname+"_"+BSarr(5)+"-"+BSarr(6)+"("+BSarr(7)+ ") "+BSarr(1)+" ProteinID:"+BSarr(2)+" "+BSarr(4)+" GenomeAccession:"+BSarr(3)+" "+BSarr(9)+" "+BSarr(11)+" | "+BSarr(10)
		        'theSeq=BSarr(8)
		        
		        
		        
		        theSeq=BSarr(9) 'multiple sites possible
		        
		        If InStr(theSeq,";")>0 Then 'multiple sites in front of one gene
		          Dim m As Integer = CountFields(theSeq,";")
		          Dim o As Integer
		          Dim theSeqGroup As String = theSeq
		          For o=1 To m
		            theSeq=NthField(theSeqGroup,";",o)
		            tline=">"+TFBSname+"_"+BSarr(3)+"_"+Str(o)+" TF_locus_tag:"+BSarr(1)+" "+" TF_role:"+BSarr(10)+" PMID:"+BSarr(13)
		            
		            If LenB(theSeq)<minLen Then
		              minLen=LenB(theSeq)
		            End If
		            
		            If LenB(theSeq)>maxLen Then
		              maxLen=LenB(theSeq)
		            End If
		            
		            TFdata=TFdata+tline+EndOfLine.Unix
		            TFdata=TFdata+theSeq+EndOfLine.Unix
		            
		            
		          Next
		          
		          
		        Else
		          tline=">"+TFBSname+"_"+BSarr(3)+" TF_locus_tag:"+BSarr(1)+" "+" TF_role:"+BSarr(10)+" PMID:"+BSarr(13)
		          
		          If LenB(theSeq)<minLen Then
		            minLen=lenb(theSeq)
		          end if
		          
		          if lenb(theSeq)>maxLen then
		            maxLen=lenb(theSeq)
		          end if
		          
		          TFdata=TFdata+tline+EndOfLine.Unix
		          TFdata=TFdata+theSeq+EndOfLine.Unix
		        End If
		        
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
		    ExceptionHandler(err,"CoryneRegNetWin:FillRegulatorList")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RegulonInfo()
		  'get the ID:
		  dim TF_ID, theURL as string
		  TF_ID=RegulatorList.Cell(RegulatorList.ListIndex,4)
		  
		  'theURL="http://collectf.umbc.edu/browse/search_terms/?search-term="+TF_ID
		  theURL="https://www.exbio.wzw.tum.de/coryneregnet/geneInfo.htm?locusTag="+TF_ID+"&type=experimental"
		  WebBrowserWin.show
		  WebBrowserWin.LoadPage(theURL)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowLogo()
		  Dim tmpfile As folderitem
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
		        LogoWin.show
		        logowin.ChangeView("Sequences")
		        logowin.LogoTabs.TabIndex=1
		      else
		        LogoWin.show
		        logowin.ChangeView("Logo")
		        logowin.LogoTabs.TabIndex=0
		      end if
		      HmmGenSettingsWin.ValueField.text=TFname
		      MASTGenSettingsWin.ValueField.text=TFname
		      ProfileWizardWin.ValueField.text=TFname
		      
		      'determine site width(s) and collect citation data:
		      dim instream as TextInputStream
		      Dim aLine As String
		      Dim Citations(0) As String
		      minLen=100
		      maxLen=0
		      InStream = tmpfile.OpenAsTextFile
		      
		      Dim allPMIDs(-1) As String
		      Dim match As Boolean
		      if instream<>Nil then
		        while not InStream.EOF
		          aLine=trim(InStream.readLine)
		          If Left(aLine,1)=">" Then
		            Dim PMID,PMIDs(-1) As String
		            PMID=NthField(aline,"PMID:",2)
		            PMIDs=PMID.Split(";")
		            If allPMIDs.LastRowIndex=-1 Then
		              allPMIDs.Append(PMIDs(0))
		            End If
		            
		            For n As Integer = PMIDs.FirstRowIndex To PMIDs.LastRowIndex
		              match=False
		              For M  As Integer = allPMIDs.FirstRowIndex To allPMIDs.LastRowIndex
		                If PMIDs(n)=allPMIDs(m) Then 
		                  match=True
		                  Exit
		                End If
		              Next
		              If Not match Then
		                allPMIDs.Append(PMIDs(n))
		              End If
		            Next
		            
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
		        
		        'fill the references list in ProfileWizard
		        
		        ProfileWizardWin.RefsList.RemoveAllRows
		        Dim DOI As String
		        For L  As Integer = allPMIDs.FirstRowIndex To allPMIDs.LastRowIndex
		          ProfileWizardWin.RefsList.AddRow
		          DOI=PMID2DOI(allPMIDs(L))
		          ProfileWizardWin.RefsList.CellValueAt(ProfileWizardWin.RefsList.LastRowIndex,1)=DOI
		          ProfileWizardWin.RefsList.CellValueAt(ProfileWizardWin.RefsList.LastRowIndex,0)=CitationFromDOI(Trim(DOI))
		        Next
		        
		        'get the TF protein sequence 
		        'TFname contains the locus_tag
		        
		        'Get species name from locustag pattern:
		        Dim fst, Species As String
		        
		        fst=Left(TFname,2)
		        
		        Select Case fst
		        Case "cg"
		          Species="Corynebacterium glutamicum"
		        Case "BS"
		          Species="Bacillus subtilis"
		        Case "Rv"
		          Species="Mycobacteriu tuberculosis"
		        Case "b0"
		          Species="Escherichia coli"
		        Case "b1"
		          Species="Escherichia coli"
		        Case "b2"
		          Species="Escherichia coli"
		        Case "b3"
		          Species="Escherichia coli"
		        Case "b4"
		          Species="Escherichia coli"
		        End Select
		        
		        ProfileWizardWin.SeedProteinArea.Text=LocusTag2proteinFasta(TFname, Species)
		        
		      else
		        msgbox "can't read temporary file "+tmpfile.ShellPath
		      end if
		      
		    else
		      msgbox "can't write temporary file "+tmpfile.ShellPath
		    end if
		    
		  end if
		  
		  
		  
		  
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
		Name="CollecTFVersion"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Visible=false
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
		Visible=false
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
		Name="Super"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="TF_name"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
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
