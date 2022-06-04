#tag Window
Begin Window ProfileMergeWin
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   662
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
   Title           =   "Merge Profiles"
   Visible         =   False
   Width           =   878
   Begin Listbox RegulatorList
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
      Enabled         =   True
      EnableDrag      =   False
      EnableDragReorder=   False
      GridLinesHorizontal=   0
      GridLinesVertical=   0
      HasHeading      =   True
      HeadingIndex    =   -1
      Height          =   553
      HelpTag         =   ""
      Hierarchical    =   False
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   "#	Profile name	Site #	Info Bits	#kSiteWidth	Logo"
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
      Top             =   34
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   878
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
      Transparent     =   False
      Visible         =   True
      Width           =   294
   End
   Begin PushButton LogoButton
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   0
      Cancel          =   False
      Caption         =   "Open Profile"
      Default         =   True
      Enabled         =   False
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   731
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
      Top             =   622
      Transparent     =   False
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
      Scope           =   0
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   620
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   22
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
      LocalAddress    =   ""
      LockedInPosition=   False
      Port            =   0
      RemoteAddress   =   ""
      Scope           =   0
      TabPanelIndex   =   0
      yield           =   False
   End
   BeginSegmented SegmentedControl SegmentedControl1
      Enabled         =   True
      Height          =   24
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MacControlStyle =   0
      Scope           =   0
      Segments        =   "\nbr_prev_icon16\nFalse\r                      \n\nFalse\r\nbr_next_icon16\nFalse"
      SelectionType   =   2
      TabIndex        =   12
      TabPanelIndex   =   0
      Top             =   5
      Transparent     =   True
      Visible         =   True
      Width           =   177
   End
   Begin PushButton MergeButton
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "Merge"
      Default         =   False
      Enabled         =   False
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   639
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MacButtonStyle  =   "0"
      Scope           =   0
      TabIndex        =   13
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   "Merge Checked profiles"
      Top             =   622
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin CheckBox TrashBox
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "Trash original profiles after merge"
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
      Scope           =   0
      TabIndex        =   14
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   622
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      VisualState     =   "0"
      Width           =   505
   End
   Begin BevelButton BevelButton3
      AllowAutoDeactivate=   True
      AllowFocus      =   False
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
      Icon            =   0
      IconAlignment   =   "0"
      IconDeltaX      =   0
      IconDeltaY      =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   371
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      MenuStyle       =   "0"
      Scope           =   0
      TabIndex        =   15
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   588
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   507
   End
   Begin BevelButton DeselectAllButton
      AllowAutoDeactivate=   True
      AllowFocus      =   True
      BackgroundColor =   &c00000000
      BevelStyle      =   "4"
      Bold            =   False
      ButtonStyle     =   "0"
      Caption         =   "Uncheck All"
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
      Left            =   186
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      MenuStyle       =   "0"
      Scope           =   0
      TabIndex        =   16
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   588
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   186
   End
   Begin BevelButton SelectAllButton
      AllowAutoDeactivate=   True
      AllowFocus      =   True
      BackgroundColor =   &c00000000
      BevelStyle      =   "4"
      Bold            =   False
      ButtonStyle     =   "0"
      Caption         =   "Check All"
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
      TabIndex        =   17
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   588
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   186
   End
   Begin BevelButton TrashButton
      AllowAutoDeactivate=   True
      AllowFocus      =   False
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
      Icon            =   1941909503
      IconAlignment   =   "1"
      IconDeltaX      =   0
      IconDeltaY      =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   580
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MenuStyle       =   "0"
      Scope           =   0
      TabIndex        =   18
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   622
      Transparent     =   True
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   22
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
		Sub LoadGroup(GroupNo as integer)
		  Dim y,z As Integer
		  Dim f, FastaFile As folderitem
		  Dim thePath As String
		  
		  'Dim TFname As String
		  Dim basename As String
		  Dim InfoBits, SiteWidth As Integer
		  
		  RegulatorList.RemoveAllRows
		  
		  y=CountFields(PgroupPaths(GroupNo),"|;|")
		  
		  For z=1 To y
		    thePath=NthField(PgroupPaths(GroupNo),"|;|",z)
		    f=New FolderItem(thePath, FolderItem.PathModes.Native)
		    If f<> Nil Then
		      Dim vv As VirtualVolume
		      vv=f.openAsVirtualVolume
		      If vv<> Nil Then
		        basename=NthField(f.DisplayName,".sig",1)
		        'TFname=NthField(basename,"_",1)
		        'If InStr(tfname,"_")>0 Then
		        'TFname=NthField(TFname,"_",1)
		        'End If
		        FastaFile=vv.root.child(basename+".fasta")
		        Dim LogoData As String
		        Dim tis As TextInputStream
		        Dim LogoPic As Picture
		        
		        tis=TextInputStream.Open(FastaFile)
		        If tis<>Nil Then
		          LogoData=tis.ReadAll
		          LogoPic=MakeLogoPic(LogoData)
		        End If
		        
		        'Append profile stats And logo As a New row To RegulatorList
		        'RegulatorList columns are:
		        'ProfileName    NumberOfSites    InfoBits    SiteWidth    Logo
		        Dim reg() As String
		        reg=Array("",basename, Str(NumberOfSites), Str(RegPreciseTFcollectionsWin.InfoBits), Str(ProfileSeqLen),"",thePath)
		        RegulatorList.AddRow(reg)
		        
		        'Add logo picture to the row just added
		        Dim LogoPicScaled As New Picture (LogoPic.width,100,32)
		        LogoPicScaled.Graphics.DrawPicture (LogoPic,0,0,LogoPicScaled.width,LogoPicScaled.height,0,0,LogoPic.width,LogoPic.Height)
		        LogoPicScaled.Transparent=1
		        RegulatorList.RowTag(RegulatorList.LastIndex)=LogoPicScaled
		        
		      End If
		    End If
		    
		  Next
		  CurrentGroup=GroupNo
		  SegmentedControl1.items(1).Title=Str(CurrentGroup)+"/"+Str(NumberOfGroups)
		  
		  Exception err
		    ExceptionHandler(err,"ProfileMergeWinWin:LoadGroup")
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
		  Dim f As folderitem
		  dim TFname as string
		  
		  TFname=NthField(RegulatorList.Cell(RegulatorList.SelectedRowIndex,1),"_",2)
		  If InStr(tfname,"_")>0 Then
		    TFname=NthField(TFname,"_",1)
		  End If
		  logowin.Title="SigmoID: "+TFname+" (RegulonDB)"
		  
		  
		  f=New FolderItem(RegulatorList.Cell(RegulatorList.SelectedRowIndex,6), FolderItem.PathModes.Native)
		  If f<> Nil Then
		    
		    logowin.LoadAlignment(f)
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
		    
		    'determine site width(s):
		    dim instream as TextInputStream
		    dim aLine as string
		    minLen=100
		    maxLen=0
		    InStream = f.OpenAsTextFile
		    
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
		      MsgBox "can't read profile from "+f.ShellPath
		    end if
		    
		  else
		    MsgBox "can't find profile at "+f.ShellPath
		  end if
		  
		  
		  
		  
		  
		  
		  Exception err
		    if err isa IOException then
		      msgbox "A problem creating/reading temporaty file. Please try to clean your temp folder"
		    end if
		    ExceptionHandler(err,"RegulonDBWin:ShowLogo")
		    
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		CurrentGroup As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		NumberOfGroups As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		TF_name As String
	#tag EndProperty


#tag EndWindowCode

#tag Events RegulatorList
	#tag Event
		Sub Change()
		  If Me.SelectedRowCount=1 Then
		    LogoButton.Enabled=True
		    TrashButton.Enabled=True
		    InfoButton.Enabled=true
		    InfoButton.HelpTag=""
		  Else
		    LogoButton.Enabled=False
		    TrashButton.Enabled=False
		    InfoButton.Enabled=False
		    InfoButton.HelpTag="Select a single profile to enable this button"
		    TrashButton.HelpTag="Select a single profile to enable this button"
		  End If
		  
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
		  // RegulatorList columns are:
		  ' 0 - Checkbox
		  ' 1 - Sig file Name
		  ' 2 - Number of sites used to build the motif 
		  ' 3 - Information content (bits)
		  ' 4 - Operator width
		  ' 5 - Logo picture
		  ' 6 - (invisible) sig file path
		  
		  Me.ColumnWidths="20,250,45,80,65,*,0" 'the last column just stores the file path 
		  Me.ColumnType(0)=Listbox.TypeCheckbox
		  Me.DefaultRowHeight=102  'LogoPic.Height=100
		  
		  
		End Sub
	#tag EndEvent
	#tag Event
		Function CellBackgroundPaint(g As Graphics, row As Integer, column As Integer) As Boolean
		  Dim colWidth, offset As Double
		  Dim ws As String
		  Dim p As picture
		  
		  // Logo centering doesn't seem appropriate here?
		  
		  // calculate logo column width 
		  ' column widths are currently set as
		  ' 20,300,60,40,*,0
		  
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
		  If column=0 Then
		    Dim m,n,count As Integer
		    m=Me.RowCount-1
		    For n=0 To m
		      If Me.CellCheckBoxValueAt(n,0) Then
		        count=count+1
		      End If
		    Next
		    If Count>1 Then
		      MergeButton.enabled=True
		      MergeButton.HelpTag=""
		    Else
		      MergeButton.enabled=False
		      MergeButton.HelpTag="Select two or more profiles to enable this button"
		    End If
		  End If
		  
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
		  'Display profile info
		  
		  Dim f As folderitem
		  Dim infoFile As FolderItem
		  Dim basename As String
		  Dim thePath As String
		  Dim Info As String
		  
		  thePath=RegulatorList.Cell(RegulatorList.SelectedRowIndex,6)
		  f=New FolderItem(thePath, FolderItem.PathModes.Native)
		  If f<> Nil Then
		    Dim vv As VirtualVolume
		    vv=f.openAsVirtualVolume
		    If vv<> Nil Then
		      basename=NthField(f.DisplayName,".sig",1)
		      'TFname=NthField(basename,"_",1)
		      'If InStr(tfname,"_")>0 Then
		      'TFname=NthField(TFname,"_",1)
		      'End If
		      InfoFile=vv.root.child(basename+".info")
		      
		      Dim tis As TextInputStream
		      
		      tis=TextInputStream.Open(InfoFile)
		      If tis<>Nil Then
		        Info=tis.ReadAll
		        ProfileInfoWin.InfoArea.Text=Info
		        ProfileInfoWin.show
		      End If
		      
		      
		    End If
		  End If
		  
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
#tag Events SegmentedControl1
	#tag Event
		Sub Action(itemIndex as integer)
		  Dim s0 As SegmentedControlItem = SegmentedControl1.Items( 0 )
		  Dim s1 As SegmentedControlItem = SegmentedControl1.Items( 1 )
		  Dim s2 As SegmentedControlItem = SegmentedControl1.Items( 2 )
		  
		  If CurrentGroup >= 0 Then
		    If itemIndex = 0 Then
		      'show previous hit
		      CurrentGroup=CurrentGroup-1
		    Elseif itemIndex = 2 then
		      'show next hit
		      CurrentGroup=CurrentGroup+1
		    End If
		    
		    
		    If CurrentGroup=1 Then
		      s0.Enabled=false
		    else
		      s0.Enabled=true
		    end if
		    
		    If CurrentGroup=NumberOfGroups Then
		      s2.Enabled=false
		    else
		      s2.Enabled=true
		    end if
		    
		    LoadGroup(CurrentGroup)
		  else
		    'beep
		  end if
		  
		  Exception err
		    ExceptionHandler(err,"ProfileMergeWin:SegmentedControl1:Action")
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  #If TargetCocoa
		    Me.Items(0).icon=SystemIcons.GoLeftTemplate
		    Me.Items(2).Icon=SystemIcons.GoRightTemplate
		  #EndIf
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events MergeButton
	#tag Event
		Sub Action()
		  // Merge selected profiles
		  '  Protein seq is taken from the profile with most sites
		  
		  Dim m,n As Integer
		  Dim numerousRow As Integer = 0
		  Dim HighestCount As Integer = 0
		  Dim currentCount As Integer
		  Dim f As folderitem
		  
		  m=RegulatorList.RowCount-1
		  
		  'Select the "best" profile as the base
		  For n=0 To m
		    If RegulatorList.CellCheckBoxValueAt(n,0) Then
		      CurrentCount=val(RegulatorList.CellValueAt(n,2))
		      If CurrentCount>HighestCount Then
		        HighestCount=CurrentCount
		        numerousRow=n
		      End If
		    End If
		  Next
		  
		  
		  'Merge fasta files and info
		  Dim Operators, Infos, refs, curs, basename As String
		  Dim vvFile As folderitem
		  Infos="   This profile was generated by automated merge of the following profiles:"+EndOfLine.UNIX
		  For n=0 To m
		    If RegulatorList.CellCheckBoxValueAt(n,0) Then
		      f=New FolderItem(RegulatorList.CellValueAt(n,6), FolderItem.PathModes.Native)
		      Infos=Infos+f.DisplayName+EndOfLine.UNIX
		      If f<> Nil Then
		        Dim vv As VirtualVolume
		        vv=f.openAsVirtualVolume
		        If vv<> Nil Then
		          basename=NthField(f.DisplayName,".sig",1)
		          
		          vvFile=vv.root.child(basename+".fasta")
		          Dim tis As TextInputStream
		          tis=TextInputStream.Open(vvFile)
		          If tis<>Nil Then
		            Operators=Operators+tis.ReadAll
		            tis.close
		          End If
		          
		          vvFile=vv.root.child(basename+".info")
		          tis=TextInputStream.Open(vvFile)
		          If tis<>Nil Then
		            Infos=Infos+tis.ReadAll+EndOfLine.UNIX+EndOfLine.UNIX
		            tis.close
		          End If
		          
		          vvFile=vv.root.child(basename+".refs")
		          If vvFile<>Nil Then
		            If vvFile.exists Then
		              tis=TextInputStream.Open(vvFile)
		              If tis<>Nil Then
		                refs=refs+tis.ReadAll
		                tis.close
		              End If
		            End If
		          End If
		          
		          vvFile=vv.root.child(basename+".cur")
		          If vvFile<>Nil Then
		            If vvFile.exists Then
		              tis=TextInputStream.Open(vvFile)
		              If tis<>Nil Then
		                refs=refs+tis.ReadAll
		                tis.close
		              End If
		            End If
		          End If
		        End If
		      End If
		      
		    End If
		  Next
		  
		  'Get remaining parameters from the best profile
		  Dim Options,cutoffs,aline As String
		  f=New FolderItem(RegulatorList.CellValueAt(numerousRow,6), FolderItem.PathModes.Native)
		  If f<> Nil Then
		    Dim vv As VirtualVolume
		    vv=f.openAsVirtualVolume
		    If vv<> Nil Then
		      basename=NthField(f.DisplayName,".sig",1)
		      vvFile=vv.root.child(basename+".options")
		      
		      
		      'get profile calibration values
		      
		      'Calculate Info Content
		      Dim IC As Double
		      IC=Fasta2IC(Operators)
		      
		      'Guess the hmm cutoffs
		      cutoffs=Bits2thresholds(IC)
		      
		      'Assemble modified options file
		      Dim InStream As TextInputStream
		      InStream = vvFile.OpenAsTextFile
		      InStream = vvFile.OpenAsTextFile
		      Options=InStream.ReadAll
		      InStream.close
		      Dim o1, o2, sep As String
		      
		      sep="// nhmmer options"
		      o1=NthField(options,sep,1)+sep+EndOfLine.UNIX+"////"+EndOfLine.UNIX+EndOfLine.UNIX
		      
		      sep="// HmmGen options"
		      o2=NthField(options,sep,2)
		      
		      Options=o1+cutoffs+EndOfLine.UNIX+EndOfLine.UNIX+"////"+EndOfLine.UNIX+sep+o2
		      
		    End If
		  End If
		  
		  
		  
		  
		  
		  
		  'Write the merged profile
		  
		  
		  'If AlignmentFile<>Nil And AlignmentFile.Exists Then
		  
		  'assemble file name
		  Dim sep,fname As String
		  sep="// CRtag sequence"+EndOfLine.UNIX+"CRtag "
		  fname=NthField(Options, sep,2)
		  fname=NthField(fname,EndOfLine.UNIX,1)+"_"
		  sep="HmmGen.-q bound_moiety#"
		  fname=fname+NthField(Options, sep,2)
		  fname=NthField(fname,EndOfLine.UNIX,1)+".sig"
		  
		  
		  Dim SigFile As FolderItem
		  Dim dlg As New SaveAsDialog
		  dlg.InitialDirectory=f.Parent
		  dlg.promptText="Select where to save the merged file"
		  dlg.SuggestedFileName=fname
		  dlg.Title="Save .sig file"
		  dlg.Filter=FileTypes.Sig_file
		  dlg.CancelButtonCaption=kCancel
		  dlg.ActionButtonCaption=kSave
		  
		  SigFile=dlg.ShowModal
		  If SigFile = Nil Then Return
		  
		  'SigFile=f.parent.Child(fname)
		  If SigFile<>Nil Then
		    Dim SigFileVV As VirtualVolume
		    SigFileVV = SigFile.CreateVirtualVolume
		    If SigFileVV <> Nil Then
		      basename= NthField(SigFile.DisplayName,".sig",1)
		      
		      'Write fasta file:
		      Dim fastafile As FolderItem
		      Dim f2 As folderitem =SigFileVV.Root.child(basename+".fasta")
		      Dim outstream As TextOutputStream
		      If f2<>Nil Then
		        fastafile=f2
		        outstream = TextOutputStream.Create(f2)
		        If outstream=Nil Then Return 
		        outstream.Write(Operators)
		        outstream.close
		      End If
		      
		      
		      'Write options file:
		      
		      f2=SigFileVV.Root.child(basename+".options")
		      If f2<>Nil Then
		        'dim outstream As TextOutputStream
		        outstream = TextOutputStream.Create(f2)
		        If outstream=Nil Then Return 
		        outstream.Write(Options)
		        outstream.close
		      End If
		      
		      
		      'Write info file:
		      
		      f2=SigFileVV.Root.child(basename+".info")
		      If f2<>Nil Then
		        outstream = TextOutputStream.Create(f2)
		        outstream.Write(Infos)
		        outstream.close
		      End If
		      
		      'Write refs file:
		      
		      f2=SigFileVV.Root.child(basename+".refs")
		      If f2<>Nil Then
		        outstream = TextOutputStream.Create(f2)
		        outstream.Write(refs)
		        outstream.close
		      End If
		      
		      'Write curators file:
		      
		      f2=SigFileVV.Root.child(basename+".cur")
		      If f2<>Nil Then
		        outstream = TextOutputStream.Create(f2)
		        outstream.Write(curs)
		        outstream.close
		      End If
		      
		      'Write meme file:
		      
		      f2=SigFileVV.Root.child("meme.txt")
		      If f2<>Nil Then
		        outstream = TextOutputStream.Create(f2)
		        outstream.Write(fasta2meme(operators))
		        outstream.close
		      End If
		      
		      ''Save MEME data
		      'Dim palindromic As Boolean
		      'If InStr(Options, "HmmGen.-p")>0 Then
		      'palindromic=True
		      'Else
		      'palindromic=False
		      'End If
		      '
		      'If MEMEconvert(Fastafile,Palindromic)=0 Then
		      'Dim file2copy As folderitem
		      'file2copy=TemporaryFolder.child("meme.txt")                     'meme.txt
		      'If file2copy<>Nil And file2copy.exists Then
		      'CopyFileToVV(file2copy,SigFileVV)
		      '
		      'If file2copy.LastErrorCode <> 0 Then
		      'MsgBox "MEME result file copy error"
		      'End If
		      'Else
		      ''this file is optional
		      'End If
		      'End
		      
		      Dim stock As FolderItem = TemporaryFolder.child("stock")
		      Stockholm(FastaFile,stock, cutoffs)
		      
		      
		      'build hmm:
		      'need a real file for hmmbuild output:
		      f2 = TemporaryFolder.child(basename+".hmm")      'place to save
		      If f2<>Nil Then
		        FixPath4Windows(f2)
		        If hmmbuild(stock.ShellPath,f2.ShellPath) Then
		          If f2.exists Then
		            If f2<>Nil Then
		              CopyFileToVV(f2,SigFileVV)
		              logowin.WriteToSTDOUT(EndOfLine+"sig file written to "+SigFile.ShellPath)
		              LogoWin.BuildTBButtonMenu 'in case the .sig is saved to the active profiles dir
		            Else
		              'beep
		            End If
		          Else
		            'beep
		          End If
		        Else
		          'error message handled by hmmbuild most of the time
		          logowin.WriteToSTDOUT(EndOfLine+"hmmbuild error")
		          Return
		        End If
		      Else
		        MsgBox "Creating hmm failed"
		        Return
		      End If
		    Else
		      MsgBox "Can't create .sig file here. Please try another location."
		      
		    End If
		  Else
		    MsgBox "Can't create .sig file here. Please try another location."
		  End If
		  'Else
		  'MsgBox "No alignment file found in the chosen folder. Can't proceed without it"
		  'Return
		  'End If
		  
		  
		  'move original profiles to trash
		  If TrashBox.value Then
		    For n=m downto 0
		      If RegulatorList.CellCheckBoxValueAt(n,0) Then
		        f=New FolderItem(RegulatorList.CellValueAt(n,6), FolderItem.PathModes.Native)
		        If f<>Nil Then
		          f.MoveToTrash
		          RegulatorList.RemoveRowAt(n)
		        End If
		      End If
		    Next
		  End If
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events DeselectAllButton
	#tag Event
		Sub Action()
		  Dim k As Integer
		  
		  for k=0 to RegulatorList.ListCount-1
		    RegulatorList.CellCheck(k,0) = false
		  next
		  
		  MergeButton.Enabled=False
		  LogoButton.Enabled=False
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SelectAllButton
	#tag Event
		Sub Action()
		  Dim k As Integer
		  
		  for k=0 to RegulatorList.ListCount-1
		    RegulatorList.CellCheck(k,0) = True
		  next
		  
		  MergeButton.Enabled=True
		  LogoButton.Enabled=False
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TrashButton
	#tag Event
		Sub Open()
		  #If TargetCocoa Then
		    Me.Icon=SystemIcons.TrashFull(20,20)
		    me.Caption=""
		  #endif
		  
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Action()
		  'Move selected profile to trash
		  
		  Dim f As folderitem
		  Dim infoFile As FolderItem
		  Dim basename As String
		  Dim thePath As String
		  Dim Info As String
		  
		  thePath=RegulatorList.Cell(RegulatorList.SelectedRowIndex,6)
		  f=New FolderItem(thePath, FolderItem.PathModes.Native)
		  If f<> Nil Then
		    
		    
		    
		    Dim d As New MessageDialog  //declare the MessageDialog object
		    Dim b As MessageDialogButton //for handling the result
		    d.icon=MessageDialog.GraphicCaution   //display warning icon
		    d.ActionButton.Caption="Trash"
		    d.CancelButton.Visible=True     //show the Cancel button
		    d.CancelButton.Caption=kCancel
		    'd.AlternateActionButton.Visible=True   //show the "Don't Save" button
		    'd.AlternateActionButton.Caption=kDontSave
		    d.Message="Really move the selected profile to the trash?"
		    'd.Explanation="If you don't save, your changes will be lost. "
		    
		    b=d.ShowModalwithin(Self)     //display the dialog
		    Select Case b //determine which button was pressed.
		    Case d.ActionButton
		      //user pressed Trash
		      f.MoveToTrash
		      RegulatorList.RemoveRowAt(RegulatorList.SelectedRowIndex)
		      'Case d.AlternateActionButton
		      //user pressed Don't Trash
		    Case d.CancelButton
		      Return 'True //cancel the action
		    End select
		    
		    
		  End If
		  
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
	#tag ViewProperty
		Name="CurrentGroup"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="NumberOfGroups"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
