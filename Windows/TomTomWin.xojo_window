#tag Window
Begin Window TomTomWin
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   268
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
   Title           =   "TomTom settings"
   Visible         =   True
   Width           =   628
   Begin Label Label1
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   47
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
      Text            =   "This command will scan the folder you select for files named 'meme.txt' and use these to run TomTom vs motif libraries located in the specified folder."
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   20
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   588
   End
   Begin PushButton RunButton
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "#kRun"
      Default         =   True
      Enabled         =   False
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   518
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
      Top             =   228
      Underline       =   False
      Visible         =   True
      Width           =   90
   End
   Begin PushButton CancelButton
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
      Left            =   416
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
      Top             =   228
      Underline       =   False
      Visible         =   True
      Width           =   90
   End
   Begin TextField MemeResPathField
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
      HelpTag         =   "Path to genome to be searched"
      Index           =   -2147483648
      Italic          =   False
      Left            =   164
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
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   79
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   342
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
      TabIndex        =   4
      TabPanelIndex   =   0
      Text            =   "Query folder:"
      TextAlign       =   2
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   81
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   132
   End
   Begin PushButton SelectMEMEfolderButt
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "#kChoose"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   "Select genome to search"
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   518
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   81
      Underline       =   False
      Visible         =   True
      Width           =   90
   End
   Begin TextField TFfamPathField
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
      HelpTag         =   "Path to genome to be searched"
      Index           =   -2147483648
      Italic          =   False
      Left            =   164
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
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   113
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   342
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
      TabIndex        =   7
      TabPanelIndex   =   0
      Text            =   "TF library folder:"
      TextAlign       =   2
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   115
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   132
   End
   Begin PushButton SelectTFprofileFolderButt
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "#kChoose"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   "Select genome to search"
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   518
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   115
      Underline       =   False
      Visible         =   True
      Width           =   90
   End
   Begin TextField TomTomOptionsField
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
      HelpTag         =   "Path to genome to be searched"
      Index           =   -2147483648
      Italic          =   False
      Left            =   164
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
      Top             =   181
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   342
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
      TabIndex        =   10
      TabPanelIndex   =   0
      Text            =   "TomTom options:"
      TextAlign       =   2
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   183
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   132
   End
   Begin PushButton PushButton1
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Defaults"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
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
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   228
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin TextField BGmodelField
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
      HelpTag         =   "Path to genome to be searched"
      Index           =   -2147483648
      Italic          =   False
      Left            =   164
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
      Top             =   147
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   342
   End
   Begin Label Label7
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
      Text            =   "Background model:"
      TextAlign       =   2
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   149
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   132
   End
   Begin PushButton SelectBGmodelButt
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "#kChoose"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   "Select genome to search"
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   518
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
      Top             =   149
      Underline       =   False
      Visible         =   True
      Width           =   90
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  SetDefaults
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub CheckRunButton()
		  dim enableButton as boolean = true
		  
		  if MEMEresFolder<> Nil And MEMEresFolder.exists then
		  else
		    enableButton=false
		  end if
		  
		  if TFfamFolder<> Nil And TFfamFolder.exists then
		  else
		    enableButton=false
		  end if
		  
		  if enableButton then
		    RunButton.Enabled=true
		  else
		    RunButton.enabled=false
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RunTomTom(inFolder as folderitem)
		  
		  // Run TomTom 
		  
		  ' recursively find all 'meme.txt' files in the specified folder 
		  ' and run TomTom with each of these vs all *.meme files in the library folder 
		  ' For each query file, results will be written to the same folder where the query (meme.txt) file resides 
		  
		  dim TomTomPath as string
		  dim n,m as integer
		  
		  'a bit of cheating here assuming tomtom is in the same location as meme
		  #if targetWindows
		    TomTomPath=ReplaceAll(TomTomPath,"/meme.exe","/tomtom.exe")
		  #else
		    TomTomPath=ReplaceAll(MEMEpath,"/meme/","_meme_")
		    TomTomPath=ReplaceAll(TomTomPath,"/meme","/tomtom")
		    TomTomPath=ReplaceAll(TomTomPath,"_meme_","/meme/")
		  #endif
		  
		  m=inFolder.Count
		  for n=1 to m
		    if inFolder.Item(n).Directory then
		      'look into this folder
		      RunTomTom(inFolder.Item(n))
		    else
		      if inFolder.Item(n).Name="meme.txt" then
		        'run tomtom
		        dim cli, TToptions as string
		        
		        TToptions=" "+trim(TomTomOptionsField.text)+" "
		        
		        cli=tomtomPath+" -oc "+inFolder.ShellPath
		        
		        'need to add background model here like this:
		        '-bfile /Users/Home/Documents/SQ2/LacI/LacI_bacgroundModel.markov
		        
		        cli=cli+TToptions+inFolder.Item(n).ShellPath+TTlibString
		        
		        dim sh as new shell
		        sh.mode=0
		        sh.TimeOut=-1
		        
		        sh.execute cli
		        If sh.errorCode=0 then
		          'OK
		        else
		          msgbox "Error running TomTom"
		        end if
		        sh.Close
		      end if
		    end if
		    
		    
		  next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetDefaults()
		  'Resources_f=GetFolderItem("").Child("SigmoID Resources")
		  'msgbox "0"
		  if Resources_f<>Nil then
		    if Resources_f.exists then
		      'msgbox("Resources are at "+Resources_f.shellpath)
		    else 
		      'msgbox "No Resources_f!"
		      Resources_f=GetFolderItem("").Child("SigmoID Resources")
		    end if
		    TFfamFolder=Resources_f.child("TF_families")
		    'msgbox("1"+TFfamFolder.shellpath)
		    if TFfamFolder<>Nil then
		      'msgbox "2"
		      if TFfamFolder.Exists then
		        'msgbox "2.1"
		        'msgbox TFfamFolder.Name
		        'msgbox "2.2"
		        'msgbox TFfamFolder.NativePath
		        TFfamPathField.text=TFfamFolder.ShellPath
		        'msgbox "3"
		      else
		        'msgbox "No TFfamFolder!"
		        
		      end if
		      
		      TomTomOptionsField.text="-no-ssc -incomplete-scores -min-overlap 14 -internal"
		      BGmodelField.text=""
		      
		      MemeResPathField.text=""
		      
		    end if
		  else
		    'msgbox "Resources_f is Nil!"
		  end if
		  Exception err
		    
		    ExceptionHandler(err,"TomTomWin:SetDefaults")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TTlibString() As string
		  ' assemble library file names into one string
		  
		  Dim LibFolder as FolderItem
		  dim m,n as integer
		  dim libstring as string
		  
		  LibFolder=Resources_f.child("TF_families")
		  
		  if LibFolder<>Nil then
		    if LibFolder.exists then
		      m=LibFolder.Count
		      for n=1 to m
		        
		        if right(LibFolder.Item(n).Name,5)=".meme" then
		          libstring=libstring+" "+LibFolder.Item(n).ShellPath
		          
		        end if
		        
		        
		      next
		    end if
		  end if
		  return Libstring
		  
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		FieldsLocked As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		MEMEresFolder As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		TFfamFolder As FolderItem
	#tag EndProperty


#tag EndWindowCode

#tag Events RunButton
	#tag Event
		Sub Action()
		  self.hide
		  
		  logowin.WriteToSTDOUT(EndOfLine.unix+"Running TomTom...")
		  
		  RunTomTom(MEMEresFolder)
		  
		  logowin.WriteToSTDOUT(" Done!")
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CancelButton
	#tag Event
		Sub Action()
		  LogoWin.nhmmeroptions=""
		  
		  self.hide
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events MemeResPathField
	#tag Event
		Sub TextChange()
		  if not FieldsLocked then
		    Dim f as FolderItem
		    f=New FolderItem(trim(me.text))
		    if f<>nil then
		      if f.exists then
		        MEMEresFolder=New FolderItem(trim(me.text))
		      else
		        beep
		      end if
		    else
		      beep
		    end if
		    
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SelectMEMEfolderButt
	#tag Event
		Sub Action()
		  Dim dlg As New SelectFolderDialog
		  dlg.ActionButtonCaption = "Select"
		  dlg.Title = "Select Folder with MEME Results"
		  dlg.PromptText = "Select a folder with MEME results (may contain sub-folders)."
		  'dlg.InitialDirectory = Profile_f.parent
		  
		  MEMEresFolder = dlg.ShowModal
		  
		  if MEMEresFolder<>Nil then
		    if MEMEresFolder.exists then
		      FieldsLocked=true
		      MemeResPathField.text=MEMEresFolder.shellpath
		      FieldsLocked=false
		      
		    end if
		  end if
		  
		  CheckRunButton
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TFfamPathField
	#tag Event
		Sub TextChange()
		  if not FieldsLocked then
		    Dim f as FolderItem
		    f=New FolderItem(trim(me.text))
		    if f<>nil then
		      if f.exists then
		        TFfamFolder=New FolderItem(trim(me.text))
		      else
		        beep
		      end if
		    else
		      beep
		    end if
		    
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SelectTFprofileFolderButt
	#tag Event
		Sub Action()
		  Dim dlg As New SelectFolderDialog
		  dlg.ActionButtonCaption = "Select"
		  dlg.Title = "Select Folder with TF library files"
		  dlg.PromptText = "Select a folder with TF library files in MEME format."
		  dlg.InitialDirectory = Resources_f
		  
		  TFfamFolder = dlg.ShowModal
		  
		  if TFfamFolder<>Nil then
		    if TFfamFolder.exists then
		      FieldsLocked=true
		      TFfamPathField.text=MEMEresFolder.shellpath
		      FieldsLocked=false
		      
		    end if
		  end if
		  
		  CheckRunButton
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton1
	#tag Event
		Sub Action()
		  SetDefaults
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SelectBGmodelButt
	#tag Event
		Sub Action()
		  'LogoWin.Genomefile=GetOpenFolderItem("")
		  'if LogoWin.Genomefile<> Nil And LogoWin.Genomefile.exists then
		  'GenomeField.text=LogoWin.Genomefile.shellpath
		  'ExtendButton.enabled=true
		  'end if
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
		Name="FieldsLocked"
		Group="Behavior"
		Type="boolean"
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
