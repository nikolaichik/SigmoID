#tag Class
Protected Class App
Inherits Application
	#tag Event
		Sub Activate()
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub EnableMenuItems()
		  
		  
		  FileMakeSigFile.visible=false
		  FileConvertSigFilestoFolders.visible=false
		  ProfileCombineCRtags.visible=False
		  ProfileCombineCRtags.Enabled=False
		  
		  If Keyboard.AltKey Then
		    FileMakeSigFile.Visible=true
		    FileMakeSigFile.Enabled=true
		    FileConvertSigFilestoFolders.visible=True
		    FileConvertSigFilestoFolders.Enabled=True
		    ProfileCombineCRtags.visible=True
		    ProfileCombineCRtags.Enabled=True
		  end if
		  
		  'Build dynamic Window Menu
		  
		  dim count, i as Integer
		  
		  //True Get a handle to our parent sub menu.
		  Dim parent, child as MenuItem
		  parent = MainMenuBar.Child( kWindows )    // Get the window menu
		  if parent = nil then return
		  
		  // Clear the existing menu
		  for i=parent.Count-1 downto 0
		    parent.Remove(i)
		  next
		  
		  // Add the windows to the menu
		  count = WindowCount
		  
		  for i = 0 to count - 1
		    // Construct the child item
		    if Window(i).visible then
		      child = new WindowMenuItem(Window(i))
		      if i=0 then
		        'add checkmark to the front window menuitem
		        child.Checked=true
		      end if
		      // And add it to the menu
		      parent.Append( child )
		    end if
		  next i
		  
		  
		  if Window(0) isA GenomeWin or Window(0) isA RegPreciseWin or Window(0) isA WebBrowserWin or Window(0) isA HelpWin then
		    FileClose.enabled=true
		  end if
		  
		  RegulonGetRegPreciseTFseqs.visible=false
		  
		  'hide debug/development menus for builds
		  #if DebugBuild
		    'GenomeGetCRtags.visible=true
		    'GenomeCRtagfilteredsearch.visible=true
		    GenomeRunMEMEtwice.visible=True
		    'GenomeRedundantSeqs.visible=true
		    'LogoFromPWMtest.visible=true
		  #else
		    'GenomeGetCRtags.visible=false
		    'GenomeCRtagfilteredsearch.visible=false
		    GenomeRunMEMEtwice.visible=false
		    'GenomeRedundantSeqs.visible=false
		    'LogoFromPWMtest.visible=false
		  #endif
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  about.show
		  about.Refresh
		  SetLinuxIcon
		  DisableAppAutoTabbing
		  
		  MyRandom = New Random
		  App.MyRandom.Seed = system.Microseconds
		  
		  GetResources_f
		  
		  ReadPrefs 'diplicating this function in several places as event order is different on different systems
		  
		  
		  'initialise array for reverse-complementation (and complementation):
		  'A-65 -> T-84
		  'B-66 -> V-86
		  'C-67 -> G-71
		  'D-68 -> H-72
		  'G-71 -> C-67
		  'H-72 -> D-68
		  'K-75 -> M-77
		  'M-77 -> K-75
		  'N-78 -> N-78
		  'R-82 -> Y-89
		  'S-83 -> S-83
		  'T-84 -> A-65
		  'V-86 -> B-66
		  'W-87 -> W-87
		  'X-88 -> X-88
		  'Y-89 -> R-82
		  dim RCCodes as string="84,86,71,72,69,70,67,68,73,74,77,76,75,78,79,80,81,89,83,65,85,66,87,88,82"
		  'first simply fill the array with the default values
		  'so that non-DNA characters are preserved:
		  dim n as integer
		  for n=0 to 256
		    RevCompArr(n)=n
		  next
		  'now go upper case letters:
		  for n=0 to 24
		    RevCompArr(n+65)=val(midB(RCCodes,(3*n+1),2))
		  next
		  'lower case values are higher by 32:
		  for n=0 to 24
		    RevCompArr(n+97)=val(midB(RCCodes,(3*n+1),2))+32
		  next
		  
		  
		  
		  GeneticCodesInit
		  
		  ProfileWizardWin.hide 'initialise to avoid showing at profile calibration
		  
		  
		  #if TargetWindows then
		    'No luck with this on Windows, use the 'Convert to MEME' command
		    '(does the same, but outputs plain text to the log pane)
		    AlignmentMEME.Enabled=false
		    AlignmentMEME.Visible=false
		  #endif
		  
		  
		  
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub OpenDocument(item As FolderItem)
		  If item<> Nil Then
		    select case item.Type
		    case "GenBank"
		      If GenomeWin.SaveCheck Then
		        If gCodes(11)=Nil Then   'translation may be not ready if SigmoID is launched by opening a gbk file 
		          GeneticCodesInit
		        End If
		        GenomeWin.opengenbankfile(item)
		        GenomeWin.ShowGenomeStart
		        LogoWin.GenomeFile=item
		      end if
		    case "Fasta"
		      logowin.LoadAlignment(item)
		      if LengthsDiffer then
		        logowin.ChangeView("Sequences")
		        LogoWin.LogoTabs.TabIndex=1
		      else
		        logowin.ChangeView("Logo")
		        LogoWin.LogoTabs.TabIndex=0
		      end if
		      logowin.title="SigmoID: "+item.DisplayName
		    case "SigmoidFile"
		      logowin.LoadAlignment(item)
		      logowin.ChangeView("Logo")
		      logowin.LogoTabs.TabIndex=0
		      logowin.title="SigmoID: "+item.DisplayName
		    end select
		  end if
		  
		End Sub
	#tag EndEvent


	#tag MenuHandler
		Function AboutSigmoID() As Boolean Handles AboutSigmoID.Action
			About.Show
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function CalibrateProfilelibrary() As Boolean Handles CalibrateProfilelibrary.Action
			'LogoWin.ProfileLibSearch
			dim wExists As Boolean = False
			for i as integer = 0 to WindowCount - 1
			if window(i) isa ProfileSearchSettings then
			wExists = True
			end
			next i
			if Not wExists then
			dim w As new ProfileSearchSettings
			end
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function ChipMdata2Logo() As Boolean Handles ChipMdata2Logo.Action
			ChipMdata2Logo
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function CRtagbase() As Boolean Handles CRtagbase.Action
			
			// replaced with CRtagExtractor.py script
			
			
			'CRtagBaseConstructor.Show
			'return true
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function EditPreferences() As Boolean Handles EditPreferences.Action
			SettingsWin.show
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function FileConvertSigFilestoFolders() As Boolean Handles FileConvertSigFilestoFolders.Action
			// Convert all .sig files in the current profiles folder into folders with the same names
			// required to overcome the 64-bit compiler bug
			
			Dim OutF, SigF, f As FolderItem
			Dim m,n,p,q as integer
			Dim basename as string
			Dim vv as VirtualVolume
			Dim dlg As New SelectFolderDialog
			Dim instream As TextInputStream
			Dim logoPNG As Picture
			dlg.ActionButtonCaption = "Select"
			dlg.Title = "Select Folder for Converted Profiles"
			dlg.PromptText = "Select a Folder to store converted .sig files"
			dlg.InitialDirectory = Profile_f.parent
			
			OutF = dlg.ShowModal
			If OutF <> Nil Then
			'Profile_f is currently used
			m=Profile_f.Count
			for n=1 to m
			if Profile_f.Item(n).name<>".DS_Store" then
			if Profile_f.Item(n).Directory then
			'skip folder
			else
			if right(Profile_f.Item(n).Name,4)=".sig" then
			'create the folder:
			SigF=OutF.child(Profile_f.Item(n).Name)
			SigF.createAsFolder
			if not SigF.Exists or not SigF.Directory Then
			// folder was not created - abort
			Return False
			End If
			
			'copy files:
			vv=Profile_f.Item(n).openAsVirtualVolume
			dim vv1 as VirtualVolume
			if vv<> nil then
			basename=nthfield(Profile_f.Item(n).DisplayName,".sig",1)
			f=vv.root.child(basename+".fasta")
			if f<> NIL and f.exists then
			f.CopyFileTo SigF
			'save motif pic as png
			instream = TextInputStream.Open(f)
			dim profileFasta as String = instream.ReadAll
			logoPNG = MakeLogoPic(profileFasta, 150)
			If logoPNG <> Nil then
			dim PNGpath As FolderItem = SigF.child(basename+".png")
			logoPNG.Save(PNGpath, Picture.SaveAsPNG)
			End
			end if
			f=vv.root.child(basename+".hmm")
			if f<> NIL and f.exists then
			f.CopyFileTo SigF
			end if
			f=vv.root.child(basename+".info")
			if f<> NIL and f.exists then
			f.CopyFileTo SigF
			end if
			f=vv.root.child(basename+".options")
			if f<> NIL and f.exists then
			f.CopyFileTo SigF
			end if
			f=vv.root.child("meme.txt")
			if f<> NIL and f.exists then
			f.CopyFileTo SigF
			End If
			f=vv.root.child(basename+".refs")
			If f<> Nil And f.exists Then
			'f.CopyFileTo SigF
			
			'try to fix few encoding and extra symbol problems
			Dim r As String
			Dim tis As TextInputStream
			tis = TextInputStream.Open(f)
			r=tis.ReadAll
			tis.Close
			
			Dim f2 As folderitem
			f2=SigF.child(basename+".refs")
			If f2<>Nil Then
			Dim outstream As TextOutputStream
			outstream = TextOutputStream.Create(f2)
			If outstream<>Nil Then
			Dim rfs() As String
			rfs=r.Split(EndOfLine.UNIX)
			Dim n3 As Integer
			For n3=0 To Ubound(rfs)
			rfs(n3)=CleanUpRefs(rfs(n3))
			Next
			r=Join(rfs,EndOfLine.UNIX)
			outstream.Write(r)  'cleanUp only needed when re-saving old .sig files
			outstream.close
			End If
			
			End If
			End If
			f=vv.root.child(basename+".cur")
			If f<> Nil And f.exists Then
			f.CopyFileTo SigF
			End If
			else
			'beep
			end if
			
			
			end if
			end if
			end if
			next
			
			logowin.WriteToSTDOUT(EndOfLine+"Converted sig files written to "+OutF.ShellPath+EndOfLine)
			
			Else
			// User cancelled
			End If
			
			
			Exception err
			ExceptionHandler(err,"App:FileConvertSigFilestoFolders")
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function FileListAllRegulonDBdata() As Boolean Handles FileListAllRegulonDBdata.Action
			
			
			RegulonDBwin.RegulonDBfile=Resources_f.child("RegulonDB").child("BindingSiteSet.txt")
			
			if RegulonDBWin.RegulonDBfile<>Nil and RegulonDBWin.RegulonDBfile.Exists then
			RegulonDBWin.show
			RegulonDBWin.FillRegulatorList(RegulonDBWin.RegulonDBfile)
			else
			LogoWin.WriteToSTDOUT("RegulonDB data file is missing")
			end if
			
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function FileMakeSigFile() As Boolean Handles FileMakeSigFile.Action
			Dim dlg As New SelectFolderDialog
			dlg.ActionButtonCaption = "Make .sig"
			dlg.Title = "Convert Folder to .sig File "
			dlg.PromptText = "Select folder with .fasta, .options and .info files to convert"
			dlg.InitialDirectory = Profile_f
			
			Dim f As FolderItem
			f = dlg.ShowModal
			If f <> Nil Then
			MakeSigFile f
			Else
			// User cancelled
			End If
			
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function FileOpen() As Boolean Handles FileOpen.Action
			'open genbank file in genome browser and display 9 kb of it
			
			if GenomeWin.SaveCheck then 'save changes in the open file if any
			
			
			dim GenomeFile as folderitem
			Dim dlg As New OpenDialog
			
			'#If Not TargetLinux Then
			'dlg.InitialDirectory = SpecialFolder.Documents
			'#Else //open Home directory on linux
			'dlg.InitialDirectory = SpecialFolder.Home
			'#Endif
			
			'dlg.promptText="Select a GenBank file"
			dlg.Title="Open GenBank file"
			dlg.Filter=FileTypes.GenBank
			GenomeFile=dlg.ShowModal()
			
			if GenomeFile<> Nil then
			GenomeWin.opengenbankfile(GenomeFile)
			LogoWin.GenomeFile=GenomeFile
			FastaButtonsCheck
			GenomeWin.ShowGenomeStart
			end if
			
			
			Return True
			
			end if
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function FileOpenAlignment() As Boolean Handles FileOpenAlignment.Action
			dim tmpfile as folderitem
			
			
			
			'#Else
			Dim dlg as New OpenDialog
			dlg.promptText="Select an alignment file"
			dlg.Title="Open alignment"
			#If XojoVersion < 2017.02
			#if Target64Bit
			'64 bit compiler has VirtualVolumes badly broken, hence we just can't open .sig files
			'and they are converted to folders that could be only opened from the toolbar
			dlg.Filter=FileTypes.Fasta' + FileTypes.Sig_file
			#else
			dlg.Filter=FileTypes.Fasta + FileTypes.Sig_file
			#endif
			#else
			dlg.Filter=FileTypes.Fasta + FileTypes.Sig_file
			#endif
			tmpfile=dlg.ShowModal 'within(self)
			'#endif
			
			if tmpfile<>nil then
			logowin.Title="SigmoID: "+NthField(tmpfile.name,".",1)
			logowin.LoadAlignment(tmpFile)
			logowin.ChangeView("Logo")
			logowin.LogoTabs.TabIndex=0
			Return True
			end if
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function FileOpenRegulonDBdata() As Boolean Handles FileOpenRegulonDBdata.Action
			dim tmpfile, convertedFasta as folderitem
			
			dim GenomeFile as folderitem
			Dim dlg As New OpenDialog
			
			dlg.promptText="Select a file with RegulonDB data for a SINGLE regulator"
			'dlg.SuggestedFileName=nthfield(GenomeFile.Name,".",1)+".tbl"
			dlg.Title="Open RegulonDB data"
			'dlg.Filter=FileTypes.Fasta + FileTypes.Sig_file
			tmpfile=dlg.ShowModal 'within(self)
			
			if tmpfile<>nil then
			convertedFasta=TemporaryFolder.child("converted.fasta")
			if convertedFasta<>nil then
			RegulonDB2fasta(tmpfile,convertedFasta)
			logowin.Title="SigmoID: "+NthField(tmpfile.name,".",1)
			logowin.LoadAlignment(convertedFasta)
			logowin.ChangeView("Logo")
			logowin.LogoTabs.TabIndex=0
			end if
			
			Return True
			end if
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function FileWriteSigFileToDatabase() As Boolean Handles FileWriteSigFileToDatabase.Action
			AddSigToDatabaseWin.Show
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function FilterDuplicateSites() As Boolean Handles FilterDuplicateSites.Action
			LogoWin.filerRedundancy
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function GenomeCRtagfilteredsearch() As Boolean Handles GenomeCRtagfilteredsearch.Action
			FilteredSearchWin.show
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function GenomeDeNovoTFBSinference() As Boolean Handles GenomeDeNovoTFBSinference.Action
			
			deNovoWin.show
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function GenomeGetCRtags() As Boolean Handles GenomeGetCRtags.Action
			CRtagWin.show
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function GenomeListencodedTFs() As Boolean Handles GenomeListencodedTFs.Action
			LogoWin.categorizeTFs
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function GenomeRedundantSeqs() As Boolean Handles GenomeRedundantSeqs.Action
			RedundantSeqWin.show
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function GenomeRunMEMEtwice() As Boolean Handles GenomeRunMEMEtwice.Action
			// Runs MEME twice (in zoops and anr modes), each time looking for five motifs.
			'  Results are stored in two subfolders within selected location.
			
			Dim MEMEf As FolderItem
			
			Dim OutF as folderitem
			
			Dim dlg As New SelectFolderDialog
			dlg.ActionButtonCaption = "Select"
			dlg.Title = "Select Folder for MEME Output"
			dlg.PromptText = "Select a folder to store MEME results"
			'dlg.InitialDirectory = Profile_f.parent
			
			OutF = dlg.ShowModal
			If OutF <> Nil Then
			
			dim opt as string
			dim ErrCode as integer
			
			'copy alignment out of virtual volume:
			dim alignment_tmp as folderitem = TemporaryFolder.child("alignment.tmp")
			if alignment_tmp<>NIL then
			if alignment_tmp.Exists then
			alignment_tmp.Delete
			end if
			LogoWin.LogoFile.CopyFileTo alignment_tmp
			
			else
			msgbox "Can't create temporary file!"
			'return -1
			end if
			
			If cores2use>1 Then
			If cores2use>CPUcores Then
			' with OpenMPI v.>2 in mind, physical cores are allowed by default.
			' to use threads on CPUs with hyperthreading, use the --use-hwthread-cpus option for mpirun
			' e.g. on a 4-core processor with 8 threads, meme can be launched like this:
			' meme -p "8 --use-hwthread-cpus" 
			If MPICH Then
			opt=opt+" -p " + Str(cores2use)
			Else
			opt=opt+" -p '" + Str(cores2use) + " --use-hwthread-cpus'"
			End
			Else
			opt=opt+" -p " + Str(cores2use)  
			End If
			end if
			
			opt=opt+" -dna -minw 17"+" -maxw 23"
			
			'[-pal]            force palindromes (requires -dna)
			'if PalindromicBox.Value then
			opt=opt+" -pal"
			'end if
			
			'[-revcomp]        allow sites on + or - DNA strands
			'if GivenStrandBox.Value then
			'else
			opt=opt+" -revcomp"
			'end if
			
			'[-nmotifs <nmotifs>]    maximum number of motifs to find
			opt=opt+" -nmotifs 5"'+MotifNoPopup.Text
			
			
			
			'Run MEME in Zero or One per sequence' mode:
			MEMEf=OutF.child("Zoops")
			FixPath4Windows(MEMEf)
			
			if MEMEf<>NIL then
			if MEMEf.Exists then
			MEMEf.Delete
			end if
			
			LogoWin.show
			LogoWin.WriteToSTDOUT (EndofLine+EndofLine+"Running MEME in zoops mode...")
			
			ErrCode=MEME(alignment_tmp, MEMEf, opt+" -mod zoops")
			If ErrCode=0 then
			LogoWin.WriteToSTDOUT (" done."+EndofLine)
			end if
			
			
			'Run MEME in Zero or One per sequence' mode:
			MEMEf=OutF.child("Anr")
			FixPath4Windows(MEMEf)
			
			if MEMEf<>NIL then
			if MEMEf.Exists then
			MEMEf.Delete
			end if
			
			LogoWin.show
			LogoWin.WriteToSTDOUT ("Running MEME in anr mode...")
			
			ErrCode=MEME(alignment_tmp, MEMEf, opt+" -mod anr")
			If ErrCode=0 then
			LogoWin.WriteToSTDOUT (" done."+EndofLine)
			end if
			
			LogoWin.WriteToSTDOUT (EndofLine+"Results written to "+outf.Shellpath)
			
			
			else
			msgbox "Can't create MEME output folder!"
			'return -1
			end if
			
			
			
			
			
			
			else
			
			End If
			End If
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function GenomeScanCr() As Boolean Handles GenomeScanCr.Action
			ScanGenomeCR
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function GenomeScanGenome() As Boolean Handles GenomeScanGenome.Action
			ScanGenome
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function HelpHMMERuserguide() As Boolean Handles HelpHMMERuserguide.Action
			dim f as FolderItem
			
			f=Resources_f.child("HmmerUserGuide.pdf")
			if f<>nil AND f.exists then
			f.Launch
			end if
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function HelpHMMERWebSite() As Boolean Handles HelpHMMERWebSite.Action
			HelpWin.LoadPage("http://hmmer.org")
			HelpWin.show
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function HelpMEMEhelp() As Boolean Handles HelpMEMEhelp.Action
			HelpWin.LoadPage("http://meme-suite.org")
			HelpWin.show
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function HelpSigmoIDHelp() As Boolean Handles HelpSigmoIDHelp.Action
			dim f As folderitem
			
			f=Resources_f.Child("Help").child(kHelpFileName)
			if f<>nil then
			if f.exists then
			HelpWin.show
			HelpWin.LoadPage(f)
			end if
			else
			f=Resources_f.Child("Help").child("help_en.html")
			if f<>nil then
			if f.exists then
			HelpWin.show
			HelpWin.LoadPage(f)
			end if
			end if
			end if
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function ProfileCombineCRtags() As Boolean Handles ProfileCombineCRtags.Action
			// Combine profiles with identical CR tags
			
			'Get folder to (recursively) scan for possible duplicated tags
			Dim Profile_f, f As FolderItem
			Dim m,n,p,q As Integer
			Dim basename As String
			Dim CRtag As String
			Dim dlg As New SelectFolderDialog
			dlg.ActionButtonCaption = "Select"
			dlg.Title = "Select Profiles Folder"
			dlg.PromptText = "Select a Folder with Profiles to Be Combined"
			'dlg.InitialDirectory = Profile_f.parent
			
			'Build collection of sig files with CR tag keys
			Profile_f = dlg.ShowModal
			If Profile_f <> Nil Then
			
			'Pcollection=New collection
			Redim PgroupKeys(0)
			Redim PgroupPaths(0)
			
			ScanProfiles(Profile_f)
			End If
			
			
			'Remove non-redundant profiles (leave only groups)
			m=PgroupPaths.Count-1
			For n=m DownTo 1
			If CountFields(PgroupPaths(n),"|;|")=1 Then
			PgroupPaths.RemoveRowAt(n)
			PgroupKeys.RemoveRowAt(n)
			End If
			Next
			
			Beep
			
			'Open ProfileMergeWin with the first profile group
			' (or display a note if no groups were found)
			If PgroupPaths.Count=1 Then '
			MsgBox "No profiles with identical CR tags were found"
			Else
			ProfileMergeWin.NumberOfGroups=ubound(PgroupPaths)
			ProfileMergeWin.LoadGroup(1)
			ProfileMergeWin.show
			End If
			
			
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function RegPreciseRegulogs() As Boolean Handles RegPreciseRegulogs.Action
			RegPreciseWin.title="RegPrecise: regulogs"
			RegPreciseWin.show
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function RegPreciseRegulons() As Boolean Handles RegPreciseRegulons.Action
			RegPreciseWin.title="RegPrecise: regulons"
			RegPreciseWin.LoadGenomes
			RegPreciseWin.show
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function RegulonCollecTF() As Boolean Handles RegulonCollecTF.Action
			
			
			CollecTFwin.CollecTFfile=Resources_f.child("collectf_export.tsv")
			
			if CollecTFWin.CollecTFfile<>Nil and CollecTFWin.CollecTFfile.Exists then
			CollecTFWin.show
			CollecTFWin.FillRegulatorList(CollecTFWin.CollecTFfile)
			else
			LogoWin.WriteToSTDOUT("CollecTF data file is missing")
			end if
			
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function RegulonCoryneRegNet() As Boolean Handles RegulonCoryneRegNet.Action
			CoryneRegNetWin.show
			
			
			
			
			
			
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function RegulonLocalMotifCollections() As Boolean Handles RegulonLocalMotifCollections.Action
			LocalMotifCollectionsWin.show
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function RegulonRegPreciseTFFamilies() As Boolean Handles RegulonRegPreciseTFFamilies.Action
			'RegPreciseWin.title="RegPrecise: regulons"
			'RegPreciseTFcollectionsWin.LoadFamilies
			RegPreciseTFcollectionsWin2.WLoadFamilies
			RegPreciseTFcollectionsWin2.show
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function RegulonTomTom() As Boolean Handles RegulonTomTom.Action
			TomTomWin.show
			Return True
			
		End Function
	#tag EndMenuHandler


	#tag Method, Flags = &h0
		Sub AddProfile(CRtag as string, Ppath as string)
		  // Assemble groups of profiles with identical CR tags:
		  '  add profile path to the existing CRtag group
		  '  or create a new group 
		  
		  Dim m,n As Integer
		  
		  m=Ubound(PgroupKeys)
		  
		  For n=1 To m
		    If CRtag=PgroupKeys(n) Then
		      PgroupPaths(n)=PgroupPaths(n)+"|;|"+Ppath
		      Return
		    End If
		  Next
		  
		  'new CRtag
		  PgroupKeys.Append CRtag
		  PgroupPaths.Append Ppath
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ChipMdata2Logo()
		  Dim f As FolderItem
		  Dim openF As OpenDialog
		  dim tis As TextInputStream
		  Dim fasta, chipMout, winTitle As String
		  dim seqid,fastaid(), motifs(),anrsites() As string
		  dim word  As new RegEx
		  dim occs As new RegEx
		  dim id  As new RegEx
		  Dim rgm As RegExMatch
		  dim s As Site
		  dim m As Motif
		  Dim w As ChipMLogo
		  dim snum As integer
		  word.SearchPattern="(^WORD\|)(\d+)(\t\d+\t)(\w+)(\t\S+\t)(\w+)"
		  occs.SearchPattern="(^OCCS\|\d+\;)(\d+)(\;\s)(.*)"
		  id.SearchPattern="^\>.*"
		  
		  openF = new OpenDialog
		  openF.Title="Open ChipMunk result"
		  openF.promptText="Select file with ChipMunk output"
		  openF.Title="Open alignment"
		  'openF.Filter=FileTypes.Text
		  f = openF.ShowModal
		  If f <>Nil Then
		    tis = TextInputStream.Open(f)
		    chipMout=tis.ReadAll
		    tis.Close
		    winTitle=f.DisplayName
		  end if
		  
		  // Try to find ChipMunk input from the command stored in the result file
		  ' the filename should go after ' s:' and can include full path
		  Dim chipMfileName As String
		  Dim chipMfile As folderitem
		  Dim dataSet As String
		  
		  If InStr(chipMout, ":'")>0 Then 'new format with native path
		    If InStr(chipMout, " s:'")>0 Then
		      dataSet=" s:'"                     'simple multi-fasta
		    Elseif InStr(chipMout, " w:'")>0 Then
		      dataSet=" w:'"                     'weighted data set
		    Elseif InStr(chipMout, " p:'")>0 Then
		      dataSet=" p:'"                     'peak data with the positional preferences profile
		    Elseif InStr(chipMout, " m:'")>0 Then
		      dataSet=" m:'"                     'peak summit mode
		    Else
		      MsgBox "Can't guess dataset format."
		      Exit                              'smth wrong with the file!
		    End If
		    chipMfileName=NthField(chipMout, dataSet, 2)
		    chipMfileName=NthField(chipMfileName, "' ",1)
		    
		    If InStr(chipMfileName, "/")>0 Then 'hopefully full path
		      chipMfile=GetFolderItem(chipMfileName,FolderItem.PathTypeNative)
		    Else 'filename only
		      'assume input file is in the same dir as output
		      If f <>Nil Then
		        chipMfile=f.Parent.child(chipMfileName)
		      End If
		    End If
		    
		  Else                            'old format with shell path
		    If InStr(chipMout, " s:")>0 Then
		      dataSet=" s:"                     'simple multi-fasta
		    Elseif InStr(chipMout, " w:")>0 Then
		      dataSet=" w:"                     'weighted data set
		    Elseif InStr(chipMout, " p:")>0 Then
		      dataSet=" p:"                     'peak data with the positional preferences profile
		    Elseif InStr(chipMout, " m:")>0 Then
		      dataSet=" m:"                     'peak summit mode
		    Else
		      MsgBox "Can't guess dataset format."
		      Exit                              'smth wrong with the file!
		    End If
		    chipMfileName=NthField(chipMout, dataSet, 2)
		    chipMfileName=ReplaceAll(chipMfileName, "\ ", "\\\") 'mask escaped spaces in filename
		    chipMfileName=NthField(chipMfileName, " ",1)
		    
		    If InStr(chipMfileName, "/")>0 Then 'hopefully full path
		      chipMfileName=ReplaceAll(chipMfileName, "\\\", "\ ") 'restore escaped path
		      chipMfile=GetFolderItem(chipMfileName,FolderItem.PathTypeShell)
		    Else 'filename only
		      'assume input file is in the same dir as output
		      chipMfileName=ReplaceAll(chipMfileName, "\\\", " ") 'restore spaces in filename
		      If f <>Nil Then
		        chipMfile=f.Parent.child(chipMfileName)
		      End If
		    End If
		  End If
		  
		  if instr(chipMout,"MOTF|")=0 and InStr(chipMout,"WORD|")>0 then 'probably file with single motif produced by plain ChIPMunk, so load logo strait to the main window
		    dim chiplogo as String = ""
		    rgm=word.Search(chipMout)
		    do
		      if rgm<>nil then
		        chiplogo=chiplogo+">"+rgm.SubExpressionString(2)+" "+rgm.SubExpressionString(6)+EndOfLine.UNIX+rgm.SubExpressionString(4)+EndOfLine.UNIX
		      end if
		      rgm=word.search
		    loop until rgm=nil
		    f=TemporaryFolder.child("chiplogodata")
		    
		    if f<>nil then
		      if f.Exists then f.Delete
		      dim outstream As TextOutputStream
		      outstream = TextOutputStream.Create(f)
		      outstream.Write(ConvertEncoding(chiplogo, Encodings.UTF8))
		      outstream.Close
		      LogoWin.LoadAlignment(f)
		    else
		      msgbox "Can't write converted file."
		    end if
		  else
		    'chipMfileName=NthField(chipMout, dataSet, 2)
		    'chipMfileName=ReplaceAll(chipMfileName, "\ ", "\\\") 'mask escaped spaces in filename
		    'chipMfileName=NthField(chipMfileName, " ",1)
		    '
		    'If InStr(chipMfileName, "/")>0 Then 'hopefully full path
		    'chipMfileName=ReplaceAll(chipMfileName, "\\\", "\ ") 'restore escaped path
		    'chipMfile=GetFolderItem(chipMfileName,FolderItem.PathTypeShell)
		    'Else 'filename only
		    ''assume input file is in the same dir as output
		    'chipMfileName=ReplaceAll(chipMfileName, "\\\", " ") 'restore spaces in filename
		    'If f <>Nil Then
		    'chipMfile=f.Parent.child(chipMfileName)
		    'End If
		    'End If
		    
		    If chipMfile=Nil Or (chipMfile<>Nil And (Not chipMfile.Exists)) Then
		      openF = New OpenDialog
		      openF.Title="Open fasta file"
		      openF.promptText="Select file with sequences used as ChipMunk input"
		      openF.Filter=FileTypes.Fasta
		      chipMfile = openF.ShowModal
		    End If
		    
		    If chipMfile <>Nil Then
		      tis = TextInputStream.Open(chipMfile)
		      fasta=tis.ReadAll
		      tis.Close
		      rgm=id.Search(fasta)
		    End If
		    
		    do
		      if rgm<>nil then
		        fastaid.Append(rgm.SubExpressionString(0))
		      end if
		      rgm=id.search
		    loop until rgm=nil
		    
		    motifs=chipMout.Split("MOTF|")
		    w = new ChipMLogo
		    for i as integer=1 to UBound(motifs)
		      rgm = word.search(motifs(i))
		      m = new Motif
		      do 
		        if rgm<> NIl then
		          
		          s=new Site
		          snum=val(trim(rgm.SubExpressionString(2)))
		          s.id=fastaid(snum)
		          s.seq=rgm.SubExpressionString(4)
		          s.qualValue=val(rgm.SubExpressionString(5))
		          s.qualValue=Floor(s.qualValue*100)/100
		          s.strand=rgm.SubExpressionString(6)
		          m.Sites.Append(s)
		          
		        end
		        rgm=word.search
		      loop until rgm = nil
		      m.number=i
		      m.type="ZOOPS"
		      dim valrange() as double
		      for Each c as Site in m.Sites
		        valrange.Append(c.qualValue)
		      next
		      valrange.Sort
		      m.valrange=str(valrange(0))+" - "+str(valrange(UBound(valrange)))
		      
		      
		      w.Motifs.Append(m)
		      //append Zoops motif
		      rgm=occs.search(motifs(i))
		      m = new Motif
		      do 
		        if rgm<> NIl then
		          
		          snum=val(trim(rgm.SubExpressionString(2)))
		          seqid=fastaid(snum)
		          anrsites=split(rgm.SubExpressionString(4)," ")
		          for k as integer=0 to UBound(anrsites)
		            s=new Site
		            s.id=seqid
		            s.seq=NthField(anrsites(k),":",1)
		            s.qualValue=(val(NthField(anrsites(k),":",4)))
		            s.qualValue=Floor(s.qualValue*100)/100
		            s.strand=NthField(anrsites(k),":",3)
		            m.Sites.Append(s)
		          next
		          
		        end
		        
		        rgm=occs.search
		      loop until rgm = nil
		      m.number=i
		      m.type="ANR"
		      redim valrange(-1)
		      for Each c as Site in m.Sites
		        valrange.Append(c.qualValue)
		      next
		      valrange.Sort
		      m.valrange=str(valrange(0))+" - "+str(valrange(UBound(valrange)))
		      w.Motifs.Append(m)
		      //append ANR motif
		    next
		    w.populateListbox
		    w.Title="Motif Logos for " + winTitle
		    w.Visible=True
		  end
		  Exception err
		    If err IsA OutOfBoundsException Then
		      MsgBox "Can't match original sequence names with ChipMunk motif numbers.  Please make sure the correct input file exists in the location specified in the ChipMunk result file you are trying to open."
		    Else
		      ExceptionHandler(err,"App:ChipMdata2Logo")
		    End If
		    
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MakeSigFile(SigFolder as folderitem)
		  
		  'structure of a transcription factor-specific folder:
		  'TF (folder)
		  'TF.fasta - alignment (fasta)
		  'TF.options - HmmGen, nhmmer, etc. options
		  'TF.info - references for the binding site data and description of the protein
		  'TF.hmm - calibrated hmm profile
		  'TF.logodata - data from weblogo in case it's not installed
		  'meme.txt - MEME output file in text format (optional)
		  
		  'if weblogo i present, .logodata isn't required when creating .sig file
		  
		  'put nhmmer options required for calibration into the .options file?
		  'Options for Model-specific Score Thresholding
		  'Curated profile databases may define specific bit score thresholds for each profile, superseding any thresh- olding based on statistical significance alone. To use these options, the profile must contain the appropriate (GA, TC, and/or NC) optional score threshold annotation; this is picked up by hmmbuild from Stockholm format alignment files. For a nucleotide model, each thresholding option has a single per-hit threshold <x> This acts as if -T<x> --incT<x> has been applied specifically using each model’s curated thresholds.
		  '--cut ga    Use the GA (gathering) bit score threshold in the model to set per-hit reporting and
		  'inclusion thresholds. GA thresholds are generally considered to be the reliable curated
		  'thresholds defining family membership; for example, in Dfam, these thresholds are applied
		  'when annotating a genome with a model of a family known to be found in that organism.
		  'They may allow for minimal expected false discovery rate.
		  '--cut nc    Use the NC (noise cutoff) bit score threshold in the model to set per-hit reporting and
		  'inclusion thresholds. NC thresholds are less stringent than GA; in the context of Pfam,
		  'they are generally used to store the score of the highest-scoring known false positive.
		  '--cut tc    Use the NC (trusted cutoff) bit score threshold in the model to set per-hit reporting and
		  'inclusion thresholds. TC thresholds are more stringent than GA, and are generally considered
		  'to be the score of the lowest-scoring known true positive that is above all known false
		  'positives; for example, in Dfam, these thresholds are applied when annotating a genome
		  'with a model of a family not known to be found in that organism.
		  
		  ' STOCKHOLM header:
		  '# STOCKHOLM 1.0
		  '#=GF GA <Gathering threshold>
		  'seq1  ACDEF...GHIKL
		  'seq2  ACDEF...GHIKL
		  'seq3  ...EFMNRGHIKL
		  'seq1  MNPQTVWY
		  'seq2  MNPQTVWY
		  'seq3  MNPQT...
		  '//
		  
		  Dim SigFile as FolderItem
		  Dim SigFileVV As VirtualVolume
		  
		  'Read options:
		  dim optionsFile As FolderItem = SigFolder.Child(sigfolder.displayname+".options")
		  if optionsFile<>Nil AND optionsFile.Exists then
		    Dim instream As TextInputStream
		    dim aline, cutoffs As string
		    
		    'read profile calibration values
		    InStream = optionsFile.OpenAsTextFile
		    while not InStream.EOF
		      aLine=InStream.readLine
		      if left(aLine,7)="#=GF GA" then
		        cutoffs=cutoffs+aline+EndOfLine
		      elseif left(aLine,7)="#=GF NC" then
		        cutoffs=cutoffs+aline+EndOfLine
		      elseif left(aLine,7)="#=GF TC" then
		        cutoffs=cutoffs+aline+EndOfLine
		      end if
		    wend
		    dim Options as string
		    Options=instream.ReadAll                 'Options are later scanned for the -p switch
		    instream.close
		    
		    if cutoffs="" then
		      Msgbox "No cutoff settings were found in the .options file. Can't make calibrated profile without it."
		      return
		    else
		      
		      'cutoffs are hopefully read, convert the alignment to Stockholm format and store it in the temp file
		      Dim stock As FolderItem = TemporaryFolder.child("stock")
		      if stock <> nil then
		        dim AlignmentFile,rcAlignmentFile as FolderItem
		        'check if the site is marked as palindromic
		        if options.InStr("HmmGen.-p")>0 then 'reverse complement every site
		          AlignmentFile= SigFolder.child(sigfolder.displayname+".fasta")
		          if AlignmentFile<>Nil AND AlignmentFile.Exists then
		            rcAlignmentFile=TemporaryFolder.child("rcAliFile")
		            RevCompAlignment(AlignmentFile,rcAlignmentFile,true)
		            AlignmentFile=rcAlignmentFile
		          end if
		        else 'just open existing alignment:
		          AlignmentFile= SigFolder.child(sigfolder.displayname+".fasta")
		        end if
		        
		        
		        if AlignmentFile<>Nil AND AlignmentFile.Exists then
		          'select where to save the .sig file
		          Dim dlg as New SaveAsDialog
		          dlg.InitialDirectory=SigFolder.Parent
		          dlg.promptText="Select where to save the converted file"
		          dlg.SuggestedFileName=SigFolder.displayname+".sig"
		          dlg.Title="Save .sig file"
		          dlg.Filter=FileTypes.Sig_file
		          dlg.CancelButtonCaption=kCancel
		          dlg.ActionButtonCaption=kSave
		          
		          SigFile=dlg.ShowModal()
		          If SigFile <> Nil then
		            if SigFile.exists then
		              SigFile.Delete
		            end if
		            SigFileVV = SigFile.CreateVirtualVolume
		            If SigFileVV <> nil Then
		              'first copy the existing files:
		              'AlignmentFile.CopyFileTo(SigFileVV.Root)    'broken in Linux                            
		              CopyFileToVV(AlignmentFile,SigFileVV)                           'alignment
		              'get the base of profile name
		              dim baseName as string
		              basename= NthField(SigFile.DisplayName,".sig",1)
		              dim file2copy as folderitem
		              file2copy=sigFolder.child(basename+".options")                  'options
		              if file2copy<>Nil AND file2copy.exists then
		                'file2copy.CopyFileTo(SigFileVV.Root) 'broken in Lunux
		                CopyFileToVV(file2copy,SigFileVV)
		                'If file2copy.LastErrorCode <> 0 Then
		                'msgbox "File copy error"
		                'End If
		              else
		                msgbox sigfolder.displayname+" folder is missing some files!"
		                return
		              end if
		              
		              file2copy=sigFolder.child(basename+".info")                     'info
		              if file2copy<>Nil AND file2copy.exists then
		                'file2copy.CopyFileTo(SigFileVV.Root)  'broken in Linux
		                CopyFileToVV(file2copy,SigFileVV)
		                
		                If file2copy.LastErrorCode <> 0 Then
		                  msgbox "File copy error"
		                End If
		              else
		                msgbox sigfolder.displayname+" folder is missing some files!"
		                return
		              end if
		              
		              file2copy=sigFolder.child("meme.txt")                           'meme.txt
		              if file2copy<>Nil AND file2copy.exists then
		                CopyFileToVV(file2copy,SigFileVV)
		                
		                If file2copy.LastErrorCode <> 0 Then
		                  msgbox "File copy error"
		                End If
		              else
		                'this file is optional
		              end if
		              
		              'generate logodata and save it:
		              '(no longer required)
		              
		              'dim weblogo_out as string = weblogo(AlignmentFile)
		              'dim f2 as folderitem=SigFileVV.Root.child(basename+".logodata")
		              'if weblogo_out <>"" then
		              'if f2<>nil then
		              'dim outstream As TextOutputStream
		              'outstream = TextOutputStream.Create(f2)
		              'outstream.Write(weblogo_out)
		              'outstream.Close
		              'else
		              'msgbox "Can't write converted file."
		              'return
		              'end if
		              'else
		              'LogoWin.WriteToSTDOUT (EndofLine+"Conversion to .sig file aborted")
		              'return
		              'end if
		              
		              'make sure each seq has its rev-compl copy for palindromic sites:
		              
		              'palindrome handling not done yet, palindromize manually!
		              
		              Stockholm(AlignmentFile,stock, cutoffs)
		              
		              
		              'build hmm:
		              'need a real file for hmmbuild output:
		              dim f2 as folderitem
		              f2 = TemporaryFolder.child(basename+".hmm")      'place to save
		              if f2<>nil then
		                FixPath4Windows(f2)
		                if hmmbuild(stock.ShellPath,f2.ShellPath) then
		                  if f2.exists then
		                    if f2<>Nil then
		                      CopyFileToVV(F2,SigFileVV)
		                      logowin.WriteToSTDOUT(EndOfLine+"sig file written to "+SigFile.ShellPath+EndOfLine.UNIX)
		                    else
		                      'beep
		                    end if
		                  else
		                    'beep
		                  end if
		                else
		                  'error message handled by hmmbuild most of the time
		                  logowin.WriteToSTDOUT(EndOfLine+"hmmbuild error")
		                  return
		                end if
		              else
		                msgbox "Creating hmm failed"
		                return
		              end if
		              
		            end if
		            
		          end if
		        else
		          msgbox "No alignment file found in the chosen folder. Can't proceed without it"
		          return
		        end if
		      else
		        msgbox "Can't create temporary file"
		        return
		      end if
		      
		    end if
		  else
		    msgbox "No .options file found in the chosen folder. Can't proceed without it"
		  end if
		  
		  Exception err
		    ExceptionHandler(err,"App:MakeSigFile")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub ScanGenome()
		  'Scan a genome with all profiles saved as .sig files inside the Profiles folder,
		  'annotating every site that passes HmmGen filtering.
		  'Should the folder be renamed "Profiles"?
		  
		  ScanGenomeWin.show
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub ScanGenomeCR()
		  ScanGenomeWinCRtag.show
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ScanProfiles(Profile_f as folderitem)
		  Dim m,n As Integer
		  Dim CRtag As String
		  Dim f As FolderItem
		  
		  m=Profile_f.Count
		  For n=1 To m
		    f=Profile_f.Item(n)
		    If f.name<>".DS_Store" Then
		      If f.Directory Then
		        ScanProfiles(f)  'Recursion
		      Else
		        If Right(f.Name,4)=".sig" Then
		          CRtag=NthField(f.name,"_",1)
		          AddProfile(CRtag,f.NativePath)
		        End If
		      End If
		    End If
		  Next
		  
		  Exception err
		    ExceptionHandler(err,"App:ScanProfiles")
		End Sub
	#tag EndMethod


	#tag Note, Name = 2 do
		2. Verify native/WebKit HTMLViewer on win
		3. Alimask and nhmmer bark at lowercase sequence letters in alignment files. Should convert these to uppercase on the fly
		9. Prepare submission menu?
		17. add menu commands for database search functions?
		18. add scrolling/selection in detail view
		20. text search glitch: searching with a query composed of the four nucleotide letters
		    (irrespective of the case) will look up sequences
		22. text search glitch: searching with short upper case query (eg FNR)
		    will pick up CDS with these letters in translation
		23. add 'GoTo hit # ' menu
		25. Check background frequences influence on MAST search.
		27. closing the last search tab in genome browser should hide htmlviewer control
		33. limit log length to avoid slowdowns
		38. Include TF AA seqs from RegPrecise to avoid mySQL connection
		39. Don't add features if there's nothing to add!
		42. Don't show "SelectFile" dialog after nhmmersearch (with 'add annotation' checked) if nothing was found
		45. Wrong item number in regprecise window list (RegPrecise's fault)
		46. Check and warn about the multiple entries in GenBank file
		47. for plain text search results only first 100 are shown. This should probably be configurable
		48. Recheck that the "use next locus tag" option is newer checked by default 
		    (it's checked when opening a fasta or making a new .sig)
		49. HmmGen may exit with error 1 after profile editing - recheck! (file ref problem?)
		50. At startup, display current prefs: Profile folder and database options. 
		51. Rewrite window menu (it's recreated in every EnableMenuItems, so window positions jump all the time) 
		52. Check for timeouts when performing database searches 
		    (browser window unresponsive for a while when there's a problem with connection)
		53. Using protein names for browser tab labels proves a bit inconvenient (return to protein IDs?)
		54. An option to use either name or ID for protein labels on the map?
		55. Add menu/context commands to copy rev seq (now only fwd is copied)
		56. Add "Regulator info" contextual menu (to connect to RegPrecise/RegulonDB/EcoGene)
		57. blastX seems to be broken (ncbi server reorganised?)
		58. Can't browse into (and hence, select) profile folders inside mac app bundle 
		59. Find minimal score searches for revComplement sites, which is not nice
		60. Need to wrap the code for the textChanged event of TermGenSettingsWin
		   inside "try catch", as the user may enter anything here 
		   (and add smth similar in other windows that have file selection field)
		61. With RegPrecise4 API access gives slightly different output from the one on the site (no gene names in fasta headers for TFBS seqs) 
		62. Extend Binding Sites function should work with gapped sites too
		63. Localise standard dialogues
		64. Main window bug: quickly dragging the separator all the way up hides it with no way to bring back 
		65. Cache the data loaded from RegPrecise to the disk and reload 'em next time (having checked that version is current)
		66. When editing a feature, after pressing OK check for a change of gene name (and update it)
		
		64-bit issues:
		1. [Workarounds added] VirtualVolume is broken
		3. [Workarounds added] MenuItems don't enable properly
		4. CheckMarks missing in menus on Linux 62-bit
		
		
	#tag EndNote

	#tag Note, Name = Linux details
		
		32-bit Webkit1 is required for displaying the search results. 
		This could be a problem on a 64-bit system
	#tag EndNote

	#tag Note, Name = next version
		Major features for 2.0:
		
		1. +-Automated de novo TFBS inference
		2. +-TomTom (or the like) check of the new profile vs existing ones
		3. +Hmmsearch/tfastx check for TF presence in the genome before TFBS search. (requires inclusion of TF sequence in the profile)
		4. Work around RegPrecise limitation for checking the TF (either download all TF seqs to avoid SQL query or find another way to get the TF seq)
		5. Display anchor motifs a la RegPrecise ones (per family)
		6. User-configurable settings for de novo inference procedure
		7. Reuse genome fragments already extracted: store all IDs (so multiple server access is excluded)
		[? and settings, so things are rerun if settings change]
		8. Add prefs for search servers
		9. Add pref for user email (NCBI servers don't really work without)
		10. Proper Linus handling of .sig files
		
		Minor features
		1. Get regulated gene list for each regulator in RegPrecise
		   and display that data in the table
		2. Automate thresholding/calibrated profile construction
		3. +Add hmmsearch to scan for domains
		4. Add export of binding sites for a given regulator (or all of them)
		   in Fasta format (with scores and downstream gene info)
		5. RemoveSites function
		6. Scolling and selection in the detail view
		
		
		
	#tag EndNote


	#tag Property, Flags = &h0
		FormattedSequence As String
	#tag EndProperty

	#tag Property, Flags = &h0
		gbkSource As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Genome As cSeqObject
	#tag EndProperty

	#tag Property, Flags = &h0
		MyRandom As Random
	#tag EndProperty


	#tag Constant, Name = kEditClear, Type = String, Dynamic = False, Default = \"&Delete", Scope = Public
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"&Delete"
		#Tag Instance, Platform = Linux, Language = Default, Definition  = \"&Delete"
	#tag EndConstant

	#tag Constant, Name = kFileQuit, Type = String, Dynamic = False, Default = \"&Quit", Scope = Public
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"E&xit"
	#tag EndConstant

	#tag Constant, Name = kFileQuitShortcut, Type = String, Dynamic = False, Default = \"", Scope = Public
		#Tag Instance, Platform = Mac OS, Language = Default, Definition  = \"Cmd+Q"
		#Tag Instance, Platform = Linux, Language = Default, Definition  = \"Ctrl+Q"
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="FormattedSequence"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="gbkSource"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
