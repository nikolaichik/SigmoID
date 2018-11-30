#tag Window
Begin Window LocalMotifCollectionsWin
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   True
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
   Title           =   "Local Motif Collections"
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
      TabStop         =   True
      Text            =   "#kTFBScollection"
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
   Begin PopupMenu TFfamilyPopup
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   False
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   "#kSelectMotifCollection"
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
      ColumnCount     =   6
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
      InitialValue    =   " 	TF	#kSites	#kInfoBits	#kLogo"
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
      Top             =   52
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   800
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
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
      TabStop         =   True
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
      TabIndex        =   16
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
		    ExportButton.Enabled=false
		  else
		    ExportButton.Enabled=true
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
		Sub RegulogLogo()
		  dim RegulogID,RegulonID, TFname as string
		  dim n as integer
		  
		  
		  TFname=CollectionList.Cell(CollectionList.ListIndex,1)
		  TFname=NthField(TFname," – ",1)
		  RegulogID=CollectionList.cell(CollectionList.ListIndex,6)
		  
		  
		  
		  LogoWin.RegulogID=Val(RegulogID)
		  LogoWin.IsRegulog=true
		  
		  'we already have these data in the listbox, but still.
		  LogoWin.LoadRegpreciseData(RegulogID,TFname,true)
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
#tag Events TFfamilyPopup
	#tag Event
		Sub Change()
		  dim m,n as integer
		  dim f, CollectionFile as folderitem
		  
		  
		  CollectionList.DeleteAllRows
		  
		  ' find the file
		  f=Resources_f.Child("TF_families")
		  if f<>nil then
		    m=f.Count
		    for n=1 to m
		      if f.Item(n).name=me.Text+".meme" then
		        CollectionFile=f.Item(n)
		        exit
		      end if
		    next
		  end if
		  
		  'read motifs into an array
		  dim tis as TextInputStream
		  dim motifs, motifArray(-1), motifName, nSites, PWMdata, URL, siteLen as string
		  dim LEloc as integer
		  
		  tis=CollectionFile.OpenAsTextFile
		  if tis<>nil then
		    motifs=tis.ReadAll
		    tis.Close
		  end if
		  
		  motifArray=motifs.Split("MOTIF ")
		  
		  'fill in CollectionList
		  m=UBound(motifArray)
		  for n=1 to m
		    motifName=NthField(motifArray(n)," ",1)
		    nSites=str(val(NthField(motifArray(n),"nsites=",2)))
		    PWMdata=NthField(motifArray(n),"nsites=",2)               'get closer to the data
		    LEloc=instr(PWMdata,EndOfLine)
		    PWMdata=right(PWMdata,len(PWMdata)-LEloc)                 'still has trailing lines
		    PWMdata=replaceAll(PWMdata,EndOfLine+EndOfLine,EndOfLine) 'remove empty lines
		    PWMdata=replaceAll(PWMdata,EndOfLine+EndOfLine,EndOfLine)
		    PWMdata=replaceAll(PWMdata,EndOfLine+EndOfLine,EndOfLine)
		    if instr(PWMdata,"URL")>0 then                            'standard meme files don't have URLs
		      URL=trim(NthField(PWMdata,"URL",2))
		      LEloc=instr(PWMdata,"URL")
		      PWMdata=left(PWMdata,LEloc-1)
		    end if
		    sitelen=str(CountFields(PWMdata,EndOfLine))
		    
		    Dim p as picture = LogoFromPWM(PWMdata)
		    Dim reg() As String = Array("",motifName,nSites,str(InfoBits),"", URL,siteLen)  'first column contains checkboxes
		    CollectionList.AddRow(reg)
		    
		    ''scale the picture down to 35 pixel heigh and stretch it horisontally a bit
		    'dim LogoPicScaled as new Picture (p.width*50/170,35,32)
		    'LogoPicScaled.Graphics.DrawPicture (p,0,0,p.width*50/170,35,0,0,p.width,p.Height)
		    'LogoPicScaled.Transparent=1
		    
		    'scale the picture down to 45 pixel heigh and stretch it horisontally a bit
		    dim LogoPicScaled as new Picture (p.width*50/170,45,32)
		    LogoPicScaled.Graphics.DrawPicture (p,0,0,p.width*50/170,45,0,0,p.width,p.Height)
		    LogoPicScaled.Transparent=1
		    
		    
		    'add picture to the last row as variant, so it is sorted properly 
		    CollectionList.RowTag(collectionlist.LastIndex)=LogoPicScaled
		    
		    'Update progress text
		    ProgressLabel.Text="Loading profiles: "+str(CollectionList.ListCount)
		    
		  next
		  CollectionList.Enabled=true
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  // Load the TF family names
		  
		  dim m,n as integer
		  dim f as folderitem
		  
		  f=Resources_f.Child("TF_families")
		  if f<>nil then
		    m=f.Count
		    for n=1 to m
		      if f.Item(n).name<>".DS_Store" then
		        'if f.Item(n).Directory then
		        ''skip folder
		        'else
		        if right(f.Item(n).DisplayName,5)=".meme" then
		          me.AddRow nthfield(f.Item(n).Name,".meme",1) 'drop the extension
		        end if
		      end if
		    next
		  end if
		  
		  me.Enabled=true
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
		  ' 1 - Motif collection Name
		  ' 2 - Number of sites used to build the motif 
		  ' 3 - Information content (bits)
		  ' 4 - Logo picture
		  ' 5 (invisible) – Motif source URL
		  ' 6 (invisible) – TFBS length
		  
		  me.ColumnWidths="20,300,50,70,*,0,0" 'the last column just stores the file path 
		  me.ColumnType(0)=Listbox.TypeCheckbox
		  me.DefaultRowHeight=49  'LogoPic.Height=45
		  'me.ColumnSortDirection(-1)=ListBox.HeaderTypes.NotSortable 'disable sorting of all the columns
		  
		  
		End Sub
	#tag EndEvent
	#tag Event
		Function CellBackgroundPaint(g As Graphics, row As Integer, column As Integer) As Boolean
		  dim colWidth, offset as double
		  dim ws as string
		  dim p as picture
		  
		  // Logo centering doesn't seem appropriate here
		  
		  // calculate logo column width 
		  ' column widths are currently set as
		  ' 20,300,60,40,*,0
		  
		  'ws=me.ColumnWidths
		  'colWidth=me.width-val(NthField(ws,",",1))-val(NthField(ws,",",2))-val(NthField(ws,",",3))-val(NthField(ws,",",4))
		  
		  
		  if Column=4 then
		    if row<=me.lastindex then
		      p=me.rowtag(row)
		      'offset=(colWidth-p.Width)/2 
		      g.DrawPicture(p, offset, 0)  'pic is centered for proper alignment (currently disabled)
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
#tag Events RegulogLogoButton
	#tag Event
		Sub Action()
		  msgbox "Opening motifs in MEME format in the main window isn't implemented yet ((("
		  
		  'RegulogLogo
		  
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
		  WebBrowserWin.show
		  WebBrowserWin.LoadPage(CollectionList.cell(CollectionList.ListIndex,5))
		  
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
#tag Events ExportButton
	#tag Event
		Sub Action()
		  Dim dlg as New SaveAsDialog
		  dim outfile as folderitem
		  dim FamilyName as string
		  
		  FamilyName=NthField(TFfamilyPopup.Text," ",1)
		  
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
