#tag Window
Begin Window RegPreciseTFcollectionsWin
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   600
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
   Title           =   "#kRegPreciseTFCollections"
   Visible         =   False
   Width           =   1000
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
      TabStop         =   True
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   20
      Transparent     =   False
      Underline       =   False
      Value           =   "#kTFfamily"
      Visible         =   True
      Width           =   93
   End
   Begin PopupMenu GenomesPopup
      AllowAutoDeactivate=   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   False
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   "#kSelectTFfam"
      Italic          =   False
      Left            =   113
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      SelectedRowIndex=   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   20
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   840
   End
   Begin Listbox CollectionList
      AllowAutoDeactivate=   True
      AllowAutoHideScrollbars=   True
      AllowExpandableRows=   False
      AllowFocusRing  =   True
      AllowResizableColumns=   True
      AllowRowDragging=   False
      AllowRowReordering=   False
      Bold            =   False
      ColumnCount     =   9
      ColumnWidths    =   ""
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   -1
      DropIndicatorVisible=   False
      Enabled         =   False
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
      Height          =   474
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
      RowSelectionType=   "1"
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   52
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   1000
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
      LocalAddress    =   ""
      LockedInPosition=   False
      Port            =   0
      RemoteAddress   =   ""
      Scope           =   0
      TabPanelIndex   =   0
      yield           =   False
   End
   Begin ProgressWheel ProgressWheel1
      AllowAutoDeactivate=   True
      Enabled         =   False
      Height          =   16
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   965
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   20
      Transparent     =   False
      Visible         =   True
      Width           =   16
   End
   Begin PushButton RegulogLogoButton
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "#kOpen_"
      Default         =   True
      Enabled         =   False
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   896
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
      Top             =   560
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   84
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
      Top             =   560
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   22
   End
   Begin PushButton ExportButton
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "#kExportSelected"
      Default         =   False
      Enabled         =   False
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   684
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
      Top             =   560
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   200
   End
   Begin BevelButton BevelButton3
      AllowAutoDeactivate=   True
      AllowFocus      =   True
      BackgroundColor =   &c00000000
      BevelStyle      =   "4"
      Bold            =   False
      ButtonStyle     =   "0"
      Caption         =   "#kSelectByQuality"
      CaptionAlignment=   "3"
      CaptionDelta    =   0
      CaptionPosition =   "1"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      HasBackgroundColor=   False
      Height          =   22
      Icon            =   0
      IconAlignment   =   "0"
      IconDeltaX      =   0
      IconDeltaY      =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   278
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      MenuStyle       =   "0"
      Scope           =   0
      TabIndex        =   12
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   526
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   722
   End
   Begin BevelButton DeselectAllButton
      AllowAutoDeactivate=   True
      AllowFocus      =   True
      BackgroundColor =   &c00000000
      BevelStyle      =   "4"
      Bold            =   False
      ButtonStyle     =   "0"
      Caption         =   "#kDeselectAll"
      CaptionAlignment=   "3"
      CaptionDelta    =   0
      CaptionPosition =   "1"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      HasBackgroundColor=   False
      Height          =   22
      Icon            =   0
      IconAlignment   =   "0"
      IconDeltaX      =   0
      IconDeltaY      =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   138
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      MenuStyle       =   "0"
      Scope           =   0
      TabIndex        =   13
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   526
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   140
   End
   Begin BevelButton SelectAllButton
      AllowAutoDeactivate=   True
      AllowFocus      =   True
      BackgroundColor =   &c00000000
      BevelStyle      =   "4"
      Bold            =   False
      ButtonStyle     =   "0"
      Caption         =   "#kSelectAll"
      CaptionAlignment=   "3"
      CaptionDelta    =   0
      CaptionPosition =   "1"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      HasBackgroundColor=   False
      Height          =   22
      Icon            =   0
      IconAlignment   =   "0"
      IconDeltaX      =   0
      IconDeltaY      =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      MenuStyle       =   "0"
      Scope           =   0
      TabIndex        =   14
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   526
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   140
   End
   Begin Label ProgressLabel
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
      TabStop         =   True
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   560
      Transparent     =   True
      Underline       =   False
      Value           =   ""
      Visible         =   True
      Width           =   588
   End
   Begin PushButton ExportSigButton
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "#kExportSelected2sig"
      Default         =   False
      Enabled         =   False
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   418
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MacButtonStyle  =   "0"
      Scope           =   0
      TabIndex        =   16
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   560
      Transparent     =   False
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
		          Dim s1, s2, s3, s4, s6, s7 As String
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
		                fa=FillGaps(fa,True)
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
		          
		          Dim p as picture = MakeLogoPic(fa, 45)
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
		            fa=FillGaps(fa,true)
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
		      
		      Dim p as picture = MakeLogoPic(fa, 45)
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
		  Dim gnms As String
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
		  Dim hpos,colWidth, offset As Double
		  Dim ws As String
		  Dim p As picture
		  
		  // calculate logo column width 
		  ' column widths are currently set as
		  ' 20, 300, 80, 60, 80, *, 0, 0, 0
		  
		  ws=Me.ColumnWidths
		  colWidth=Me.width-Val(NthField(ws,",",1))-Val(NthField(ws,",",2))-Val(NthField(ws,",",3))-Val(NthField(ws,",",4))-Val(NthField(ws,",",5))
		  
		  
		  If Column=5 Then
		    If row<=Me.lastindex Then
		      p=Me.rowtag(row)
		      offset=(colWidth-p.Width)/2 
		      g.DrawPicture(p, offset, 0)  'pic is centered for proper alignment
		    End If
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
		      ''beep
		    End Select
		  else
		    'MsgBox "Can't connect to RegPrecise (HTTP status code "+Str(httpStatus)+")"
		    LogoWin.WriteToSTDOUT(EndOfLine.UNIX+"Can't connect to RegPrecise (HTTP status code "+Str(httpStatus)+")"+EndOfLine.UNIX)
		    Dim dmy As String=HTTPerror(HTTPstatus, True)
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
		      ' sites2meme -map /Users/Home/Desktop/sites2meme_test/sites.map -url http://regprecise.sbpdiscovery.org:8080/WebRegPrecise/regulog.jsp?regulog_id=MOTIF_NAME /Users/Home/Desktop/sites2meme_test
		      
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
		      'URL http://regprecise.sbpdiscovery.org:8080/WebRegPrecise/regulog.jsp?regulog_id=site1
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
		      'URL http://regprecise.sbpdiscovery.org:8080/WebRegPrecise/regulog.jsp?regulog_id=site2
		      
		      dim sites2memePath as string
		      MEMEpath=trim(MEMEpath)
		      if right(MEMEpath,1)="'" then
		        sites2memePath=left(MEMEpath,len(MEMEpath)-5)+"sites2meme'"
		      else
		        sites2memePath=left(MEMEpath,len(MEMEpath)-4)+"sites2meme" 
		      end if
		      
		      dim cli as string
		      cli=sites2memePath+" "+"-map "+PlaceQuotesToPath(MakeWSLPath(sitesMap.ShellPath))
		      cli=cli+" "+"-url http://regprecise.sbpdiscovery.org:8080/WebRegPrecise/regulog.jsp?regulog_id=MOTIF_NAME"
		      cli=cli+" "+PlaceQuotesToPath(MakeWSLPath(TFfamily_tmp.ShellPath))
		      
		      
		      #If TargetWindows
		        ExecuteWSL(cli)
		      #Else 
		        userShell(cli)
		      #EndIf
		      
		      
		      If shError=0 Then
		        // modify the meme output removing motif ID from the header but adding family name instead 
		        ' (motif ID remains in the URL anyway)
		        ' so, 
		        ' MOTIF site1 TfbS
		        ' should become
		        ' MOTIF TfbS LacI-family
		        
		        dim memeArr() as string
		        memeArr=split(shResult,EndOfLine)
		        
		        
		        for n=0 to UBound(memeArr)
		          if left(memeArr(n),6)="MOTIF " then
		            dim a4,aftr as string
		            a4=memeArr(n)
		            memeArr(n)="MOTIF "+NthField(memeArr(n)," ",3)+" "+FamilyName+"-family"
		            aftr=memeArr(n)
		            'beep
		          end if
		        next
		        
		        'write the file
		        for n=0 to UBound(memeArr)
		          s.WriteLine memeArr(n)
		        next
		        s.close
		        LogoWin.WriteToSTDOUT (" Done!")
		        
		      else
		        msgbox shResult
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
		  dim ExportFolder as folderitem
		  dim HMMfilePath as string
		  dim hmmSearchRes as string
		  dim tos as TextOutputStream
		  dim outStream as TextOutputStream
		  dim FamilyName as string
		  dim hts as HTTPSocket
		  dim res as string
		  dim jsn as new JSONItem
		  dim jsn0 as new JSONItem
		  dim ProteinFasta, vimssId as string
		  dim uTags(0), uRegulons(0) As string    'Unique CRtags and matching Regulon ID lists
		  dim PalindromicSite as boolean
		  dim aline,CRTAG as string
		  dim CRtagStatArray(0) as string
		  dim regulogStats, integralCRtagStats As string
		  dim IdenticalCRRegulogCount, nonIdenticalCRRegulogCount, noCRtagRegulogCount as integer
		  dim CRtagVariants as string
		  dim TFCount, noCRtagTFCount as integer
		  dim CRtagVariantCount(0) As integer
		  
		  
		  // HMM file matching the collection is needed.
		  '  for now, the file names are hard linked to family names
		  
		  familyName=NthField(GenomesPopup.Text," ",1)
		  HMMfile=GetHmmFromFamilyName(familyName)
		  HMMfilePath=HMMfile.ShellPath
		  
		  //ask for output folder
		  Dim dlg As New SelectFolderDialog
		  dlg.ActionButtonCaption = "Select"
		  dlg.Title = "Select Output Folder"
		  
		  'dlg.InitialDirectory = Profile_f     '??
		  
		  'dlg.InitialDirectory=genomefile.Parent
		  dlg.promptText="Where to save .sig files?" 'kTFfamilyExportDesc
		  'dlg.SuggestedFileName=FamilyName
		  'dlg.Title=kExportProfiles
		  dlg.CancelButtonCaption=kCancel
		  ExportFolder=dlg.ShowModalwithin(self)
		  if ExportFolder=nil then
		    msgbox "No folder to save profiles to. Stopping."
		    return
		  end if
		  LogoWin.WriteToSTDOUT (EndOfLine.UNIX+kExportingSigs+EndOfLine.UNIX)
		  LogoWin.stdout.Refresh(False)
		  Logowin.show
		  
		  
		  // make tmp folder
		  dim TFfamily_tmp as FolderItem = TemporaryFolder.child("TFfamily_tmp")
		  if TFfamily_tmp <> nil then
		    
		    
		    'the folder may be there from the previous run, we have to delete it!
		    if TFfamily_tmp.Exists then
		      dim i as integer
		      i=deleteEntireFolder(TFfamily_tmp) 'return code isn't handled yet
		    end if
		    TFfamily_tmp.CreateAsFolder
		  else 
		    msgbox "Can't create tmp folder"
		    return
		  end if
		  
		  
		  'set CRtagPositions b4 calling HMMsearchWithCRtags:
		  dim tis as textinputstream
		  tis=HMMfile.OpenAsTextFile
		  
		  if tis<>nil then
		    
		    while CRTAG=""
		      aLine=tis.ReadLine     'hmmfile
		      if left(aline,6)="CRTAG " then
		        CRtag=trim(NthField(aLine,"CRTAG ",2))
		        exit
		      end if
		    wend
		    CRtagPositions=CRtag
		  else
		    return
		  end if
		  tis.close
		  
		  redim CRtagVariantCount(CountFields(CRtag,",")-1) 
		  
		  
		  dim m,n,p,q,r,s as integer  ' For..Next counters
		  dim fastaLines(-1) as string
		  dim sitesFile as folderitem
		  
		  dim RegulogID, RegulonID, TFname as string
		  dim RegulonIDs(0), TFs(0), CRtags(0) as string
		  DIM RegulonsJSON, Regulon, regs As JSONItem
		  
		  'initiate TF stats (tab separated, one TF per line) string to print after saving according to this header:
		  dim stats as string = "RegulogName    CRtag#    CRtagLength    VariablePositions#    CRtags(numberOfSites)    genomes#    genomesWithoutCRtag#"+EndOfLine.UNIX
		  
		  for n=0 to CollectionList.ListCount-1 'cycle through checked regulogs only
		    TFname=""
		    if CollectionList.CellCheck(n,0) then
		      
		      //check if orthologous TFs actually have the same CRtag:
		      
		      'get all regulons belonging to the regulog:
		      hts = new HTTPSocket
		      
		      hts.Yield=true
		      
		      TFname=CollectionList.Cell(n,1)
		      TFname=replace(TFname," – ","_")
		      TFname=replace(TFname,"/","_")   'avoid path problems
		      
		      
		      RegulogID=CollectionList.Cell(n,6)
		      res=hts.Get("http://regprecise.lbl.gov/Services/rest/regulons?regulogId="+RegulogID,0)
		      
		      RegulonsJSON=new JSONItem(res) 'Convert RegPrecise string to JSON
		      regs=RegulonsJSON.value("regulon")
		      Redim RegulonIDs(0)
		      redim CRtagStatArray(0)
		      if regs.IsArray then
		        for m=0 to regs.Count-1
		          if regs(m) isa JSONItem then
		            RegulonIDs.append JSONItem(regs(m)).Value("regulonId")
		            'if TFname="" then
		            'TFname=JSONItem(regs(m)).Value("regulatorName")
		            'end
		          end if
		        next
		      else
		        RegulonIDs.append regs.Value("regulonId")
		      end if
		      
		      
		      
		      // get the seqs of TFs controlling each regulon:
		      
		      redim TFs(UBound(RegulonIDs))
		      logowin.WriteToSTDOUT(EndOfLine.UNIX+"MicrobesOnline: getting protein sequence with ID ")
		      for m=1 to UBound(RegulonIDs)
		        
		        'RegPrecise is linked to protein seqs via microbesOnline, so we have to get vimssId first
		        hts = new HTTPSocket
		        hts.Yield=true
		        res=hts.Get("https://regprecise.lbl.gov/Services/rest/regulators?regulonId="+RegulonIDs(m),0)
		        if hts.HTTPStatusCode>=200 AND hts.HTTPStatusCode<300 then 'successful
		          if res="null" then
		            'API error, quite frequent. really no way to get this protein from RegPrecise/MicrobesOnline
		            LogoWin.WriteToSTDOUT(EndOfLine.UNIX+"Incorrect response from RegPrecise. Can't get the sequence of the TF controlling the regulon with ID "+RegulonIDs(m)+". The sig file will have no CR tag and should be corrected manually."+EndOfLine.UNIX)
		            ProteinFasta=""
		          else
		            if res<>"" then
		              Try
		                JSN0.load(res)
		                'should contain smth like:
		                '{"regulator":{"locusTag":"ECA3790","name":"PdhR","regulatorFamily":"GntR","regulonId":"10409","vimssId":"608214"}}
		                JSN=JSN0.value("regulator")
		                
		                
		                'Have to add a check for array here, these errors happen in RegPrecise too often!
		                'use the first item from the array and drop the second one?
		                'example of problematic JSON:
		                '{"regulator":[{"locusTag":"GALLO_1056","name":"Rgg","regulatorFamily":"XRE","regulonId":"37986","vimssId":"10395756"},{"locusTag":"GALLO_1054","name":"Rgg","regulatorFamily":"XRE","regulonId":"37986","vimssId":"10395754"}]}
		                
		                if JSN.IsArray then
		                  ProteinFasta=">"+JSONItem(JSN(0)).Value("name")+" locus_tag="+JSONItem(JSN(0)).Value("locusTag")+" regulonId="+JSONItem(JSN(0)).Value("regulonId")+" vimssId="+JSONItem(JSN(0)).Value("vimssId")
		                  vimssId=JSONItem(JSN(0)).Value("vimssId")
		                else
		                  ProteinFasta=">"+JSN.Value("name")+" locus_tag="+JSN.Value("locusTag")+" regulonId="+JSN.Value("regulonId")+" vimssId="+JSN.Value("vimssId")
		                  vimssId=JSN.Value("vimssId")
		                end if
		              Catch err As KeyNotFoundException
		                
		                LogoWin.WriteToSTDOUT(EndOfLine.UNIX+"Can't get the TF controlling regulon with ID="+str(RegulonIDs(m))+". Skipping this regulon...")
		                exit for m
		                
		              End Try
		            end if
		            
		            
		            ' now get the actual protein seq
		            ' mysql -h pub.microbesonline.org -u guest -pguest genomics -B -e "select * from AASeq where locusId=606816;"
		            ' (mysql access seem to be broken lately)
		            
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
		                
		                logowin.WriteToSTDOUT(" "+vimssId)
		                
		              end if
		            else
		              
		              dim httpErr as String = HTTPerror(hts.HTTPStatusCode, false)
		              LogoWin.WriteToSTDOUT (httpErr)
		              
		              ProteinFasta=""
		            end if
		            
		            
		            
		            
		            
		          end if
		        end if
		        TFs(m)=ProteinFasta
		      next
		      logowin.WriteToSTDOUT("."+EndOfLine)
		      
		      
		      
		      
		      
		      'Extract CRtags from each TF
		      redim CRtags(UBound(RegulonIDs))
		      LogoWin.WriteToSTDOUT (EndofLine.unix+"Running hmmsearch...")
		      for m=1 to UBound(RegulonIDs)
		        if TFs(m)<>"" then
		          'make the file for hmmsearch
		          
		          FFile=TemporaryFolder.Child("CDS.fasta")
		          if FFile<>nil then
		            tos=TextOutputStream.Create(FFile)
		            if tos <>nil then
		              tos.Write TFs(m)
		              
		            end if
		            tos.close 
		          end if
		          
		          ''set CRtagPositions b4 calling HMMsearchWithCRtags:
		          'dim tis as textinputstream
		          'tis=HMMfile.OpenAsTextFile
		          '
		          'if tis<>nil then
		          '
		          'while CRTAG=""
		          'aLine=tis.ReadLine     'hmmfile
		          'if left(aline,6)="CRTAG " then
		          'CRtag=NthField(aLine,"CRTAG ",2)
		          'exit
		          'end if
		          'wend
		          'CRtagPositions=CRtag
		          'else
		          'return
		          'end if
		          'tis.close
		          
		          
		          hmmSearchRes=HMMsearchWithCRtags(FFile,HMMfilePath)
		          CRtags(m)=NthField(hmmSearchRes,">",2)              'CR tag is between angle brackets
		          
		          if CRtags(m)="" then
		            'smth wrong with the TF, try to print useful info
		            'TF title line looks like this:
		            '>Rgg locus_tag=SGO_0496 regulonId=37987 vimssId=3788810
		            dim TFdata as string
		            TFdata=nthfield(TFs(m),"locus_tag=",2)
		            TFdata=nthfield(TFdata," vimssId=",1)
		            TFdata="locus_tag="+TFdata
		            
		            LogoWin.WriteToSTDOUT(EndOfLine+"hmmsearch failed, most likely the TF ("+TFdata+") is from another family.") 
		            
		            CRtags(m)="errorGettingCRtag"
		          end if
		        else
		          CRtags(m)="no_CRtag"   
		        end if
		        
		      next m
		      LogoWin.WriteToSTDOUT (" OK"+EndOfLine.unix)
		      
		      'check for different CRtags 
		      redim uTags(0)
		      redim uRegulons(0)
		      uTags.append CRtags(1)         
		      uRegulons.append regulonIDs(1)        
		      for q=2 to UBound(CRtags)
		        dim NewTag as boolean=true
		        
		        for p=1 to UBound(uTags)
		          if uTags(p)=CRtags(q) then
		            uRegulons(p)=uRegulons(p)+";"+regulonIDs(q)
		            NewTag=false
		            exit
		          end if
		        next p
		        
		        if NewTag then
		          uTags.Append CRtags(q)
		          uRegulons.append RegulonIDs(q)
		        end if
		      next q
		      
		      
		      
		      
		      
		      '     <---!
		      
		      '  As it is now, a single regulog is processed.
		      '  Extend the For cycle to process all checked regulogs
		      ' (and change cycle counters below: m,n to p,q)
		      
		      // write sig files to the previously selected folder
		      
		      ' Get TFBS seqs for each Regulon 
		      dim Ub as Integer = Ubound(uRegulons)
		      Dim TFBSs(0), INFO(0) As string
		      ReDim TFBSs(Ub)
		      reDim INFO(Ub)
		      Dim ID as string
		      
		      Logowin.WriteToSTDOUT("Getting data for regulon with ID")
		      for r=1 to Ub
		        
		        for s=1 to CountFields(uRegulons(r),";")
		          ID=NthField(uRegulons(r),";",s)
		          
		          'Get TFBS seqs:
		          res=""
		          jsn = new JSONItem
		          hts = new HTTPSocket
		          hts.Yield=true
		          
		          res=hts.Get("https://regprecise.lbl.gov/Services/rest/sites?regulonId="+ID,0)
		          
		          if hts.HTTPStatusCode>=200 AND hts.HTTPStatusCode<300 then 'successful
		            if res<>"" then
		              JSN.load(res)
		              Logowin.WriteToSTDOUT(" "+ID)
		              dim fa as string
		              fa=JSON2Fasta(JSN)
		              if fa<>"" then
		                fa=FillGaps(fa,true)
		                TFBSs(r)=TFBSs(r)+fa
		                
		              end if
		              
		            else
		              Logowin.WriteToSTDOUT("no response in 15 sec.")
		            end if
		          else
		            dim httpErr as String = HTTPerror(hts.HTTPStatusCode, true)
		            LogoWin.WriteToSTDOUT (httpErr)
		          end if
		          
		          
		          
		          
		        next s
		        
		        
		      next r
		      Logowin.WriteToSTDOUT("."+EndOfLine)
		      
		      
		      
		      
		      //Need to remove duplicate names/seqs that RegPrecise has a lot of!!!
		      
		      
		      
		      
		      
		      //=============================================================================================
		      ' write .sig files for every CRtag
		      //=============================================================================================
		      
		      Dim SigFile As FolderItem
		      Dim f, CDSFile as folderitem
		      'Dim hmmSearchRes, CRtag, hmmFile2find, hmmPath, ProtName as string
		      Dim SigFileVV As VirtualVolume
		      
		      LogoWin.show
		      
		      dim ICarr(0) as string
		      for r=1 to UBound(uTags)
		        'Generate profile name 
		        Dim ProfileBaseName as string
		        'TFname=NthField(TFs(r)," ",1)
		        'TFname=NthField(TFname,">",2)
		        ProfileBaseName=uTags(r)+"_"+TFname  
		        
		        SigFile=ExportFolder.child(ProfileBaseName+".sig")  'CRtag_TFname.sig  <---not sure which ProfileName!
		        If SigFile <> Nil then
		          if SigFile.exists then
		            'a virtualVolume problem
		            #if TargetLinux
		              'SpecialFolder.Trash returns NIL in Linux, hence we can't do this properly here
		              msgbox "Can't overwrite the existing .sig file. Please remove it or save the new file with a different name"
		              return
		            #else
		              dim fn as string = sigfile.ShellPath
		              SigFile.MoveFileTo(SpecialFolder.Trash) 'can't just delete because of the VirtualVolume inside
		              SigFile=GetFolderItem(fn,FolderItem.PathTypeShell)
		            #endif
		          end if
		          
		          'remove diplicates if present (these do happen in RegPrecise)
		          dim fSplit(0) As string
		          dim aSeq as string
		          dim w,y as integer
		          if CountFields(TFBSs(r),">")>2 then
		            fSplit=TFBSs(r).split(">")
		            for w=UBound(fSplit) downto 1
		              aSeq=fSplit(w)
		              for y=1 to w-1
		                if aSeq=fSplit(y) then
		                  fSplit.Remove(w)
		                  exit
		                end if
		              next
		            next
		            
		          End If
		          
		          'Calculate Info Content
		          dim IC As double
		          IC=Fasta2IC(TFBSs(r))
		          ICarr.append str(IC) 'append IC to the stats array
		          
		          'Guess the hmm cutoffs
		          dim cutoffs as string
		          cutoffs=Bits2thresholds(IC)
		          
		          'Check for variable motif length
		          if MotifLengthsDiffer(TFBSs(r)) then
		            LogoWin.WriteToSTDOUT("Motifs are unaligned, can't build the hmm."+EndOfLine.unix)
		            exit for r
		          End If
		          
		          'convert the alignment to Stockholm format (for building the hmm
		          dim stock as FolderItem = TemporaryFolder.child("stock")
		          if stock <> nil then
		            dim AlignmentFile,rcAlignmentFile as FolderItem
		            
		            AlignmentFile=TemporaryFolder.Child("alignment.fa")
		            
		            If AlignmentFile <> Nil then
		              'if AlignmentFile.exists then
		              'AlignmentFile.delete
		              'end if
		              
		              OutStream = TextOutputStream.Create(AlignmentFile)
		              if outStream<>Nil then
		                outstream.Write(TFBSs(r))                             '<<-----!
		                outstream.close
		              end if
		              
		            End If
		            
		            
		            ' check if the profile should be palindromic!!!!!              <---!
		            ' we guess from family name here, which is far from being safe
		            
		            
		            PalindromicSite=palindromicFamily(FamilyName,TFname)
		            if PalindromicSite then 'reverse complement every site
		              
		              if AlignmentFile<>Nil AND AlignmentFile.Exists then
		                'check if the alignment is already RC'd
		                dim firstLine,thirdLine as string
		                'dim tis as TextInputStream
		                tis=AlignmentFile.OpenAsTextFile
		                if tis<>nil then
		                  firstLine=tis.readLine
		                  thirdLine=tis.readLine
		                  thirdLine=tis.readLine
		                  tis.Close
		                End If
		                
		                if left(firstLine,3)=">f_" and left(thirdLine,3)=">r_" then
		                  'looks like the seqs are palindromised already
		                else
		                  rcAlignmentFile=TemporaryFolder.child("rcAliFile")
		                  RevCompAlignment(AlignmentFile,rcAlignmentFile,true)
		                  AlignmentFile.Delete
		                  AlignmentFile=rcAlignmentFile
		                  AlignmentFile.name=ProfileBaseName+".sig"
		                End If
		              end if
		              
		            end if
		            
		            
		            // Write everything to the .sig file:
		            
		            'Alignments:
		            if AlignmentFile<>Nil AND AlignmentFile.Exists then
		              
		              
		              SigFileVV = SigFile.CreateVirtualVolume
		              If SigFileVV <> nil Then
		                'first copy the existing files:
		                'AlignmentFile.CopyFileTo(SigFileVV.Root)    'still broken in Linux?
		                CopyFileToVV(AlignmentFile,SigFileVV)                          'alignment
		                'get the base of profile name
		                dim baseName as string
		                basename= NthField(SigFile.DisplayName,".sig",1)
		                
		                'alignment file can have any name, so checking it here:
		                dim file2copy as folderitem
		                if AlignmentFile.Name<>basename+".fasta" then
		                  dim wrongFile as folderitem=SigFileVV.Root.child(AlignmentFile.Name)
		                  if wrongFile<>nil and wrongFile.exists then
		                    wrongFile.name=basename+".fasta"
		                  else
		                    logowin.WriteToSTDOUT(EndOfLine+"Error writing .sig file")
		                    return
		                  End If
		                End If
		                
		                
		                'Options file:
		                
		                dim f2 as folderitem =SigFileVV.Root.child(basename+".options")
		                if f2<>nil then
		                  'dim outstream As TextOutputStream
		                  outstream = TextOutputStream.Create(f2)
		                  
		                  outstream.WriteLine("////")
		                  outstream.WriteLine("// TF family and critical residue tag settings")
		                  outstream.WriteLine("////")
		                  outstream.WriteLine(Endofline)
		                  
		                  outstream.WriteLine("// TF family HMM file name")
		                  outstream.WriteLine("TF_HMM "+Hmmfile.name)
		                  'outstream.WriteLine(Endofline)
		                  
		                  outstream.WriteLine("// CRtag coordinates")
		                  outstream.WriteLine("CRtagCoords "+CRtag)  
		                  'outstream.WriteLine(Endofline)
		                  
		                  outstream.WriteLine("// CRtag sequence")
		                  outstream.WriteLine("CRtag "+uTags(r))
		                  
		                  
		                  'get seed protein name and sequence
		                  ' using the first protein of the family, CRtag may be not quite correct!
		                  
		                  dim proteinID, proteinSeq as string
		                  dim lineBreakC as integer
		                  
		                  proteinSeq=TFs(1)
		                  lineBreakC=instr(proteinSeq,EndOfLine.Unix)
		                  'the check for null protein disabled since this is too frequent. The .sig will be incomplete and has to be corrected manually
		                  'if lineBreakC=0 then
		                  'msgbox "Incorrect seed protein data. Please use FASTA format with protein_id on the first line and sequence on the following lines."
		                  'return
		                  'End If
		                  proteinID=NthField(proteinSeq,EndOfLine.Unix,1)
		                  proteinID=right(proteinID,len(proteinID)-1) 'remove the > sign
		                  proteinSeq=CleanUp(right(proteinSeq,len(proteinSeq)-lineBreakC))
		                  
		                  outstream.WriteLine("// protein_id of the TF used to seed the profile")
		                  outstream.WriteLine("protein_id "+proteinID)
		                  'outstream.WriteLine(Endofline)
		                  
		                  outstream.WriteLine("// seed protein sequence (single line)")
		                  outstream.WriteLine("Seed_protein "+proteinSeq)
		                  outstream.WriteLine(Endofline)
		                  'outstream.WriteLine(Endofline)
		                  
		                  outstream.WriteLine("////")
		                  outstream.WriteLine("// nhmmer options")
		                  outstream.WriteLine("////")
		                  outstream.WriteLine(Endofline)
		                  
		                  outstream.Write(cutoffs)
		                  'outstream.WriteLine("// Trusted cutoff. Bit score per-sequence cutoff, set according to the lowest scores seen for true homologous sequences that were above the GA gathering thresholds, when gathering members of the alignment")
		                  'outstream.WriteLine("#=GF TC "+trim(TrustedField.text)+" "+trim(TrustedField.text))
		                  'outstream.WriteLine(Endofline)
		                  '
		                  'outstream.WriteLine("// Gathering threshold. Bit score per-sequence cutoff used in gathering the members of the alignment")
		                  'outstream.WriteLine("#=GF GA "+trim(GatheringField.text)+" "+trim(GatheringField.text))
		                  'outstream.WriteLine(Endofline)
		                  '
		                  'outstream.WriteLine("//Noise cutoff. Bit score per-sequence cutoff, set according to the highest scores seen for unrelated sequences")
		                  'outstream.WriteLine("#=GF NC "+trim(NoiseField.text)+" "+trim(NoiseField.text))
		                  'outstream.WriteLine(Endofline)
		                  '
		                  'outstream.WriteLine("// use the gathering threshold from the calibrated profile")
		                  'outstream.WriteLine("nhmmer.--cut_ga")
		                  outstream.WriteLine(Endofline)
		                  outstream.WriteLine(Endofline)
		                  
		                  outstream.WriteLine("////")
		                  outstream.WriteLine("// HmmGen options")
		                  outstream.WriteLine("////")
		                  outstream.WriteLine(Endofline)
		                  
		                  'outstream.WriteLine("// the alignment length")
		                  'outstream.WriteLine("HmmGen.-L "+str(LogoWin.LogoLength))     '<---! Not used any more?
		                  'outstream.WriteLine(Endofline)
		                  
		                  if PalindromicSite then
		                    outstream.WriteLine("// the site is palindromic")
		                    outstream.WriteLine("HmmGen.-p")
		                    outstream.WriteLine(Endofline)
		                  end if
		                  
		                  'if NOT NextLocusBox.value then
		                  'outstream.WriteLine("// don't pick up locus_tag from next locus")
		                  'outstream.WriteLine("HmmGen.-n")
		                  'outstream.WriteLine(Endofline)
		                  'end if
		                  
		                  
		                  outstream.WriteLine("// ignore sites inside ORFs (and risk missing some real ones!)")
		                  outstream.WriteLine("HmmGen.-i ")
		                  outstream.WriteLine(Endofline)
		                  
		                  outstream.WriteLine("// feature key")
		                  outstream.WriteLine("HmmGen.-f "+"protein_bind")
		                  outstream.WriteLine(Endofline)
		                  
		                  outstream.WriteLine("// feature qualifier")
		                  outstream.WriteLine("HmmGen.-q "+"bound_moiety#"+TFname)
		                  outstream.WriteLine(Endofline)
		                  
		                  'MASTgen p-value
		                  outstream.WriteLine("// MASTgen p-value cutoff")
		                  outstream.WriteLine("mastGen.-V "+"")                    '<---not set for now!
		                  outstream.WriteLine(Endofline)
		                  
		                  outstream.Close
		                  
		                  
		                  // Assemble and write info file:
		                  '  Collect info available from RegPrecise,
		                  '  add analysis/stats of CRtags/TFBSs
		                  
		                  
		                  hts = new HTTPSocket
		                  
		                  hts.Yield=true
		                  dim RegPreciseInfo as string
		                  dim JSN2 as new JSONItem
		                  RegPreciseInfo=hts.Get("http://regprecise.lbl.gov/Services/rest/regulog?regulogId="+RegulogID,0)
		                  ' sample result:
		                  '{"effector":"BceS, sensor histidine kinase (bacitracin)","pathway":"Bacitracin resistance","regulationType":"TF",
		                  '"regulatorFamily":"OmpR","regulatorName":"BceR","regulogId":"1339","taxonName":"Bacillales"}
		                  
		                  JSN2.load(RegPreciseInfo)
		                  'JSN3=JSN2.value("regulog")
		                  RegPreciseInfo=DefineEncoding(RegPreciseInfo,Encodings.ASCII)
		                  RegPreciseInfo="   This profile is built with RegPrecise (version "+RegPreciseWin.RegPreciseVersion+") data for "
		                  RegPreciseInfo=RegPreciseInfo+TFname+" ("+JSN2.Value("regulatorFamily")+" family) from "+JSN2.Value("taxonName")+". "
		                  RegPreciseInfo=RegPreciseInfo+TFname+" is involved in "+JSN2.Value("pathway")+" and responds to "+JSN2.Value("effector")+"."+EndOfLine.UNIX
		                  RegPreciseInfo=RegPreciseInfo+"   RegPrecise regulog (ID "+str(RegulogID)+") includes "+CollectionList.Cell(n,2)+" regulons and "+CollectionList.Cell(n,3)+" inferred binding sites."
		                  
		                  'assemble and then append basic CR tag stats
		                  dim CRtagStats as string
		                  if ubound(uTags)=1 then
		                    CRtagStats=" All regulog member TFs have the same CR tag."
		                    dim siteCount as integer = CountFields(TFBSs(1),">")-1
		                    dim regCount as integer = CountFields(uRegulons(1),";")
		                    if r=1 then
		                      if regCount=1 then
		                        CRtagStatArray.append str(uTags(1))+" (1 genome, "+str(siteCount)+" binding sites)"+TFname'+ICarr(r)  'used in the end to print out CRtag ststistics
		                      else
		                        CRtagStatArray.append str(uTags(1))+" ("+str(RegCount)+" genomes, "+str(siteCount)+" binding sites)"+TFname'+ICarr(r)  'used in the end to print out CRtag ststistics
		                      End If
		                    End If
		                  else
		                    CRtagStats=" Regulog member TFs have "+str(ubound(uTags))+" variants of CR tags:"+EndOfLine.UNIX
		                    for w=1 to ubound(uTags)
		                      dim regCount as integer = CountFields(uRegulons(w),";")
		                      dim siteCount as integer = CountFields(TFBSs(w),">")-1
		                      if regCount=1 then
		                        CRtagStats=CRtagStats+str(uTags(w))+" (1 genome, "+str(siteCount)+" binding sites)"+EndOfLine.UNIX
		                      else
		                        CRtagStats=CRtagStats+str(uTags(w))+" ("+str(RegCount)+" genomes, "+str(siteCount)+" binding sites)"+EndOfLine.UNIX
		                        
		                      end if
		                      if r=1 then
		                        CRtagStatArray.append NthField(CRtagStats,EndOfLine.UNIX,w+1)+TFname'+ICarr(r)  'used in the end to print out CRtag ststistics
		                      end if
		                    next
		                  End If
		                  
		                  dim regCount as integer = CountFields(uRegulons(r),";")
		                  dim siteCount as integer = CountFields(TFBSs(r),">")-1
		                  if regCount=1 then
		                    CRtagStats=CRtagStats+EndOfLine.UNIX+"   This profile includes the data for the TF with CR tag "+uTags(r)+"."
		                  else
		                    CRtagStats=CRtagStats+EndOfLine.UNIX+"   This profile includes the data for TFs with CR tag "+uTags(r)+"."
		                    
		                  end if
		                  
		                  RegPreciseInfo=RegPreciseInfo+CRtagStats 
		                  
		                  //**********************************
		                  ' need to include species info here!
		                  //**********************************
		                  
		                  if regCount=1 then
		                    RegPreciseInfo=RegPreciseInfo+" The sites belong to the genome of "
		                  else
		                    RegPreciseInfo=RegPreciseInfo+" The sites belong to the following genomes:"+EndOfLine
		                    
		                  end if
		                  
		                  for w=1 to regCount
		                    res=""
		                    jsn = new JSONItem
		                    hts = new HTTPSocket
		                    hts.Yield=true
		                    
		                    res=hts.Get("http://regprecise.lbl.gov/Services/rest/regulon?regulonId="+NthField(uRegulons(r),";",w),0)
		                    
		                    if hts.HTTPStatusCode>=200 AND hts.HTTPStatusCode<300 then 'successful
		                      if res<>"" then
		                        JSN.load(res)
		                        RegPreciseInfo=RegPreciseInfo+JSN.Value("genomeName")+" (regulonId="+JSN.Value("regulonId")+")"+EndOfLine
		                        
		                      end if
		                    else
		                      dim httpErr as String = HTTPerror(hts.HTTPStatusCode, true)
		                      LogoWin.WriteToSTDOUT (httpErr)
		                    end if
		                  next
		                  
		                  
		                  
		                  
		                  
		                  f2=SigFileVV.Root.child(basename+".info")
		                  
		                  if f2<>nil then
		                    outstream = TextOutputStream.Create(f2)
		                    outstream.Write(RegPreciseInfo)
		                    outstream.close
		                  end if
		                  
		                  
		                  // Save MEME data
		                  if MEMEconvert(AlignmentFile,PalindromicSite)=0 then
		                    file2copy=TemporaryFolder.child("meme.txt")                     'meme.txt
		                    if file2copy<>Nil AND file2copy.exists then
		                      CopyFileToVV(file2copy,SigFileVV)
		                      
		                      If file2copy.LastErrorCode <> 0 Then
		                        msgbox "MEME result file copy error"
		                      End If
		                    else
		                      'this file is optional
		                    end if
		                  else
		                    'have to handle cases when only one seq is left and hence meme returns an error
		                  end
		                  
		                  
		                  // build and save the hmm:
		                  Stockholm(AlignmentFile,stock, cutoffs)
		                  
		                  f2 = TemporaryFolder.child(basename+".hmm")      'place to save
		                  if f2<>nil then
		                    FixPath4Windows(f2)
		                    if hmmbuild(stock.ShellPath,f2.ShellPath) then
		                      if f2.exists then
		                        CopyFileToVV(f2,SigFileVV)
		                        logowin.WriteToSTDOUT(EndOfLine+"sig file written to "+SigFile.ShellPath+EndOfLine.UNIX)
		                        LogoWin.BuildTBButtonMenu 'in case the .sig is saved to the active profiles dir
		                        
		                      else
		                        'beep
		                      end if
		                    else
		                      'error message handled by hmmbuild most of the time
		                      logowin.WriteToSTDOUT(EndOfLine+"hmmbuild error")
		                      return
		                    end if
		                  else
		                    msgbox "Creating hmm failed"
		                    return
		                  end if
		                else
		                  Msgbox "Can't create .sig file here. Please try another location."
		                  
		                end if
		              else
		                Msgbox "Can't create .sig file here. Please try another location."
		              end if
		            else
		              msgbox "No alignment file found in the chosen folder. Can't proceed without it"
		              return
		            end if
		          else
		            msgbox "Can't create temporary file"
		            return
		          end if
		          
		        else
		          'cancelled
		        end if
		        
		        
		        
		        
		        'may need to add representative CRtag (meaning the one built from most sites) here
		        'representative .sigs (a (possibly) mixed CRtag profile fully matching the original regulon) could be written to a separate folder
		        
		        
		        
		      next r  'uTags
		      
		      ' use CRtagStatArray to assemble CRtag stats strings
		      ' array items should contain items formatted like this:
		      ' LSAKSYSSLQ (4 genomes, 12 binding sites)TFname;InfoBits
		      ' convert to tab-separated strings with the following fields:
		      ' CRtag TFname GenomesPresentIn# TFBS# InfoBits
		      dim s2p,si As string
		      for m =1 to UBound(CRtagStatArray)
		        si=NthField(CRtagStatArray(m),")",2)
		        si=NthField(si,";",1)                                   'TFname
		        s2p=NthField(CRtagStatArray(m)," (",1)+chr(9)+si+chr(9) 'CRtag+TFname
		        si=NthField(CRtagStatArray(m),"(",2)
		        si=NthField(si," genome",1)                              'GenomesPresentIn#
		        s2p=s2p+si+chr(9)
		        si=NthField(CRtagStatArray(m),", ",2)                   
		        si=NthField(si," binding",1)                            'TFBS#
		        s2p=s2p+si+chr(9)
		        'si=NthField(CRtagStatArray(m),";",2)                   'InfoBits                  
		        s2p=s2p+ICarr(m)+EndOfLine.UNIX
		        integralCRtagStats=integralCRtagStats+s2p
		      next
		      
		      
		      // Collect regulog stats:
		      'count missing CR tags
		      dim noCRtag As integer
		      for m =1 to UBound(CRtags)
		        if CRtags(m)="no_CRtag" OR CRtags(m)="[indel within CR tag region]" OR CRtags(m)="errorGettingCRtag" then
		          noCRtag=noCRtag+1
		          noCRtagTFCount=noCRtagTFCount+1
		        else
		          TFCount=TFCount+1
		        end if
		      next
		      
		      'count variable positions
		      dim varPos as Integer = 0
		      if UBound(uTags)>1 then
		        dim AAarr(-1) as string
		        dim aChar As string
		        m=1
		        while  uTags(m)="no_CRtag" OR uTags(m)="[indel within CR tag region]" OR uTags(m)="errorGettingCRtag"
		          m=m+1
		          if m>UBound(uTags) then exit
		        wend
		        if m<UBound(uTags) then
		          AAarr=split(uTags(m),"")
		          for m=m to UBound(uTags)
		            for p=0 to UBound(AAarr)
		              if uTags(m)<>"no_CRtag" AND uTags(m)<>"[indel within CR tag region]" AND uTags(m)<>"errorGettingCRtag" then
		                aChar=mid(uTags(m),p+1,1)
		                if instr(AAarr(p),aChar)=0 then
		                  AAarr(p)=AAarr(p)+aChar
		                end if
		              end if
		            next 'p
		          next 'm
		          
		          
		          
		        end if
		        
		        for p=0 to UBound(AAarr)
		          if len(AAarr(p))>1 then
		            varPos=varPos+1
		            CRtagVariantCount(p)=CRtagVariantCount(p)+len(AAarr(p))-1 'Increment variable positions counters
		          end if
		        next 'p
		        
		      end if
		      
		      'assemble regulog info line
		      'RegulogName    genomes#    genomesWithoutCRtag#    CRtag#    VariablePositions#
		      regulogStats=regulogStats+CollectionList.Cell(n,1)+chr(9)+str(ubound(RegulonIDs))+chr(9)+str(noCRtag)+chr(9)+str(ubound(uTags))+chr(9)+str(VarPos)+EndOfLine.UNIX
		      
		      'IdenticalCRRegulogCount, nonIdenticalCRRegulogCount
		      if ubound(uTags)>1 then
		        nonIdenticalCRRegulogCount=nonIdenticalCRRegulogCount+1
		      elseif ubound(uTags)=1 then 
		        IdenticalCRRegulogCount=IdenticalCRRegulogCount+1 'this also includes cases when CR tag wasn't detected
		      end if
		      'dim TFCount, noCRtagTFCount as integer
		      
		      
		      
		      
		    end if 'CollectionList.CellCheck
		  next n  'CollectionList.ListCount
		  
		  LogoWin.WriteToSTDOUT(EndOfLine.UNIX+"__Regulog statistics__"+EndOfLine.UNIX)
		  LogoWin.WriteToSTDOUT("RegulogName"+chr(9)+"genomes#"+chr(9)+"genomesWithoutCRtag#"+chr(9)+"CRtag#"+chr(9)+"VariablePositions#"+EndOfLine.UNIX)
		  LogoWin.WriteToSTDOUT(regulogStats)
		  LogoWin.WriteToSTDOUT(EndOfLine.UNIX+"__Regulon level stats__"+EndOfLine.UNIX)
		  LogoWin.WriteToSTDOUT("TFs with CR tag determined: "+str(TFCount)+EndOfLine.UNIX)
		  LogoWin.WriteToSTDOUT("TFs without CR tag determined: "+str(noCRtagTFCount)+EndOfLine.UNIX)
		  
		  
		  LogoWin.WriteToSTDOUT(EndOfLine.UNIX+EndOfLine.UNIX+"Regulogs combining TFs with the same CR tag: "+str(IdenticalCRRegulogCount)+EndOfLine.UNIX)
		  LogoWin.WriteToSTDOUT("Regulogs combining TFs with different CR tags: "+str(nonIdenticalCRRegulogCount)+EndOfLine.UNIX)
		  'LogoWin.WriteToSTDOUT("Regulogs without determined CR tags: "+str(noCRtagRegulogCount)+EndOfLine.UNIX+EndOfLine.UNIX)
		  
		  
		  LogoWin.WriteToSTDOUT(EndOfLine.UNIX+"__CR tag statistics__"+EndOfLine.UNIX)
		  LogoWin.WriteToSTDOUT("CRtag"+chr(9)+"TFname"+chr(9)+"GenomesPresentIn#"+chr(9)+"TFBS#"+chr(9)+"InfoBits"+EndOfLine.UNIX)
		  LogoWin.WriteToSTDOUT(integralCRtagStats)
		  
		  for p=0 to ubound(CRtagVariantCount)
		    CRtagVariants=CRtagVariants+str(CRtagVariantCount(p))+" "
		  next p
		  LogoWin.WriteToSTDOUT(EndOfLine.UNIX+EndOfLine.UNIX+"Number of alternative AA variants at each CR tag position: "+CRtagVariants+EndOfLine.UNIX)
		  
		  
		  
		  Exception err
		    ExceptionHandler(err,"RegPreciseTFcollectionsWin:ExportSigButton")
		    
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
		Name="InfoBits"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="double"
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
		Name="RegPreciseVersion"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
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
		Name="siteLength"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="SocketTask"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
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
