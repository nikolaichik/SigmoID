#tag Window
Begin Window MergePlotDataWin
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   False
   Frame           =   8
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   210
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
   Title           =   "#kMergePlotData"
   Visible         =   False
   Width           =   604
   Begin Label Label1
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   44
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Multiline       =   True
      Scope           =   0
      Selectable      =   False
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "#kMergePlotWinDesc"
      TextAlign       =   1
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   14
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   564
   End
   Begin PushButton MergeButton
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Merge"
      Default         =   True
      Enabled         =   False
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   504
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   170
      Transparent     =   "False"
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin PushButton PushButton2
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   True
      Caption         =   "#kCancel"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   412
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   170
      Transparent     =   "False"
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin TextField inFile1Field
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   False
      BackColor       =   &cFFFFFF00
      Bold            =   False
      Border          =   True
      CueText         =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   140
      LimitText       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Mask            =   ""
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   64
      Transparent     =   "False"
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   352
   End
   Begin Label Label4
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
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "#kDataFile1"
      TextAlign       =   2
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   66
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   116
   End
   Begin PushButton SelectData1butt
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "#kChoose"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   504
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   65
      Transparent     =   "False"
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin TextField InFile2Field
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   False
      BackColor       =   &cFFFFFF00
      Bold            =   False
      Border          =   True
      CueText         =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   140
      LimitText       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Mask            =   ""
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   12
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   98
      Transparent     =   "False"
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   352
   End
   Begin Label Label5
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
      TabIndex        =   13
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "#kDataFile2"
      TextAlign       =   2
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   100
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   116
   End
   Begin PushButton SelectData2butt
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "#kChoose"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   504
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   14
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   99
      Transparent     =   "False"
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin TextField OutFileField
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   False
      BackColor       =   &cFFFFFF00
      Bold            =   False
      Border          =   True
      CueText         =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   140
      LimitText       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Mask            =   ""
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   15
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   131
      Transparent     =   "False"
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   352
   End
   Begin Label Label6
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
      TabIndex        =   16
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "#kMergedFile"
      TextAlign       =   2
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   133
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   116
   End
   Begin PushButton SelectOutFileButt
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "#kChoose"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   "Select file to save merged data to"
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   504
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   17
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   132
      Transparent     =   "False"
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  AdjustLayout4linux(me)
		  
		  Infile1=nil
		  InFile2=nil
		  OutFile=nil
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub CheckMerge()
		  if InFile1=Nil OR InFile2=Nil OR OutFile=Nil then
		    MergeButton.enabled=false
		  else
		    MergeButton.enabled=true
		  end if
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		InFile1 As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		InFile2 As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		OutFile As FolderItem
	#tag EndProperty


#tag EndWindowCode

#tag Events MergeButton
	#tag Event
		Sub Action()
		  dim seqname as string
		  dim seqlen As integer
		  
		  // Read in depth data for first read of the pair
		  dim tabChar as string = chr(9)
		  seqlen=len(genomewin.genome.Sequence)
		  dim ReadDepth(0) as integer
		  redim ReadDepth(seqlen)
		  
		  if infile1=nil or infile2=nil then
		    msgbox "Can't read input files!"
		    self.hide
		    return
		  end if
		  
		  
		  // Load the data from 1st file into array:
		  
		  dim instream as TextInputStream
		  dim aLine as string
		  dim linecount, posNo as integer
		  InStream = infile1.OpenAsTextFile
		  aLine=trim(InStream.readLine)
		  if CountFields(aLine,TabChar)=3 then        'Triple column file produced by samtools
		    seqname=NthField(aLine,TabChar,1)
		    instream.close
		    logowin.show
		    logowin.WriteToSTDOUT (EndOfLine.unix+"Reading data from "+InFile1.Name+"... ")
		    
		    InStream = infile1.OpenAsTextFile
		    while not InStream.EOF
		      aLine=trim(InStream.readLine)
		      posNo=val(NthField(aLine,TabChar,2))
		      ReadDepth(posNo)=val(NthField(aLine,TabChar,3))
		    wend
		  else
		    logowin.show
		    logowin.WriteToSTDOUT (EndOfLine.unix+"Reading data from "+InFile1.Name+"... ")
		    if infile1.Type="WIG" then     'Rockhopper/IGV track: drop the second header line
		      aLine=InStream.readLine
		      posNo=0
		    else 'save the first line data
		      'assume plain single column file with no header
		      posNo=1
		      ReadDepth(posNo)=val(aline)
		    end if
		    
		    while not InStream.EOF
		      posNo=posNo+1
		      ReadDepth(posNo)=val(InStream.readLine)
		    wend
		    
		    
		  end
		  instream.close
		  logowin.WriteToSTDOUT ("OK"+EndOfLine.unix)
		  
		  // Add the data from the second file to the same array:
		  
		  InStream = infile2.OpenAsTextFile
		  aLine=trim(InStream.readLine)
		  if CountFields(aLine,TabChar)=3 then        'Triple column file (e.g. produced by samtools)
		    if seqname<>NthField(aLine,TabChar,1) then
		      MsgBox "Sequence names in the files being merged do not match! Please make sure you have chosen the correct files for the merge"
		    end if
		    instream.close
		    logowin.WriteToSTDOUT ("Reading data from "+InFile2.Name+"... ")
		    
		    InStream = infile2.OpenAsTextFile
		    while not InStream.EOF
		      aLine=trim(InStream.readLine)
		      posNo=val(NthField(aLine,TabChar,2))
		      ReadDepth(posNo)=ReadDepth(posNo)+val(NthField(aLine,TabChar,3))
		    wend
		  else
		    logowin.show
		    logowin.WriteToSTDOUT (EndOfLine.unix+"Reading data from "+InFile2.Name+"... ")
		    if infile2.Type="WIG" then     'Rockhopper/IGV track: drop the second header line
		      aLine=InStream.readLine
		      posNo=0
		    else 'save the first line data
		      'assume plain single column file with no header
		      posNo=1
		      ReadDepth(posNo)=ReadDepth(posNo)+val(aline)
		    end if
		    
		    while not InStream.EOF
		      posNo=posNo+1
		      ReadDepth(posNo)=ReadDepth(posNo)+val(InStream.readLine)
		    wend
		  end 
		  instream.close
		  logowin.WriteToSTDOUT ("OK"+EndOfLine.unix)
		  
		  
		  // Write back the merged file
		  
		  logowin.WriteToSTDOUT (EndOfLine.unix+"Writing the file with merged data... ")
		  
		  dim outstream As TextOutputStream
		  
		  OutStream = outfile.createTextFile 
		  
		  dim n as integer
		  for n=1 to ubound(ReadDepth)
		    'aline=Seqname+tabChar+str(n)+tabchar+str(ReadDepth(n))
		    'outstream.WriteLine aline
		    
		    'writing down just the counts to speed up further use
		    outstream.WriteLine str(ReadDepth(n))
		  next
		  outstream.close
		  logowin.WriteToSTDOUT ("OK"+EndOfLine.unix)
		  logowin.WriteToSTDOUT ("File written to "+OutFile.ShellPath+EndOfLine.unix)
		  
		  self.hide
		  
		  Exception err
		    ExceptionHandler(err,"MergePlotDataWin:MergeButton")
		    
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton2
	#tag Event
		Sub Action()
		  hide
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events inFile1Field
	#tag Event
		Sub TextChange()
		  CheckMerge
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SelectData1butt
	#tag Event
		Sub Action()
		  Dim dlg as New OpenDialog
		  
		  dlg.promptText="Select a .wig/samtools depth/plain text file with data to plot"
		  dlg.Title="Open file with data to plot"
		  dlg.Filter="FileTypes.Text;FileTypes.WIG"
		  infile1=dlg.ShowModal()
		  
		  if InFile1<> Nil And InFile1.exists then
		    Infile1Field.text=InFile1.shellpath
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events InFile2Field
	#tag Event
		Sub TextChange()
		  CheckMerge
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SelectData2butt
	#tag Event
		Sub Action()
		  Dim dlg as New OpenDialog
		  
		  dlg.promptText="Select a .wig/samtools depth/plain text file with data to plot"
		  dlg.Title="Open file with data to plot"
		  dlg.Filter="FileTypes.Text;FileTypes.WIG"
		  infile2=dlg.ShowModal()
		  
		  if InFile2<> Nil And InFile2.exists then
		    Infile2Field.text=InFile2.shellpath
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events OutFileField
	#tag Event
		Sub TextChange()
		  CheckMerge
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SelectOutFileButt
	#tag Event
		Sub Action()
		  OutFile=GetSaveFolderItem("", "Merged.depth")
		  if OutFile<> Nil then
		    OutFileField.text=OutFile.shellpath
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
		Group="Appearance"
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
		Visible=true
		Group="Appearance"
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
		Group="Appearance"
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
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Visible=true
		Group="Appearance"
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
