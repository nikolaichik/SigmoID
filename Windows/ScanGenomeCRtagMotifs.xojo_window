#tag Window
Begin Window ScanGenomeCRtagMotifs
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   648
   ImplicitInstance=   True
   LiveResize      =   "True"
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
   Width           =   984
   Begin PushButton PushButton1
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   True
      Caption         =   "Load profile"
      Default         =   True
      Enabled         =   False
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   26
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   671
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MacButtonStyle  =   "0"
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   609
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   97
   End
   Begin PushButton PushButton2
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   True
      Caption         =   "Export .sig file"
      Default         =   True
      Enabled         =   False
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   26
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   780
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MacButtonStyle  =   "0"
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   609
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   120
   End
   Begin PushButton PushButton3
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   True
      Caption         =   "Annotate!"
      Default         =   True
      Enabled         =   False
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   26
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   569
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MacButtonStyle  =   "0"
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   609
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   90
   End
   Begin Listbox Listbox1
      AllowAutoDeactivate=   True
      AllowAutoHideScrollbars=   True
      AllowExpandableRows=   False
      AllowFocusRing  =   True
      AllowResizableColumns=   True
      AllowRowDragging=   False
      AllowRowReordering=   True
      Bold            =   False
      ColumnCount     =   7
      ColumnWidths    =   ""
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   -1
      DropIndicatorVisible=   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      GridLinesHorizontalStyle=   "2"
      GridLinesVerticalStyle=   "0"
      HasBorder       =   True
      HasHeader       =   True
      HasHorizontalScrollbar=   False
      HasVerticalScrollbar=   True
      HeadingIndex    =   -1
      Height          =   597
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
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   0
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   984
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
End
#tag EndWindow

#tag WindowCode
	#tag MenuHandler
		Function FileClose() As Boolean Handles FileClose.Action
			Close
			Return True
			
		End Function
	#tag EndMenuHandler


	#tag Method, Flags = &h0
		Sub annotateGenome()
		  Dim k,SigCount,HitCount As Integer
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
		        
		        dim apath as string=listbox1.Cell(k,6)
		        f=getfolderitem(apath, FolderItem.PathTypeShell)
		        
		        if f.Exists then 
		          LogoWin.LoadAlignment f
		          app.DoEvents  'otherwise logo picture isn't updated
		          nhmmerSettingsWin.GenomeField.text=LogoWin.GenomeFile.ShellPath
		          nhmmerSettingsWin.ReadOptions
		          If Not LogoWin.nhmmer Then
		            'exit on error
		            LogoWin.WriteToSTDOUT(lineEnd+"Genome scan interrupted due to nhmmer error")
		            return
		          End If
		          
		          If LogoWin.HitsNo>0 Then       'only run hmmgen when there are nhmmer hits
		            HmmGenSettingsWin.ReadOptions
		            LogoWin.outfile=GenomeScanOut
		            if NOT LogoWin.HmmGen then
		              'exit on error
		              LogoWin.WriteToSTDOUT(lineEnd+"Genome scan interrupted due to HmmGen.py script error")
		              return
		            end if
		            HitCount=HitCount+LogoWin.LastHitNo
		          End
		          
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
		    ExceptionHandler(err,"ScanGenomeCRtagMotifs:annotateGenome")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub loadSigfile(row as string)
		  dim f as FolderItem
		  f=getfolderitem(row, FolderItem.PathTypeShell)
		  LogoWin.LoadAlignment f
		  logowin.ChangeView("Logo")
		  LogoWin.LogoTabs.TabIndex=0
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		CellTxtBkup As string
	#tag EndProperty

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
		  Me.ColumnWidths="30,200,100,100,*,70,0,0"      'Adjust CellBackgroundPaint if changed!
		  Me.DefaultRowHeight=59  'LogoPic.Height=45
		  Me.ColumnType(0)=Listbox.TypeCheckbox
		  Me.ColumnTypeAt(0) = ListBox.CellTypes.CheckBox
		  Me.ColumnTypeAt(1) = ListBox.CellTypes.TextField
		  Me.ColumnTypeAt(2) = ListBox.CellTypes.TextField
		  Me.ColumnTypeAt(3) = ListBox.CellTypes.TextField
		  Me.Heading(0)=" "
		  Me.Heading(1)="Profile Name"
		  Me.Heading(2)="Protein_ID"
		  Me.Heading(3) = "Gene"
		  me.Heading(4)="Logo"
		  Me.Heading(5)="Site #"
		  
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Change()
		  If Me.ListIndex >= 0 and Me.Cell(Me.ListIndex, 5)<>"" Then
		    PushButton1.Enabled=true
		    PushButton2.Enabled=true
		    sigpath = Me.Cell(Me.ListIndex, 6)
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
		  if Column=4 then
		    If row<=Me.lastindex Then
		      Dim w As Integer
		      'Me.ColumnWidths="30,200,120,*,90,0,0"
		      w=Me.width-440                           '<--
		      p=Me.rowtag(row)
		      g.DrawPicture(p, (w-p.width)/2, 0)  
		      
		    end if
		  end if
		  Return True
		End Function
	#tag EndEvent
	#tag Event
		Sub CellAction(row As Integer, column As Integer)
		  If column=0 Then
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
		  End
		  
		  // Restore original name if changed (the text should be selectable, but not editable)
		  Me.CellValueAt(row,column)=CellTxtBkup
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseMove(X As Integer, Y As Integer)
		  Dim row As Integer = Me.RowFromXY(X, Y)
		  'Dim column As Integer = Me.ColumnFromXY(X, Y)
		  dim content as String
		  
		  // Grab the motif description from column 
		  If row > -1 Then
		    content=me.Cell(row,6)
		    'Global.Tooltip.Show(content, System.MouseX, System.MouseY + 20, True)
		    Me.HelpTag=content
		    'MHMouseTip.Show(Me.CellHelpTag(row, 4))
		    'siglist.HelpTag("RegulonDB is the primary database on transcriptional regulation in Escherichia coli K-12 containing knowledge manually curated from original scientific publications, complemented with high throughput datasets and comprehensive computational predictions. ")
		  Else
		    'MHMouseTip.Hide
		    'And Me.CellHelpTag(row, 4)
		    Me.HelpTag=""
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Function CellClick(row as Integer, column as Integer, x as Integer, y as Integer) As Boolean
		  // Make the text in the ProfileName column user-selectable
		  
		  If column=1 OR column=2 Then
		    CellTxtBkup=Me.CellValueAt(row,column)
		    Me.CellTypeAt(row, column) = ListBox.CellTypes.TextField
		    Me.EditCellAt(row, column)
		  End If
		  
		End Function
	#tag EndEvent
	#tag Event
		Sub CellTextChange(row as Integer, column as Integer)
		  
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
		Group="Background"
		InitialValue=""
		Type="Picture"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Visible=false
		Group="OS X (Carbon)"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreen"
		Visible=false
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Size"
		InitialValue="400"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Behavior"
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
		Group="OS X (Carbon)"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBar"
		Visible=true
		Group="Menus"
		InitialValue=""
		Type="MenuBar"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Visible=false
		Group="Behavior"
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
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="sigpath"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="string"
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
		Group="Frame"
		InitialValue="Untitled"
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Size"
		InitialValue="600"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="CellTxtBkup"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="string"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
#tag EndViewBehavior
