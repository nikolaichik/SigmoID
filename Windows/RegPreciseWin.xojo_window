#tag Window
Begin Window RegPreciseWin
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   400
   ImplicitInstance=   True
   LiveResize      =   True
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
   Title           =   "RegPrecise"
   Visible         =   False
   Width           =   672
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
      Left            =   20
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
      Text            =   "Genome:"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   20
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   62
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
      InitialValue    =   "(select a genome)"
      Italic          =   False
      Left            =   94
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
      Width           =   558
   End
   Begin Listbox RegulatorList
      AutoDeactivate  =   True
      AutoHideScrollbars=   True
      Bold            =   False
      Border          =   True
      ColumnCount     =   3
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
      InitialValue    =   "Regulator	Effector	Pathway"
      Italic          =   False
      Left            =   20
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
      Width           =   632
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin PushButton ViewLogoButton
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "View logo"
      Default         =   True
      Enabled         =   False
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   552
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   360
      Underline       =   False
      Visible         =   True
      Width           =   100
   End
   Begin mHTTPSocket RegPreciseSocket
      Address         =   ""
      BytesAvailable  =   0
      BytesLeftToSend =   0
      Handle          =   0
      Height          =   32
      httpProxyAddress=   ""
      httpProxyPort   =   0
      Index           =   -2147483648
      IsConnected     =   False
      LastErrorCode   =   0
      Left            =   40
      LocalAddress    =   ""
      LockedInPosition=   False
      Port            =   0
      RemoteAddress   =   ""
      Scope           =   0
      TabPanelIndex   =   0
      Top             =   40
      Width           =   32
      yield           =   False
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
      Width           =   88
   End
End
#tag EndWindow

#tag WindowCode
	#tag Method, Flags = &h0
		Sub FillRegulatorList(JSONin as JSONItem)
		  'Populates the RegulatorList and stores regulator JSONs in an array
		  'the popup and array indices are the same
		  
		  dim regulators as JSONItem
		  dim n as integer
		  
		  RegulatorList.DeleteAllRows
		  
		  redim regulatorArray(-1)
		  regulators=JSONin.Value("regulon")
		  if regulators.IsArray then
		    for n=0 to regulators.Count-1
		      if regulators(n) isa JSONItem then
		        'should contain smth like:
		        '{"effector":"Tyrosine; Phenylalanine","genomeId":"356",
		        '"genomeName":"Erwinia carotovora subsp. atroseptica SCRI1043",
		        '"pathway":"Aromatic amino acid metabolism","regulationType":"TF","regulatorFamily":"TyrR",
		        '"regulatorName":"TyrR","regulogId":"1118","regulonId":"10175"}
		        
		        if JSONItem(regulators(n)).Value("regulationType")="TF" then 'exclude the RNAs for now
		          regulatorArray.append regulators(n)
		          dim s1, s2, s3 as string
		          s1=JSONItem(regulators(n)).Value("regulatorName")
		          s2=JSONItem(regulators(n)).Value("effector")
		          s3=JSONItem(regulators(n)).Value("pathway")
		          Dim reg() As String = Array(s1, s2, s3)
		          regulatorList.AddRow(reg)
		        end if
		      end if
		      
		    next
		    
		    'sort the list:
		    regulatorList.ColumnsortDirection(0)=ListBox.SortAscending
		    regulatorList.SortedColumn=0   //first column is the sort column
		    regulatorList.Sort
		    
		    RegulatorList.Enabled=true
		  else
		    'A problem with JSON
		    
		  end if
		  
		  
		  Exception err
		    ExceptionHandler(err,"RegPreciseWin:GenomeStats2array")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GenomeStats2array(JSONin as JSONItem)
		  'Populates the GenomesPopup and stores genome JSONs in an array
		  'the popup and array indices are the same
		  
		  dim genomes as JSONItem
		  dim GenomeString as string
		  dim n as integer
		  
		  GenomesPopup.DeleteAllRows
		  
		  redim GenomeStatsArray(-1)
		  genomes=JSONin.Value("genomeStat")
		  if genomes.IsArray then
		    for n=0 to genomes.Count-1
		      if genomes(n) isa JSONItem then
		        'should contain smth like:
		        '{"genomeId":"601","name":"Acetobacter pasteurianus IFO 3283-01","rnaRegulonCount":"0","rnaSiteCount":"0","taxonomyId":"634452","tfRegulonCount":"6","tfSiteCount":"16"}
		        GenomeStatsArray.append genomes(n)
		        GenomeString=JSONItem(genomes(n)).Value("name")+" ("+JSONItem(genomes(n)).Value("tfRegulonCount")+" regulons)"
		        GenomesPopup.AddRow(genomestring)
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
		Sub GetVersion()
		  SocketTask="release"
		  RegPreciseSocket.Get("http://regprecise.lbl.gov/Services/rest/release")
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadGenomes()
		  
		  SocketTask="genomes"
		  RegPreciseSocket.Get("http://regprecise.lbl.gov/Services/rest/genomeStats")
		  
		  'ProgressWheel1.top=BLASTSearchViewer.top+SPSearchViewer.Height/3
		  'ProgressWheel1.Visible=true
		  'ProgressWheel1.Enabled=true
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadRegulators(GenomeID as string)
		  if me.title="RegPrecise: regulons" then
		    'regulons
		    SocketTask="regulons"
		    RegPreciseSocket.Get("http://regprecise.lbl.gov/Services/rest/regulons?genomeId="+GenomeID)
		    
		  else
		    'regulogs
		    SocketTask="regulogs"
		    RegPreciseSocket.Get("http://regprecise.lbl.gov/Services/rest/regulogs?genomeId="+GenomeID)
		    
		  end if
		  
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		GenomeStatsArray(-1) As JSONItem
	#tag EndProperty

	#tag Property, Flags = &h0
		RegPreciseVersion As String
	#tag EndProperty

	#tag Property, Flags = &h0
		RegulatorArray(-1) As JSONItem
	#tag EndProperty

	#tag Property, Flags = &h0
		SocketTask As String
	#tag EndProperty


#tag EndWindowCode

#tag Events GenomesPopup
	#tag Event
		Sub Change()
		  'GenomeStatsArray contain JSONs like this:
		  '{"genomeId":"601","name":"Acetobacter pasteurianus IFO 3283-01","rnaRegulonCount":"0","rnaSiteCount":"0","taxonomyId":"634452","tfRegulonCount":"6","tfSiteCount":"16"}
		  
		  
		  
		  LoadRegulators(GenomeStatsArray(me.ListIndex).Value("genomeId"))
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RegulatorList
	#tag Event
		Sub Change()
		  if me.SelCount=1 then
		    ViewLogoButton.Enabled=true
		  else
		    ViewLogoButton.Enabled=false
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
		  me.ColumnWidths="14%,43%,43%"
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ViewLogoButton
	#tag Event
		Sub Action()
		  dim RegulonID, TFname as string
		  dim n as integer
		  
		  'RegulonID=regulatorArray(RegulatorList.ListIndex).Value("regulonId")
		  'as regulator list can be reordered by sorting, we can't use row number to get the ID,
		  'therefore, a full search of the regulator array is required
		  
		  TFname=RegulatorList.Cell(RegulatorList.ListIndex,0)
		  for n=0 to UBound(regulatorArray)
		    if JSONitem(regulatorArray(n)).Value("regulatorName")=TFname then
		      RegulonID=JSONitem(regulatorArray(n)).Value("regulonId")
		      exit
		    end if
		    
		  next
		  
		  
		  
		  LogoWin.show
		  LogoWin.LoadRegpreciseData(RegulonID,TFname)
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RegPreciseSocket
	#tag Event
		Sub PageReceived(url as string, httpStatus as integer, headers as internetHeaders, content as string)
		  
		  ProgressWheel1.Visible=false
		  ProgressWheel1.Enabled=false
		  dim JSN as new JSONItem
		  JSN.load(content)
		  
		  Select case SocketTask
		  case "release"
		    
		    RegPreciseVersion=JSN.value("majorVersion")+"."+JSN.value("mionrVersion")+" "+JSN.value("releaseDate")
		  case "genomes"
		    'populate the GenomesPopup:
		    GenomeStats2array(JSN)
		  case "regulons"
		    'populate the RegulatorList:
		    FillRegulatorList(JSN)
		  case "regulogs"
		    'populate the RegulatorList:
		    beep
		  End Select
		End Sub
	#tag EndEvent
	#tag Event
		Sub Connected()
		  if SocketTask<>"release" then
		    ProgressWheel1.top=RegulatorList.top+RegulatorList.Height/3
		    ProgressWheel1.Visible=true
		    ProgressWheel1.Enabled=true
		  end if
		  
		  
		  
		  Exception err
		    ExceptionHandler(err,"GenomeWin:SPSocket")
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
			"10 - Drawer Window"
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
