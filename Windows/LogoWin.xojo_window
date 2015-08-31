#tag Window
Begin Window LogoWin
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   False
   Frame           =   9
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
   MinHeight       =   180
   MinimizeButton  =   True
   MinWidth        =   64
   Placement       =   0
   Resizeable      =   True
   Title           =   "SigmoID"
   Visible         =   True
   Width           =   774
   Begin Toolbar1 LogoWinToolbar
      Enabled         =   True
      Height          =   32
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockedInPosition=   False
      Scope           =   0
      TabPanelIndex   =   0
      Top             =   0
      Visible         =   True
      Width           =   100
   End
   Begin TextArea STDOUT
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   False
      BackColor       =   &cFFFFFF00
      Bold            =   False
      Border          =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   400
      HelpTag         =   ""
      HideSelection   =   True
      Index           =   -2147483648
      Italic          =   False
      Left            =   0
      LimitText       =   0
      LineHeight      =   0.0
      LineSpacing     =   1.0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Mask            =   ""
      Multiline       =   True
      ReadOnly        =   False
      Scope           =   0
      ScrollbarHorizontal=   False
      ScrollbarVertical=   True
      Styled          =   True
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   0
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   774
   End
   Begin Canvas Splitter
      AcceptFocus     =   False
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      Height          =   5
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   775
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   175
      Transparent     =   True
      UseFocusRing    =   True
      Visible         =   True
      Width           =   774
   End
   Begin PagePanel TopPanel
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   175
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   775
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      PanelCount      =   2
      Panels          =   ""
      Scope           =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      Top             =   0
      Value           =   0
      Visible         =   True
      Width           =   774
      Begin TextArea Informer
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   175
         HelpTag         =   ""
         HideSelection   =   True
         Index           =   -2147483648
         InitialParent   =   "TopPanel"
         Italic          =   False
         Left            =   775
         LimitText       =   0
         LineHeight      =   0.0
         LineSpacing     =   1.0
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Mask            =   ""
         Multiline       =   True
         ReadOnly        =   False
         Scope           =   0
         ScrollbarHorizontal=   False
         ScrollbarVertical=   True
         Styled          =   True
         TabIndex        =   0
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "Informer\n"
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   0
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   False
         Width           =   774
      End
      Begin Canvas LogoCanvas
         AcceptFocus     =   False
         AcceptTabs      =   False
         AutoDeactivate  =   True
         Backdrop        =   0
         DoubleBuffer    =   True
         Enabled         =   True
         EraseBackground =   True
         Height          =   175
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TopPanel"
         Left            =   775
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   2
         TabStop         =   True
         Top             =   0
         Transparent     =   True
         UseFocusRing    =   True
         Visible         =   True
         Width           =   774
      End
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub EnableMenuItems()
		  if ubound(SelArray1)>0 then
		    FileSaveAlignmentSelection.enable
		  else
		    FileSaveAlignmentSelection.enabled=false
		  end if
		  
		  ViewLogo.enabled=false
		  
		  if SigFileOpened then
		    ViewAlignmentInfo.enabled=true
		    ViewHmmerSettings.enabled=true
		    ViewHmmProfile.Enabled=true
		    ViewLogo.enabled=true
		    ViewSequences.enabled=true
		    ViewMEMEresults.enabled=true
		    FileExtendBindingSites.enabled=true
		    FileSaveLogo.enabled=true
		  else
		    ViewAlignmentInfo.enabled=false
		    ViewHmmerSettings.enabled=false
		    ViewHmmProfile.Enabled=false
		    ViewMEMEresults.enabled=false
		    FileExtendBindingSites.enabled=false
		    if sequences<>"" then
		      ViewSequences.enabled=true
		      FileExtendBindingSites.enabled=true
		      if WebLogoAvailable then
		        ViewLogo.enabled=true
		        FileSaveLogo.enabled=true
		      else
		        ViewLogo.enabled=false
		        FileSaveLogo.enabled=false
		      end if
		    end if
		    
		  end if
		  
		  if LogoFile<>NIL then
		    MEMEConverttoMEMEformat.enable
		    MEMEMAST.enable
		  end if
		  
		  FileSaveCheckedSites.Visible=false
		  FileSaveCheckedSites.Enabled=false
		  FileSaveGenomeAs.Visible=false
		  FileSaveGenomeAs.Enabled=false
		  
		  FileSaveAlignmentSelection.visible=true
		  FileSaveLogo.visible=true
		  FileScanGenome.Visible=true
		  FileOpenAlignment.visible=true
		  FileOpenAlignment.Enabled=true
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  dim cli as string
		  dim allProgsFine as boolean
		  Dim sh As Shell
		  dim f As FolderItem
		  
		  
		  
		  alimaskpath=SettingsWin.alimaskPathField.text
		  nhmmerpath=SettingsWin.nhmmerPathField.text
		  weblogopath=SettingsWin.weblogoPathField.text
		  hmmBuildPath=SettingsWin.hmmBuildPathField.text
		  memepath=SettingsWin.memePathField.text
		  mastpath=SettingsWin.mastPathField.text
		  
		  
		  
		  #if TargetWin32
		    f=resources_f.child("alimask.exe")
		    if f<>Nil then
		      if f.exists then
		        alimaskpath=f.ShellPath
		        SettingsWin.alimaskPathField.text=alimaskpath
		      end if
		    end if
		    f=resources_f.child("nhmmer.exe")
		    if f<>Nil then
		      if f.exists then
		        nhmmerpath=f.ShellPath
		        SettingsWin.nhmmerpathField.text=nhmmerpath
		      end if
		    end if
		    f=resources_f.child("hmmBuild.exe")
		    if f<>Nil then
		      if f.exists then
		        hmmBuildPath=f.ShellPath
		        SettingsWin.hmmBuildPathField.text=hmmBuildPath
		      end if
		    end if
		    f=resources_f.child("meme.exe")
		    if f<>Nil then
		      if f.exists then
		        MEMEpath=f.ShellPath
		        SettingsWin.MEMEPathField.text=MEMEpath
		      end if
		    end if
		    f=resources_f.child("mast.exe")
		    if f<>Nil then
		      if f.exists then
		        MASTpath=f.ShellPath
		        SettingsWin.MASTPathField.text=MASTpath
		      end if
		    end if
		  #endif
		  
		  f=resources_f.child("HmmGen.py")
		  if f<>Nil then
		    if f.exists then
		      hmmgenpath=f.ShellPath
		      SettingsWin.HmmGenPathField.text=hmmgenpath
		    else
		      msgbox "Can't find the HmmGen.py script"
		    end if
		  else
		    msgbox "Can't find the HmmGen.py script"
		  end if
		  
		  f=resources_f.child("MASTGen.py")
		  if f<>Nil then
		    if f.exists then
		      mastgenpath=f.ShellPath
		      'SettingsWin.mastGenPathField.text=mastgenpath
		    else
		      msgbox "Can't find the MASTGen.py script"
		    end if
		  else
		    msgbox "Can't find the MASTGen.py script"
		  end if
		  
		  f=resources_f.child("Weblogo-3.3").child("weblogo")
		  if f<>Nil then
		    if f.exists then
		      #if targetwin32
		        weblogopath="python "+f.ShellPath
		      #else
		        weblogopath=f.ShellPath
		      #endif
		      SettingsWin.weblogoPathField.text=weblogopath
		    else
		      #if targetwin32
		        msgbox "Can't find WebLogo"
		      #endif
		    end if
		  else
		    #if targetwin32
		      msgbox "Can't find WebLogo"
		    #endif
		  end if
		  
		  f=resources_f.child("TermGen.py")
		  if f<>Nil then
		    if f.exists then
		      TermGenpath=f.ShellPath
		      'SettingsWin.TermGenPathField.text=TermGenpath
		    else
		      msgbox "Can't find the TermGen.py script"
		    end if
		  else
		    msgbox "Can't find the TermGen.py script"
		  end if
		  
		  allProgsFine=true
		  'check for the command line tools:
		  
		  'python
		  WriteToSTDOUT ("Checking python... ")
		  cli="python --version"
		  sh=New Shell
		  sh.mode=0
		  sh.TimeOut=-1
		  sh.execute cli
		  If sh.errorCode=0 then
		    if instr(Sh.Result,"command not found")>0 then
		      WriteToSTDOUT ("No python found. Please install it or correct the path in the settings."+EndOfLine)
		      allProgsFine=false
		    else
		      WriteToSTDOUT (Sh.Result)
		    end if
		  else
		    WriteToSTDOUT ("No python found. Please install it or correct the path in the settings."+EndOfLine)
		    allProgsFine=false
		  end if
		  
		  'weblogo
		  WriteToSTDOUT ("Looking for weblogo... ")
		  cli=WebLogoPath+" --version"
		  
		  
		  sh=New Shell
		  sh.mode=0
		  sh.TimeOut=-1
		  sh.execute cli
		  If sh.errorCode=0 then
		    if instr(Sh.Result,"command not found")>0 then
		      WriteToSTDOUT ("No weblogo found. Please install it from https://code.google.com/p/weblogo/ or correct the path in the settings."+EndOfLine)
		      allProgsFine=false
		      WebLogoAvailable=false
		    else
		      WriteToSTDOUT (Sh.Result)
		      WebLogoAvailable=true
		    end if
		  else
		    WriteToSTDOUT ("No weblogo found. Please install it from https://code.google.com/p/weblogo/ or correct the path in the settings."+EndOfLine)
		    allProgsFine=false
		  end if
		  
		  '
		  'nhmmer
		  WriteToSTDOUT ("Looking for nhmmer... ")
		  cli=nhmmerPath+" -h"
		  sh=New Shell
		  sh.mode=0
		  sh.TimeOut=-1
		  sh.execute cli
		  If sh.errorCode=0 then
		    dim s As string=Sh.Result
		    if instr(nthfield(s,EndOfLine.Unix,1),"nhmmer")>0 then
		      s=nthfield((Sh.Result),EndOfLine.Unix,2)
		      s=nthfield((S),"HMMER",2)
		      s=nthfield((S),";",1) 'that will result in smth like "3.1b1 (May 2013)"
		      WriteToSTDOUT (s+EndOfLine)
		      nhmmerVersion=trim(nthfield((S),"(",1))
		    else
		      WriteToSTDOUT ("No nhmmer found. Please install it from http://hmmer.janelia.org/ or correct the path in the settings."+EndOfLine)
		      allProgsFine=false
		    end if
		  else
		    WriteToSTDOUT ("No nhmmer found. Please install it from http://hmmer.janelia.org/ or correct the path in the settings."+EndOfLine)
		    allProgsFine=false
		  end if
		  
		  'hmmbuild
		  WriteToSTDOUT ("Looking for hmmbuild... ")
		  cli=hmmBuildPath+" -h"
		  sh=New Shell
		  sh.mode=0
		  sh.TimeOut=-1
		  sh.execute cli
		  If sh.errorCode=0 then
		    dim s As string=Sh.Result
		    if instr(nthfield(s,EndOfLine.Unix,1),"hmmbuild")>0 then
		      s=nthfield((Sh.Result),EndOfLine.Unix,2)
		      s=nthfield((S),"HMMER",2)
		      s=nthfield((S),";",1) 'that will result in smth like "3.1b1 (May 2013)"
		      WriteToSTDOUT (s)
		      nhmmerVersion=trim(nthfield((S),"(",1))
		    else
		      WriteToSTDOUT ("No hmmbuild found. Please install it from http://hmmer.janelia.org/ or correct the path in the settings."+EndOfLine)
		      allProgsFine=false
		    end if
		  else
		    WriteToSTDOUT ("No hmmbuild found. Please install it from http://hmmer.janelia.org/ or correct the path in the settings."+EndOfLine)
		    allProgsFine=false
		  end if
		  
		  
		  'alimask
		  WriteToSTDOUT (EndofLine+"Looking for alimask...")
		  cli=alimaskPath+" -h"
		  sh=New Shell
		  sh.mode=0
		  sh.TimeOut=-1
		  sh.execute cli
		  If sh.errorCode=0 then
		    dim s As string=Sh.Result
		    if instr(nthfield((Sh.Result),EndOfLine.Unix,1),"alimask")>0 then
		      s=nthfield((Sh.Result),EndOfLine.Unix,2)
		      s=nthfield((S),"HMMER",2)
		      s=nthfield((S),";",1)
		      WriteToSTDOUT (s)
		      
		    else
		      WriteToSTDOUT ("No alimask (part of HMMER package) found. Please install it or correct the path in the settings."+EndOfLine)
		      allProgsFine=false
		    end if
		  else
		    WriteToSTDOUT ("No alimask (part of HMMER package) found. Please install it or correct the path in the settings."+EndOfLine)
		    
		    allProgsFine=false
		  end if
		  
		  
		  'MEME
		  WriteToSTDOUT (EndofLine+"Looking for MEME... ")
		  cli=memePath+" -version"
		  sh=New Shell
		  sh.mode=0
		  sh.TimeOut=-1
		  sh.execute cli
		  If sh.errorCode=0 then
		    WriteToSTDOUT (Sh.Result)
		  else
		    WriteToSTDOUT ("No MEME found. Please install it from http://meme-suite.org/ or correct the path in the settings."+EndOfLine)
		    allProgsFine=false
		  end if
		  
		  'MAST
		  WriteToSTDOUT ("Looking for MAST... ")
		  cli=MASTPath+" -version"
		  sh=New Shell
		  sh.mode=0
		  sh.TimeOut=-1
		  sh.execute cli
		  If sh.errorCode=0 then
		    WriteToSTDOUT (Sh.Result)
		    MASTVersion=trim(Sh.Result)
		  else
		    WriteToSTDOUT ("No MAST found. Please install it from http://meme-suite.org/ or correct the path in the settings."+EndOfLine)
		    allProgsFine=false
		  end if
		  
		  
		  
		  
		  
		  
		  
		  'hmmgen
		  WriteToSTDOUT ("Checking the HmmGen script... ")
		  cli="python "+hmmGenPath+" -v"
		  sh=New Shell
		  sh.mode=0
		  sh.TimeOut=-1
		  sh.execute cli
		  dim hmmg as boolean=false
		  If sh.errorCode=0 then
		    dim s As string=Sh.Result
		    if instr(nthfield((Sh.Result),EndOfLine,1),"HmmGen")>0 then
		      if CountFields(Sh.Result,EndOfLine)=2 then
		        WriteToSTDOUT (s)
		        hmmg=true
		        'else
		        'msgbox str(CountFields(Sh.Result,EndOfLine))
		      End If
		    end if
		  end if
		  if Not hmmg then
		    WriteToSTDOUT ("HmmGen script doesn't work properly. Please verify that biopython is installed."+EndOfLine)
		    WriteToSTDOUT (EndOfLine)
		    allProgsFine=false
		  end if
		  
		  'mastgen
		  WriteToSTDOUT ("Checking the MastGen script... ")
		  cli="python "+MastGenPath+" -v"
		  sh=New Shell
		  sh.mode=0
		  sh.TimeOut=-1
		  sh.execute cli
		  If sh.errorCode=0 then
		    dim s As string=Sh.Result
		    if instr(nthfield((Sh.Result),EndOfLine,1),"MastGen")>0 then
		      if CountFields(Sh.Result,EndOfLine)=2 then
		        WriteToSTDOUT (s)
		        hmmg=true
		        'else
		        'msgbox str(CountFields(Sh.Result,EndOfLine))
		      End If
		    end if
		  end if
		  if Not hmmg then
		    WriteToSTDOUT ("MastGen script doesn't work properly. Please verify that biopython is installed."+EndOfLine)
		    WriteToSTDOUT (EndOfLine)
		    allProgsFine=false
		  end if
		  
		  'TermGen
		  WriteToSTDOUT ("Checking the TermGen script... ")
		  cli="python "+TermGenPath+" -v"
		  sh=New Shell
		  sh.mode=0
		  sh.TimeOut=-1
		  sh.execute cli
		  hmmg=false
		  If sh.errorCode=0 then
		    dim s As string=Sh.Result
		    if instr(nthfield((Sh.Result),EndOfLine,1),"TermGen")>0 then
		      if CountFields(Sh.Result,EndOfLine)=2 then
		        WriteToSTDOUT (s)
		        hmmg=true
		        'else
		        'msgbox str(CountFields(Sh.Result,EndOfLine))
		      End If
		    end if
		  end if
		  if Not hmmg then
		    WriteToSTDOUT ("TermGen script doesn't work properly. Please verify that biopython is installed."+EndOfLine)
		    WriteToSTDOUT (EndOfLine)
		    allProgsFine=false
		  end if
		  
		  
		  if not allProgsFine then
		    SettingsWin.ShowModalWithin self
		    
		  end
		  
		  'a proper check for monospaced font is required
		  STDOUT.TextFont="Courier"
		  
		  LogoWinToolbar.Item(1).Enabled=false 'Search: disable until alignment loaded
		  LogoWinToolbar.Item(2).Enabled=false 'HmmGen: disable until nhmmer is run
		  'LogoWinToolbar.Item(3).Enabled=false 'TermGen: enable from the beginning
		  LogoWinToolbar.Item(4).Enabled=false 'palindromise: disable until alignment loaded
		  LogoWinToolbar.Item(5).Enabled=false 'SaveLog: disable until alignment loaded
		  
		  WriteToSTDOUT (EndofLine+"Load alignment or genome file to start."+EndofLine)
		  
		  
		  Exception err
		    ExceptionHandler(err,"LogoWin:Open")
		    
		End Sub
	#tag EndEvent


	#tag MenuHandler
		Function FileExtendBindingSites() As Boolean Handles FileExtendBindingSites.Action
			if GenomeFile<>Nil then
			ExtendSitesWin.GenomeField.text=GenomeFile.ShellPath
			ExtendSitesWin.ExtendButton.Enabled=true
			else
			ExtendSitesWin.ExtendButton.Enabled=false
			end if
			ExtendSitesWin.ShowModalWithin(self)
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function FileSaveAlignmentSelection() As Boolean Handles FileSaveAlignmentSelection.Action
			if ubound(SelArray1)=1 then
			
			Dim dlg as New SaveAsDialog
			Dim outfile as FolderItem
			dlg.InitialDirectory=Resources_f.Child("Profiles")
			'dlg.promptText="Prompt Text"
			
			dlg.SuggestedFileName=NthField(LogoFile.Name,".",1)+"_short.fasta"
			dlg.Title="Save subrange of the alignment"
			'dlg.Filter=FileTypes1.Text  //defined as a file type in FileTypes1 File Type Set
			outfile=dlg.ShowModal()
			If outfile <> Nil then
			dim instream as TextInputStream
			dim outstream As TextOutputStream
			dim aLine as string
			dim start,length as integer
			
			start=floor((SelArray1(1)-7)/30)
			length=floor((SelArray2(1)-7)/30)-start
			InStream = logofile.OpenAsTextFile
			OutStream = outfile.createTextFile 'make the file to store the stuff in
			while not InStream.EOF
			aLine=InStream.readLine
			if left(aLine,1)=">" then
			OutStream.writeLine aline
			else
			OutStream.writeLine mid(aline,start,length)
			end if
			
			wend
			InStream.close
			OutStream.close
			
			
			Else
			//user canceled
			End if
			
			
			else
			msgbox "You need to have single selection range in the logo for this function to work."
			end if
			Return True
			
			Exception err
			ExceptionHandler(err,"LogoWin:FileSaveAlignmentSelection")
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function FileSaveLogo() As Boolean Handles FileSaveLogo.Action
			
			SaveLogo
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function MEMEConverttoMEMEformat() As Boolean Handles MEMEConverttoMEMEformat.Action
			dim d as integer = MEMEconvert
			
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function MEMEMAST() As Boolean Handles MEMEMAST.Action
			dim memeResultAvailable as boolean
			
			if GenomeFile<>Nil then
			MASTSettingsWin.GenomeField.text=GenomeFile.ShellPath
			
			MASTSettingsWin.RunButton.Enabled=true
			else
			
			MASTSettingsWin.RunButton.Enabled=false
			
			end if
			MASTSettingsWin.EnableRun
			MASTSettingsWin.ShowModalWithin(self)
			
			if nhmmerOptions <> "" then    'lazy to rename into MASToptions
			'check if we have meme file already within the .sig
			if SigFileOpened then
			dim memefile as FolderItem
			memefile=LogoFile.parent.child("MEME.txt")
			if memefile<>NIL and memefile.Exists then
			memefile.CopyFileTo(SpecialFolder.Temporary)
			MEMEtmp=SpecialFolder.Temporary.child("MEME.txt")
			if memetmp<>nil then
			memeResultAvailable=true
			WriteToSTDOUT (EndofLine+"MEME results from the .sig file will be used.")
			end if
			else
			WriteToSTDOUT (EndofLine+"No MEME result file in the .sig, so have to run MEME...")
			
			if MEMEconvert = 0 then
			memeResultAvailable=true
			end if
			
			end if
			
			else
			if MEMEconvert = 0 then
			memeResultAvailable=true
			end if
			
			end if
			
			
			
			if memeResultAvailable then
			
			MASTsearch
			
			if MASTSettingsWin.ShowHitsCheckBox.value then
			// the 'Add annotation' and 'Mask hits within ORFs' options are mutually exclusive
			// both can't be selected (but can be deselected) at the same time 
			
			if MastSettingsWin.AddAnnotationCheckBox.value then
			HmmGenOptions=""
			Dim dlg as New SaveAsDialog
			dlg.InitialDirectory=genomefile.Parent
			dlg.promptText="Select where to save the modified genome file"
			dlg.SuggestedFileName=nthfield(GenomeFile.Name,".",1)+"_"+nthfield(Logofile.Name,".",1)+".gb"
			dlg.Title="Save genome file"
			dlg.Filter=FileTypes.genbank
			outfile=dlg.ShowModal()
			if outfile<>nil then
			MastGenSettingsWin.ReadOptions
			if MastGen then
			if MastGenSettingsWin.GenomeBrowserCheckBox.Value then 'Load the Seq into browser
			if ubound(GenomeWin.HmmHitDescriptions)>0 then
			GenomeWin.opengenbankfile(outFile)
			genomeWin.ShowHit
			WriteToSTDOUT (" done."+EndofLine)
			end if
			end if
			end if
			end if
			
			elseif MastSettingsWin.MaskWithinORFCheckBox.value then
			
			'remove hits within CDS:
			dim HitCount,Featurecount as integer
			dim m,n as integer
			WriteToSTDOUT (EndofLine+"Filtering out hits within ORFs...")
			
			GenomeWin.opengenbankfile(genomeFile)
			
			HitCount=ubound(genomeWin.HmmHitChecked)
			FeatureCount=ubound(genomeWin.genome.features)
			for m=HitCount downto 1
			for n=1 to Featurecount
			'if genomeWin.genome.features(n).type="CDS" then
			if (genomeWin.genome.features(n).start<=GenomeWin.HmmHits(m) And genomeWin.genome.features(n).Finish>=GenomeWin.HmmHits(m)) OR (genomeWin.genome.features(n).Finish<=GenomeWin.HmmHits(m) And genomeWin.genome.features(n).Start>=GenomeWin.HmmHits(m)) then
			if left(genomeWin.genome.features(n).FeatureText,3)="CDS" then
			genomeWin.HmmHitChecked.Remove(m)
			genomeWin.HmmHitDescriptions.Remove(m)
			genomeWin.HmmHitNames.Remove(m)
			genomeWin.HmmHits.Remove(m)
			exit
			end if
			end if
			'end if
			next 'n
			next 'm
			WriteToSTDOUT ("  "+str(HitCount-ubound(genomeWin.HmmHits))+" hits within ORF removed.") 
			
			if Ubound(genomeWin.HmmHits)>0 then
			'if NOT ScanningGenome then
			'WriteToSTDOUT (EndofLine+"Genbank file with added features written to "+outFile.ShellPath+EndofLine)
			'end if
			
			WriteToSTDOUT (EndofLine+"Loading the GenBank file...")
			
			'Set the genome map scrollbar:
			Genomewin.SetScrollbar
			
			'Display the hit:
			genomeWin.CurrentHit=1
			Dim s0 As SegmentedControlItem = genomeWin.SegmentedControl1.Items( 0 )
			s0.Enabled=false 'first hit: there's no previous one
			Dim s1 As SegmentedControlItem = genomeWin.SegmentedControl1.Items( 1 )
			s1.Title="1/"+str(UBound(genomeWin.HmmHits))
			Dim s2 As SegmentedControlItem = genomeWin.SegmentedControl1.Items( 2 )
			s2.enabled=true
			
			genomeWin.ShowHit
			WriteToSTDOUT (" done."+EndofLine)
			end if
			
			else
			
			if Ubound(genomeWin.HmmHits)>0 then
			'if NOT ScanningGenome then
			'WriteToSTDOUT (EndofLine+"Genbank file with added features written to "+outFile.ShellPath+EndofLine)
			'end if
			
			WriteToSTDOUT (EndofLine+"Loading the GenBank file...")
			
			GenomeWin.opengenbankfile(genomeFile)
			
			'Set the genome map scrollbar:
			Genomewin.SetScrollbar
			
			'Display the hit:
			genomeWin.CurrentHit=1
			Dim s0 As SegmentedControlItem = genomeWin.SegmentedControl1.Items( 0 )
			s0.Enabled=false 'first hit: there's no previous one
			Dim s1 As SegmentedControlItem = genomeWin.SegmentedControl1.Items( 1 )
			s1.Title="1/"+str(UBound(genomeWin.HmmHits))
			Dim s2 As SegmentedControlItem = genomeWin.SegmentedControl1.Items( 2 )
			s2.enabled=true
			
			genomeWin.ShowHit
			WriteToSTDOUT (" done."+EndofLine)
			end if
			
			end if
			end if
			end if
			end if
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function MEMERunMastGenscript() As Boolean Handles MEMERunMastGenscript.Action
			HmmGenOptions=""
			MASTGenSettingsWin.showmodalwithin(self)
			if MASTGenSettingsWin.OKpressed then
			if GenomeFile<>Nil then
			dim fn as string=nthfield(GenomeFile.Name,".",1)+"_"+nthfield(Logofile.Name,".",1)+".gb"
			outfile=GetSaveFolderItem("????",fn)
			if outfile<>nil then
			if MastGen then
			if MASTGenSettingsWin.GenomeBrowserCheckBox.Value then 'Load the Seq into browser
			if ubound(GenomeWin.HmmHitDescriptions)>0 then
			GenomeWin.opengenbankfile(outFile)
			genomeWin.ShowHit
			WriteToSTDOUT (" done."+EndofLine)
			end if
			end if
			end if
			end if
			else
			MsgBox "No genome file selected. Have you run MAST search?"
			end if
			end if
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function ViewAlignmentInfo() As Boolean Handles ViewAlignmentInfo.Action
			ChangeView("AlignmentInfo")
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function ViewHideViewer() As Boolean Handles ViewHideViewer.Action
			ChangeView("HideViewer")
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function ViewHmmerSettings() As Boolean Handles ViewHmmerSettings.Action
			ChangeView("ProfileSettings")
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function ViewHmmProfile() As Boolean Handles ViewHmmProfile.Action
			ChangeView("HmmProfile")
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function ViewLogo() As Boolean Handles ViewLogo.Action
			ChangeView("Logo")
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function ViewMEMEresults() As Boolean Handles ViewMEMEresults.Action
			ChangeView("MEMEresults")
			Return True
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function ViewSequences() As Boolean Handles ViewSequences.Action
			ChangeView("Sequences")
			
			Return True
			
		End Function
	#tag EndMenuHandler


	#tag Method, Flags = &h0
		Sub alimask(infile as folderitem)
		  '/usr/local/bin/alimask
		  
		  '# alimask :: appending modelmask line to a multiple sequence alignments
		  '# HMMER 3.1b1 (May 2013); http://hmmer.org/
		  '# Copyright (C) 2013 Howard Hughes Medical Institute.
		  '# Freely distributed under the GNU General Public License (GPLv3).
		  '# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
		  'Usage: alimask [-options] <msafile> <postmsafile>
		  '
		  'Basic options:
		  '-h     : show brief help on version and usage
		  '-o <f> : direct summary output to file <f>, not stdout
		  '
		  'Mask range options (format:  --xxx 10-20,30-40 ) :
		  '--modelrange <s> : range(s) for mask(s) in model coordinates
		  '--alirange <s>   : range(s) for mask(s) in alignment coordinates
		  '--apendmask      : add to existing mask (default ignores to existing mask)
		  '--model2ali <s>  : print model ranges corresponding to input alignment ranges
		  '--ali2model <s>  : print alignment ranges corresponding to input model ranges
		  '
		  'Options for selecting alphabet rather than guessing it:
		  '--amino         : input alignment is protein sequence data
		  '--dna           : input alignment is DNA sequence data
		  '--rna           : input alignment is RNA sequence data
		  '--outformat <s> : output alignment in format <s>  [Stockholm]
		  '
		  'Alternative model construction strategies:
		  '--fast           : assign cols w/ >= symfrac residues as consensus  [default]
		  '--hand           : manual construction (requires reference annotation)
		  '--symfrac <x>    : sets sym fraction controlling --fast construction  [0.5]
		  '--fragthresh <x> : if L <= x*alen, tag sequence as a fragment  [0.5]
		  '
		  'Alternative relative sequence weighting strategies:
		  '--wpb     : Henikoff position-based weights  [default]
		  '--wgsc    : Gerstein/Sonnhammer/Chothia tree weights
		  '--wblosum : Henikoff simple filter weights
		  '--wnone   : don't do any relative weighting; set all to 1
		  '--wgiven  : use weights as given in MSA file
		  '--wid <x> : for --wblosum: set identity cutoff  [0.62]  (0<=x<=1)
		  '
		  'Other options:
		  '--informat <s> : assert input alifile is in format <s> (no autodetect)
		  '--seed <n>     : set RNG seed to <n> (if 0: one-time arbitrary seed)  [42]
		  
		  dim mask as string
		  dim n as integer
		  dim cli as string
		  Dim sh As Shell
		  
		  'get the temp file to store the output
		  alimaskTmp=SpecialFolder.Temporary.child("alimaskTmp")
		  
		  if ubound(SelArray1)>0 then
		    for n=1 to ubound(SelArray1)
		      mask=mask+str(floor((SelArray1(n)-7)/30))+"-"+str(floor((SelArray2(n)-7)/30)-1)+","
		    next
		    mask=left(mask,len(mask)-1)
		    
		    if alimaskTmp<>nil then
		      if infile<>Nil then
		        'shell within xojo doesn't read .bash_profile - hence PATH isn't set properly
		        'and most programs don't work
		        'hence the full path below
		        '/usr/local/bin/alimask
		        cli=alimaskpath+" --alirange "+mask+weighting+inFile.ShellPath+" "+alimaskTmp.shellpath
		        
		      else
		        msgbox "Invalid input file for alimask"
		      end if
		      
		      sh=New Shell
		      sh.mode=0
		      sh.TimeOut=-1
		      sh.execute cli
		      If sh.errorCode=0 then
		        masked=true 'return Sh.Result
		      else
		        MsgBox "Error Code: "+Str(sh.errorCode)
		      end if
		    else
		      msgbox "Nothing to mask. Please select base range(s) first."
		    end if
		  else
		    MsgBox "Problem creating temporary file"
		  end if
		  
		  Exception err
		    ExceptionHandler(err,"LogoWin:alimask")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub ChangeView(View As string)
		  select case View
		    
		  case "Logo"
		    ViewLogo.Checked=true
		    ViewSequences.Checked=false
		    ViewAlignmentInfo.checked=false
		    ViewHideViewer.Checked=false
		    ViewHmmerSettings.Checked=false
		    ViewHmmProfile.Checked=false
		    ViewMEMEresults.checked=false
		    'LogoCanvas.visible=true
		    'LogoCanvas.Enabled=true
		    'Informer.visible=false
		    'Informer.enabled=false
		    TopPanel.Value=1
		    TopPanel.visible=true
		    LogoCanvas.visible=true
		    DownshiftLog true
		  case "Sequences"
		    ViewLogo.Checked=false
		    ViewSequences.Checked=true
		    ViewAlignmentInfo.checked=false
		    ViewHideViewer.Checked=false
		    ViewHmmerSettings.Checked=false
		    ViewHmmProfile.Checked=false
		    ViewMEMEresults.checked=false
		    'LogoCanvas.visible=false
		    'LogoCanvas.Enabled=false
		    'Informer.visible=true
		    'Informer.enabled=true
		    Informer.text=Sequences
		    TopPanel.Value=0
		    informer.visible=true
		    TopPanel.visible=true
		    DownshiftLog true
		  case "AlignmentInfo"
		    ViewLogo.Checked=false
		    ViewSequences.Checked=false
		    ViewAlignmentInfo.checked=true
		    ViewHideViewer.Checked=false
		    ViewHmmerSettings.Checked=false
		    ViewHmmProfile.Checked=false
		    ViewMEMEresults.checked=false
		    Informer.text=Info
		    TopPanel.value=0
		    informer.visible=true
		    TopPanel.visible=true
		    'LogoCanvas.visible=false
		    'LogoCanvas.Enabled=false
		    'Informer.visible=true
		    'Informer.enabled=true
		    DownshiftLog true
		  case "HideViewer"
		    ViewLogo.Checked=false
		    ViewSequences.Checked=false
		    ViewAlignmentInfo.checked=false
		    ViewHideViewer.Checked=true
		    ViewHmmerSettings.Checked=false
		    ViewHmmProfile.Checked=false
		    ViewMEMEresults.checked=false
		    'LogoCanvas.visible=false
		    'LogoCanvas.Enabled=false
		    'Informer.visible=false
		    'Informer.enabled=false
		    TopPanel.visible=false
		    DownshiftLog false
		  case "ProfileSettings"
		    ViewLogo.Checked=false
		    ViewSequences.Checked=false
		    ViewAlignmentInfo.checked=false
		    ViewHideViewer.Checked=false
		    ViewHmmerSettings.Checked=true
		    ViewHmmProfile.Checked=false
		    ViewMEMEresults.checked=false
		    Informer.text=ProfileSettings
		    TopPanel.visible=true
		    TopPanel.Value=0
		    informer.visible=true
		    'LogoCanvas.visible=false
		    'LogoCanvas.Enabled=false
		    'Informer.visible=true
		    'Informer.enabled=true
		    DownshiftLog true
		  case "HmmProfile"
		    ViewLogo.Checked=false
		    ViewSequences.Checked=false
		    ViewAlignmentInfo.checked=false
		    ViewHideViewer.Checked=false
		    ViewHmmerSettings.Checked=False
		    ViewHmmProfile.Checked=true
		    ViewMEMEresults.checked=false
		    Informer.text=HmmProfile
		    TopPanel.Value=0
		    TopPanel.visible=true
		    informer.visible=true
		    'LogoCanvas.visible=false
		    'LogoCanvas.Enabled=false
		    'Informer.visible=true
		    'Informer.enabled=true
		    DownshiftLog true
		  case "MEMEresults"
		    ViewLogo.Checked=false
		    ViewSequences.Checked=false
		    ViewAlignmentInfo.checked=false
		    ViewHideViewer.Checked=false
		    ViewHmmerSettings.Checked=False
		    ViewHmmProfile.Checked=true
		    ViewMEMEresults.checked=false
		    Informer.text=MEMEdata
		    TopPanel.Value=0
		    TopPanel.visible=true
		    informer.visible=true
		    'LogoCanvas.visible=false
		    'LogoCanvas.Enabled=false
		    'Informer.visible=true
		    'Informer.enabled=true
		    DownshiftLog true
		  end select
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub DownshiftLog(boo as boolean)
		  if boo then
		    if STDOUT.top=0 then
		      TopPanel.left=0
		      Splitter.left=0
		      STDOUT.top=UpperPaneHeight+5
		      STDOUT.height=self.Height-UpperPaneHeight-5
		    else
		      'already down
		    end if
		  else
		    if STDOUT.top=0 then
		      'already up
		    else
		      TopPanel.left=self.width+1 'prevent control overlap
		      Splitter.left=self.width+1
		      STDOUT.top=0
		      STDOUT.height=self.Height
		    end if
		    
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub DrawLogo()
		  'Information content per position as defined by Schneider et al, 1986
		  '
		  ' Ii=2+sum(Fb,i*log2(Fb,i)),
		  '
		  'where i is the position within site, b refers to each of the four bases,
		  'and Fb,i is the frequency of each base at that position
		  
		  dim n,replicas, baseX, currentX,letterData as integer
		  dim entropy, maxentropy, LetterHeight, baseY, nextY,freq As double
		  dim posarray(4),letterName, Acount, Ccount, Gcount, Tcount as string
		  totalEntropy=0
		  
		  
		  baseX= -3
		  baseY=150
		  'read data from the file into array
		  ReadLogoData
		  if ubound(LogoData)>1 then
		    '#if targetlinux then
		    LogoPic=new Picture (30*(ubound(logodata)+1),170,32)
		    '#else
		    'LogoPic=new Picture (30*ubound(logodata),170,32)
		    '#endif
		    LogoPic.Transparent=1
		    
		    
		    'format of the data is:
		    '#    A     C     G     T     Entropy    Low    High    Weight
		    '1     1     0     0     19     0.9777     0.6344     1.3210     1.0000
		    '2     13     3     2     2     0.3639     0.1286     0.7196     1.0000
		    
		    
		    'count number of replicates (bases per position)
		    replicas=val(NthField(logodata(1),chr(9),2))+val(NthField(logodata(1),chr(9),3))+val(NthField(logodata(1),chr(9),4))+val(NthField(logodata(1),chr(9),5))
		    
		    'maxentropy correction
		    'maxentropy=0
		    'for n=1 to ubound(LogoData)
		    'entropy=val(NthField(logodata(n),chr(9),8))
		    'if entropy>maxentropy then
		    'maxentropy=entropy
		    'end if
		    'next
		    'maxentropy=2 '(it should be just bits, but apparently isn't)
		    
		    for n=1 to ubound(LogoData)
		      Acount=NthField(logodata(n),chr(9),2)
		      Ccount=NthField(logodata(n),chr(9),3)
		      Gcount=NthField(logodata(n),chr(9),4)
		      Tcount=NthField(logodata(n),chr(9),5)
		      
		      'combine letter names with counts for sorting
		      posarray(1)=format(val(Acount),"000")+"A"
		      posarray(2)=format(val(Ccount),"000")+"C"
		      posarray(3)=format(val(Gcount),"000")+"G"
		      posarray(4)=format(val(Tcount),"000")+"T"
		      posarray.Sort
		      entropy=2
		      freq=val(Acount)/replicas
		      entropy=entropy+freq*log2(freq)
		      freq=val(Ccount)/replicas
		      entropy=entropy+freq*log2(freq)
		      freq=val(Gcount)/replicas
		      entropy=entropy+freq*log2(freq)
		      freq=val(Tcount)/replicas
		      entropy=entropy+freq*log2(freq)
		      totalEntropy=totalEntropy+entropy
		      
		      'lowest letter
		      letterData=val(posarray(1))
		      letterName=right(posarray(1),1)
		      LetterHeight=70*entropy*letterData/replicas
		      NextY=baseY-letterheight
		      CurrentX=baseX+n*30
		      select case letterName
		      case "A"
		        LogoPic.graphics.DrawPicture(A2,CurrentX,NextY,30,LetterHeight,0,0,120,140)
		      case "C"
		        LogoPic.graphics.DrawPicture(C2,CurrentX,NextY,30,LetterHeight,0,0,120,140)
		      case "G"
		        LogoPic.graphics.DrawPicture(G2,CurrentX,NextY,30,LetterHeight,0,0,120,140)
		      case "T"
		        LogoPic.graphics.DrawPicture(T2,CurrentX,NextY,30,LetterHeight,0,0,120,140)
		      end select
		      
		      'second lowest letter
		      letterData=val(posarray(2))
		      letterName=right(posarray(2),1)
		      LetterHeight=70*entropy*letterData/replicas
		      NextY=NextY-LetterHeight
		      select case letterName
		      case "A"
		        LogoPic.graphics.DrawPicture(A2,CurrentX,NextY,30,LetterHeight,0,0,120,140)
		      case "C"
		        LogoPic.graphics.DrawPicture(C2,CurrentX,NextY,30,LetterHeight,0,0,120,140)
		      case "G"
		        LogoPic.graphics.DrawPicture(G2,CurrentX,NextY,30,LetterHeight,0,0,120,140)
		      case "T"
		        LogoPic.graphics.DrawPicture(T2,CurrentX,NextY,30,LetterHeight,0,0,120,140)
		      end select
		      
		      'third lowest letter
		      letterData=val(posarray(3))
		      letterName=right(posarray(3),1)
		      LetterHeight=70*entropy*letterData/replicas
		      NextY=NextY-LetterHeight
		      select case letterName
		      case "A"
		        LogoPic.graphics.DrawPicture(A2,CurrentX,NextY,30,LetterHeight,0,0,120,140)
		      case "C"
		        LogoPic.graphics.DrawPicture(C2,CurrentX,NextY,30,LetterHeight,0,0,120,140)
		      case "G"
		        LogoPic.graphics.DrawPicture(G2,CurrentX,NextY,30,LetterHeight,0,0,120,140)
		      case "T"
		        LogoPic.graphics.DrawPicture(T2,CurrentX,NextY,30,LetterHeight,0,0,120,140)
		      end select
		      
		      'topmost letter
		      letterData=val(posarray(4))
		      letterName=right(posarray(4),1)
		      LetterHeight=70*entropy*letterData/replicas
		      NextY=NextY-LetterHeight
		      select case letterName
		      case "A"
		        LogoPic.graphics.DrawPicture(A2,CurrentX,NextY,30,LetterHeight,0,0,120,140)
		      case "C"
		        LogoPic.graphics.DrawPicture(C2,CurrentX,NextY,30,LetterHeight,0,0,120,140)
		      case "G"
		        LogoPic.graphics.DrawPicture(G2,CurrentX,NextY,30,LetterHeight,0,0,120,140)
		      case "T"
		        LogoPic.graphics.DrawPicture(T2,CurrentX,NextY,30,LetterHeight,0,0,120,140)
		      end select
		      
		    next
		    
		    'draw rulers
		    'horisontal:
		    '#if targetlinux then
		    LogoPic.graphics.DrawLine(baseX+25,BaseY+3,baseX+30*(n),BaseY+3)
		    for n=1 to ubound(LogoData)
		      LogoPic.graphics.DrawLine(baseX+15+30*n,BaseY+3,baseX+15+30*n,BaseY+7)
		    next
		    for n=5 to ubound(LogoData) step 5
		      LogoPic.graphics.DrawString(str(n),baseX+10+30*n,baseY+20)
		    next
		    '#else
		    'LogoPic.graphics.DrawLine(baseX+25,BaseY+3,baseX+30*(n-1),BaseY+3)
		    'for n=1 to ubound(LogoData)-1
		    'LogoPic.graphics.DrawLine(baseX+15+30*n,BaseY+3,baseX+15+30*n,BaseY+7)
		    'next
		    'for n=5 to ubound(LogoData) step 5
		    'LogoPic.graphics.DrawString(str(n),baseX+10+30*n,baseY+20)
		    'next
		    '#endif
		    
		    'vertical:
		    LogoPic.graphics.DrawLine(baseX+25,BaseY+3,baseX+25,BaseY-140)
		    LogoPic.graphics.DrawLine(baseX+25,BaseY-140,baseX+18,BaseY-140)
		    LogoPic.graphics.DrawLine(baseX+25,BaseY-70,baseX+18,BaseY-70)
		    LogoPic.graphics.DrawLine(baseX+25,BaseY,baseX+18,BaseY)
		    LogoPic.graphics.DrawLine(baseX+25,BaseY-105,baseX+21,BaseY-105)
		    LogoPic.graphics.DrawLine(baseX+25,BaseY-35,baseX+21,BaseY-35)
		    
		    LogoPic.graphics.DrawString("0",6,baseY+5)
		    LogoPic.graphics.DrawString("1",6,baseY-65)
		    LogoPic.graphics.DrawString("2",6,baseY-135)
		    
		    'self.Width=LogoPic.width+20
		    'clear selection arrays to remove selection from previous logo:
		    redim selarray1(0)
		    redim selarray2(0)
		    lastX=0
		    masked=false
		    LogoCanvas.Invalidate 'there are problems updating the logo pic when scanning genome
		    me.refresh 'needed if logo of the same size is drawn and to remove selection
		    
		    WriteToSTDOUT (EndofLine+"Alignment from "+LogoFile.shellpath+" ("+str(replicas)+" seqs) loaded."+EndofLine)
		    WriteToSTDOUT ("Information content of this site is "+str(totalEntropy)+" bits."+EndofLine)
		    
		    'Palindromic=false
		    ChangeView("Logo")
		  else
		    WriteToSTDOUT (EndofLine+"Could not load alignment from "+LogoFile.shellpath+EndofLine)
		  end if
		  
		  Exception err
		    ExceptionHandler(err,"LogoWin:DrawLogo")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub DrawLogoOld()
		  dim n,replicas, baseX, currentX,letterData as integer
		  dim entropy, maxentropy, LetterHeight, baseY, nextY As double
		  dim posarray(4),letterName as string
		  totalEntropy=0
		  
		  ' the calculations below assume the maximal entropy is 1
		  ' this, however, isn't the case, so the max entropy adjustment is required!
		  ' use the 'high' mark in case error bars are to be displayed later
		  
		  baseX= -3
		  baseY=150
		  'read data from the file into array
		  ReadLogoData
		  if ubound(LogoData)>1 then
		    '#if targetlinux then
		    LogoPic=new Picture (30*(ubound(logodata)+1),170,32)
		    '#else
		    'LogoPic=new Picture (30*ubound(logodata),170,32)
		    '#endif
		    LogoPic.Transparent=1
		    
		    
		    'format of the data is:
		    '#    A     C     G     T     Entropy    Low    High    Weight
		    '1     1     0     0     19     0.9777     0.6344     1.3210     1.0000
		    '2     13     3     2     2     0.3639     0.1286     0.7196     1.0000
		    
		    
		    'count number of replicates (bases per position)
		    replicas=val(NthField(logodata(1),chr(9),2))+val(NthField(logodata(1),chr(9),3))+val(NthField(logodata(1),chr(9),4))+val(NthField(logodata(1),chr(9),5))
		    
		    'maxentropy correction
		    maxentropy=0
		    for n=1 to ubound(LogoData)
		      entropy=val(NthField(logodata(n),chr(9),8))
		      if entropy>maxentropy then
		        maxentropy=entropy
		      end if
		    next
		    'maxentropy=2 '(it should be just bits, but apparently isn't)
		    
		    for n=1 to ubound(LogoData)
		      'combine letter names with counts for sorting
		      posarray(1)=format(val(NthField(logodata(n),chr(9),2)),"000")+"A"
		      posarray(2)=format(val(NthField(logodata(n),chr(9),3)),"000")+"C"
		      posarray(3)=format(val(NthField(logodata(n),chr(9),4)),"000")+"G"
		      posarray(4)=format(val(NthField(logodata(n),chr(9),5)),"000")+"T"
		      posarray.Sort
		      entropy=val(NthField(logodata(n),chr(9),6))
		      totalEntropy=totalEntropy+entropy
		      
		      'lowest letter
		      letterData=val(posarray(1))
		      letterName=right(posarray(1),1)
		      LetterHeight=140*(entropy/maxentropy)*letterData/replicas
		      NextY=baseY-letterheight
		      CurrentX=baseX+n*30
		      select case letterName
		      case "A"
		        LogoPic.graphics.DrawPicture(A2,CurrentX,NextY,30,LetterHeight,0,0,120,140)
		      case "C"
		        LogoPic.graphics.DrawPicture(C2,CurrentX,NextY,30,LetterHeight,0,0,120,140)
		      case "G"
		        LogoPic.graphics.DrawPicture(G2,CurrentX,NextY,30,LetterHeight,0,0,120,140)
		      case "T"
		        LogoPic.graphics.DrawPicture(T2,CurrentX,NextY,30,LetterHeight,0,0,120,140)
		      end select
		      
		      'second lowest letter
		      letterData=val(posarray(2))
		      letterName=right(posarray(2),1)
		      LetterHeight=140*(entropy/maxentropy)*letterData/replicas
		      NextY=NextY-LetterHeight
		      select case letterName
		      case "A"
		        LogoPic.graphics.DrawPicture(A2,CurrentX,NextY,30,LetterHeight,0,0,120,140)
		      case "C"
		        LogoPic.graphics.DrawPicture(C2,CurrentX,NextY,30,LetterHeight,0,0,120,140)
		      case "G"
		        LogoPic.graphics.DrawPicture(G2,CurrentX,NextY,30,LetterHeight,0,0,120,140)
		      case "T"
		        LogoPic.graphics.DrawPicture(T2,CurrentX,NextY,30,LetterHeight,0,0,120,140)
		      end select
		      
		      'third lowest letter
		      letterData=val(posarray(3))
		      letterName=right(posarray(3),1)
		      LetterHeight=140*(entropy/maxentropy)*letterData/replicas
		      NextY=NextY-LetterHeight
		      select case letterName
		      case "A"
		        LogoPic.graphics.DrawPicture(A2,CurrentX,NextY,30,LetterHeight,0,0,120,140)
		      case "C"
		        LogoPic.graphics.DrawPicture(C2,CurrentX,NextY,30,LetterHeight,0,0,120,140)
		      case "G"
		        LogoPic.graphics.DrawPicture(G2,CurrentX,NextY,30,LetterHeight,0,0,120,140)
		      case "T"
		        LogoPic.graphics.DrawPicture(T2,CurrentX,NextY,30,LetterHeight,0,0,120,140)
		      end select
		      
		      'topmost letter
		      letterData=val(posarray(4))
		      letterName=right(posarray(4),1)
		      LetterHeight=140*(entropy/maxentropy)*letterData/replicas
		      NextY=NextY-LetterHeight
		      select case letterName
		      case "A"
		        LogoPic.graphics.DrawPicture(A2,CurrentX,NextY,30,LetterHeight,0,0,120,140)
		      case "C"
		        LogoPic.graphics.DrawPicture(C2,CurrentX,NextY,30,LetterHeight,0,0,120,140)
		      case "G"
		        LogoPic.graphics.DrawPicture(G2,CurrentX,NextY,30,LetterHeight,0,0,120,140)
		      case "T"
		        LogoPic.graphics.DrawPicture(T2,CurrentX,NextY,30,LetterHeight,0,0,120,140)
		      end select
		      
		    next
		    
		    'draw rulers
		    'horisontal:
		    '#if targetlinux then
		    LogoPic.graphics.DrawLine(baseX+25,BaseY+3,baseX+30*(n),BaseY+3)
		    for n=1 to ubound(LogoData)
		      LogoPic.graphics.DrawLine(baseX+15+30*n,BaseY+3,baseX+15+30*n,BaseY+7)
		    next
		    for n=5 to ubound(LogoData) step 5
		      LogoPic.graphics.DrawString(str(n),baseX+10+30*n,baseY+20)
		    next
		    '#else
		    'LogoPic.graphics.DrawLine(baseX+25,BaseY+3,baseX+30*(n-1),BaseY+3)
		    'for n=1 to ubound(LogoData)-1
		    'LogoPic.graphics.DrawLine(baseX+15+30*n,BaseY+3,baseX+15+30*n,BaseY+7)
		    'next
		    'for n=5 to ubound(LogoData) step 5
		    'LogoPic.graphics.DrawString(str(n),baseX+10+30*n,baseY+20)
		    'next
		    '#endif
		    
		    'vertical:
		    LogoPic.graphics.DrawLine(baseX+25,BaseY+3,baseX+25,BaseY-140)
		    LogoPic.graphics.DrawLine(baseX+25,BaseY-140,baseX+18,BaseY-140)
		    LogoPic.graphics.DrawLine(baseX+25,BaseY-70,baseX+18,BaseY-70)
		    LogoPic.graphics.DrawLine(baseX+25,BaseY,baseX+18,BaseY)
		    LogoPic.graphics.DrawLine(baseX+25,BaseY-105,baseX+21,BaseY-105)
		    LogoPic.graphics.DrawLine(baseX+25,BaseY-35,baseX+21,BaseY-35)
		    
		    LogoPic.graphics.DrawString("0",6,baseY+5)
		    LogoPic.graphics.DrawString("1",6,baseY-65)
		    LogoPic.graphics.DrawString("2",6,baseY-135)
		    
		    'self.Width=LogoPic.width+20
		    'clear selection arrays to remove selection from previous logo:
		    redim selarray1(0)
		    redim selarray2(0)
		    lastX=0
		    masked=false
		    LogoCanvas.Invalidate 'there are problems updating the logo pic when scanning genome
		    me.refresh 'needed if logo of the same size is drawn and to remove selection
		    
		    WriteToSTDOUT (EndofLine+"Alignment from "+LogoFile.shellpath+" ("+str(replicas)+" seqs) loaded."+EndofLine)
		    WriteToSTDOUT ("Binding site entropy is "+str(totalEntropy)+"."+EndofLine)
		    
		    'Palindromic=false
		    ChangeView("Logo")
		  else
		    WriteToSTDOUT (EndofLine+"Could not load alignment from "+LogoFile.shellpath+EndofLine)
		  end if
		  
		  Exception err
		    ExceptionHandler(err,"LogoWin:DrawLogo")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HmmGen() As boolean
		  'returns true if completed without errors
		  
		  'outfile must be set before calling this method
		  
		  'GenomeFile=GetOpenFolderItem("")
		  
		  dim HitName as string
		  if GenomeFile<> nil then
		    dim cli as string
		    Dim sh As Shell
		    
		    'usage:
		    'HmmGen <report_file>  <input_file> <output_file> [options]
		    '
		    'This script allows to add features to a genbank file according to nhmmer
		    'results. Requires Biopython 1.64 (or newer)
		    '
		    'positional arguments:
		    'report_file           path to nhmmer report file produced with -tblout
		    'option.
		    'input_file            path to input Genbank file.
		    'output_file           path to output Genbank file.
		    '
		    'optional arguments:
		    '-h, --help            show this help message and exit
		    '-L <integer> or <integer>:<integer>, --length <integer> or <integer>:<integer>
		    'maximal and minimal allowed length of profile to
		    'genome alignment.
		    '-q [<key#"value"> [<key#"value"> ...]], --qual [<key#"value"> [<key#"value"> ...]]
		    'add this qualifier to each annotated feature.
		    '-p, --palindromic     filter palindromic sites.
		    '-n, --name            don't pick 'locus_tag' and 'gene' qualifiers from the
		    'next CDS feature.
		    '-E <float or integer>, --eval <float or integer>
		    'threshold E-Value.
		    '-i, --insert          don't add features inside CDS
		    '-d, --duplicate       no duplicate features with the same location and the
		    'same protein_bind qualifier value
		    '-v, --version         show program's version number and exit
		    '-f <"feature key">, --feature <"feature key">
		    'feature key to add (promoter, protein_bind etc.)
		    
		    
		    
		    if outfile<>nil then
		      WriteToSTDOUT (EndofLine+EndofLine+"Running HmmGen script..."+EndofLine)
		      
		      'cli="python /Users/Home/HmmGen.py "+nhmmerResultFile.ShellPath+" "+GenomeFile.ShellPath+" -L "+str(LogoLength)+" "+HmmGenOptions+outFile.ShellPath
		      'cli="python "+hmmGenPath+" "+nhmmerResultFile.ShellPath+" "+GenomeFile.ShellPath+" -L "+str(LogoLength)+" "+HmmGenOptions+outFile.ShellPath
		      cli="python "+hmmGenPath+" "+nhmmerResultFile.ShellPath+" "+GenomeFile.ShellPath+" "+outFile.ShellPath+" "+HmmGenOptions
		      
		      sh=New Shell
		      sh.mode=0
		      sh.TimeOut=-1
		      sh.execute cli
		      If sh.errorCode=0 then
		        'store hit number for genome scan:
		        dim LastHitStr as string
		        LastHitStr=NthField(Sh.Result,"Features added:",3)
		        LastHitStr=NthField(LastHitStr,"CPU time:",1)
		        LastHitNo=Val(LastHitStr)
		        
		        WriteToSTDOUT (EndofLine+Sh.Result)
		        
		        
		        dim ms,t1 as double
		        ms=microseconds
		        
		        'display the hits in the browser:
		        if HmmGenSettingsWin.GenomeBrowserCheckBox.value then
		          
		          
		          redim GenomeWin.HmmHits(0)
		          redim GenomeWin.HmmHitDescriptions(0)
		          redim genomeWin.HmmHitNames(0)
		          
		          dim m,n,o,colonPos as integer
		          dim currentHit,HitInfo, hits2sort(0),hitloc as string
		          
		          'sort the hits according to genome position:
		          m=CountFields(sh.result,"location: [")
		          for n=2 to m
		            currentHit=nthfield(sh.result,"location: [",n)
		            colonPos=instrb(currenthit,":")
		            hitloc=nthfield(currentHit,":",1)
		            if lenb(hitLoc)<8 then 'assuming genome length is less than 100Mb
		              for o=0 to 8-lenb(hitLoc)
		                hitloc="0"+hitloc
		              next
		            end if
		            hitloc=hitloc+midb(currenthit,colonpos,lenb(currentHit)-colonpos)
		            hits2sort.append hitloc'+midb(currenthit,colonpos,lenb(currentHit)-colonpos)
		            'nthfield(sh.result,"location: [",n)
		          next
		          hits2sort.Sort
		          m=ubound(hits2sort)
		          for n=1 to m
		            while left(hits2sort(n),1)="0"
		              hits2sort(n)=right(hits2sort(n),lenb(hits2sort(n))-1)
		            wend
		          next
		          
		          'add sorted hits and their info into genome browser arrays:
		          'hmmgen result:
		          '2233715:2233745](-)
		          'qualifiers:
		          'Key: bound_moiety, Value: ['HrpL alternative sigma factor']
		          'Key: gene, Value: ['hrpJ']
		          'Key: inference, Value: ['profile:nhmmer:3.1b1']
		          'Key: locus_tag, Value: ['OA04_20620']
		          'Key: note, Value: nhmmer score 12.8 E-value 1.2
		          'Key: regulatory_class, Value: ['promoter']
		          'type: regulatory
		          
		          for n=1 to ubound(hits2sort)
		            currentHit=hits2sort(n)
		            GenomeWin.HmmHits.append(val(nthfield(currentHit,":",1)))
		            HitInfo=nthfield(currentHit,"]",1)+" ("+right(nthfield(currentHit,")",1),1)+") "
		            HitInfo=HitInfo+nthfield(nthfield(currentHit,"bound_moiety, Value: ['",2),"']",1)
		            HitInfo=HitInfo+" "+NthField(nthfield(currentHit,"nhmmer ",2),Endofline,1)
		            HitName=""
		            if instr(currenthit,"Key: gene")>0 then
		              'extract gene name
		              Hitname=nthfield(currentHit,"Key: gene, Value: ['",2)
		              Hitname=nthfield(HitName,"']",1)+" "
		            end if
		            'add locus_tag
		            Hitname=Hitname+nthfield(nthfield(currentHit,"Key: locus_tag, Value: ['",2),"']",1)+" "
		            
		            genomeWin.HmmHitDescriptions.append HitInfo
		            genomeWin.HmmHitNames.append HitName
		            
		          next
		          
		          'initialise array to select/deselect hits:
		          redim genomeWin.HmmHitChecked(ubound(hits2sort))
		          for n=1 to ubound(hits2sort)
		            genomeWin.HmmHitChecked(n)=true
		          next
		          genomeWin.AnyHitDeselected=false
		        end if
		        
		        
		        
		        if Ubound(genomeWin.HmmHits)>0 then
		          if NOT ScanningGenome then
		            WriteToSTDOUT (EndofLine+"Genbank file with added features written to "+outFile.ShellPath+EndofLine)
		          end if
		          
		          WriteToSTDOUT (EndofLine+"Loading the GenBank file...")
		          
		          'Set the genome map scrollbar:
		          Genomewin.SetScrollbar
		          
		          'Display the hit:
		          genomeWin.CurrentHit=1
		          Dim s0 As SegmentedControlItem = genomeWin.SegmentedControl1.Items( 0 )
		          s0.Enabled=false 'first hit: there's no previous one
		          Dim s1 As SegmentedControlItem = genomeWin.SegmentedControl1.Items( 1 )
		          s1.Title="1/"+str(UBound(genomeWin.HmmHits))
		          Dim s2 As SegmentedControlItem = genomeWin.SegmentedControl1.Items( 2 )
		          s2.enabled=true
		          
		          
		        end if
		        return true
		      else
		        WriteToSTDOUT (EndofLine+"HmmGen error code: "+Str(sh.errorCode)+EndofLine)
		        WriteToSTDOUT (EndofLine+Sh.Result)
		        return false
		      end if
		    else
		      return false
		    end if
		    
		  end if
		  
		  
		  Exception err
		    ExceptionHandler(err,"LogoWin:HmmGen")
		    
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadAlignment(tmpfile as folderitem)
		  
		  if tmpfile<> nil then
		    dim vv as VirtualVolume
		    vv=tmpfile.openAsVirtualVolume
		    if vv<> nil then                   ' .sig file
		      'set behaviour
		      SigFileOpened=true
		      nhmmerSettingsWin.AddAnnotationCheckBox.value=true
		      nhmmerSettingsWin.AddAnnotationCheckBox.value=true
		      nhmmerSettingsWin.AddAnnotationCheckBox.enabled=true
		      nhmmerSettingsWin.AddAnnotationCheckBox.HelpTag="Annotation will be added with the HmmGen.py script"
		      nhmmerSettingsWin.MaskingBox.enabled=false
		      'nhmmerSettingsWin.CutoffBox.enabled=true
		      'nhmmerSettingsWin.ThresholdsBox.enabled=false
		      nhmmerSettingsWin.BitScoreField.enabled=true
		      nhmmerSettingsWin.BitScoreButton.enabled=false
		      nhmmerSettingsWin.EvalueButton.enabled=false
		      'nhmmerSettingsWin.CutOffBox.enabled=false
		      nhmmerSettingsWin.ThresholdsBox.enabled=true
		      
		      nhmmerSettingsWin.BitScoreField.text=""
		      nhmmerSettingsWin.EvalueField.Text=""
		      nhmmerSettingsWin.MaskingBox.HelpTag="Positions selected in the logo above will be masked according to the algorithm chosen." ' Disabled as the calibrated profile cannot be masked."
		      nhmmerSettingsWin.CutoffBox.HelpTag="Use score tresholds stored in the profile."
		      nhmmerSettingsWin.ThresholdsBox.HelpTag="Thresholds to use with uncalibrated profile. Disabled as the cutoffs from the opened calibrated profile will be used."
		      'Read data
		      dim basename as string=nthfield(tmpfile.DisplayName,".sig",1)
		      LogoFile=vv.root.child(basename+".fasta")
		      HmmFile=vv.root.child(basename+".hmm")
		      
		      'read the accessory files
		      dim f as folderitem
		      dim inStream as TextInputStream
		      f=vv.root.child(basename+".info")     'Info
		      InStream = f.OpenAsTextFile
		      if InStream <>nil then
		        Info=inStream.ReadAll
		        inStream.close
		      else
		        msgbox "Can't read alignment info"
		      end if
		      
		      f=vv.root.child(basename+".options")  'Profile Settings
		      
		      InStream = f.OpenAsTextFile
		      if InStream <>nil then
		        ProfileSettings=inStream.ReadAll
		        
		        inStream.close
		        
		        'read profile calibration values
		        dim aline As string
		        InStream = f.OpenAsTextFile
		        while not InStream.EOF
		          aLine=InStream.readLine
		          if left(aLine,7)="#=GF GA" then
		            nhmmerSettingsWin.GAvalue.text="("+trim(NthField(aline," ",3))+")"
		          elseif left(aLine,7)="#=GF NC" then
		            nhmmerSettingsWin.NCvalue.text="("+trim(NthField(aline," ",3))+")"
		          elseif left(aLine,7)="#=GF TC" then
		            nhmmerSettingsWin.TCvalue.text="("+trim(NthField(aline," ",3))+")"
		          end if
		        wend
		        inStream.close
		      else
		        msgbox "Can't read SigmoID file options"
		      end if
		      HmmGenSettingsWin.EvalueField.enabled=false
		      HmmGenSettingsWin.EvalueButton.enabled=false
		      
		      f=vv.root.child(basename+".hmm")      'Hmm profile
		      InStream = f.OpenAsTextFile
		      if InStream <>nil then
		        HmmProfile=inStream.ReadAll
		        inStream.close
		      else
		        msgbox "Can't read hmm profile"
		      end if
		      
		      f=vv.root.child("meme.txt")      'meme data
		      InStream = f.OpenAsTextFile
		      if InStream <>nil then
		        MEMEdata=inStream.ReadAll
		        inStream.close
		      else
		        'meme data is optional, so the warning goes to the log:
		        WriteToSTDOUT(LineEnd+"No MEME data is present in this .sig file")
		      end if
		      
		      f=vv.root.child(basename+".logodata") 'Logo data
		      InStream = f.OpenAsTextFile
		      if InStream <>nil then
		        Weblogo_out=inStream.ReadAll
		        inStream.close
		      else
		        msgbox "Can't read logo data"
		      end if
		      
		      'Extract values from ProfileSettings
		      'and fill in the variables / configure settings windows accordingly:
		      dim OptionsNo,n as integer
		      dim theOption, switchName as string
		      
		      'nhmmer options
		      OptionsNo=countFields(ProfileSettings,"nhmmer.")
		      for n=1 to OptionsNo
		        theOption=NthField(ProfileSettings,"nhmmer.",n+1)
		        theOption=trim(NthField(TheOption,EndOfLine.Unix,1))
		        switchName=NthField(theOption," ",1)
		        select case switchName
		        case "--cut_ga"
		          nhmmerSettingsWin.gaButton.Value=true
		          HmmGenSettingsWin.BitScoreField.Text=mid(nhmmerSettingsWin.GAvalue.text,2,len(nhmmerSettingsWin.GAvalue.text)-2)
		          'nhmmerSettingsWin.BitScoreField.Text=mid(nhmmerSettingsWin.GAvalue.text,2,len(nhmmerSettingsWin.GAvalue.text)-2)
		        case "--cut_nc"
		          nhmmerSettingsWin.ncButton.Value=true
		          HmmGenSettingsWin.BitScoreField.Text=mid(nhmmerSettingsWin.NCvalue.text,2,len(nhmmerSettingsWin.NCvalue.text)-2)
		          'nhmmerSettingsWin.BitScoreField.Text=mid(nhmmerSettingsWin.NCvalue.text,2,len(nhmmerSettingsWin.GAvalue.text)-2)
		        case "--cut_tc"
		          nhmmerSettingsWin.tcButton.Value=true
		          HmmGenSettingsWin.BitScoreField.Text=mid(nhmmerSettingsWin.TCvalue.text,2,len(nhmmerSettingsWin.TCvalue.text)-2)
		          'nhmmerSettingsWin.BitScoreField.Text=mid(nhmmerSettingsWin.TCvalue.text,2,len(nhmmerSettingsWin.GAvalue.text)-2)
		        end select
		      next
		      'HmmGen and MastGen options
		      HmmGenSettingsWin.PalindromicBox.value=False
		      palindromic=false                           'enable the "Palindromise" function
		      HmmGenSettingsWin.IntergenicBox.value=False
		      HmmGenSettingsWin.AddQualifierBox.value=False
		      HmmGenSettingsWin.NextLocusBox.value=True
		      OptionsNo=countFields(ProfileSettings,"HmmGen.")
		      for n=1 to OptionsNo
		        theOption=NthField(ProfileSettings,"HmmGen.",n+1)
		        theOption=trim(NthField(TheOption,EndOfLine.Unix,1))
		        switchName=NthField(theOption," ",1)
		        select case switchName
		        case "-L"
		          HmmGenSettingsWin.lengthField.text=NthField(theOption," ",2)
		        case "-p"
		          HmmGenSettingsWin.PalindromicBox.value=true
		          palindromic=true
		        case "-i"
		          HmmGenSettingsWin.IntergenicBox.value=true
		        case "-n"
		          HmmGenSettingsWin.NextLocusBox.value=false
		        case "-f"
		          HmmGenSettingsWin.FeatureCombo.Text=NthField(theOption," ",2)
		        case "-q"
		          HmmGenSettingsWin.AddQualifierBox.value=true
		          theOption=trim(right(theOption,len(theOption)-2))
		          HmmGenSettingsWin.KeyField.text=NthField(theOption,"#",1)
		          HmmGenSettingsWin.ValueField.text=NthField(theOption,"#",2)
		        end select
		      next
		      
		      MastGenSettingsWin.PalindromicBox.value=HmmGenSettingsWin.PalindromicBox.value
		      MastGenSettingsWin.IntergenicBox.value=HmmGenSettingsWin.IntergenicBox.value
		      MastGenSettingsWin.AddQualifierBox.value=HmmGenSettingsWin.AddQualifierBox.value
		      MastGenSettingsWin.NextLocusBox.value=HmmGenSettingsWin.NextLocusBox.value
		      MastGenSettingsWin.lengthField.text=HmmGenSettingsWin.lengthField.text
		      MastGenSettingsWin.FeatureCombo.Text=HmmGenSettingsWin.FeatureCombo.Text
		      MastGenSettingsWin.KeyField.text=HmmGenSettingsWin.KeyField.text
		      MastGenSettingsWin.ValueField.text=HmmGenSettingsWin.ValueField.text
		      
		      
		      'MASTgen p-value
		      if instr(ProfileSettings,"mastGen.-V")>0 then
		        theOption=NthField(ProfileSettings,"mastGen.-V",2)
		        theOption=NthField(trim(TheOption),EndOfLine.unix,1)
		        MastGenSettingsWin.PvalueField.text=theOption
		        MastSettingsWin.PvalueField.text=theOption
		      end if
		      
		    else
		      SigFileOpened=false
		      nhmmerSettingsWin.AddAnnotationCheckBox.value=false
		      nhmmerSettingsWin.AddAnnotationCheckBox.enabled=false
		      nhmmerSettingsWin.AddAnnotationCheckBox.HelpTag="This option is enabled only for calibrated profiles"
		      LogoFile=tmpfile
		      HmmGenSettingsWin.PalindromicBox.value=False
		      HmmGenSettingsWin.IntergenicBox.value=False
		      HmmGenSettingsWin.AddQualifierBox.value=False
		      HmmGenSettingsWin.NextLocusBox.value=True
		      HmmGenSettingsWin.lengthField.text=""
		      HmmGenSettingsWin.EvalueField.enabled=true
		      HmmGenSettingsWin.EvalueButton.enabled=true
		      nhmmerSettingsWin.MaskingBox.enabled=true
		      nhmmerSettingsWin.CutoffBox.enabled=false
		      nhmmerSettingsWin.TCvalue.text=""
		      nhmmerSettingsWin.GAvalue.text=""
		      nhmmerSettingsWin.NCvalue.text=""
		      nhmmerSettingsWin.ThresholdsBox.enabled=true
		      nhmmerSettingsWin.MaskingBox.HelpTag="Positions selected in the logo above will be masked according to the algorithm chosen."
		      nhmmerSettingsWin.CutoffBox.HelpTag="Use score tresholds stored in the profile. Disabled as you are not using calibrated profile."
		      nhmmerSettingsWin.ThresholdsBox.HelpTag="Thresholds to use with uncalibrated profile."
		      palindromic=false
		      
		      
		    end if
		    'store the seqs
		    dim tis as TextInputStream
		    tis=logofile.OpenAsTextFile
		    sequences=tis.ReadAll
		    tis.Close
		    
		    'determine the default length parameter
		    tis=logofile.OpenAsTextFile
		    dim aline As string
		    while not tis.EOF
		      aLine=tis.readLine
		      if left(aLine,1)="A" OR left(aLine,1)="C" OR left(aLine,1)="G" OR left(aLine,1)="T"  then
		        HmmGenSettingsWin.LengthField.CueText=str(len(aline))
		        exit
		      end if
		    wend
		    tis.Close
		    
		    
		    LogoWinToolbar.Item(1).Enabled=true
		    
		  else
		    'MsgBox "Can't open the alignment file"
		    LogoWinToolbar.Item(1).Enabled=false 'disable until alignment loaded
		    LogoWinToolbar.Item(4).Enabled=false
		    
		    Return
		  end if
		  if WebLogoAvailable then
		    DrawLogo
		  elseif SigFileOpened then
		    'use stored logodata within .sig file if available
		    DrawLogo
		  else
		    ChangeView("Sequences")
		  end if
		  
		  if GenomeFile<> Nil AND Logofile<>nil then
		    'LogoWinToolbar.Item(1).Enabled=true
		    LogoWinToolbar.Item(2).Enabled=false 'new alignment, no nhmmer output yet
		  end if
		  
		  if Palindromic then
		    LogoWinToolbar.Item(4).Enabled=false
		  else
		    LogoWinToolbar.Item(4).Enabled=true
		  End If
		  
		  Exception err
		    ExceptionHandler(err,"LogoWin:LoadAlignment")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function MASTGen() As boolean
		  'returns true if completed without errors
		  
		  'outfile must be set before calling this method
		  
		  'GenomeFile=GetOpenFolderItem("")
		  dim HitName as string
		  if GenomeFile<> nil then
		    dim cli as string
		    Dim sh As Shell
		    
		    'The MastGen.py script is similar to the HmmGen.py,
		    'but -V is used instad of -E
		    
		    'usage:
		    'MastGen <report_file>  <input_file> <output_file> [options]
		    '
		    'This script allows to add features to a genbank file according to MAST
		    'results. Requires Biopython 1.64 (or newer)
		    '
		    'positional arguments:
		    'report_file           path to MAST report file produced with -tblout option.
		    'input_file            path to input Genbank file.
		    'output_file           path to output Genbank file.
		    '
		    'optional arguments:
		    '-h, --help            show this help message and exit
		    '-L <integer>, --length <integer>
		    'final feature's length in genbank file
		    '-q [<key#"value"> [<key#"value"> ...]], --qual [<key#"value"> [<key#"value"> ...]]
		    'add this qualifier to each annotated feature.
		    '-p, --palindromic     filter palindromic sites.
		    '-n, --name            don't pick 'locus_tag' and 'gene' qualifiers from the
		    'next CDS feature.
		    '-V <float or integer>, --pval <float or integer>
		    'threshold E-Value.
		    '-S <float or integer>, --score <float or integer>
		    'threshold Bit Score.
		    '-i, --insert          don't add features inside CDS
		    '-d, --duplicate       no duplicate features with the same location and the
		    'same protein_bind qualifier value
		    '-v, --version         show program's version number and exit
		    '-f <"feature key">, --feature <"feature key">
		    'feature key to add (promoter, protein_bind etc.)
		    
		    
		    
		    
		    if outfile<>nil and MASTResultFile<> NIL then
		      WriteToSTDOUT (EndofLine+EndofLine+"Running the MastGen script..."+EndofLine)
		      
		      'cli="python /Users/Home/HmmGen.py "+nhmmerResultFile.ShellPath+" "+GenomeFile.ShellPath+" -L "+str(LogoLength)+" "+HmmGenOptions+outFile.ShellPath
		      'cli="python "+hmmGenPath+" "+nhmmerResultFile.ShellPath+" "+GenomeFile.ShellPath+" -L "+str(LogoLength)+" "+HmmGenOptions+outFile.ShellPath
		      cli="python "+MastGenPath+" "+MASTResultFile.ShellPath+" "+GenomeFile.ShellPath+" "+outFile.ShellPath+" "+HmmGenOptions
		      
		      sh=New Shell
		      sh.mode=0
		      sh.TimeOut=-1
		      sh.execute cli
		      If sh.errorCode=0 then
		        'store hit number for genome scan:
		        dim LastHitStr as string
		        LastHitStr=NthField(Sh.Result,"Features added:",3)
		        LastHitStr=NthField(LastHitStr,"CPU time:",1)
		        LastHitNo=Val(LastHitStr)
		        
		        WriteToSTDOUT (EndofLine+Sh.Result)
		        
		        
		        'display the hits in the browser:
		        if MastGenSettingsWin.GenomeBrowserCheckBox.value then
		          'MastSettingsWin.AddAnnotationCheckBox.value
		          
		          redim GenomeWin.HmmHits(0)
		          redim GenomeWin.HmmHitDescriptions(0)
		          redim genomeWin.HmmHitNames(0)
		          
		          dim m,n,o,colonPos as integer
		          dim currentHit,HitInfo, hits2sort(0),hitloc as string
		          
		          'sort the hits according to genome position:
		          m=CountFields(sh.result,"location: [")
		          for n=2 to m
		            currentHit=nthfield(sh.result,"location: [",n)
		            colonPos=instrb(currenthit,":")
		            hitloc=nthfield(currentHit,":",1)
		            if lenb(hitLoc)<8 then 'assuming genome length is less than 100Mb
		              for o=0 to 8-lenb(hitLoc)
		                hitloc="0"+hitloc
		              next
		            end if
		            hitloc=hitloc+midb(currenthit,colonpos,lenb(currentHit)-colonpos)
		            hits2sort.append hitloc'+midb(currenthit,colonpos,lenb(currentHit)-colonpos)
		            'nthfield(sh.result,"location: [",n)
		          next
		          hits2sort.Sort
		          m=ubound(hits2sort)
		          for n=1 to m
		            while left(hits2sort(n),1)="0"
		              hits2sort(n)=right(hits2sort(n),lenb(hits2sort(n))-1)
		            wend
		          next
		          
		          'add sorted hits and their info into genome browser arrays:
		          'hmmgen result:
		          '2233715:2233745](-)
		          'qualifiers:
		          'Key: bound_moiety, Value: ['HrpL alternative sigma factor']
		          'Key: gene, Value: ['hrpJ']
		          'Key: inference, Value: ['profile:nhmmer:3.1b1']
		          'Key: locus_tag, Value: ['OA04_20620']
		          'Key: note, Value: nhmmer score 12.8 E-value 1.2
		          'Key: regulatory_class, Value: ['promoter']
		          'type: regulatory
		          
		          for n=1 to ubound(hits2sort)
		            currentHit=hits2sort(n)
		            GenomeWin.HmmHits.append(val(nthfield(currentHit,":",1)))
		            HitInfo=nthfield(currentHit,"]",1)+" ("+right(nthfield(currentHit,")",1),1)+") "
		            HitInfo=HitInfo+nthfield(nthfield(currentHit,"bound_moiety, Value: ['",2),"']",1)
		            HitInfo=HitInfo+" "+NthField(nthfield(currentHit,"MAST ",2),Endofline,1)
		            HitName=""
		            if instr(currenthit,"Key: gene")>0 then
		              'extract gene name
		              Hitname=nthfield(currentHit,"Key: gene, Value: ['",2)
		              Hitname=nthfield(HitName,"']",1)+" "
		            end if
		            'add locus_tag
		            Hitname=Hitname+nthfield(nthfield(currentHit,"Key: locus_tag, Value: ['",2),"']",1)+" "
		            
		            genomeWin.HmmHitDescriptions.append HitInfo
		            genomeWin.HmmHitNames.append HitName
		            
		          next
		          
		          'initialise array to select/deselect hits:
		          redim genomeWin.HmmHitChecked(ubound(hits2sort))
		          for n=1 to ubound(hits2sort)
		            genomeWin.HmmHitChecked(n)=true
		          next
		          genomeWin.AnyHitDeselected=false
		        end if
		        
		        
		        
		        if Ubound(genomeWin.HmmHits)>0 then
		          if NOT ScanningGenome then
		            WriteToSTDOUT (EndofLine+"Genbank file with added features written to "+outFile.ShellPath+EndofLine)
		          end if
		          
		          WriteToSTDOUT (EndofLine+"Loading the GenBank file...")
		          
		          'Set the genome map scrollbar:
		          Genomewin.SetScrollbar
		          
		          'Display the hit:
		          genomeWin.CurrentHit=1
		          Dim s0 As SegmentedControlItem = genomeWin.SegmentedControl1.Items( 0 )
		          s0.Enabled=false 'first hit: there's no previous one
		          Dim s1 As SegmentedControlItem = genomeWin.SegmentedControl1.Items( 1 )
		          s1.Title="1/"+str(UBound(genomeWin.HmmHits))
		          Dim s2 As SegmentedControlItem = genomeWin.SegmentedControl1.Items( 2 )
		          s2.enabled=true
		          
		          
		        end if
		        return true
		      else
		        WriteToSTDOUT (EndofLine+"MASTGen error code: "+Str(sh.errorCode)+EndofLine)
		        WriteToSTDOUT (EndofLine+Sh.Result)
		        return false
		      end if
		    else
		      return false
		    end if
		    
		  end if
		  
		  
		  Exception err
		    ExceptionHandler(err,"LogoWin:MastGen")
		    
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub MASTsearch()
		  WriteToSTDOUT (EndofLine+"Running MAST...")
		  
		  dim cli as string
		  dim sh as shell
		  
		  'Convert genome file to fasta format:
		  dim FastaFile as FolderItem
		  dim outfile As folderitem
		  dim tis as TextInputStream
		  dim seqin as string
		  tis=genomefile.OpenAsTextFile
		  seqin=tis.ReadAll
		  tis.Close
		  
		  outfile=SpecialFolder.Temporary.child("FastaFile")
		  if outfile<>nil then
		    Dim s as TextOutputStream=TextOutputStream.Create(outfile)
		    if s<> NIL then
		      s.Writeline ">"+GenomeFile.Name
		      s.write CleanUp(rightb(seqin,len(seqin)-instrb(seqin,"ORIGIN")-7))
		      s.close
		    end if
		    
		    
		  end if
		  
		  
		  
		  
		  cli=MASTpath+" "+ memetmp.shellpath+" "+outfile.shellpath +nhmmerOptions+" -hit_list"
		  sh=New Shell
		  sh.mode=0
		  sh.TimeOut=-1
		  sh.execute cli
		  If sh.errorCode=0 then
		    WriteToSTDOUT (EndofLine+Sh.Result)
		    'write results to a temporary file for MASTgen.py:
		    MASTResultFile=SpecialFolder.Temporary.child("nhmmer.table")
		    
		    if MASTResultFile<>nil then
		      Dim tos as TextOutputStream
		      tos=TextOutputStream.Create(MASTResultFile)
		      tos.Write trim(Sh.Result)
		      tos.close
		    else
		      msgbox "Can't create a file to store MAST results!"
		      return
		    End If
		  else
		    LogoWin.WriteToSTDOUT (EndOfLine + "MAST error code: "+Str(sh.errorCode)+EndOfLine)
		    WriteToSTDOUT (EndofLine+Sh.Result)
		    
		  End If
		  
		  
		  if MASTSettingsWin.ShowHitsCheckBox.value AND MASTSettingsWin.AddAnnotationCheckBox.value=false then
		    
		    
		    'display the hits in the browser:
		    'MAST output format:
		    '# All non-overlapping hits in all sequences from "/Users/Home/3-2rez9/Pca32_10182014.fsa".
		    '# sequence_name motif hit_start hit_end score hit_p-value
		    'gnl|BSU|OA04_contig1 +1 151274 151294  2344.29 2.61e-09
		    'gnl|BSU|OA04_contig1 +1 2506223 2506243  2388.66 1.62e-09
		    '# mast meme.txt FastaFile -hit_list  -mt 0.0000001
		    
		    
		    redim GenomeWin.HmmHits(0)
		    redim GenomeWin.HmmHitDescriptions(0)
		    redim genomeWin.HmmHitNames(0)
		    
		    dim m,n,o,colonPos as integer
		    dim HitList,currentHit,HitInfo, hits2sort(0),hitloc as string
		    
		    HitList=replaceall(NthField(sh.result,"hit_p-value",2),"  "," ") 'remove double spaces in front of score
		    HitList=replaceall(HitList,"  "," ") 'remove double spaces in front of score
		    HitList=replaceall(HitList,"  "," ") 'remove double spaces in front of score
		    
		    HitList=trim(NthField(HitList,"# mast",1))
		    
		    'sort the hits according to genome position:
		    m=CountFields(HitList,EndOfLine.unix)
		    for n=1 to m
		      currentHit=nthfield(HitList,EndOfLine.unix,n)
		      'colonPos=instrb(currenthit,":")
		      hitloc=nthfield(currentHit," ",3)
		      if lenb(hitLoc)<8 then 'assuming genome length is less than 100Mb
		        for o=0 to 8-lenb(hitLoc)
		          hitloc="0"+hitloc
		        next
		      end if
		      hitloc=hitloc+":"+nthfield(currentHit," ",4)+"("+replace(nthfield(currentHit," ",2),"1","")+") score "+nthfield(currentHit," ",5)+" p-value "+nthfield(currentHit," ",6)
		      hits2sort.append hitloc
		      
		    next
		    hits2sort.Sort
		    
		    m=ubound(hits2sort)
		    for n=1 to m
		      while left(hits2sort(n),1)="0"
		        hits2sort(n)=right(hits2sort(n),lenb(hits2sort(n))-1)
		      wend
		    next
		    
		    'add sorted hits and their info into genome browser arrays:
		    'hmmgen result:
		    '2233715:2233745](-)
		    'qualifiers:
		    'Key: bound_moiety, Value: ['HrpL alternative sigma factor']
		    'Key: gene, Value: ['hrpJ']
		    'Key: inference, Value: ['profile:nhmmer:3.1b1']
		    'Key: locus_tag, Value: ['OA04_20620']
		    'Key: note, Value: nhmmer score 12.8 E-value 1.2
		    'Key: regulatory_class, Value: ['promoter']
		    'type: regulatory
		    
		    for n=1 to ubound(hits2sort)
		      currentHit=hits2sort(n)
		      GenomeWin.HmmHits.append(val(nthfield(currentHit,":",1)))
		      HitInfo=currentHit
		      'HitName="Unknown_name"
		      'if instr(currenthit,"Key: gene")>0 then
		      ''extract gene name
		      'Hitname=nthfield(currentHit,"Key: gene, Value: ['",2)
		      'Hitname=nthfield(HitName,"']",1)+" "
		      'end if
		      ''add locus_tag
		      'Hitname=Hitname+nthfield(nthfield(currentHit,"Key: locus_tag, Value: ['",2),"']",1)+" "
		      
		      genomeWin.HmmHitDescriptions.append HitInfo
		      genomeWin.HmmHitNames.append "Unknown_name" 'HitName
		      
		    next
		    
		    'initialise array to select/deselect hits:
		    redim genomeWin.HmmHitChecked(ubound(hits2sort))
		    for n=1 to ubound(hits2sort)
		      genomeWin.HmmHitChecked(n)=true
		    next
		    genomeWin.AnyHitDeselected=false
		    
		    
		  end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function MEMEconvert() As integer
		  'Converts current alignment to minimal MEME format
		  
		  'copy alignment out of virtual volume:
		  dim alignment_tmp as folderitem = SpecialFolder.Temporary.child("alignment.tmp")
		  if alignment_tmp<>NIL then
		    if alignment_tmp.Exists then
		      alignment_tmp.Delete
		    end if
		    LogoFile.CopyFileTo alignment_tmp
		    
		  else
		    msgbox "Can't create temporary file!"
		    return -1
		  end if
		  
		  
		  'create a tmp dir to store MEME results:
		  MEMEtmp=SpecialFolder.Temporary.child("MEME.txt")
		  
		  if MEMEtmp<>NIL then
		    if MEMEtmp.Exists then
		      MEMEtmp.Delete
		    end if
		    'actual conversion
		    dim cli as string
		    Dim sh As Shell
		    
		    cli=MEMEpath+" -nmotifs 1 -dna -text "
		    if Palindromic then
		      cli=cli+"-pal "
		    end if
		    cli=cli+alignment_tmp.ShellPath
		    cli=cli+" > "+MEMEtmp.ShellPath
		    
		    sh=New Shell
		    sh.mode=0
		    sh.TimeOut=-1
		    WriteToSTDOUT (EndofLine+EndofLine+"Running MEME...")
		    sh.execute cli
		    If sh.errorCode=0 then
		      WriteToSTDOUT (EndofLine+Sh.Result)
		      
		      'print the result in the log pane:
		      'dim res as FolderItem
		      dim InStream As  TextInputStream
		      'res=MEMEtmp.child("meme.txt")
		      InStream = MEMEtmp.OpenAsTextFile
		      if InStream<>NIL then
		        WriteToSTDOUT (EndofLine+InStream.ReadAll)
		      end if
		      InStream.close
		      return sh.errorCode
		    else
		      WriteToSTDOUT (EndofLine+Sh.Result)
		      MsgBox "MEME error code: "+Str(sh.errorCode)
		      return sh.errorCode
		    end if
		    
		  else
		    msgbox "Can't create temporary folder!"
		    return -1
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function nhmmer() As boolean
		  'returns true if completed without errors
		  
		  'nhmmeroptions parameter isn't used
		  '(nhmmerSettingsWin.OptionsField.text used instead)
		  
		  dim cli as string
		  Dim sh As Shell
		  
		  'get the temp file to save nhmmer result table
		  nhmmerResultFile=SpecialFolder.Temporary.child("nhmmer.table")
		  
		  if nhmmerResultFile<>nil then
		    cli=""
		    dim hmmeroptions as string = nhmmerSettingsWin.OptionsField.text
		    
		    'USE nhmmeroptions VARIABLE!!!
		    
		    if SigFileOpened then
		      HmmFile.CopyFileTo(SpecialFolder.Temporary)
		      dim HmmFileTmp as folderitem = SpecialFolder.Temporary.child(HmmFile.DisplayName)
		      cli=nhmmerpath+" "+nhmmeroptions+" --tblout "+nhmmerResultFile.shellpath+" "+HmmFileTmp.ShellPath+" "+nhmmerSettingsWin.GenomeField.text
		    else
		      if masked then
		        alimask LogoFile
		        WriteToSTDOUT (EndofLine+EndofLine+"Alignment masked.")
		        '/usr/local/bin/nhmmer
		        cli=nhmmerpath+" "+nhmmeroptions+" --tblout "+nhmmerResultFile.shellpath+" "+alimasktmp.ShellPath+" "+nhmmerSettingsWin.GenomeField.text
		      else
		        cli=nhmmerpath+" "+nhmmeroptions+" --tblout "+nhmmerResultFile.shellpath+" "+Logofile.ShellPath+" "+nhmmerSettingsWin.GenomeField.text
		      end if
		    end if
		    
		    if instr(cli,"-E")>0 AND instr(cli,"--cut_")>0 then
		      msgbox "Incompatible nhmmer options -E and --cut_"
		    end if
		    
		    sh=New Shell
		    sh.mode=0
		    sh.TimeOut=-1
		    WriteToSTDOUT (EndofLine+EndofLine+"Running nhmmer...")
		    sh.execute cli
		    If sh.errorCode=0 then
		      WriteToSTDOUT (EndofLine+Sh.Result)
		      LogoWinToolbar.Item(2).Enabled=true
		      return true
		    else
		      WriteToSTDOUT (EndofLine+Sh.Result)
		      MsgBox "nhmmer error code: "+Str(sh.errorCode)
		      LogoWinToolbar.Item(2).Enabled=false
		      return false
		    end if
		  end if
		  
		  
		  
		  '# nhmmer :: search a DNA model or alignment against a DNA database
		  '# HMMER 3.1b1 (May 2013); http://hmmer.org/
		  '# Copyright (C) 2013 Howard Hughes Medical Institute.
		  '# Freely distributed under the GNU General Public License (GPLv3).
		  '# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
		  'Usage: nhmmer [options] <query hmmfile|alignfile> <target seqfile>
		  '
		  'Basic options:
		  '-h : show brief help on version and usage
		  '
		  'Options directing output:
		  '-o <f>             : direct output to file <f>, not stdout
		  '-A <f>             : save multiple alignment of all hits to file <s>
		  '--tblout <f>       : save parseable table of hits to file <s>
		  '--dfamtblout <f>   : save table of hits to file, in Dfam format <s>
		  '--aliscoresout <f> : save scores for each position in each alignment to <s>
		  '--hmmout <f>       : if input is alignment(s), write produced hmms to file <s>
		  '--acc              : prefer accessions over names in output
		  '--noali            : don't output alignments, so output is smaller
		  '--notextw          : unlimit ASCII text output line width
		  '--textw <n>        : set max width of ASCII text output lines  [120]  (n>=120)
		  '
		  'Options controlling scoring system:
		  '--singlemx    : use substitution score matrix w/ single-sequence MSA-format inputs
		  '--popen <x>   : gap open probability  [0.03125]  (0<=x<0.5)
		  '--pextend <x> : gap extend probability  [0.75]  (0<=x<1)
		  '--mx <s>      : substitution score matrix choice (of some built-in matrices)  [DNA1]
		  '--mxfile <f>  : read substitution score matrix from file <f>
		  '
		  'Options controlling reporting thresholds:
		  '-E <x> : report sequences <= this E-value threshold in output  [10.0]  (x>0)
		  '-T <x> : report sequences >= this score threshold in output
		  '
		  'Options controlling inclusion (significance) thresholds:
		  '--incE <x> : consider sequences <= this E-value threshold as significant  [0.01]  (x>0)
		  '--incT <x> : consider sequences >= this score threshold as significant
		  '
		  'Options controlling model-specific thresholding:
		  '--cut_ga : use profile's GA gathering cutoffs to set all thresholding
		  '--cut_nc : use profile's NC noise cutoffs to set all thresholding
		  '--cut_tc : use profile's TC trusted cutoffs to set all thresholding
		  '
		  'Options controlling acceleration heuristics:
		  '--max    : Turn all heuristic filters off (less speed, more power)
		  '--F1 <x> : Stage 1 (SSV) threshold: promote hits w/ P <= F1  [0.02]
		  '--F2 <x> : Stage 2 (Vit) threshold: promote hits w/ P <= F2  [3e-3]
		  '--F3 <x> : Stage 3 (Fwd) threshold: promote hits w/ P <= F3  [3e-5]
		  '--nobias : turn off composition bias filter
		  '
		  'Options for selecting query alphabet rather than guessing it:
		  '--dna : input alignment is DNA sequence data
		  '--rna : input alignment is RNA sequence data
		  '
		  'Other expert options:
		  '--tformat <s>      : assert target <seqdb> is in format <s>
		  '--qformat <s>      : assert query <seqfile> is in format <s>
		  '--nonull2          : turn off biased composition score corrections
		  '-Z <x>             : set database size (Megabases) to <x> for E-value calculations  (x>0)
		  '--seed <n>         : set RNG seed to <n> (if 0: one-time arbitrary seed)  [42]  (n>=0)
		  '--w_beta <x>       : tail mass at which window length is determined
		  '--w_length <n>     : window length - essentially max expected hit length
		  '--block_length <n> : length of blocks read from target database (threaded)   (n>=50000)
		  '--toponly          : only search the top strand
		  '--bottomonly       : only search the bottom strand
		  '--cpu <n>          : number of parallel CPU workers to use for multithreads  (n>=0)
		  
		  Exception err
		    ExceptionHandler(err,"LogoWin:nhmmer")
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub Palindromise()
		  PalindromeLogoFile=SpecialFolder.Temporary.child("LogoPalindrome")
		  
		  'since we change data, that's not the .sig any more!
		  SigFileOpened=false
		  
		  If PalindromeLogoFile <> Nil then
		    RevCompAlignment(logofile, palindromeLogofile)
		    logofile=PalindromeLogoFile
		    
		    'replace contents of the Sequence variable (for viewing)
		    dim instream as TextInputStream = PalindromeLogoFile.OpenAsTextFile
		    Sequences=Instream.ReadAll
		    instream.Close
		    DrawLogo
		    palindromic=true
		    LogoWinToolbar.Item(4).Enabled=false
		  End If
		  
		  Exception err
		    ExceptionHandler(err,"LogoWin:Palindromise")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub ReadLogoData()
		  dim n, FeatureCount as integer
		  dim CurrentLine As String
		  
		  redim LogoData(0)
		  //Check that infile paths are valid
		  'LogoFile=GetFolderItem(InFilePathField.text, FolderItem.PathTypeShell)
		  if SigFileOpened then
		    'weblogo_out already read from the .sig file
		  else
		    If LogoFile.Exists Then
		      weblogo_out=weblogo(LogoFile)
		    End If
		  end if
		  
		  if weblogo_out<>"0" then
		    for n=1 to countfields(weblogo_out,EndOfLine.Unix)
		      
		      CurrentLine=NthField(weblogo_out,EndOfLine.Unix,n)
		      
		      if instr("0123456789",left(CurrentLine,1))>0 then
		        LogoData.Append(CurrentLine)
		      end if
		      
		    next
		    
		    LogoLength=ubound(Logodata)
		    
		  end if
		  
		  Exception err
		    ExceptionHandler(err,"LogoWin:ReadLogoData")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub SaveHMM()
		  msgbox "Not implemented yet"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SaveLog()
		  
		  Dim f as FolderItem=GetSaveFolderItem("????","hmm_out.log")
		  If f <> nil then
		    Dim s as TextOutputStream=TextOutputStream.Create(f)
		    s.Write STDOUT.StyledText.text 'RTFData
		    s = nil
		  End if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SaveLogo()
		  Dim f As FolderItem
		  Dim dlg as New SaveAsDialog
		  
		  If LogoPic <> Nil Then
		    // Get a temporary file to save the image to
		    If Picture.IsExportFormatSupported(Picture.FormatPNG) Then
		      dlg.InitialDirectory=SpecialFolder.Documents
		      'dlg.promptText="Prompt Text"
		      dlg.SuggestedFileName="Logo.Png"
		      dlg.Title="Save Logo"
		      'dlg.Filter=FileTypes1.Text  //defined as a file type in FileTypes1 file type set
		      f=dlg.ShowModal()
		      If f <> Nil then
		        LogoPic.Save(f, Picture.SaveAsPNG)
		      Else
		        //user canceled
		      End if
		      
		    else
		      msgbox "Looks like the PNG image format isn't supported by your computer, therefore the logo could not be saved."
		    End If
		    
		  End If
		  Exception err
		    ExceptionHandler(err,"LogoWin:SaveLogo")
		    
		    
		    
		    
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TermGen() As boolean
		  'returns true if completed without errors
		  
		  'outfile must be set before calling this method
		  
		  'GenomeFile=GetOpenFolderItem("")
		  if GenomeFile<> nil then
		    dim cli as string
		    Dim sh As Shell
		    
		    'usage:
		    'TermGen <input_file> <output_file> [options]
		    '
		    'This script allows to add terminators to a genbank file according to TransTerm
		    'HP results. Requires Biopython 1.64 (or newer)
		    '
		    'positional arguments:
		    'input_file            path to input Genbank file.
		    'output_file           path to input Genbank file.
		    '
		    'optional arguments:
		    '-h, --help            show this help message and exit
		    '-o <path>, --output <path>
		    '                      redirects TransTerm HP output file to directory given
		    '-C <integer>, --confidence <integer>
		    '                      threshold Score.
		    '--minstem <integer>   Stem must be n nucleotides long
		    '--minloop <integer>   Loop portion of the hairpin must be at least n long
		    '--maxlen <integer>    Total extent of hairpin <= n NT long
		    '--maxloop <integer>   The loop portion can be no longer than n
		    '-v, --version         show program's version number and exit
		    
		    
		    
		    
		    if outfile<>nil then
		      WriteToSTDOUT (EndofLine+EndofLine+"Running TermGen script..."+EndofLine)
		      
		      'cli="python /Users/Home/HmmGen.py "+nhmmerResultFile.ShellPath+" "+GenomeFile.ShellPath+" -L "+str(LogoLength)+" "+HmmGenOptions+outFile.ShellPath
		      'cli="python "+hmmGenPath+" "+nhmmerResultFile.ShellPath+" "+GenomeFile.ShellPath+" -L "+str(LogoLength)+" "+HmmGenOptions+outFile.ShellPath
		      cli="python "+TermGenPath+" "+GenomeFile.ShellPath+" "+outFile.ShellPath+" "+TermGenOptions
		      
		      sh=New Shell
		      sh.mode=0
		      sh.TimeOut=-1
		      sh.execute cli
		      If sh.errorCode=0 then
		        'store hit number for genome scan:
		        'dim LastHitStr as string
		        'LastHitStr=NthField(Sh.Result,"Features added:",3)
		        'LastHitStr=NthField(LastHitStr,"CPU time:",1)
		        'LastHitNo=Val(LastHitStr)
		        
		        WriteToSTDOUT (EndofLine)
		        
		        dim termCount as integer, tc as string
		        
		        'transterm output:
		        '6 terminators were added.
		        tc=NthField(Sh.Result,"terminators were added",1)
		        termcount=countfields(tc,EndOfLine)
		        tc=NthField(tc,EndOfLine,termcount)
		        WriteToSTDOUT (trim(tc)+" terminators added."+EndofLine)
		        'WriteToSTDOUT (nthfield(Sh.Result,"seconds.",1)+"seconds."+EndofLine)
		        if NOT ScanningGenome then
		          WriteToSTDOUT (EndofLine+"Genbank file with added terminators written to "+outFile.ShellPath+EndofLine)
		        end if
		        return true
		      else
		        WriteToSTDOUT (EndofLine+Sh.Result)
		        return false
		      End If
		    end if
		  end if
		  
		  
		  Exception err
		    ExceptionHandler(err,"LogoWin:TermGen")
		    
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub WriteToSTDOUT(txt as string)
		  STDOUT.text=STDOUT.text+txt
		  STDOUT.ScrollPosition=STDOUT.LineNumAtCharPos(len(STDOUT.text))
		  STDOUT.refresh
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		alimaskpath As string
	#tag EndProperty

	#tag Property, Flags = &h0
		alimaskTmp As folderitem
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected CurrentX As Integer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected DragStartY As Integer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected FirstX As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		GenomeFile As folderitem
	#tag EndProperty

	#tag Property, Flags = &h0
		HmmFile As folderitem
	#tag EndProperty

	#tag Property, Flags = &h0
		HmmGenOptions As String
	#tag EndProperty

	#tag Property, Flags = &h0
		HmmGenPath As string
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected HmmProfile As string
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected Info As string
	#tag EndProperty

	#tag Property, Flags = &h0
		LastHitNo As Integer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected LastX As Integer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected LogoData(0) As string
	#tag EndProperty

	#tag Property, Flags = &h0
		LogoFile As Folderitem
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected LogoLength As Integer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected LogoPic As Picture
	#tag EndProperty

	#tag Property, Flags = &h0
		Masked As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		MASTGenPath As string
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected MASTResultFile As folderitem
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected MEMEdata As string
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected MEMEtmp As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		nhmmerOptions As string
	#tag EndProperty

	#tag Property, Flags = &h0
		nhmmerPath As string
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected nhmmerResultFile As folderitem
	#tag EndProperty

	#tag Property, Flags = &h0
		OutFile As folderitem
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected pA As Picture
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected PalindromeLogoFile As folderitem
	#tag EndProperty

	#tag Property, Flags = &h0
		Palindromic As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected pC As Picture
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected pG As picture
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected ProfileSettings As string
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected pT As Picture
	#tag EndProperty

	#tag Property, Flags = &h0
		ScanningGenome As boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected SelArray1(0) As Integer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected SelArray2(0) As Integer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected Sequences As string
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected SigFileOpened As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		TermGenOptions As String
	#tag EndProperty

	#tag Property, Flags = &h0
		TermGenPath As String
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected totalEntropy As Double
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected UpperPaneHeight As Integer = 175
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected WebLogoAvailable As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Weblogo_out As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Weighting As String
	#tag EndProperty


#tag EndWindowCode

#tag Events LogoWinToolbar
	#tag Event
		Sub Action(item As ToolItem)
		  
		  
		  select case Item.Name
		    
		  Case "LoadAlignmentTool"
		    'This should fire only on Linux and Windows
		    dim tmpfile as folderitem
		    dim GenomeFile as folderitem
		    Dim dlg as New OpenDialog
		    
		    '#If Not TargetLinux Then
		    'dlg.InitialDirectory = SpecialFolder.Documents
		    '#Else //open Home directory on linux
		    'dlg.InitialDirectory = SpecialFolder.Home
		    '#Endif
		    
		    dlg.promptText="Select a fasta file"
		    'dlg.SuggestedFileName=nthfield(GenomeFile.Name,".",1)+".tbl"
		    dlg.Title="Open alignment"
		    dlg.Filter=FileTypes.Fasta
		    tmpfile=dlg.ShowModalwithin(self)
		    LoadAlignment(tmpFile)
		  Case "LoadGenomeTool"
		    GenomeFile=GetOpenFolderItem("")
		    if GenomeFile<> Nil then
		      WriteToSTDOUT (EndofLine+"Genome from "+GenomeFile.shellpath+" loaded.")
		      if Logofile<>nil then
		        LogoWinToolbar.Item(1).Enabled=true
		        LogoWinToolbar.Item(2).Enabled=false 'new genome, no nhmmer output yet
		        LogoWinToolbar.Item(3).Enabled=true
		        
		      end if
		    end if
		  Case "SaveLogTool"
		    SaveLog
		  Case "SearchTool"
		    if NOT SigFileOpened then
		      if masked then
		        nhmmerSettingsWin.MaskingBox.Enabled=true
		        nhmmerSettingsWin.MaskingBox.HelpTag="Masking options for alimask. HMMer default is Henikoff position-based"
		      else
		        nhmmerSettingsWin.MaskingBox.Enabled=False
		        nhmmerSettingsWin.MaskingBox.HelpTag="Masking options for alimask. To enable, drag/shift-drag over undesired positions in the logo"
		        'show cutoff values:
		      end if
		    end if
		    if GenomeFile<>Nil then
		      nhmmerSettingsWin.GenomeField.text=GenomeFile.ShellPath
		      
		      nhmmerSettingsWin.RunButton.Enabled=true
		    else
		      '#if Debugbuild
		      'GenomeFile=GetFolderItem(nhmmerSettingsWin.GenomeField.text,FolderItem.PathTypeShell)
		      '#else
		      nhmmerSettingsWin.RunButton.Enabled=false
		      '#endif
		    end if
		    nhmmerSettingsWin.EnableRun
		    nhmmerSettingsWin.ShowModalWithin(self)
		    'Genomefile=GetFolderItem(trim(nhmmerSettingsWin.GenomeField.text), FolderItem.PathTypeShell)
		    if nhmmerOptions <> "" then
		      if nhmmer then
		        if nhmmerSettingsWin.AddAnnotationCheckBox.value then
		          Dim dlg as New SaveAsDialog
		          dlg.InitialDirectory=genomefile.Parent
		          dlg.promptText="Select where to save the modified genome file"
		          dlg.SuggestedFileName=nthfield(GenomeFile.Name,".",1)+"_"+nthfield(Logofile.Name,".",1)+".gb"
		          dlg.Title="Save genome file"
		          dlg.Filter=FileTypes.genbank
		          outfile=dlg.ShowModal()
		          if outfile<>nil then
		            HmmGenSettingsWin.ReadOptions
		            if HmmGen then
		              if HmmGenSettingsWin.GenomeBrowserCheckBox.Value then 'Load the Seq into browser
		                if ubound(GenomeWin.HmmHitDescriptions)>0 then
		                  GenomeWin.opengenbankfile(outFile)
		                  genomeWin.ShowHit
		                  WriteToSTDOUT (" done."+EndofLine)
		                end if
		              end if
		            end if
		          end if
		        end if
		      end if
		    end if
		  Case "HmmGenTool"
		    HmmGenOptions=""
		    HmmGenSettingsWin.showmodalwithin(self)
		    if HmmGenSettingsWin.OKpressed then
		      if GenomeFile<>Nil then
		        dim fn as string=nthfield(GenomeFile.Name,".",1)+"_"+nthfield(Logofile.Name,".",1)+".gb"
		        outfile=GetSaveFolderItem("????",fn)
		        if outfile<>nil then
		          if HmmGen then
		            if HmmGenSettingsWin.GenomeBrowserCheckBox.Value then 'Load the Seq into browser
		              if ubound(GenomeWin.HmmHitDescriptions)>0 then
		                GenomeWin.opengenbankfile(outFile)
		                genomeWin.ShowHit
		                WriteToSTDOUT (" done."+EndofLine)
		              end if
		            end if
		          end if
		        end if
		      else
		        MsgBox "No genome file selected. Please repeat nhmmer search."
		      end if
		    end if
		  Case "TermGenTool"
		    TermGenOptions=""
		    TermGenSettingsWin.showmodalwithin(self)
		    if TermGenSettingsWin.OKpressed then
		      dim fn as string=nthfield(GenomeFile.Name,".",1)+"_term.gb"
		      outfile=GetSaveFolderItem("????",fn)
		      if outfile<>nil then
		        if TermGen then
		          if TermGenSettingsWin.GenomeBrowserCheckBox.Value then 'Load the Seq into browser
		            GenomeWin.opengenbankfile(outFile)
		            GenomeWin.ShowGenomeStart
		            'genomeWin.ShowHit
		          end if
		        end if
		      end if
		    end if
		  Case "SettingsTool"
		    SettingsWin.showmodalwithin(self)
		  Case "PalindromiseTool"
		    dim oldentropy as double = totalEntropy
		    Palindromise
		    if totalEntropy<oldentropy then
		      msgbox "Binding site entropy decreased after palindromising. Please check that the site is indeed palindromic!"
		    end if
		  End Select
		  
		  Exception err
		    ExceptionHandler(err,"LogoWinToolbar:Action")
		End Sub
	#tag EndEvent
	#tag Event
		Sub DropDownMenuAction(item As ToolItem, hitItem As MenuItem)
		  
		  
		  If item.Name = "LoadAlignmentTool" Then
		    dim f,tmpfile as folderitem
		    dim n,m as integer
		    
		    
		    'tmpfile=Resources_f.child("Profiles").item(hititem.Index)
		    ' appears to be a large negative number, hence the workaround:
		    f=Resources_f.child("Profiles")
		    m=f.Count
		    for n=1 to m
		      if f.Item(n).name=hititem.Text then
		        tmpfile=f.Item(n)
		        exit
		      end if
		    next
		    #if TargetCocoa then               'a workaround for toolbar deficiency on Mac
		      if hititem.Text="More..." then
		        dim GenomeFile as folderitem
		        Dim dlg as New OpenDialog
		        
		        '#If Not TargetLinux Then
		        'dlg.InitialDirectory = SpecialFolder.Documents
		        '#Else //open Home directory on linux
		        'dlg.InitialDirectory = SpecialFolder.Home
		        '#Endif
		        
		        dlg.promptText="Select a fasta file"
		        'dlg.SuggestedFileName=nthfield(GenomeFile.Name,".",1)+".tbl"
		        dlg.Title="Open alignment"
		        dlg.Filter=FileTypes.Fasta
		        tmpfile=dlg.ShowModalwithin(self)
		        LoadAlignment(tmpFile)
		      else
		        LoadAlignment(tmpFile)
		      end if
		    #else
		      LoadAlignment(tmpFile)
		    #endif
		    
		  else
		    if Palindromic then
		      LogoWinToolbar.Item(4).Enabled=false
		    else
		      LogoWinToolbar.Item(4).Enabled=true
		    End If
		    
		  End If
		  
		  Exception err
		    ExceptionHandler(err,"LogoWinToolbar:DropDownMenuAction")
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  //create the menu for the first toolbar button
		  Dim ButtMenu as New MenuItem
		  Dim aMenuItem as MenuItem
		  dim m,n as integer
		  dim f as folderitem
		  
		  f=Resources_f.child("Profiles")
		  m=f.Count
		  for n=1 to m
		    if f.Item(n).name<>".DS_Store" then
		      if f.Item(n).Directory then
		        'skip folder
		      else
		        aMenuItem = new MenuItem
		        aMenuItem.text = f.Item(n).Name
		        ButtMenu.Append aMenuItem
		      end if
		    end if
		  next
		  
		  #if TargetCocoa then               'a workaround for toolbar deficiency on Mac
		    aMenuItem = new MenuItem
		    aMenuItem.text = "-"
		    ButtMenu.Append aMenuItem
		    aMenuItem = new MenuItem
		    aMenuItem.text = "More..."
		    ButtMenu.Append aMenuItem
		    
		  #endif
		  //assign the new menu to the toolitem..
		  toolbutton(me.Item(0)).DropdownMenu=ButtMenu
		  
		  Exception err
		    ExceptionHandler(err,"LogoWinToolbar:Open")
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events STDOUT
	#tag Event
		Sub TextChange()
		  if len(me.Text)>0 then
		    LogoWinToolbar.Item(5).Enabled=true 'SaveLog button
		  else
		    LogoWinToolbar.Item(5).Enabled=false
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Splitter
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  DragStartY=Y
		  'Me.MouseCursor=System.Cursors.HandClosed
		  return true
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseUp(X As Integer, Y As Integer)
		  'Me.MouseCursor=System.Cursors.ArrowNorthSouth
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseDrag(X As Integer, Y As Integer)
		  if Y<>DragStartY then
		    dim deltaY as integer = Y-DragStartY
		    UpperPaneHeight=UpperPaneHeight+deltaY
		    'LogoCanvas.Height=UpperPaneHeight
		    'Informer.height=UpperPaneHeight
		    TopPanel.Height=UpperPaneHeight
		    STDOUT.height=STDOUT.height-deltaY
		    STDOUT.top=STDOUT.top+deltaY
		    me.top=me.top+deltaY
		    DragStartY=Y
		    self.invalidate
		  end if
		  
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  Me.MouseCursor=System.Cursors.ArrowNorthSouth
		End Sub
	#tag EndEvent
	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  'draw three little dots in the centre
		  
		  g.ForeColor=DarkBevelColor
		  
		  g.FillOval(me.width/2,1,3,3)
		  g.FillOval(me.width/2-7,1,3,3)
		  g.FillOval(me.width/2+7,1,3,3)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Informer
	#tag Event
		Sub Open()
		  if FixedFont="" then
		    dim ff as string
		    ff=SetDefaultFonts(true)
		    FixedFont=NthField(ff,";",1)
		  end if
		  
		  me.TextFont=FixedFont
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events LogoCanvas
	#tag Event
		Sub Open()
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  dim n as integer
		  
		  'draw background:
		  g.ForeColor=&cFFFFFF00 'white
		  g.FillRect(0,0,g.width,g.height)
		  
		  'draw selrect:
		  g.ForeColor=HighlightColor
		  
		  for n=1 to ubound(SelArray1)
		    g.fillRect(SelArray1(n),0,SelArray2(n)-SelArray1(n),me.height)
		    
		  next
		  if lastx>0 then
		    g.fillRect(FirstX,0,LastX-FirstX,me.height)
		  end if
		  g.DrawPicture(LogoPic,10,0)
		  
		  Exception err
		    ExceptionHandler(err,"LogoWin:LogoCanvas:Paint")
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseUp(X As Integer, Y As Integer)
		  selarray1.Append firstX
		  selarray2.Append lastX
		  if lastx=0 then
		    'nothing was selected
		    redim SelArray1(0)
		    redim SelArray2(0)
		  end if
		  invalidate
		  
		  if ubound(SelArray1)>0 then
		    masked=true
		  else
		    masked=false
		  end if
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseDrag(X As Integer, Y As Integer)
		  if CurrentX<>X then
		    CurrentX=X
		    'adjustFirstX and LastX to letter boundaries:
		    lastX=(ceil((X+7)/30)-1)*30+7
		    if lastx<37 then lastx=37
		    self.Invalidate
		    'me.refresh
		    
		  end if
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  'shift controls multiple selection
		  
		  firstX=(floor((X-7)/30))*30+7
		  if firstX<37 then firstX=37
		  
		  if keyboard.AlternateMenuShortCutKey then    'shift pressed
		    'selarray1.Append firstX
		  else
		    'clear selection arrays:
		    redim selarray1(0)
		    redim selarray2(0)
		    lastx=0
		    
		  end if
		  
		  return true
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  Me.MouseCursor=System.Cursors.StandardPointer
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="alimaskpath"
		Group="Behavior"
		Type="string"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
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
		Visible=true
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
		Name="HmmGenOptions"
		Group="Behavior"
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HmmGenPath"
		Group="Behavior"
		Type="string"
		EditorType="MultiLineEditor"
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
		Name="LastHitNo"
		Group="Behavior"
		Type="Integer"
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
		Visible=true
		Group="Appearance"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Masked"
		Group="Behavior"
		Type="boolean"
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
		Name="nhmmerOptions"
		Group="Behavior"
		Type="string"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="nhmmerPath"
		Group="Behavior"
		Type="string"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Palindromic"
		Group="Behavior"
		InitialValue="false"
		Type="boolean"
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
		Name="ScanningGenome"
		Group="Behavior"
		Type="boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="TermGenOptions"
		Group="Behavior"
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="TermGenPath"
		Group="Behavior"
		Type="String"
		EditorType="MultiLineEditor"
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
		Name="Weblogo_out"
		Group="Behavior"
		Type="string"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Weighting"
		Group="Behavior"
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Position"
		InitialValue="600"
		Type="Integer"
	#tag EndViewProperty
#tag EndViewBehavior
