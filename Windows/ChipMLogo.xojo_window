#tag Window
Begin Window ChipMLogo
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
   Title           =   "Motifs logo"
   Visible         =   False
   Width           =   600
   Begin Listbox Listbox1
      AutoDeactivate  =   True
      AutoHideScrollbars=   True
      Bold            =   False
      Border          =   True
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
      Height          =   356
      HelpTag         =   ""
      Hierarchical    =   False
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
      Scope           =   0
      ScrollbarHorizontal=   False
      ScrollBarVertical=   True
      SelectionType   =   0
      ShowDropIndicator=   False
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   0
      Transparent     =   True
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   600
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin PushButton PushButton1
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Save fasta file"
      Default         =   True
      Enabled         =   True
      Height          =   37
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   450
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   360
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   130
   End
   Begin PushButton PushButton2
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Load Logo"
      Default         =   True
      Enabled         =   True
      Height          =   37
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   281
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   360
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   141
   End
End
#tag EndWindow

#tag WindowCode
	#tag Method, Flags = &h0
		Function filterSitesVal(val as double, row as integer) As string
		  dim m as Motif=me.Listbox1.CellTag(row, 4)
		  dim fasta as string
		  for each s as Site in m.Sites
		    fasta=""
		    for i as integer = 0 to Ubound(m.Sites)
		      if m.Sites(i).qualValue>=val then
		        fasta=fasta+str(m.Sites(i).id)+" "+str(m.Sites(i).qualValue)+" "+m.Sites(i).strand+EndOfLine.UNIX+m.Sites(i).seq+EndOfLine.UNIX
		      end
		    next
		  next
		  return fasta
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub populateListbox()
		  Dim fasta As String
		  for each m as Motif in me.Motifs
		    fasta=""
		    for i as integer = 0 to Ubound(m.Sites)
		      fasta=fasta+str(m.Sites(i).id)+" "+str(m.Sites(i).qualValue)+" "+m.Sites(i).strand+EndOfLine.UNIX+m.Sites(i).seq+EndOfLine.UNIX
		    next
		    dim p as Picture = MakeLogoPic(fasta)
		    me.Listbox1.AddRow
		    me.Listbox1.Cell(me.Listbox1.LastIndex,0)="Motif #"+str(m.number)+" "+m.type
		    me.Listbox1.Cell(me.Listbox1.LastIndex,1)=m.valrange
		    me.Listbox1.Cell(me.Listbox1.LastIndex,2)="input value here"
		    me.Listbox1.RowTag(me.Listbox1.LastIndex)=p
		    me.Listbox1.CellTag(me.Listbox1.LastIndex,4)=m
		    me.Listbox1.CellTag(me.Listbox1.LastIndex,5)=fasta
		  next
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Motifs() As Motif
	#tag EndProperty

	#tag Property, Flags = &h0
		row As integer
	#tag EndProperty


#tag EndWindowCode

#tag Events Listbox1
	#tag Event
		Sub Open()
		  'me.ColumnWidths="15%,20%,15%,200,0%,0%"
		  Me.ColumnWidths="130,100,130,*,0,0"
		  
		  Me.DefaultRowHeight=62  
		  me.ColumnType(2)=Listbox.TypeEditable
		  me.Heading(0)="#"
		  me.Heading(1)="Value range"
		  me.Heading(2)="define sites threshold"
		  me.Heading(3)="Logo"
		  
		End Sub
	#tag EndEvent
	#tag Event
		Function CellBackgroundPaint(g As Graphics, row As Integer, column As Integer) As Boolean
		  dim p as picture
		  
		  if Column=3 then
		    if row<=me.lastindex then
		      p=me.rowtag(row)
		      g.DrawPicture(p, 0, 0)  
		    end if
		  end if
		  Return True
		End Function
	#tag EndEvent
	#tag Event
		Sub CellAction(row As Integer, column As Integer)
		  dim b as Boolean
		  dim filfasta as string
		  dim value as double
		  b=IsNumeric(me.Cell(row, column))
		  if b then
		    value = val(Me.Cell(row,column))
		    filfasta=filterSitesVal(value, row)
		    dim p as Picture = MakeLogoPic(filfasta)
		    Self.Listbox1.RowTag(row)=p
		    
		    self.Listbox1.CellTag(row,5)=filfasta
		  else
		    MsgBox("Only numeric values are acceptable")
		  end
		End Sub
	#tag EndEvent
	#tag Event
		Function CellClick(row as Integer, column as Integer, x as Integer, y as Integer) As Boolean
		  if column=2 then
		    Self.Listbox1.Cell(row,column)=""
		  end
		  self.row=row
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events PushButton1
	#tag Event
		Sub Action()
		  Dim dlg As New SaveAsDialog
		  dlg.SuggestedFileName = " "
		  dlg.ActionButtonCaption = "Select"
		  dlg.Title = "Select Output Folder"
		  dlg.promptText="Where to save fasta file?" 
		  dlg.CancelButtonCaption=kCancel
		  dim ExportFolder as folderitem
		  
		  ExportFolder=dlg.ShowModalwithin(self)
		  if ExportFolder=nil then
		    msgbox "No folder to save. Stopping."
		    return
		  end if
		  Try
		    // TextOutputStream.Create raises an IOException if it can't open the file for some reason.
		    Dim t As TextOutputStream = TextOutputStream.Create(ExportFolder)
		    t.Write(ConvertEncoding(self.Listbox1.CellTag(self.row,5), Encodings.UTF8))
		    t.Close
		  Catch e As IOException
		    // handle
		  End Try
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton2
	#tag Event
		Sub Action()
		  dim f as folderitem=TemporaryFolder.child("chiplogodata")
		  
		  if f<>nil then
		    if f.Exists then f.Delete
		    dim outstream As TextOutputStream
		    outstream = TextOutputStream.Create(f)
		    outstream.Write(ConvertEncoding(self.Listbox1.CellTag(self.row,5), Encodings.UTF8))
		    outstream.Close
		    LogoWin.LoadAlignment(f)
		  else
		    msgbox "Can't write converted file."
		    return
		  end if
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="BackColor"
		Visible=true
		Group="Background"
		InitialValue="&hFFFFFF"
		Type="Color"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Background"
		Type="Picture"
		EditorType="Picture"
	#tag EndViewProperty
	#tag ViewProperty
		Name="CloseButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Group="OS X (Carbon)"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Frame"
		Visible=true
		Group="Frame"
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
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreenButton"
		Visible=true
		Group="Frame"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackColor"
		Visible=true
		Group="Background"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Size"
		InitialValue="400"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Behavior"
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
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Group="OS X (Carbon)"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxHeight"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxWidth"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBar"
		Visible=true
		Group="Menus"
		Type="MenuBar"
		EditorType="MenuBar"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Visible=true
		Group="Deprecated"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinHeight"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinWidth"
		Visible=true
		Group="Size"
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
		Group="Behavior"
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
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="row"
		Group="Behavior"
		Type="integer"
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
		Group="Frame"
		InitialValue="Untitled"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Size"
		InitialValue="600"
		Type="Integer"
	#tag EndViewProperty
#tag EndViewBehavior
