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
   Height          =   400
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
   Title           =   "RegPrecise"
   Visible         =   False
   Width           =   672
   Begin Listbox RegulatorList
      AutoDeactivate  =   True
      AutoHideScrollbars=   True
      Bold            =   False
      Border          =   True
      ColumnCount     =   4
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
      Height          =   348
      HelpTag         =   ""
      Hierarchical    =   False
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   "TF name	Number of sites	Genes controlled	Site width"
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
      Width           =   672
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin PushButton MEMEButton
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Run MEME..."
      Default         =   False
      Enabled         =   False
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   404
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
      Width           =   118
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
   Begin PushButton LogoButton
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Show Logo"
      Default         =   True
      Enabled         =   False
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   534
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
      Top             =   360
      Underline       =   False
      Visible         =   True
      Width           =   118
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
      Enabled         =   True
      HasBackColor    =   False
      HasMenu         =   0
      Height          =   22
      HelpTag         =   ""
      Icon            =   568940543
      IconAlign       =   1
      IconDX          =   0
      IconDY          =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   358
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
		    RegPreciseRegulonInfo.Text="Regulon Info"
		  end if
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  
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
		    ExceptionHandler(err,"RegPreciseWin:FillRegulatorList")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RegulonInfo()
		  ''get the ID:
		  'dim RegulonID, TFname as string
		  'dim n as integer
		  '
		  'TFname=RegulatorList.Cell(RegulatorList.ListIndex,0)
		  'for n=0 to UBound(regulatorArray)
		  'if JSONitem(regulatorArray(n)).Value("regulatorName")=TFname then
		  'RegulonID=JSONitem(regulatorArray(n)).Value("regulonId")
		  'exit
		  'end if
		  '
		  'next
		  '
		  ''open the RegPrecise page:
		  'RegulonInfo(val(RegulonID),false)
		  
		  Exception err
		    ExceptionHandler(err,"RegPreciseWin:RegPreciseRegulonInfo")
		    
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

#tag Events RegulatorList
	#tag Event
		Sub Change()
		  if me.SelCount=1 then
		    LogoButton.Enabled=true
		    MEMEButton.Enabled=true
		    InfoButton.Enabled=true
		  else
		    LogoButton.Enabled=false
		    MEMEButton.Enabled=false
		    InfoButton.Enabled=false
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
#tag Events MEMEButton
	#tag Event
		Sub Action()
		  dim RegulonID,RegulogID, TFname as string
		  dim n as integer
		  
		  'RegulonID=regulatorArray(RegulatorList.ListIndex).Value("regulonId")
		  'as regulator list can be reordered by sorting, we can't use row number to get the ID,
		  'therefore, a full search of the regulator array is required
		  
		  TFname=RegulatorList.Cell(RegulatorList.ListIndex,0)
		  for n=0 to UBound(regulatorArray)
		    if JSONitem(regulatorArray(n)).Value("regulatorName")=TFname then
		      RegulonID=JSONitem(regulatorArray(n)).Value("regulonId")
		      RegulogID=JSONitem(regulatorArray(n)).Value("regulogId")
		      exit
		    end if
		    
		  next
		  
		  
		  
		  LogoWin.RegulonID=Val(RegulonID)
		  LogoWin.RegulogID=Val(RegulogID)
		  LogoWin.IsRegulog=false
		  LogoWin.LoadRegpreciseData(RegulonID,TFname,false)
		  LogoWin.show
		  
		  Exception err
		    ExceptionHandler(err,"RegPreciseWin:RegulonLogoButton.Action")
		    
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events LogoButton
	#tag Event
		Sub Action()
		  dim RegulogID,RegulonID, TFname as string
		  dim n as integer
		  
		  'RegulonID=regulatorArray(RegulatorList.ListIndex).Value("regulonId")
		  'as regulator list can be reordered by sorting, we can't use row number to get the ID,
		  'therefore, a full search of the regulator array is required
		  
		  TFname=RegulatorList.Cell(RegulatorList.ListIndex,0)
		  for n=0 to UBound(regulatorArray)
		    if JSONitem(regulatorArray(n)).Value("regulatorName")=TFname then
		      RegulonID=JSONitem(regulatorArray(n)).Value("regulonId")
		      RegulogID=JSONitem(regulatorArray(n)).Value("regulogId")
		      exit
		    end if
		    
		  next
		  
		  
		  
		  LogoWin.RegulonID=Val(RegulonID)
		  LogoWin.RegulogID=Val(RegulogID)
		  LogoWin.IsRegulog=true
		  LogoWin.LoadRegpreciseData(RegulogID,TFname,true)
		  LogoWin.show
		  
		  Exception err
		    ExceptionHandler(err,"RegPreciseWin:RegulogLogoButton.Action")
		    
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
