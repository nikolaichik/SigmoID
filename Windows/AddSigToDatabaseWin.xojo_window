#tag Window
Begin Window AddSigToDatabaseWin
   Backdrop        =   0
   BackgroundColor =   &cFFFFFF00
   Composite       =   False
   DefaultLocation =   "0"
   FullScreen      =   False
   HasBackgroundColor=   False
   HasCloseButton  =   True
   HasFullScreenButton=   False
   HasMaximizeButton=   True
   HasMinimizeButton=   True
   Height          =   384
   ImplicitInstance=   True
   MacProcID       =   0
   MaximumHeight   =   32000
   MaximumWidth    =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinimumHeight   =   64
   MinimumWidth    =   64
   Resizeable      =   True
   Title           =   "Untitled"
   Type            =   "0"
   Visible         =   True
   Width           =   338
   Begin PushButton RunButton
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "#kRun"
      Default         =   True
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   248
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      MacButtonStyle  =   "0"
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   354
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   90
   End
   Begin PushButton CancelButt
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   True
      Caption         =   "#kCancel"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   132
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      MacButtonStyle  =   "0"
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   354
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   90
   End
   Begin Listbox SigList
      AllowAutoDeactivate=   True
      AllowAutoHideScrollbars=   True
      AllowExpandableRows=   False
      AllowFocusRing  =   True
      AllowResizableColumns=   False
      AllowRowDragging=   False
      AllowRowReordering=   False
      Bold            =   False
      ColumnCount     =   2
      ColumnWidths    =   ""
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
      HasHeader       =   False
      HasHorizontalScrollbar=   False
      HasVerticalScrollbar=   True
      HeadingIndex    =   -1
      Height          =   317
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      RequiresSelection=   False
      RowSelectionType=   "0"
      Scope           =   0
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   "The genome will be searched with all the profiles checked"
      Top             =   0
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   338
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
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
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   320
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   120
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
      Left            =   132
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      MenuStyle       =   "0"
      Scope           =   0
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   320
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   120
   End
   Begin BevelButton BevelButton3
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
      Icon            =   0
      IconAlignment   =   "0"
      IconDeltaX      =   0
      IconDeltaY      =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   258
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      MenuStyle       =   "0"
      Scope           =   0
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   320
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   80
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  BuildSigArray
		  AdjustLayout4linux(me)
		  'me.Hide
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h1, Description = 4275696C645369674172726179
		Protected Sub BuildSigArray()
		  dim m,n as integer
		  dim f as folderitem
		  dim aName as string
		  
		  f=Profile_f
		  m=f.Count
		  for n=1 to m
		    'dim dis as string= f.Item(n).DisplayName+": "+f.Item(n).type
		    'msgbox dis
		    #if Target64Bit 
		      if right(f.Item(n).name,4)=".sig" then
		        aName = f.Item(n).DisplayName
		        aName = left(aName,len(aName)-4) 'drop the .sig part
		        SigList.AddRow
		        SigList.Cell(SigList.LastIndex, 1) = aName
		        SigList.CellCheck(SigList.LastIndex,0) = true
		      end if
		    #else
		      if f.Item(n).Type="SigmoidFile" then
		        aName = f.Item(n).DisplayName
		        aName = left(aName,len(aName)-4) 'drop the .sig part
		        SigList.AddRow
		        SigList.Cell(SigList.LastIndex, 1) = aName
		        SigList.CellCheck(SigList.LastIndex,0) = true
		      end if
		    #endif
		  next
		  SigList.SortedColumn=1
		  SigList.ColumnsortDirection(1)=ListBox.SortAscending
		  SigList.sort
		  
		  Exception err
		    ExceptionHandler(err,"ScanGenomeWin:BuildSigArray")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub WriteToDatabase()
		  dim m,n as integer
		  dim f as folderitem
		  
		  m=Profile_f.Count-1
		  dim basename as string
		  dim vv as VirtualVolume
		  
		  for n=0 to m
		    if SigList.CellCheck(n,0) = true AND Profile_f.Item(n+1).DisplayName=SigList.Cell(n,1)+".sig" then
		      basename=SigList.Cell(n,1)
		      vv=Profile_f.Item(n+1).openAsVirtualVolume
		      If vv.root <> Nil Then
		        var pars as new Parser()
		        var res as boolean = pars.ParseFolder(vv.root, basename)
		        var map as new Dictionary()
		        If res Then
		          map = pars.outputMap
		        Else
		          logowin.WriteToSTDOUT("Error in parsing sig.-file." + EndOfLine)
		        End if
		        For i as integer=0 to pars.warnings.Count-1
		          logowin.WriteToSTDOUT(pars.warnings(i)+EndOfLine)
		        Next
		        map.Value("ProteinID") = "TEST"+map.Value("ProteinID") // This is for tests
		        var importer as new DBimporter()
		        res = importer.import(map)
		        If not res Then
		          logowin.WriteToSTDOUT(importer.error + EndOfLine)
		        End if
		        For i as integer=0 to importer.warnings.Count-1
		          logowin.WriteToSTDOUT(importer.warnings(i)+EndOfLine)
		        Next
		      Else
		        logowin.WriteToSTDOUT("Error: sig.-file not found." + EndOfLine)
		      End if
		    End if
		  next
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		SigArrayCount As Integer
	#tag EndProperty


#tag EndWindowCode

#tag Events RunButton
	#tag Event
		Sub Action()
		  
		  self.hide
		  self.WriteToDatabase
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CancelButt
	#tag Event
		Sub Action()
		  self.hide
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SigList
	#tag Event
		Sub Open()
		  me.ColumnWidths="30,*"
		  me.ColumnType(0)=Listbox.TypeCheckbox
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SelectAllButton
	#tag Event
		Sub Action()
		  dim k as integer
		  
		  for k=0 to SigList.ListCount-1
		    SigList.CellCheck(k,0) = true
		  next
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events DeselectAllButton
	#tag Event
		Sub Action()
		  dim k as integer
		  
		  for k=0 to SigList.ListCount-1
		    SigList.CellCheck(k,0) = false
		  next
		End Sub
	#tag EndEvent
#tag EndEvents
