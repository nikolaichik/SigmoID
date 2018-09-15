#tag Window
Begin Window RegPreciseTFcollectionsWin
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   422
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
   Title           =   "#kRegPreciseTFCollections"
   Visible         =   False
   Width           =   800
   Begin Label Label2
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
      Left            =   8
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
      Text            =   "#kTFfamily"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   20
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   93
   End
   Begin PopupMenu GenomesPopup
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   False
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   "#kSelectTFfam"
      Italic          =   False
      Left            =   113
      ListIndex       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   20
      Underline       =   False
      Visible         =   True
      Width           =   640
   End
   Begin Listbox CollectionList
      AutoDeactivate  =   True
      AutoHideScrollbars=   True
      Bold            =   False
      Border          =   False
      ColumnCount     =   9
      ColumnsResizable=   True
      ColumnWidths    =   ""
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   -1
      Enabled         =   False
      EnableDrag      =   False
      EnableDragReorder=   False
      GridLinesHorizontal=   0
      GridLinesVertical=   0
      HasHeading      =   True
      HeadingIndex    =   -1
      Height          =   296
      HelpTag         =   ""
      Hierarchical    =   False
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   " 	#kRegulog	#kRegulonNo	TFBSs	#kInfoBits	#kLogo"
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
      Top             =   52
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   800
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin mHTTPSocket RegPreciseSocket
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
   Begin ProgressWheel ProgressWheel1
      AutoDeactivate  =   True
      Enabled         =   False
      Height          =   16
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   765
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   20
      Visible         =   True
      Width           =   16
   End
   Begin PushButton RegulogLogoButton
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "#kOpen_"
      Default         =   True
      Enabled         =   False
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   696
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
      Top             =   382
      Underline       =   False
      Visible         =   True
      Width           =   84
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
      Top             =   382
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   22
   End
   Begin PushButton ExportButton
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "#kExportSelected"
      Default         =   False
      Enabled         =   False
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   484
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   382
      Underline       =   False
      Visible         =   True
      Width           =   200
   End
   Begin BevelButton BevelButton3
      AcceptFocus     =   True
      AutoDeactivate  =   True
      BackColor       =   &c00000000
      Bevel           =   4
      Bold            =   False
      ButtonType      =   0
      Caption         =   "#kSelectByQuality"
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
      Left            =   278
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   12
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   348
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   522
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
      Left            =   138
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   13
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   348
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   140
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
      TabIndex        =   14
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   348
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   140
   End
   Begin Label ProgressLabel
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
      Left            =   71
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   15
      TabPanelIndex   =   0
      Text            =   ""
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   382
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   388
   End
   Begin PushButton ExportSigButton
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "#kExportSelected2sig"
      Default         =   False
      Enabled         =   False
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   218
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   16
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   382
      Underline       =   False
      Visible         =   True
      Width           =   254
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Activate()
		  EnableButtons
		End Sub
	#tag EndEvent

	#tag Event
		Sub EnableMenuItems()
		  if CollectionList.SelCount=1 then
		    RegPreciseRegulonInfo.enabled=true
		    RegPreciseRegulonInfo.Text=kRegulonInfo
		    RegulonShowLogo.Enabled=true
		    'RegulonCheckTF.Enabled=true
		  end if
		  
		  
		  if Keyboard.AltKey then
		    RegulonGetRegPreciseTFseqs.visible=true
		    RegulonGetRegPreciseTFseqs.enabled=true
		  else
		    RegulonGetRegPreciseTFseqs.visible=false
		    RegulonGetRegPreciseTFseqs.enabled=false
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
		Function RegPreciseRegulonInfo() As Boolean Handles RegPreciseRegulonInfo.Action
			RegulonInfo
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function RegPreciseRegulonInfo1() As Boolean Handles RegPreciseRegulonInfo1.Action
			RegulonInfo
		End Function
	#tag EndMenuHandler


	#tag Method, Flags = &h0
		Sub CheckTF()
		  'This mentod is restricted to DebugBuild only due to Xojo database licensing restriction
		  'You may fully enable it if if you have the Database license 
		  
		  
		  #if DebugBuild then
		    dim RegulonID, vimssId, ProteinFasta as string
		    dim TFname as string
		    dim n as integer
		    
		    logowin.show
		    
		    TFname=CollectionList.Cell(CollectionList.ListIndex,0)
		    for n=0 to UBound(regulatorArray)
		      if JSONitem(regulatorArray(n)).Value("regulatorName")=TFname then
		        RegulonID=JSONitem(regulatorArray(n)).Value("regulonId")
		        exit
		      end if
		      
		    next
		    
		    logowin.WriteToSTDOUT("Getting protein ID from RegPrecise... ")
		    
		    dim res as string
		    dim jsn as new JSONItem
		    dim jsn0 as new JSONItem
		    dim hts as new HTTPSocket
		    
		    hts.Yield=true
		    
		    res=hts.Get("https://regprecise.lbl.gov/Services/rest/regulators?regulonId="+regulonId,0)
		    if hts.HTTPStatusCode>=200 AND hts.HTTPStatusCode<300 then 'successful
		      if res<>"" then
		        JSN0.load(res)
		        'should contain smth like:
		        '{"regulator":{"locusTag":"ECA3790","name":"PdhR","regulatorFamily":"GntR","regulonId":"10409","vimssId":"608214"}}
		        
		        JSN=JSN0.value("regulator")
		        ProteinFasta=">"+JSN.Value("name")+" locus_tag="+JSN.Value("locusTag")+" regulonId="+JSN.Value("regulonId")+" vimssId="+JSN.Value("vimssId")
		        vimssId=JSN.Value("vimssId")
		        LogoWin.WriteToSTDOUT("OK"+EndOfLine.UNIX)
		        
		      end if
		      
		      logowin.WriteToSTDOUT("Getting protein sequence from MicrobesOnline... ")
		      
		      ' -h pub.microbesonline.org -u guest -pguest genomics -B -e "select * from AASeq where locusId=606816;"
		      
		      Dim db As New MySQLCommunityServer
		      db.Host = "pub.microbesonline.org"
		      'db.Port = 3306
		      db.DatabaseName = "genomics"
		      db.UserName = "guest"
		      db.Password = "guest"
		      If db.Connect Then
		        // Use the database
		        
		        Dim rs As RecordSet
		        rs = db.SQLSelect("select * from AASeq where locusId="+vimssId)
		        
		        If db.Error Then
		          MsgBox("Error: " + db.ErrorMessage)
		          Return
		        End If
		        
		        If rs <> Nil Then
		          ProteinFasta=ProteinFasta+EndOfLine.UNIX+rs.Field("sequence").StringValue
		          tfastx(ProteinFasta)
		          rs.Close
		        End If
		        db.Close
		        
		        
		      Else
		        // Connection error
		        MsgBox(db.ErrorMessage)
		      End If
		      
		      
		    else
		      LogoWin.WriteToSTDOUT ("Server error (HTTP status code "+str(hts.HTTPStatusCode)+")")
		      LogoWin.show
		    end if
		    
		  #else
		    MsgBox "This method is currently disabled due to database licensing issue. Should hopefully be fixed sometime..."
		    
		  #endif
		  Exception err
		    ExceptionHandler(err,"RegPreciseWin:CheckTF")
		    
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CollectionStats2array(JSONin as JSONItem)
		  'Populates the GenomesPopup and stores genome JSONs in an array
		  'the popup and array indices are the same
		  
		  dim genomes as JSONItem
		  dim GenomeString as string
		  dim n as integer
		  
		  GenomesPopup.DeleteAllRows
		  
		  redim GenomeStatsArray(-1)
		  genomes=JSONin.Value("regulogCollectionStat")
		  if genomes.IsArray then
		    for n=0 to genomes.Count-1
		      if genomes(n) isa JSONItem then
		        'should contain smth like:
		        '{"className":"","collectionId":"1","collectionType":"tfFam","name":"AraC","rnaCount":"0","rnaRegulogCount":"0","rnaSiteCount":"0","tfCount":"10","tfRegulogCount":"14","tfSiteCount":"149","totalGenomeCount":"60","totalRegulogCount":"14"},{"className":"","collectionId":"1","collectionType":"tfFam","name":"AraC","rnaCount":"0","rnaRegulogCount":"0","rnaSiteCount":"0","tfCount":"10","tfRegulogCount":"14","tfSiteCount":"149","totalGenomeCount":"60","totalRegulogCount":"14"}
		        '{"genomeId":"601","name":"Acetobacter pasteurianus IFO 3283-01","rnaRegulonCount":"0","rnaSiteCount":"0","taxonomyId":"634452","tfRegulonCount":"6","tfSiteCount":"16"}
		        
		        if ubound(GenomeStatsArray)=-1 then
		          GenomeStatsArray.append genomes(n)
		          GenomeString=JSONItem(genomes(n)).Value("name")+" ("+JSONItem(genomes(n)).Value("tfCount")+" TFs, "+JSONItem(genomes(n)).Value("tfRegulogCount")+" regulogs, "+JSONItem(genomes(n)).Value("tfSiteCount")+" TFBSs)"
		          GenomesPopup.AddRow(genomestring)
		        else
		          GenomeString=JSONItem(genomes(n)).Value("name")+" ("+JSONItem(genomes(n)).Value("tfCount")+" TFs, "+JSONItem(genomes(n)).Value("tfRegulogCount")+" regulogs, "+JSONItem(genomes(n)).Value("tfSiteCount")+" TFBSs)"
		          
		          if GenomesPopup.list(GenomesPopup.ListCount-1)<>GenomeString then 'RegPrecise bug: every item in JSON is duplicated! 
		            GenomeStatsArray.append genomes(n)
		            GenomesPopup.AddRow(genomestring)
		          end if
		        end if
		      end if
		      
		    next
		    GenomesPopup.Enabled=true
		    
		  else
		    'A problem with JSON
		    
		  end if
		  
		  Exception err
		    ExceptionHandler(err,"RegPreciseWin:GenomeStats2array")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function countRegulons(regulogID as string) As string
		  'expects fasta file from RegPrecise with regulog TFBS seqs
		  
		  'simply counts the number of different strain names 
		  'in fasta headers (RegPrecise gives these in square brackets)
		  
		  
		  'DOESN'T WORK! REST response is different
		  
		  ' have to use this call:
		  ' https://regprecise.lbl.gov/Services/rest/regulons?regulogId=621
		  
		  dim strains(0) as string
		  dim lines(-1) as string
		  dim aName as string
		  dim strainKnown as Boolean
		  dim n,m as integer
		  
		  
		  dim res as string
		  dim jsn as new JSONItem
		  dim jsn1 as new JSONItem
		  dim hts as new HTTPSocket
		  hts.Yield=true
		  res=hts.Get("https://regprecise.lbl.gov/Services/rest/regulons?regulogId="+regulogID,0)
		  
		  // result shouls be like this:
		  ' {"regulon":[{"effector":"Bacillibactin; Fe-Bacillibactin","genomeId":"52","genomeName":"Bacillus subtilis subsp. subtilis str. 168","pathway":"Iron homeostasis","regulationType":"TF","regulatorFamily":"AraC","regulatorName":"Btr","regulogId":"1368","regulonId":"12715"},
		  ' ,{"effector":"Bacillibactin; Fe-Bacillibactin","genomeId":"60","genomeName":"Bacillus clausii KSM-K16","pathway":"Iron homeostasis","regulationType":"TF","regulatorFamily":"AraC","regulatorName":"Btr","regulogId":"1368","regulonId":"12711"}]}
		  
		  ' internal JSON may not be an array (in case of single item)
		  
		  if hts.HTTPStatusCode>=200 AND hts.HTTPStatusCode<300 then 'successful
		    JSN.load(res)
		    JSN1=JSN.Value("regulon")
		    if JSN1.IsArray then
		      return str(JSN1.Count)
		    else
		      return "1"
		    end if
		    
		  else
		    return "0"
		    
		    
		  end if
		  'lines=split(regulogTFBSs,EndOfLine.UNIX)
		  '
		  'for m=0 to UBound(lines)-1
		  'aName=NthField(lines(n),"[",2)
		  'strainKnown=false
		  'for n=1 to ubound(strains)
		  'if strains(n)=aName then
		  'strainKnown=true
		  'exit
		  'end if
		  'next
		  'if NOT strainKnown then
		  'strains.Append aName
		  'end if
		  'next
		  '
		  'return ubound(strains)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CountSelRows() As integer
		  dim lb as Listbox=RegPreciseTFcollectionsWin.CollectionList
		  dim n, CheckedRows as integer
		  
		  for n=0 to lb.ListCount-1
		    if lb.CellCheck(n,0) then
		      CheckedRows=CheckedRows+1
		    end if
		  next
		  
		  return CheckedRows
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub EnableButtons()
		  
		  if collectionList.SelCount=1 then
		    'RegulonLogoButton.Enabled=true
		    RegulogLogoButton.Enabled=true
		    InfoButton.Enabled=true
		  else
		    'RegulonLogoButton.Enabled=false
		    RegulogLogoButton.Enabled=false
		    InfoButton.Enabled=false
		  end if
		  
		  dim sr as integer=CountSelRows
		  
		  if sr>=1 then
		    DeselectAllButton.enabled=true
		  else
		    DeselectAllButton.enabled=false
		  end if
		  
		  if sr=0 then
		    ExportButton.Enabled=false
		    ExportSigButton.Enabled=false
		  else
		    ExportButton.Enabled=true
		    ExportSigButton.Enabled=true
		  end if
		  
		  if sr=collectionList.ListCount then
		    SelectAllButton.enabled=false
		  else
		    SelectAllButton.enabled=true
		  end if
		  
		  ProgressLabel.Text=str(CountSelRows)+" profiles selected"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FillCollectionList(JSONin as JSONItem)
		  // Populates the RegulatorList and stores regulator JSONs in an array
		  ' the popup and array indices are the same
		  
		  // CollectionList columns are:
		  ' 0 - Checkbox
		  ' 1 - Regulog Name
		  ' 2 - Number of regulons in the regulog
		  ' 3 - Number of TFBSs in the regulog
		  ' 4 - Information (bits)
		  ' 5 - Logo picture
		  ' 6 (invisible) – RegulogID
		  ' 7 (invisible) - TFBS seqs (in fasta format)
		  ' 8 - TFBS length.
		  ' (three last columns are here, because it's easier to access these data when sorting the listbox)
		  
		  ProgressWheel1.Visible=true
		  ProgressWheel1.Enabled=true
		  
		  dim regulators as JSONItem
		  dim regulogID As string
		  dim fa as string
		  dim n as integer
		  
		  redim logopix(-1)
		  CollectionList.DeleteAllRows
		  
		  redim regulatorArray(-1)
		  regulators=JSONin.Value("regulog")
		  if regulators.IsArray then
		    for n=0 to regulators.Count-1
		      if regulators(n) isa JSONItem then
		        'should contain smth like:
		        '{"effector":"Bacillibactin, Fe-Bacillibactin","pathway":"Iron homeostasis","regulationType":"TF",
		        '"regulatorFamily":"AraC","regulatorName":"Btr","regulogId":"1368","taxonName":"Bacillales"}
		        
		        '(some fields could be missing!)
		        '#kRegulog    #kRegulonNo    TFBSs    #kLogo
		        
		        if JSONItem(regulators(n)).Value("regulationType")="TF" then 'exclude the RNAs for now
		          regulatorArray.append regulators(n)
		          dim s1, s2, s3, s4, s6, s7 as string
		          s1=JSONItem(regulators(n)).Value("regulatorName")+" – "+JSONItem(regulators(n)).Value("taxonName")
		          regulogID=JSONItem(regulators(n)).Value("regulogId")
		          s6=regulogID
		          'get the data for the regulon (number of regulons,TFBSs and the actual TFBS seqs) 
		          
		          
		          
		          dim res as string
		          dim jsn as new JSONItem
		          dim hts as new HTTPSocket
		          hts.Yield=true
		          res=hts.Get("https://regprecise.lbl.gov/Services/rest/sites?regulogId="+regulogID,0)
		          
		          if hts.HTTPStatusCode>=200 AND hts.HTTPStatusCode<300 then 'successful
		            if res<>"" then
		              JSN.load(res)
		              '--> WriteToSTDOUT("got the data for "+TFname+".")
		              dim RegPreciseTemp as FolderItem
		              dim OutStream As TextOutputStream
		              
		              RegPreciseTemp=TemporaryFolder.child("RegPreciseTemp")
		              if RegPreciseTemp<>nil then
		                if RegPreciseTemp.Exists then
		                  
		                  ' the file being created may not be used in the end
		                  
		                  
		                  #if TargetLinux 
		                    RegPreciseTemp.delete 'SpecialFolder.Trash returns NIL in Linux
		                  #else 
		                    RegPreciseTemp.MoveFileTo(SpecialFolder.Trash)
		                  #endif
		                  RegPreciseTemp=TemporaryFolder.child("RegPreciseTemp")
		                end if
		                
		                
		                fa=JSON2Fasta(JSN)
		                fa=FillGaps(fa)
		                s7=fa
		                'logopix.Append MakeLogoPic(fa)
		                
		                s2=countRegulons(regulogID)      ' Regulon #
		                
		                s3=str(countFields(fa,">")-1)  ' TFBS #
		                
		                if fa<>"" then
		                  OutStream = TextOutputStream.Create(RegPreciseTemp)
		                  outstream.Write(fa)
		                  outstream.close
		                  '--> LoadAlignment(RegPreciseTemp)
		                  '--> logowin.ChangeView("Logo")
		                  '--> me.title="SigmoID: "+TFname+" (RegPrecise)"
		                  
		                  
		                  
		                end if
		              end if
		            else
		              logowin.WriteToSTDOUT("no response in 15 sec.")
		            end if
		          else
		            logowin.WriteToSTDOUT ("Server error (HTTP status code "+str(hts.HTTPStatusCode)+")")
		          end if
		          
		          Dim p as picture = MakeLogoPic(fa)
		          Dim reg() As String = Array("",s1, s2, s3, Str(InfoBits),"", s6, s7, str(Sitelength))  'first column contains checkboxes
		          CollectionList.AddRow(reg)
		          
		          'add picture to the last row as variant, so it is sorted properly 
		          CollectionList.RowTag(collectionlist.LastIndex)=p
		          
		          'Update progress text
		          ProgressLabel.Text="Loading profiles: "+str(CollectionList.ListCount)
		          
		        end if
		      end if
		      
		    next
		    
		    'sort the list:
		    CollectionList.ColumnsortDirection(0)=ListBox.SortAscending
		    CollectionList.SortedColumn=0   //first column is the sort column
		    CollectionList.Sort
		    
		    CollectionList.Enabled=true
		  else
		    'A single item in JSON
		    
		    if JSONItem(regulators).Value("regulationType")="TF" then 'exclude the RNAs for now
		      regulatorArray.append regulators
		      dim s1, s2, s3, s4, s6, s7 as string
		      s1=JSONItem(regulators).Value("regulatorName")+" – "+JSONItem(regulators).Value("taxonName")
		      regulogID=JSONItem(regulators).Value("regulogId")
		      s6=regulogID
		      'get the data for the regulon (number of regulons,TFBSs and the actual TFBS seqs) 
		      
		      
		      
		      dim res as string
		      dim jsn as new JSONItem
		      dim hts as new HTTPSocket
		      hts.Yield=true
		      res=hts.Get("https://regprecise.lbl.gov/Services/rest/sites?regulogId="+regulogID,0)
		      
		      if hts.HTTPStatusCode>=200 AND hts.HTTPStatusCode<300 then 'successful
		        if res<>"" then
		          JSN.load(res)
		          '--> WriteToSTDOUT("got the data for "+TFname+".")
		          dim RegPreciseTemp as FolderItem
		          dim OutStream As TextOutputStream
		          
		          RegPreciseTemp=TemporaryFolder.child("RegPreciseTemp")
		          if RegPreciseTemp<>nil then
		            if RegPreciseTemp.Exists then
		              
		              ' the file being created may not be used in the end
		              
		              
		              #if TargetLinux 
		                RegPreciseTemp.delete 'SpecialFolder.Trash returns NIL in Linux
		              #else 
		                RegPreciseTemp.MoveFileTo(SpecialFolder.Trash)
		              #endif
		              RegPreciseTemp=TemporaryFolder.child("RegPreciseTemp")
		            end if
		            
		            
		            fa=JSON2Fasta(JSN)
		            fa=FillGaps(fa)
		            s7=fa
		            'logopix.Append MakeLogoPic(fa)
		            
		            s2=countRegulons(regulogID)      ' Regulon #
		            
		            s3=str(countFields(fa,">")-1)  ' TFBS #
		            
		            if fa<>"" then
		              OutStream = TextOutputStream.Create(RegPreciseTemp)
		              outstream.Write(fa)
		              outstream.close
		              '--> LoadAlignment(RegPreciseTemp)
		              '--> logowin.ChangeView("Logo")
		              '--> me.title="SigmoID: "+TFname+" (RegPrecise)"
		              
		              
		              
		            end if
		          end if
		        else
		          logowin.WriteToSTDOUT("no response in 15 sec.")
		        end if
		      else
		        logowin.WriteToSTDOUT ("Server error (HTTP status code "+str(hts.HTTPStatusCode)+")")
		      end if
		      
		      Dim p as picture = MakeLogoPic(fa)
		      Dim reg() As String = Array("",s1, s2, s3, Str(InfoBits),"", s6, s7, str(Sitelength))  'first column contains checkboxes
		      CollectionList.AddRow(reg)
		      
		      'add picture to the last row as variant, so it is sorted properly 
		      CollectionList.RowTag(collectionlist.LastIndex)=p
		      
		      'Update progress text
		      ProgressLabel.Text="Loading profiles: "+str(CollectionList.ListCount)
		      
		    end if
		    CollectionList.Enabled=true
		  end if
		  
		  ProgressWheel1.Visible=false
		  ProgressWheel1.Enabled=false
		  
		  Exception err
		    ExceptionHandler(err,"RegPreciseWin:FillRegulatorList")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetVersion()
		  SocketTask="release"
		  RegPreciseSocket.Get("https://regprecise.lbl.gov/Services/rest/release")
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadFamilies()
		  dim gnms as string
		  dim f as folderitem
		  dim tis as TextInputStream
		  
		  'loading the JSON from disk rather than retrieving it from the net:
		  '(Need to check RegPrecise version/date!)
		  'f=Resources_f.child("genomeStats.JSON")
		  'if f<>Nil then
		  'tis=f.OpenAsTextFile
		  'if tis<>nil then
		  'gnms=tis.ReadAll
		  'tis.Close
		  '
		  'dim JSN as new JSONItem
		  'JSN.load(gnms)
		  '
		  'GenomeStats2array(JSN)
		  'end if
		  'else
		  'get the data from RegPrecise
		  SocketTask="TFfamilies"
		  RegPreciseSocket.Get("https://regprecise.lbl.gov/Services/rest/regulogCollectionStats?collectionType=tfFam")
		  'end if
		  
		  Exception err
		    ExceptionHandler(err,"RegPreciseWin:LoadGenomes")
		    
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadRegulators(GenomeID as string)
		  SocketTask="tfFam"
		  'regulogs?collectionType={type}&collectionId={id}
		  'Description
		  'Retrieves a list of regulogs that belongs to a specific collection
		  '
		  'Input
		  'Requires type and identifier of a regulog collection
		  '
		  'Output
		  'Returns a list of regulogs. Each regulog is provided with the following data:
		  '
		  'regulogId - identifier of regulog
		  'regulatorName - name of regulator
		  'regulatorFamily - family of regulator
		  'regulationType - type of regulation: either TF (transcription factor) or RNA
		  'taxonName - name of taxonomic group
		  'effector - effector molecule or environmental signal of a regulator
		  'pathway - metabolic pathway or biological process controlled by a regulator
		  
		  RegPreciseSocket.Get("https://regprecise.lbl.gov/Services/rest/regulogs?collectionType=tfFam&collectionId="+GenomeID)
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RegulogLogo()
		  dim RegulogID,RegulonID, TFname as string
		  dim n as integer
		  
		  
		  TFname=CollectionList.Cell(CollectionList.ListIndex,1)
		  TFname=NthField(TFname," – ",1)
		  RegulogID=CollectionList.cell(CollectionList.ListIndex,6)
		  
		  
		  
		  LogoWin.RegulogID=Val(RegulogID)
		  LogoWin.IsRegulog=true
		  
		  'It at appears that LogoWin.LoadRegpreciseData fetches incorrect (length-equalised) data 
		  'if the sites are of different length.
		  'Fortunately, we already have the correct data in the CollectionList column 7, so using it here
		  
		  'write the seqs to a file:
		  dim sitesFile as folderitem
		  dim tos as TextOutputStream
		  
		  sitesFile=TemporaryFolder.Child(RegulogID+".txt")
		  if sitesFile<>nil then
		    tos=TextOutputStream.Create(sitesFile)
		    if tos <>nil then
		      tos.Write  CollectionList.Cell(CollectionList.ListIndex,7)
		      
		      tos.close
		    else
		      msgbox "can't write to tmp file"
		    end if
		  else
		    msgbox "Can't create tmp file"
		  end if
		  
		  'load the profile:
		  LogoWin.LoadAlignment(sitesFile)
		  HmmGenSettingsWin.ValueField.text=TFname
		  MASTGenSettingsWin.ValueField.text=TFname
		  ProfileWizardWin.ValueField.text=TFname
		  LogoWin.show
		  
		  Exception err
		    if err isa IOException then
		      msgbox "A problem creating/reading temporaty file. Please try to clean your temp folder"
		    end if
		    ExceptionHandler(err,"RegPreciseWin:RegulogLogoButton.Action")
		    
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RegulonInfo()
		  'get the ID:
		  dim RegulogID As string
		  
		  RegulogID=CollectionList.cell(CollectionList.ListIndex,6)
		  
		  'open the RegPrecise page:
		  RegulonInfo(val(RegulogID),true)
		  
		  Exception err
		    ExceptionHandler(err,"RegPreciseWin:RegPreciseRegulonInfo")
		    
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		GenomeStatsArray(-1) As JSONItem
	#tag EndProperty

	#tag Property, Flags = &h0
		InfoBits As double
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected LogoPix(-1) As Picture
	#tag EndProperty

	#tag Property, Flags = &h0
		RegPreciseVersion As String
	#tag EndProperty

	#tag Property, Flags = &h0
		RegulatorArray(-1) As JSONItem
	#tag EndProperty

	#tag Property, Flags = &h0
		siteLength As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		SocketTask As String
	#tag EndProperty


#tag EndWindowCode

#tag Events Label2
	#tag Event
		Sub Open()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events GenomesPopup
	#tag Event
		Sub Change()
		  'GenomeStatsArray contain JSONs like this:
		  '{"className":"","collectionId":"2","collectionType":"tfFam","name":"ArgR","rnaCount":"0","rnaRegulogCount":"0","rnaSiteCount":"0","tfCount":"1","tfRegulogCount":"27","tfSiteCount":"1752","totalGenomeCount":"249","totalRegulogCount":"27"}
		  
		  
		  LoadRegulators(GenomeStatsArray(me.ListIndex).Value("collectionId"))
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CollectionList
	#tag Event
		Sub Change()
		  EnableButtons
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  // CollectionList columns are:
		  ' 0 - Checkbox
		  ' 1 - Regulog Name
		  ' 2 - Number of regulons in the regulog
		  ' 3 - Number of TFBSs in the regulog
		  ' 4 - Information (bits)
		  ' 5 - Logo picture
		  ' 6 (invisible) – RegulogID
		  ' 7 (invisible) - TFBS seqs (in fasta format)
		  ' 8 (invisible) - TFBS length.
		  
		  me.ColumnWidths="20,300,80,60,80,*,0,0,0" 'three last columns just store the data 
		  me.ColumnType(0)=Listbox.TypeCheckbox
		  me.DefaultRowHeight=49  'LogoPic.Height=45
		  'me.ColumnSortDirection(-1)=ListBox.HeaderTypes.NotSortable 'disable sorting of all the columns
		  
		  
		End Sub
	#tag EndEvent
	#tag Event
		Function CellBackgroundPaint(g As Graphics, row As Integer, column As Integer) As Boolean
		  ' LogoPix array isn't initialised initially (and some elements may be nil afterwards)
		  dim hpos,colWidth, offset as double
		  dim ws as string
		  dim p as picture
		  
		  // calculate logo column width 
		  ' column widths are currently set as
		  ' 20, 300, 80, 60, 80, *, 0, 0, 0
		  
		  ws=me.ColumnWidths
		  colWidth=me.width-val(NthField(ws,",",1))-val(NthField(ws,",",2))-val(NthField(ws,",",3))-val(NthField(ws,",",4))-val(NthField(ws,",",5))
		  
		  
		  if Column=5 then
		    if row<=me.lastindex then
		      p=me.rowtag(row)
		      offset=(colWidth-p.Width)/2 
		      g.DrawPicture(p, offset, 0)  'pic is centered for proper alignment
		    end if
		  end if
		  Return True
		End Function
	#tag EndEvent
	#tag Event
		Sub CellAction(row As Integer, column As Integer)
		  if column=0 then
		    
		    EnableButtons
		  end if
		  
		End Sub
	#tag EndEvent
	#tag Event
		Function CellClick(row as Integer, column as Integer, x as Integer, y as Integer) As Boolean
		  EnableButtons
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events RegPreciseSocket
	#tag Event
		Sub PageReceived(url as string, httpStatus as integer, headers as internetHeaders, content as string)
		  
		  ProgressWheel1.Visible=false
		  ProgressWheel1.Enabled=false
		  dim JSN as new JSONItem
		  
		  if httpStatus>=200 AND httpStatus<300 then 'successful
		    JSN.load(content)
		    
		    Select case SocketTask
		    case "release"
		      
		      RegPreciseVersion=JSN.value("majorVersion")+"."+JSN.value("mionrVersion")+" "+JSN.value("releaseDate")
		    case "TFfamilies"
		      'populate the GenomesPopup:
		      CollectionStats2array(JSN)
		    case "tfFam"
		      'Assemble collection info
		      '(with Logos!)
		      FillCollectionList(JSN)
		      'case "regulons"
		      ''populate the RegulatorList:
		      'FillRegulatorList(JSN)
		      'case "regulogs"
		      ''populate the RegulatorList:
		      'beep
		    End Select
		  else
		    MsgBox "Can't connect to RegPrecise (HTTP status code "+str(httpStatus)+")"
		  end if
		  
		  Exception err
		    ExceptionHandler(err,"RegPreciseWin:RegPreciseSocket.pagereceived")
		    
		End Sub
	#tag EndEvent
	#tag Event
		Sub Connected()
		  if SocketTask<>"release" then
		    'ProgressWheel1.top=CollectionList.top+CollectionList.Height/3
		    ProgressWheel1.Visible=true
		    ProgressWheel1.Enabled=true
		  end if
		  
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RegulogLogoButton
	#tag Event
		Sub Action()
		  RegulogLogo
		  
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
#tag Events ExportButton
	#tag Event
		Sub Action()
		  Dim dlg as New SaveAsDialog
		  dim outfile as folderitem
		  dim FamilyName as string
		  
		  FamilyName=NthField(GenomesPopup.Text," ",1)
		  
		  'dlg.InitialDirectory=genomefile.Parent
		  dlg.promptText=kTFfamilyExportDesc
		  'dlg.SuggestedFileName=nthfield(GenomeFile.Name,".",1)+".meme"
		  dlg.SuggestedFileName=FamilyName+"_RegPrecise.meme"
		  dlg.Title=kExportProfiles
		  dlg.Filter=FileTypes.meme
		  dlg.CancelButtonCaption=kCancel
		  dlg.ActionButtonCaption=kSave
		  outfile=dlg.ShowModalwithin(self)
		  if outfile<>nil then
		    LogoWin.WriteToSTDOUT (EndofLine+kExportingProfiles)
		    LogoWin.STDOUT.Refresh(false)
		    Logowin.show
		    
		    Dim s as TextOutputStream=TextOutputStream.Create(outfile)
		    if s<> NIL then
		      
		      
		      // make tmp folder
		      dim TFfamily_tmp as FolderItem = TemporaryFolder.child("TFfamily_tmp")
		      if TFfamily_tmp <> nil then
		        
		        
		        'the folder may be there from the previous run, we have delete it!
		        if TFfamily_tmp.Exists then
		          dim i as integer
		          i=deleteEntireFolder(TFfamily_tmp) 'return code isn't handled yet
		        end if
		        TFfamily_tmp.CreateAsFolder
		      else 
		        msgbox "Can't create tmp folder"
		        return
		      end if
		      
		      // write 'sites' files to tmp folder
		      ' (simple text files named a la regulogID.txt
		      ' regulogID will be used as motif ID and will be added to RegPrecise URL when converting 
		      
		      ' for palindromic sites, rev. complements should probably be added here
		      ' as RegPrecise ignores site symmetry (currently, sites are written as they are) 
		      
		      dim m,n as integer
		      dim fastaLines(-1) as string
		      dim sitesFile as folderitem
		      dim tos as TextOutputStream
		      dim RegulonID as string
		      
		      for n=0 to CollectionList.ListCount-1
		        if CollectionList.CellCheck(n,0) then
		          sitesFile=TFfamily_tmp.Child(CollectionList.Cell(n,6)+".txt")
		          if sitesFile<>nil then
		            tos=TextOutputStream.Create(sitesFile)
		            if tos <>nil then
		              fastaLines=split(CollectionList.Cell(n,7), endofline.UNIX)
		              for m=0 to ubound(fastaLines)-1
		                if left(fastaLines(m),1)<>">" then
		                  tos.Writeline fastaLines(m)
		                  
		                end if
		              next
		              tos.close
		            else
		              msgbox "can't write to tmp file"
		            end if
		          else
		            msgbox "Can't create tmp file"
		          end if
		          
		          
		        end if
		      next
		      
		      // add sites.map file to the same folder pairing motif ID with its name
		      ' (one space separated pair per line)
		      dim sitesMap as folderitem
		      
		      sitesMap=TFfamily_tmp.Child("sites.map")
		      if sitesMap<>nil then
		        tos=TextOutputStream.Create(sitesMap)
		        if tos<>nil then
		          for n=0 to CollectionList.ListCount-1
		            if CollectionList.CellCheck(n,0) then
		              tos.writeline CollectionList.Cell(n,6)+" "+Replace(CollectionList.Cell(n,1)," – ","_")
		            end if
		          next
		          tos.close
		        else
		          msgbox "can't write to sites.map file"
		        end if
		        
		      else
		        msgbox "Can't create the sites.map file"
		      end if
		      
		      // convert all tmp files to a single minimal meme file
		      ' sites2meme command should look like 
		      ' sites2meme -map /Users/Home/Desktop/sites2meme_test/sites.map -url https://regprecise.lbl.gov/RegPrecise/regulog.jsp?regulog_id=MOTIF_NAME /Users/Home/Desktop/sites2meme_test
		      
		      ' sample output is like this:
		      'MEME version 4
		      '
		      'ALPHABET= ACGT
		      '
		      'strands: + -
		      '
		      'Background letter frequencies (from uniform background):
		      'A 0.25000 C 0.25000 G 0.25000 T 0.25000 
		      '
		      'MOTIF site1 TfbS
		      '
		      'letter-probability matrix: alength= 4 w= 7 nsites= 14 E= 0
		      '0.714286      0.214286      0.071429      0.000000    
		      '0.714286      0.000000      0.285714      0.000000    
		      '0.000000      0.000000      1.000000      0.000000    
		      '0.000000      0.000000      1.000000      0.000000    
		      '0.000000      0.000000      0.000000      1.000000    
		      '0.000000      1.000000      0.000000      0.000000    
		      '0.928571      0.000000      0.071429      0.000000    
		      '
		      'URL https://regprecise.lbl.gov/RegPrecise/regulog.jsp?regulog_id=site1
		      '
		      'MOTIF site2 RegR
		      '
		      'letter-probability matrix: alength= 4 w= 7 nsites= 14 E= 0
		      '0.500000      0.428571      0.071429      0.000000    
		      '0.714286      0.000000      0.285714      0.000000    
		      '0.000000      0.000000      1.000000      0.000000    
		      '0.000000      0.000000      1.000000      0.000000    
		      '0.000000      0.000000      0.000000      1.000000    
		      '0.000000      1.000000      0.000000      0.000000    
		      '0.785714      0.000000      0.214286      0.000000    
		      '
		      'URL https://regprecise.lbl.gov/RegPrecise/regulog.jsp?regulog_id=site2
		      
		      dim sites2memePath as string
		      #if targetWin32
		        sites2memePath=nthfield(MEMEpath,"/meme.exe",1)+"/sites2meme"
		      #else
		        MEMEpath=trim(MEMEpath)
		        if right(MEMEpath,1)="'" then
		          sites2memePath=left(MEMEpath,len(MEMEpath)-5)+"sites2meme'"
		        else
		          sites2memePath=left(MEMEpath,len(MEMEpath)-4)+"sites2meme" 
		        end if
		      #endif
		      
		      dim cli as string
		      cli=sites2memePath+" "+"-map "+sitesMap.ShellPath
		      cli=cli+" "+"-url https://regprecise.lbl.gov/RegPrecise/regulog.jsp?regulog_id=MOTIF_NAME"
		      cli=cli+" "+TFfamily_tmp.ShellPath
		      
		      
		      dim sh As Shell
		      sh=New Shell
		      sh.mode=0
		      sh.TimeOut=-1
		      sh.execute cli
		      
		      
		      If sh.errorCode=0 then
		        // modify the meme output removing motif ID from the header but adding family name instead 
		        ' (motif ID remains in the URL anyway)
		        ' so, 
		        ' MOTIF site1 TfbS
		        ' should become
		        ' MOTIF TfbS LacI-family
		        
		        dim memeArr() as string
		        memeArr=split(sh.Result,EndOfLine)
		        
		        
		        for n=0 to UBound(memeArr)
		          if left(memeArr(n),6)="MOTIF " then
		            dim a4,aftr as string
		            a4=memeArr(n)
		            memeArr(n)="MOTIF "+NthField(memeArr(n)," ",3)+" "+FamilyName+"-family"
		            aftr=memeArr(n)
		            beep
		          end if
		        next
		        
		        'write the file
		        for n=0 to UBound(memeArr)
		          s.WriteLine memeArr(n)
		        next
		        s.close
		        LogoWin.WriteToSTDOUT (" Done!")
		        
		      else
		        msgbox sh.result
		        Msgbox "Command line was: <"+cli+">"
		      end if
		    end if
		  end if
		  
		  Exception err
		    ExceptionHandler(err,"RegPreciseTFcollectionsWin:ExportButton")
		    
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BevelButton3
	#tag Event
		Sub Action()
		  SelectTFBSWindow.parentwin=self
		  SelectTFBSWindow.show
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events DeselectAllButton
	#tag Event
		Sub Action()
		  dim k as integer
		  
		  for k=0 to CollectionList.ListCount-1
		    CollectionList.CellCheck(k,0) = false
		  next
		  
		  EnableButtons
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SelectAllButton
	#tag Event
		Sub Action()
		  dim k as integer
		  
		  for k=0 to CollectionList.ListCount-1
		    CollectionList.CellCheck(k,0) = true
		  next
		  
		  EnableButtons
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ExportSigButton
	#tag Event
		Sub Action()
		  'Single profile only for now!
		  
		  dim outfile as folderitem
		  dim FFile, HMMfile as folderitem
		  dim HMMfilePath as string
		  dim hmmSearchRes as string
		  dim tos as TextOutputStream
		  dim FamilyName as string
		  dim hts as HTTPSocket
		  dim res as string
		  dim jsn as new JSONItem
		  dim jsn0 as new JSONItem
		  dim ProteinFasta, vimssId as string
		  dim uTags(0), uRegulons(0) As string
		  
		  
		  // HMM file matching the collection is needed.
		  '  for now, choosing one is up to the user
		  
		  Dim dlg2 as New OpenDialog
		  dlg2.InitialDirectory=Resources_f.child("TF_HMMs")          'only these are meaningful
		  dlg2.promptText="Select hmm file with the model matching this TF family"
		  'dlg2.SuggestedFileName=nthfield(GenomeFile.Name,".",1)+"_"+nthfield(Logofile.Name,".",1)+".gb"
		  dlg2.Title="Open HMM"
		  dlg2.Filter=FileTypes.All
		  dlg2.CancelButtonCaption=kCancel
		  dlg2.ActionButtonCaption=kOpen_
		  HMMfile=dlg2.ShowModal()
		  if HMMfile<>nil then
		    if HMMfile.exists then
		      HMMfilePath=HMMfile.ShellPath
		    end if
		  end if
		  
		  
		  //ask for output file
		  
		  Dim dlg as New SaveAsDialog
		  FamilyName=NthField(GenomesPopup.Text," ",1)
		  'dlg.InitialDirectory=genomefile.Parent
		  dlg.promptText=kTFfamilyExportDesc
		  'dlg.SuggestedFileName=nthfield(GenomeFile.Name,".",1)+".meme"
		  dlg.SuggestedFileName=FamilyName+"_RegPrecise.fa"
		  dlg.Title=kExportProfiles
		  dlg.Filter=FileTypes.meme
		  dlg.CancelButtonCaption=kCancel
		  dlg.ActionButtonCaption=kSave
		  outfile=dlg.ShowModalwithin(self)
		  if outfile<>nil then
		    LogoWin.WriteToSTDOUT (EndofLine+kExportingProfiles)
		    LogoWin.STDOUT.Refresh(false)
		    Logowin.show
		    
		    Dim s as TextOutputStream=TextOutputStream.Create(outfile)
		    if s<> NIL then
		      
		      
		      // make tmp folder
		      dim TFfamily_tmp as FolderItem = TemporaryFolder.child("TFfamily_tmp")
		      if TFfamily_tmp <> nil then
		        
		        
		        'the folder may be there from the previous run, we have delete it!
		        if TFfamily_tmp.Exists then
		          dim i as integer
		          i=deleteEntireFolder(TFfamily_tmp) 'return code isn't handled yet
		        end if
		        TFfamily_tmp.CreateAsFolder
		      else 
		        msgbox "Can't create tmp folder"
		        return
		      end if
		      
		      // write 'sites' files to tmp folder
		      ' (simple text files named a la regulogID.txt
		      ' regulogID will be used as motif ID and will be added to RegPrecise URL when converting 
		      
		      ' for palindromic sites, rev. complements should probably be added here
		      ' as RegPrecise ignores site symmetry (currently, sites are written as they are) 
		      
		      dim m,n as integer
		      dim fastaLines(-1) as string
		      dim sitesFile as folderitem
		       
		      dim RegulogID,RegulonID as string
		      dim RegulonIDs(0), TFs(0), CRtags(0) as string
		      DIM RegulonsJSON, Regulon, regs As JSONItem
		      
		      
		      for n=0 to CollectionList.ListCount-1
		        if CollectionList.CellCheck(n,0) then
		          
		          //check if orthologous TFs actually have the same CRtag:
		          
		          'get all regulons belonging to the regulog:
		          hts = new HTTPSocket
		          
		          hts.Yield=true
		          
		          RegulogID=CollectionList.Cell(n,6)
		          res=hts.Get("http://regprecise.lbl.gov/Services/rest/regulons?regulogId="+RegulogID,0)
		          
		          RegulonsJSON=new JSONItem(res) 'Convert RegPrecise string to JSON
		          regs=RegulonsJSON.value("regulon")
		          if regs.IsArray then
		            for n=0 to regs.Count-1
		              if regs(n) isa JSONItem then
		                RegulonIDs.append JSONItem(regs(n)).Value("regulonId")
		              end if
		            next
		          end if
		          
		          
		          
		          'get the seqs of TFs controlling each regulon:
		          redim TFs(UBound(RegulonIDs))
		          for n=1 to UBound(RegulonIDs)
		            
		            
		            hts = new HTTPSocket
		            
		            hts.Yield=true
		            
		            res=hts.Get("https://regprecise.lbl.gov/Services/rest/regulators?regulonId="+RegulonIDs(n),0)
		            if hts.HTTPStatusCode>=200 AND hts.HTTPStatusCode<300 then 'successful
		              if res<>"" then
		                JSN0.load(res)
		                'should contain smth like:
		                '{"regulator":{"locusTag":"ECA3790","name":"PdhR","regulatorFamily":"GntR","regulonId":"10409","vimssId":"608214"}}
		                JSN=JSN0.value("regulator")
		                ProteinFasta=">"+JSN.Value("name")+" locus_tag="+JSN.Value("locusTag")+" regulonId="+JSN.Value("regulonId")+" vimssId="+JSN.Value("vimssId")
		                vimssId=JSN.Value("vimssId")
		                
		              end if
		              
		              logowin.WriteToSTDOUT("Getting protein sequence from MicrobesOnline... ")
		              
		              ' -h pub.microbesonline.org -u guest -pguest genomics -B -e "select * from AASeq where locusId=606816;"
		              
		              ' html alternative:
		              ' http://www.microbesonline.org/cgi-bin/fetchLocus.cgi?locus=606816&disp=4
		              
		              dim URL As string 
		              URL="http://www.microbesonline.org/cgi-bin/fetchLocus.cgi?locus="+vimssId+"&disp=4"
		              
		              
		              hts = new HTTPSocket
		              
		              hts.Yield=true  'allow background activities while waiting
		              hts.SetRequestHeader("Content-Type:","text/plain")
		              
		              res=hts.Get(URL,60)  'adjust timeout?
		              
		              if hts.HTTPStatusCode>=200 AND hts.HTTPStatusCode<300 then 'successful
		                if Res="" then
		                  if hts.ErrorCode=-1 then
		                    logowin.WriteToSTDOUT("Server timeout (No response in one minute"+EndOfLine.UNIX)
		                  else
		                    LogoWin.WriteToSTDOUT ("Server error (empty response)"+EndOfLine)
		                  end if
		                  
		                  ProteinFasta=""
		                else
		                  'parse the server response
		                  dim pseq as string
		                  pseq=NthField(res,">Protein<",2)
		                  pseq=NthField(pseq,")",2)
		                  pseq=NthField(pseq,"</pre>",1)
		                  pseq=trim(replaceall(pseq,"�",""))           'cleanup just in case
		                  ProteinFasta=ProteinFasta+EndOfLine.UNIX+pseq
		                  'tfastx(ProteinFasta)
		                  
		                  
		                  
		                end if
		              else
		                
		                dim httpErr as String = HTTPerror(hts.HTTPStatusCode, false)
		                LogoWin.WriteToSTDOUT (httpErr)
		                
		                ProteinFasta=""
		              end if
		              
		              
		              
		              
		              
		            end if
		            TFs(n)=ProteinFasta
		          next
		          
		          'Extract CRtags from each TF
		          redim CRtags(UBound(RegulonIDs))
		          for n=1 to UBound(RegulonIDs)
		            'make the file for hmmsearch
		            
		            FFile=TemporaryFolder.Child("CDS.fasta")
		            if FFile<>nil then
		              tos=TextOutputStream.Create(FFile)
		              if tos <>nil then
		                tos.Write TFs(n)
		                
		              end if
		              tos.close 
		            end if
		            
		            
		            
		            
		            'need to set CRtagPositions b4 calling HMMsearchWithCRtags!!!
		            
		            
		            hmmSearchRes=HMMsearchWithCRtags(FFile,HMMfilePath)
		            CRtags(n)=NthField(hmmSearchRes,">",2)              'CR tag is between angle brackets
		            
		          next
		          
		          'check for different CRtags 
		          uTags.append CRtags(1)
		          uRegulons.append TFs(1)        '<--- need an array of TF IDs rather than TF seqs here!!!
		          for n=2 to UBound(CRtags)
		            dim NewTag as boolean=true
		            for m=1 to UBound(uTags)
		              if uTags(m)=CRtags(n) then
		                uRegulons(m)=uRegulons(m)+";"+regulonIDs(m)
		                NewTag=false
		                exit
		              end if
		            next
		            if NewTag then
		              uTags.Append CRtags(n)
		              uRegulons.append RegulonIDs(n)
		            end if
		          next
		          
		        end if
		      next
		      
		      
		      'write sig files to the previously selected folder
		      
		      
		      
		      
		      
		      
		      
		      
		      
		      
		      // add sites.map file to the same folder pairing motif ID with its name
		      ' (one space separated pair per line)
		      dim sitesMap as folderitem
		      // CollectionList columns are:
		      ' 0 - Checkbox
		      ' 1 - Regulog Name
		      ' 2 - Number of regulons in the regulog
		      ' 3 - Number of TFBSs in the regulog
		      ' 4 - Information (bits)
		      ' 5 - Logo picture
		      ' 6 (invisible) – RegulogID
		      ' 7 (invisible) - TFBS seqs (in fasta format)
		      ' 8 (invisible) - TFBS length.
		      
		      'sitesMap=TFfamily_tmp.Child("sites.map")
		      'if sitesMap<>nil then
		      'tos=TextOutputStream.Create(sitesMap)
		      'if tos<>nil then
		      'for n=0 to CollectionList.ListCount-1
		      'if CollectionList.CellCheck(n,0) then
		      'tos.writeline CollectionList.Cell(n,6)+" "+Replace(CollectionList.Cell(n,1)," – ","_")
		      'end if
		      'next
		      'tos.close
		      'else
		      'msgbox "can't write to sites.map file"
		      'end if
		      '
		      'else
		      'msgbox "Can't create the sites.map file"
		      'end if
		      
		      // convert all tmp files to a single minimal meme file
		      ' sites2meme command should look like 
		      ' sites2meme -map /Users/Home/Desktop/sites2meme_test/sites.map -url https://regprecise.lbl.gov/RegPrecise/regulog.jsp?regulog_id=MOTIF_NAME /Users/Home/Desktop/sites2meme_test
		      
		      ' sample output is like this:
		      'MEME version 4
		      '
		      'ALPHABET= ACGT
		      '
		      'strands: + -
		      '
		      'Background letter frequencies (from uniform background):
		      'A 0.25000 C 0.25000 G 0.25000 T 0.25000 
		      '
		      'MOTIF site1 TfbS
		      '
		      'letter-probability matrix: alength= 4 w= 7 nsites= 14 E= 0
		      '0.714286      0.214286      0.071429      0.000000    
		      '0.714286      0.000000      0.285714      0.000000    
		      '0.000000      0.000000      1.000000      0.000000    
		      '0.000000      0.000000      1.000000      0.000000    
		      '0.000000      0.000000      0.000000      1.000000    
		      '0.000000      1.000000      0.000000      0.000000    
		      '0.928571      0.000000      0.071429      0.000000    
		      '
		      'URL https://regprecise.lbl.gov/RegPrecise/regulog.jsp?regulog_id=site1
		      '
		      'MOTIF site2 RegR
		      '
		      'letter-probability matrix: alength= 4 w= 7 nsites= 14 E= 0
		      '0.500000      0.428571      0.071429      0.000000    
		      '0.714286      0.000000      0.285714      0.000000    
		      '0.000000      0.000000      1.000000      0.000000    
		      '0.000000      0.000000      1.000000      0.000000    
		      '0.000000      0.000000      0.000000      1.000000    
		      '0.000000      1.000000      0.000000      0.000000    
		      '0.785714      0.000000      0.214286      0.000000    
		      '
		      'URL https://regprecise.lbl.gov/RegPrecise/regulog.jsp?regulog_id=site2
		      
		      'dim sites2memePath as string
		      '#if targetWin32
		      'sites2memePath=nthfield(MEMEpath,"/meme.exe",1)+"/sites2meme"
		      '#else
		      'MEMEpath=trim(MEMEpath)
		      'if right(MEMEpath,1)="'" then
		      'sites2memePath=left(MEMEpath,len(MEMEpath)-5)+"sites2meme'"
		      'else
		      'sites2memePath=left(MEMEpath,len(MEMEpath)-4)+"sites2meme" 
		      'end if
		      '#endif
		      '
		      'dim cli as string
		      'cli=sites2memePath+" "+"-map "+sitesMap.ShellPath
		      'cli=cli+" "+"-url https://regprecise.lbl.gov/RegPrecise/regulog.jsp?regulog_id=MOTIF_NAME"
		      'cli=cli+" "+TFfamily_tmp.ShellPath
		      '
		      '
		      'dim sh As Shell
		      'sh=New Shell
		      'sh.mode=0
		      'sh.TimeOut=-1
		      'sh.execute cli
		      '
		      '
		      'If sh.errorCode=0 then
		      '// modify the meme output removing motif ID from the header but adding family name instead 
		      '' (motif ID remains in the URL anyway)
		      '' so, 
		      '' MOTIF site1 TfbS
		      '' should become
		      '' MOTIF TfbS LacI-family
		      '
		      'dim memeArr() as string
		      'memeArr=split(sh.Result,EndOfLine)
		      '
		      '
		      'for n=0 to UBound(memeArr)
		      'if left(memeArr(n),6)="MOTIF " then
		      'dim a4,aftr as string
		      'a4=memeArr(n)
		      'memeArr(n)="MOTIF "+NthField(memeArr(n)," ",3)+" "+FamilyName+"-family"
		      'aftr=memeArr(n)
		      'beep
		      'end if
		      'next
		      '
		      ''write the file
		      'for n=0 to UBound(memeArr)
		      's.WriteLine memeArr(n)
		      'next
		      's.close
		      'LogoWin.WriteToSTDOUT (" Done!")
		      '
		      'else
		      'msgbox sh.result
		      'Msgbox "Command line was: <"+cli+">"
		      'end if
		    end if
		  end if
		  
		  Exception err
		    ExceptionHandler(err,"RegPreciseTFcollectionsWin:ExportButton")
		    
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
		Name="InfoBits"
		Group="Behavior"
		Type="double"
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
		Name="RegPreciseVersion"
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
		Name="siteLength"
		Group="Behavior"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="SocketTask"
		Group="Behavior"
		Type="String"
		EditorType="MultiLineEditor"
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
