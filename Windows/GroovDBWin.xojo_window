#tag Window
Begin Window GroovDBWin
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
   Title           =   "GroovDB"
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
      Text            =   "#kTFfamily"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   20
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   93
   End
   Begin PopupMenu FamiliesPopup
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
      ColumnCount     =   5
      ColumnWidths    =   ""
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   -1
      DropIndicatorVisible=   False
      Enabled         =   False
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      GridLinesHorizontalStyle=   0
      GridLinesVerticalStyle=   0
      HasBorder       =   False
      HasHeader       =   True
      HasHorizontalScrollbar=   False
      HasVerticalScrollbar=   True
      HeadingIndex    =   -1
      Height          =   474
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   "	TF name	Organism	Description"
      Italic          =   False
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      RequiresSelection=   False
      RowSelectionType=   1
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
      Visible         =   False
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
      MacButtonStyle  =   0
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
      BevelStyle      =   4
      Bold            =   False
      ButtonStyle     =   0
      Caption         =   ""
      CaptionAlignment=   3
      CaptionDelta    =   0
      CaptionPosition =   1
      Enabled         =   False
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      HasBackgroundColor=   False
      Height          =   22
      Icon            =   495161343
      IconAlignment   =   1
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
      MenuStyle       =   0
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
   Begin BevelButton BevelButton3
      AllowAutoDeactivate=   True
      AllowFocus      =   True
      BackgroundColor =   &c00000000
      BevelStyle      =   4
      Bold            =   False
      ButtonStyle     =   0
      Caption         =   ""
      CaptionAlignment=   3
      CaptionDelta    =   0
      CaptionPosition =   1
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      HasBackgroundColor=   False
      Height          =   22
      Icon            =   0
      IconAlignment   =   0
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
      MenuStyle       =   0
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
      BevelStyle      =   4
      Bold            =   False
      ButtonStyle     =   0
      Caption         =   "#kDeselectAll"
      CaptionAlignment=   3
      CaptionDelta    =   0
      CaptionPosition =   1
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      HasBackgroundColor=   False
      Height          =   22
      Icon            =   0
      IconAlignment   =   0
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
      MenuStyle       =   0
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
      BevelStyle      =   4
      Bold            =   False
      ButtonStyle     =   0
      Caption         =   "#kSelectAll"
      CaptionAlignment=   3
      CaptionDelta    =   0
      CaptionPosition =   1
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      HasBackgroundColor=   False
      Height          =   22
      Icon            =   0
      IconAlignment   =   0
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
      MenuStyle       =   0
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
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   560
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   547
   End
   Begin PushButton ExportSigButton
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "Export Selected as Fasta"
      Default         =   False
      Enabled         =   False
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   630
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MacButtonStyle  =   0
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
		Function ProfileGroovDBTFs() As Boolean Handles ProfileGroovDBTFs.Action
		  
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
		  
		  
		  '#if DebugBuild then
		  'dim RegulonID, vimssId, ProteinFasta as string
		  'dim TFname as string
		  'dim n as integer
		  '
		  'logowin.show
		  '
		  'TFname=CollectionList.Cell(CollectionList.ListIndex,0)
		  'for n=0 to UBound(regulatorArray)
		  'If JSONitem(regulatorArray(n)).Value("regulatorName")=TFname Then
		  'RegulonID=JSONitem(regulatorArray(n)).Value("regulonId")
		  'exit
		  'end if
		  '
		  'next
		  '
		  'logowin.WriteToSTDOUT("Getting protein ID from RegPrecise... ")
		  '
		  'dim res as string
		  'dim jsn as new JSONItem
		  'dim jsn0 as new JSONItem
		  'dim hts as new HTTPSocket
		  '
		  'hts.Yield=true
		  '
		  'res=hts.Get("https://regprecise.lbl.gov/Services/rest/regulators?regulonId="+regulonId,0)
		  'if hts.HTTPStatusCode>=200 AND hts.HTTPStatusCode<300 then 'successful
		  'if res<>"" then
		  'JSN0.load(res)
		  ''should contain smth like:
		  ''{"regulator":{"locusTag":"ECA3790","name":"PdhR","regulatorFamily":"GntR","regulonId":"10409","vimssId":"608214"}}
		  '
		  'JSN=JSN0.value("regulator")
		  'ProteinFasta=">"+JSN.Value("name")+" locus_tag="+JSN.Value("locusTag")+" regulonId="+JSN.Value("regulonId")+" vimssId="+JSN.Value("vimssId")
		  'vimssId=JSN.Value("vimssId")
		  'LogoWin.WriteToSTDOUT("OK"+EndOfLine.UNIX)
		  '
		  'end if
		  '
		  'logowin.WriteToSTDOUT("Getting protein sequence from MicrobesOnline... ")
		  '
		  '' -h pub.microbesonline.org -u guest -pguest genomics -B -e "select * from AASeq where locusId=606816;"
		  '
		  'Dim db As New MySQLCommunityServer
		  'db.Host = "pub.microbesonline.org"
		  ''db.Port = 3306
		  'db.DatabaseName = "genomics"
		  'db.UserName = "guest"
		  'db.Password = "guest"
		  'If db.Connect Then
		  '// Use the database
		  '
		  'Dim rs As RecordSet
		  'rs = db.SQLSelect("select * from AASeq where locusId="+vimssId)
		  '
		  'If db.Error Then
		  'MsgBox("Error: " + db.ErrorMessage)
		  'Return
		  'End If
		  '
		  'If rs <> Nil Then
		  'ProteinFasta=ProteinFasta+EndOfLine.UNIX+rs.Field("sequence").StringValue
		  'tfastx(ProteinFasta)
		  'rs.Close
		  'End If
		  'db.Close
		  '
		  '
		  'Else
		  '// Connection error
		  'MsgBox(db.ErrorMessage)
		  'End If
		  '
		  '
		  'else
		  'LogoWin.WriteToSTDOUT ("Server error (HTTP status code "+str(hts.HTTPStatusCode)+")")
		  'LogoWin.show
		  'end if
		  '
		  '#else
		  'MsgBox "This method is currently disabled due to database licensing issue. Should hopefully be fixed sometime..."
		  '
		  '#endif
		  Exception err
		    ExceptionHandler(err,"RegPreciseWin:CheckTF")
		    
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CollectionStats2array(JSONin as JSONItem)
		  'Populates the GenomesPopup and stores genome JSONs in an array
		  'the popup and array indices are the same
		  
		  dim genomes as JSONItem
		  Dim GenomeString As String
		  dim n as integer
		  
		  FamiliesPopup.DeleteAllRows
		  
		  Redim GenomeStatsArray(-1)
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
		          FamiliesPopup.AddRow(genomestring)
		        else
		          GenomeString=JSONItem(genomes(n)).Value("name")+" ("+JSONItem(genomes(n)).Value("tfCount")+" TFs, "+JSONItem(genomes(n)).Value("tfRegulogCount")+" regulogs, "+JSONItem(genomes(n)).Value("tfSiteCount")+" TFBSs)"
		          
		          if FamiliesPopup.list(FamiliesPopup.ListCount-1)<>GenomeString then 'RegPrecise bug: every item in JSON is duplicated! 
		            GenomeStatsArray.append genomes(n)
		            FamiliesPopup.AddRow(genomestring)
		          end if
		        End If
		      end if
		      
		    next
		    FamiliesPopup.Enabled=true
		    
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
		  dim lb as Listbox=self.CollectionList
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
		    'ExportButton.Enabled=false
		    ExportSigButton.Enabled=false
		  else
		    'ExportButton.Enabled=true
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
		      'regulatorArray.append regulators
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
		  'SocketTask="release"
		  'RegPreciseSocket.Get("https://regprecise.lbl.gov/Services/rest/release")
		  
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

	#tag Method, Flags = &h0
		Sub WLoadFamilies()
		  // Loads TF family names into the popup menu
		  '  8 families fo far in groovDB:
		  ' "family": "ARAC" 11
		  ' "family": "GNTR" 19
		  ' "family": "ICLR" 17
		  ' "family": "LACI" 18
		  ' "family": "LUXR" 10
		  ' "family": "LYSR" 14
		  ' "family": "MARR" 26
		  ' "family": "TETR" 103
		  ' "family": "OTHER" 28
		  
		  'clear family arrays
		  redim ARACarray(0)
		  redim GNTRarray(0)
		  redim ICLRarray(0)
		  redim LACIarray(0)
		  redim LUXRarray(0)
		  redim LYSRarray(0) 
		  redim MARRarray(0)
		  redim TETRarray(0)
		  redim OTHERarray(0)
		  
		  Dim instream As TextInputStream
		  Dim f As folderitem
		  
		  f=Resources_f.child("all-sensors.json")
		  If f<>Nil And f.exists Then
		    
		    FamiliesPopup.DeleteAllRows
		    
		    dim fmls As string
		    dim tis as textinputstream
		    
		    tis=f.OpenAsTextFile
		    if tis<>nil then
		      fmls=tis.ReadAll
		      tis.Close
		      
		      dim JSN as new JSONItem
		      JSN.load(fmls)
		      
		      
		      
		      
		      
		      
		      
		      dim sensors as JSONItem
		      dim FamName as string
		      dim n as integer
		      sensors=JSN.Value("sensors")
		      if sensors.IsArray then
		        for n=0 to sensors.Count-1
		          if sensors(n) isa JSONItem then
		            FamName=JSONItem(sensors(n)).Value("family")
		            select case FamName
		            case "ARAC"
		              ARACarray.Append  JSONItem(sensors(n))
		            case "GNTR"
		              GNTRarray.Append JSONItem(sensors(n))
		            case "ICLR"
		              ICLRarray.Append  JSONItem(sensors(n))
		            case "LACI"
		              LACIarray.Append JSONItem(sensors(n))
		            case "LUXR"
		              LUXRarray.Append JSONItem(sensors(n))
		            case "LYSR"
		              LYSRarray.Append JSONItem(sensors(n))
		            case"MARR"
		              MARRarray.Append JSONItem(sensors(n))
		            case "TETR"
		              TETRarray.Append JSONItem(sensors(n))
		            case "OTHER"
		              OTHERarray.Append JSONItem(sensors(n))
		            else
		              msgbox "Unexpectef family ("+FamName+")! Please check the groovDB JSON"
		            end select
		            
		          end if
		          
		        next
		        
		        
		        FamiliesPopup.AddRow "AraC ("+str(Ubound(ARACarray))+" TFs)"
		        FamiliesPopup.AddRow "GntR ("+str(Ubound(GNTRarray))+" TFs)"
		        FamiliesPopup.AddRow "IclR ("+str(Ubound(ICLRarray))+" TFs)"
		        FamiliesPopup.AddRow "LacI ("+str(Ubound(LACIarray))+" TFs)"
		        FamiliesPopup.AddRow "LuxR ("+str(Ubound(LUXRarray))+" TFs)"
		        FamiliesPopup.AddRow "LysR ("+str(Ubound(LYSRarray))+" TFs)"
		        FamiliesPopup.AddRow "MarR ("+str(Ubound(MARRarray))+" TFs)"
		        FamiliesPopup.AddRow "TetR ("+str(Ubound(TETRarray))+" TFs)"
		        FamiliesPopup.AddRow "Other ("+str(Ubound(OTHERarray))+" TFs)"
		        
		        
		        FamiliesPopup.Enabled=true
		        
		      else
		        'A problem with JSON
		        
		      end if
		      
		      
		      
		    Else
		      'MsgBox "A file with GroovDB data is missing"
		    End If
		  End If
		  
		  Exception err
		    ExceptionHandler(err,"GroovDBWin:WLoadFamilies")
		    
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub WLoadRegulators(TFfamilyIdx as integer)
		  // Populates the RegulatorList 
		  
		  // CollectionList columns are:
		  ' 0 - Checkbox
		  ' 1 - TF Name
		  ' 2 - Organism
		  ' 3 - Description
		  ' 4 – TF data JSON
		  
		  ' (the last column is here, because it's easier to access these data when sorting the listbox)
		  
		  Dim reg() As String
		  Dim J As new JSONitem
		  dim n, ub as integer
		  
		  CollectionList.DeleteAllRows
		  
		  select case TFfamilyIdx
		  case 0 '"ARAC"
		    ub=ubound(ARACarray)
		  case 1 '"GNTR"
		    ub=ubound(GNTRarray)
		  case 2 '"ICLR"
		    ub=ubound(ICLRarray)
		  case 3 '"LACI"
		    ub=ubound(LACIarray)
		  case 4 '"LUXR"
		    ub=ubound(LUXRarray)
		  case 5 '"LYSR"
		    ub=ubound(LYSRarray)
		  case 6 '"MARR"
		    ub=ubound(MARRarray)
		  case 7 '"TETR"
		    ub=ubound(TETRarray)
		  case 8 '"OTHER"
		    ub=ubound(OTHERarray)
		  end select
		  
		  for n=1 to ub
		    
		    select case TFfamilyIdx
		    case 0 '"ARAC"
		      J=ARACarray(n)
		    case 1 '"GNTR"
		      J=GNTRarray(n)
		    case 2 '"ICLR"
		      J=ICLRarray(n)
		    case 3 '"LACI"
		      J=LACIarray(n)
		    case 4 '"LUXR"
		      J=LUXRarray(n)
		    case 5 '"LYSR"
		      J=LYSRarray(n)
		    case 6 '"MARR"
		      J=MARRarray(n)
		    case 7 '"TETR"
		      J=TETRarray(n)
		    case 8 '"OTHER"
		      J=OTHERarray(n)
		    end select
		    
		    try
		      reg  = Array("",J.value("alias"), J.value("organism"),J.value("about"), J.ToString)  'first column contains checkboxes
		    catch e as KeyNotFoundException
		      msgbox (e.message)
		    end try
		    
		    CollectionList.AddRow(reg)
		  next
		  
		  CollectionList.Enabled=True
		  EnableButtons
		  
		  
		  Exception err
		    ExceptionHandler(err,"RegPreciseWin:FillRegulatorList")
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		ARACarray(0) As JSONItem
	#tag EndProperty

	#tag Property, Flags = &h0
		FamilyIDArray(-1) As string
	#tag EndProperty

	#tag Property, Flags = &h0
		GenomeStatsArray(-1) As JSONItem
	#tag EndProperty

	#tag Property, Flags = &h0
		GNTRarray(0) As JSONItem
	#tag EndProperty

	#tag Property, Flags = &h0
		ICLRarray(0) As JSONItem
	#tag EndProperty

	#tag Property, Flags = &h0
		InfoBits As double
	#tag EndProperty

	#tag Property, Flags = &h0
		LACIarray(0) As JSONItem
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected LogoPix(-1) As Picture
	#tag EndProperty

	#tag Property, Flags = &h0
		LUXRarray(0) As JSONItem
	#tag EndProperty

	#tag Property, Flags = &h0
		LYSRarray(0) As JSONItem
	#tag EndProperty

	#tag Property, Flags = &h0
		MARRarray(0) As JSONItem
	#tag EndProperty

	#tag Property, Flags = &h0
		OTHERarray(0) As JSONItem
	#tag EndProperty

	#tag Property, Flags = &h0
		RegPreciseVersion As String
	#tag EndProperty

	#tag Property, Flags = &h0
		RegulatorArray(-1) As string
	#tag EndProperty

	#tag Property, Flags = &h0
		siteLength As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		SocketTask As String
	#tag EndProperty

	#tag Property, Flags = &h0
		TETRarray(0) As JSONItem
	#tag EndProperty


	#tag Constant, Name = RegPreciseBase, Type = String, Dynamic = False, Default = \"https://regprecise.lbl.gov/", Scope = Public
	#tag EndConstant


#tag EndWindowCode

#tag Events Label2
	#tag Event
		Sub Open()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events FamiliesPopup
	#tag Event
		Sub Change()
		  WLoadRegulators(Me.ListIndex)
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
		  ' 1 - TF Name
		  ' 2 - Organism
		  ' 3 - Description
		  ' 4 - TF data JSON
		  
		  me.ColumnWidths="20,90,200,*,0"
		  me.ColumnType(0)=Listbox.TypeCheckbox
		  me.DefaultRowHeight=25 
		  
		  
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
		  End If
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
#tag Events RegulogLogoButton
	#tag Event
		Sub Action()
		  dim jsn as new JSONItem
		  Dim ProteinFasta, TFseqs, TFname As String
		  dim n as integer
		  
		  jsn=new JSONitem(CollectionList.Cell((CollectionList.ListIndex),4))
		  
		  ProteinFasta=">"+jsn.value("alias")+" "+jsn.value("organism")+" GB="+jsn.value("accession")+"|UP="+jsn.value("uniprotID")+EndOfLine.UNIX+jsn.value("sequence")
		  TFname=jsn.value("alias")
		  
		  'write the seqs to a file and open it
		  dim sitesFile as folderitem
		  dim tos as TextOutputStream
		  dim ops as string
		  
		  sitesFile=TemporaryFolder.Child("groov.txt")
		  if sitesFile<>nil then
		    if sitesFile.exists then sitesFile.delete
		    dim jsn2 as new JSONitem
		    jsn2=JSONitem(jsn.value("operators"))
		    for n=0 to jsn2.Count-1
		      dim site as new JSONItem
		      site=jsn2(n)
		      ops=">"+str(n+1)+ " http://dx.doi.org/"+site.value("doi")+EndOfLine.UNIX+site.value("sequence")+EndOfLine.UNIX
		    next
		    
		    tos=TextOutputStream.Create(sitesFile)
		    if tos <>nil then
		      tos.Write  ops
		      tos.close
		    else
		      msgbox "can't write to tmp file"
		    end if
		  else
		    msgbox "Can't create tmp file"
		  end if
		  
		  'collect data for filling profile  wizard
		  dim desc, Ligands as string
		  desc="   "+jsn.value("about")+EndOfLine.UNIX+EndOfLine.UNIX
		  desc=desc+"Family: "+jsn.value("family")+EndOfLine.UNIX+EndOfLine.UNIX
		  dim jsn4 as JSONItem = jsn.value("ligands")
		  Ligands=jsn4.ToString
		  'ProfileWizardWin.InfoArea.text="   "+jsn.value("about")+EndOfLine.UNIX+EndOfLine.UNIX+"Family: "+jsn.value("family")+EndOfLine.UNIX+EndOfLine.UNIX+"Ligands:"+EndOfLine.UNIX+jsn.value("ligands")
		  ProfileWizardWin.FeatureCombo.ListIndex = 1
		  
		  Dim FamName As String = jsn.value("family")+".hmm"
		  if FamName="LUXR.hmm" then
		    FamName="GerE.hmm"
		  end if
		  if FamName="MARR.hmm" then
		    FamName="MarR_superfamily.hmm"
		  end if
		  
		  
		  ProfileWizardWin.RefsList.RemoveAllRows
		  Dim DOI As String
		  dim jsn3 as new JSONitem
		  jsn3=JSONitem(jsn.value("fullReferences"))
		  dim refNo As  integer = jsn3.Count-1
		  for n=0 to refNo
		    dim ref as new JSONItem
		    ref=jsn3(n)
		    ProfileWizardWin.RefsList.AddRow
		    DOI=ref.value("doi")
		    ProfileWizardWin.RefsList.CellValueAt(ProfileWizardWin.RefsList.LastRowIndex,1)=DOI
		    ProfileWizardWin.RefsList.CellValueAt(ProfileWizardWin.RefsList.LastRowIndex,0)=CitationFromDOI(Trim(DOI))
		  next
		  'add groovDB reference
		  dim groovRef as string ="https://www.groov.bio/entry/"+jsn.value("family")+"/"+jsn.value("uniprotID")
		  ProfileWizardWin.RefsList.AddRow
		  ProfileWizardWin.RefsList.CellValueAt(ProfileWizardWin.RefsList.LastRowIndex,1)=groovRef
		  ProfileWizardWin.RefsList.CellValueAt(ProfileWizardWin.RefsList.LastRowIndex,0)="groovDB"
		  
		  
		  'load the profile and fill ProfileWizard form:
		  LogoWin.LoadAlignment(sitesFile)
		  HmmGenSettingsWin.ValueField.text=TFname
		  MASTGenSettingsWin.ValueField.text=TFname
		  ProfileWizardWin.SeedProteinArea.text=ProteinFasta
		  ProfileWizardWin.InfoArea.text=desc
		  dim LIgandsJSON as New JSONItem(ligands)
		  ProfileWizardWin.LigandArea.Text=ShortenLigandJSON(LIgandsJSON)
		  ProfileWizardWin.ValueField.text=TFname
		  For i As Integer=0 To ProfileWizardWin.TFhmmPopup.LastRowIndex 
		    If ProfileWizardWin.TFhmmPopup.RowValueAt(i)=FamName Then
		      ProfileWizardWin.TFhmmPopup.SelectedRowIndex=i
		      Exit
		    End If
		  Next
		  ProfileWizardWin.UpdateCRtag
		  
		  LogoWin.show
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events InfoButton
	#tag Event
		Sub Open()
		  #If TargetCocoa Then
		    #If Target64Bit
		      'Me.Icon=SystemIcons.Info(20,20)  
		      me.Icon=ScaledPic(SystemIcons.Info(20,20),self.ScaleFactor)
		      Me.Caption=""
		    #EndIf
		  #endif
		End Sub
	#tag EndEvent
	#tag Event
		Sub Action()
		  RegulonInfo
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
		  // Save selected protein sequences as a file in multifasta format
		  
		  
		  Dim outf As folderitem
		  dim tos as TextOutputStream
		  dim jsn as new JSONItem
		  Dim ProteinFasta, TFseqs As String
		  dim n as integer
		  
		  
		  
		  //ask for output file name & location
		  Dim dlg As New SaveAsDialog
		  
		  
		  dlg.SuggestedFileName = "CDS.fasta"
		  dlg.ActionButtonCaption = kSave
		  dlg.Title = "Set output file location"
		  dlg.promptText="Where to save selected TF sequences?" 
		  dlg.CancelButtonCaption=kCancel
		  
		  outf=dlg.ShowModal
		  
		  
		  if outf<>nil then
		    for n=0 to CollectionList.ListCount-1
		      if CollectionList.CellCheck(n,0) then
		        jsn=new JSONitem(CollectionList.Cell(n,4))
		        ProteinFasta=">"+jsn.value("alias")+" "+jsn.value("organism")+" GB="+jsn.value("accession")+"|UP="+jsn.value("uniprotID")+EndOfLine.UNIX+jsn.value("sequence")
		        TFseqs=TFseqs+ProteinFasta+EndOfLine.UNIX
		      end if
		    next
		    
		    tos = TextOutputStream.Create(outf)
		    If tos=Nil Then Return
		    tos.Write(TFseqs)
		    tos.close
		    
		    
		  end if
		  
		  
		  Exception err
		    ExceptionHandler(err,"GroovDBWin:ExportSigButton")
		    
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
