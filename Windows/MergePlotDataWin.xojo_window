#tag Window
Begin Window MergePlotDataWin
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Composite       =   False
   Frame           =   8
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   210
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
   Title           =   "#kMergePlotData"
   Visible         =   False
   Width           =   604
   Begin Label Label1
      AllowAutoDeactivate=   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   44
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
      TextAlignment   =   "2"
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   14
      Transparent     =   False
      Underline       =   False
      Value           =   "#kMergePlotWinDesc"
      Visible         =   True
      Width           =   564
   End
   Begin PushButton MergeButton
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "Merge"
      Default         =   True
      Enabled         =   False
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   504
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MacButtonStyle  =   "0"
      Scope           =   0
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   170
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin PushButton PushButton2
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
      Left            =   412
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MacButtonStyle  =   "0"
      Scope           =   0
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   170
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin TextField inFile1Field
      AllowAutoDeactivate=   True
      AllowFocusRing  =   True
      AllowSpellChecking=   False
      AllowTabs       =   False
      BackgroundColor =   &cFFFFFF00
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Format          =   ""
      HasBorder       =   True
      Height          =   22
      Hint            =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   140
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      MaximumCharactersAllowed=   0
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   64
      Transparent     =   False
      Underline       =   False
      ValidationMask  =   ""
      Value           =   ""
      Visible         =   True
      Width           =   352
   End
   Begin Label Label4
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
      TextAlignment   =   "3"
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   66
      Transparent     =   False
      Underline       =   False
      Value           =   "#kDataFile1"
      Visible         =   True
      Width           =   116
   End
   Begin PushButton SelectData1butt
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "#kChoose"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   504
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      MacButtonStyle  =   "0"
      Scope           =   0
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   65
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin TextField InFile2Field
      AllowAutoDeactivate=   True
      AllowFocusRing  =   True
      AllowSpellChecking=   False
      AllowTabs       =   False
      BackgroundColor =   &cFFFFFF00
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Format          =   ""
      HasBorder       =   True
      Height          =   22
      Hint            =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   140
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      MaximumCharactersAllowed=   0
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   12
      TabPanelIndex   =   0
      TabStop         =   True
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   98
      Transparent     =   False
      Underline       =   False
      ValidationMask  =   ""
      Value           =   ""
      Visible         =   True
      Width           =   352
   End
   Begin Label Label5
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
      TextAlignment   =   "3"
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   100
      Transparent     =   False
      Underline       =   False
      Value           =   "#kDataFile2"
      Visible         =   True
      Width           =   116
   End
   Begin PushButton SelectData2butt
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "#kChoose"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   504
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      MacButtonStyle  =   "0"
      Scope           =   0
      TabIndex        =   14
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   99
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin TextField OutFileField
      AllowAutoDeactivate=   True
      AllowFocusRing  =   True
      AllowSpellChecking=   False
      AllowTabs       =   False
      BackgroundColor =   &cFFFFFF00
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Format          =   ""
      HasBorder       =   True
      Height          =   22
      Hint            =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   140
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      MaximumCharactersAllowed=   0
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   15
      TabPanelIndex   =   0
      TabStop         =   True
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   131
      Transparent     =   False
      Underline       =   False
      ValidationMask  =   ""
      Value           =   ""
      Visible         =   True
      Width           =   352
   End
   Begin Label Label6
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
      TextAlignment   =   "3"
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   133
      Transparent     =   False
      Underline       =   False
      Value           =   "#kMergedFile"
      Visible         =   True
      Width           =   116
   End
   Begin PushButton SelectOutFileButt
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "#kChoose"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   504
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      MacButtonStyle  =   "0"
      Scope           =   0
      TabIndex        =   17
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   "Select file to save merged data to"
      Top             =   132
      Transparent     =   False
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
		Visible=true
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
		Visible=true
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
