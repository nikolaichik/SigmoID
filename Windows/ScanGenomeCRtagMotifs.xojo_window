#tag Window
Begin Window ScanGenomeCRtagMotifs
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
   Title           =   "Untitled"
   Visible         =   True
   Width           =   600
   Begin PushButton PushButton1
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   True
      Caption         =   "Load profile"
      Default         =   True
      Enabled         =   False
      Height          =   26
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   287
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   361
      Underline       =   False
      Visible         =   True
      Width           =   97
   End
   Begin PushButton PushButton2
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   True
      Caption         =   "Export .sig file"
      Default         =   True
      Enabled         =   False
      Height          =   26
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   396
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
      Top             =   361
      Underline       =   False
      Visible         =   True
      Width           =   120
   End
   Begin PushButton PushButton3
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   True
      Caption         =   "Annotate!"
      Default         =   True
      Enabled         =   False
      Height          =   26
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   185
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
      Top             =   361
      Underline       =   False
      Visible         =   True
      Width           =   90
   End
   Begin Listbox Listbox1
      AutoDeactivate  =   True
      AutoHideScrollbars=   True
      Bold            =   False
      Border          =   True
      ColumnCount     =   7
      ColumnsResizable=   False
      ColumnWidths    =   ""
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   -1
      Enabled         =   True
      EnableDrag      =   False
      EnableDragReorder=   False
      GridLinesHorizontal=   2
      GridLinesVertical=   0
      HasHeading      =   True
      HeadingIndex    =   -1
      Height          =   349
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
      Width           =   600
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
End
#tag EndWindow

#tag WindowCode
	#tag Method, Flags = &h0
		Sub annotateGenome()
		  dim k,SigCount,HitCount as integer
		  dim time as double
		  dim f as folderitem
		  dim infileName, summary(-1) as string
		  dim cdsfile as FolderItem
		  
		  cdsfile=TemporaryFolder.child("gbkProtexport.fasta") 'getting converted gbk file 
		  Logowin.ScanningGenome=true 'to prevent file writing messages
		  infileName=logowin.genomefile.displayname
		  
		  Sigcount=0
		  dim GenomeScanOut as new FolderItem
		  GenomeScanOut = TemporaryFolder.child("GenomeScanOut")
		  time= Microseconds
		  
		  Dim f2 as FolderItem=GetSaveFolderItem("????","hmm_out.gbk")
		  
		  If f2 <> nil then
		    'dim w as new Window1
		    for k=0 to listbox1.ListCount-1
		      if me.listbox1.CellCheck(k,0) = true then
		        
		        dim apath as string=listbox1.Cell(k,5)
		        f=getfolderitem(apath, FolderItem.PathTypeShell)
		        
		        if f.Exists then 
		          LogoWin.LoadAlignment f
		          app.DoEvents  'otherwise logo picture isn't updated
		          nhmmerSettingsWin.GenomeField.text=LogoWin.GenomeFile.ShellPath
		          nhmmerSettingsWin.ReadOptions
		          if NOT LogoWin.nhmmer then
		            'exit on error
		            LogoWin.WriteToSTDOUT(lineEnd+"Genome scan interrupted due to nhmmer error")
		            return
		          end if
		          HmmGenSettingsWin.ReadOptions
		          LogoWin.outfile=GenomeScanOut
		          if NOT LogoWin.HmmGen then
		            'exit on error
		            LogoWin.WriteToSTDOUT(lineEnd+"Genome scan interrupted due to HmmGen.py script error")
		            return
		          end if
		          HitCount=HitCount+LogoWin.LastHitNo
		          dim tmpfile as folderitem
		          tmpfile=TemporaryFolder.child("GenomeScanIn")
		          if tmpfile.Exists then
		            tmpfile.Delete
		          End If
		          GenomeScanOut.CopyFileTo tmpfile
		          LogoWin.genomefile=tmpfile
		          SigCount=SigCount+1
		        end
		      end if
		    next
		  end if
		  
		  
		  if f2.Exists then
		    f2.Delete
		  End If
		  GenomeScanOut.CopyFileTo f2
		  
		  
		  dim min, sec As integer
		  dim timestring As string
		  sec=(Microseconds-Time)/1000000
		  if sec>60 then
		    min=sec/60
		    sec=sec-min*60
		    timestring= str(min)+" minutes "+str(sec)+" seconds "
		  else
		    timestring= str(sec)+" seconds "
		  End If
		  dim sum as Integer = summary.Ubound
		  logowin.WriteToSTDOUT(Endofline.unix+"Summary: "+endofline.UNIX)
		  for i1 as Integer=0 to sum
		    logowin.WriteToSTDOUT(str(summary(i1)))
		  next
		  
		  logowin.WriteToSTDOUT(EndOfLine+EndOfLine+timestring+"spent scanning "+infileName+" with "+str(SigCount)+" profiles." )
		  logowin.WriteToSTDOUT(EndOfLine+str(HitCount)+" sites added to feature table.")
		  logowin.WriteToSTDOUT(EndOfLine+"Modified GenBank file written to "+f2.ShellPath+endofline)
		  Logowin.ScanningGenome=false
		  LogoWin.Refresh
		  
		  Exception err
		    ExceptionHandler(err,"ScanGenomeWinCRtag:ScanGenomeCR")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub loadSigfile(row as string)
		  dim f as FolderItem
		  f=getfolderitem(row, FolderItem.PathTypeShell)
		  LogoWin.LoadAlignment f
		  logowin.ChangeView("Logo")
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		sigpath As string
	#tag EndProperty


#tag EndWindowCode

#tag Events PushButton1
	#tag Event
		Sub Action()
		  loadSigfile(sigpath)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton2
	#tag Event
		Sub Action()
		  Dim dlg As New SelectFolderDialog
		  
		  dlg.ActionButtonCaption = "Select"
		  dlg.Title = "Select Output Folder"
		  dlg.promptText="Where to save .sig files?" 
		  dlg.CancelButtonCaption=kCancel
		  dim ExportFolder as folderitem
		  dim source as FolderItem = GetFolderItem(sigpath, FolderItem.PathTypeShell)
		  ExportFolder=dlg.ShowModalwithin(self)
		  if ExportFolder=nil then
		    msgbox "No folder to save profiles to. Stopping."
		    return
		  end if
		  source.CopyFileTo(ExportFolder)
		  If source.LastErrorCode <> 0 Then
		    msgbox "No folder to save profiles to. Stopping."
		  End If
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton3
	#tag Event
		Sub Action()
		  self.annotateGenome
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Listbox1
	#tag Event
		Sub Open()
		  
		  'me.ColumnWidths="20,300,100,*,0"
		  me.ColumnWidths="4%,30%,25%,30%,11%,0%,0%"
		  me.DefaultRowHeight=49  'LogoPic.Height=45
		  me.ColumnType(0)=Listbox.TypeCheckbox
		  me.Heading(0)=" "
		  me.Heading(1)="CR tag"
		  me.Heading(2)="Transcription factor name"
		  me.Heading(3)="Logo"
		  me.Heading(4)="Number of sequences in fasta"
		  
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Change()
		  If Me.ListIndex >= 0 and Me.Cell(Me.ListIndex, 5)<>"" Then
		    PushButton1.Enabled=true
		    PushButton2.Enabled=true
		    sigpath = Me.Cell(Me.ListIndex, 5)
		  else
		    Pushbutton1.Enabled=false
		    PushButton2.Enabled=false
		  End If
		  
		End Sub
	#tag EndEvent
	#tag Event
		Function CellBackgroundPaint(g As Graphics, row As Integer, column As Integer) As Boolean
		  ' LogoPix array isn't initialised initially (and some elements may be nil afterwards)
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
		  if column=0 then
		    dim counter as Integer =0
		    for i as Integer=0 to Listbox1.ListCount-1
		      if Listbox1.CellCheck(i, column)=true then
		        counter=counter+1
		      end
		    next
		    if counter <>0 then
		      PushButton3.Enabled=True
		    else
		      PushButton3.Enabled=False
		    end
		  end
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseMove(X As Integer, Y As Integer)
		  Dim row As Integer = Me.RowFromXY(X, Y)
		  Dim column As Integer = Me.ColumnFromXY(X, Y)
		  dim content as String
		  
		  // Grab the motif description from column 
		  If row > -1 Then
		    content=me.Cell(row,6)
		    Tooltip.Show(content, System.MouseX, System.MouseY + 20, True)
		    'MHMouseTip.Show(Me.CellHelpTag(row, 4))
		    'siglist.HelpTag("RegulonDB is the primary database on transcriptional regulation in Escherichia coli K-12 containing knowledge manually curated from original scientific publications, complemented with high throughput datasets and comprehensive computational predictions. ")
		  Else
		    'MHMouseTip.Hide
		    'And Me.CellHelpTag(row, 4)
		  End If
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
		Visible=true
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
		Group="Behavior"
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
		Name="sigpath"
		Group="Behavior"
		Type="string"
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
