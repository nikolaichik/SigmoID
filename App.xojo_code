#tag Class
Protected Class App
Inherits Application
	#tag Event
		Sub EnableMenuItems()
		  'Build dynamic Window Menu
		  
		  dim count, i as Integer
		  
		  // Get a handle to our parent sub menu.
		  Dim parent, child as MenuItem
		  parent = MainMenuBar.Child( "Window" )    // Get the file menu
		  if parent = nil then return
		  
		  // Clear the existing menu
		  for i=parent.Count-1 downto 0
		    parent.Remove(i)
		  next
		  
		  // Add the windows to the menu
		  count = WindowCount
		  
		  for i = 0 to count - 1
		    // Construct our child item
		    if Window(i).visible then
		      child = new WindowMenuItem(Window(i))
		      // And add it to our sub-menu
		      parent.Append( child )
		    end if
		  next i
		  
		  if Window(0) isA GenomeWin or Window(0) isA RegPreciseWin or Window(0) isA WebBrowserWin or Window(0) isA HelpWin then
		    FileClose.enabled=true
		  end if
		  
		  
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  
		  #if TargetMacOS then 'Bundle ↠ Contents ↠ Resources
		    #if DebugBuild then
		      resources_f=GetFolderItem("SigmoID.debug.app")
		    #else
		      resources_f=GetFolderItem("SigmoID.app")
		    #endif
		    resources_f=resources_f.Child("Contents").Child("Resources")
		    '#elseif TargetLinux then
		    ''#if DebugBuild then
		    'resources_f=GetFolderItem("").Child("Resources")
		    ''#else
		    ''resources_f=GetFolderItem("").Child("Resources")
		    ''#endif
		  #else
		    resources_f=GetFolderItem("").Child("Resources")
		  #endif
		  
		  
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
		  
		  'ReadPrefs
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub OpenDocument(item As FolderItem)
		  if item<> Nil then
		    select case item.Type
		    case "GenBank"
		      if GenomeWin.SaveCheck then
		        GenomeWin.opengenbankfile(item)
		        GenomeWin.ShowGenomeStart
		      end if
		    case "Fasta"
		      logowin.LoadAlignment(item)
		      logowin.title="SigmoIH: "+item.DisplayName
		    case "SigmoidFile"
		      logowin.LoadAlignment(item)
		      logowin.title="SigmoIH: "+item.DisplayName
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
		Function AlignmentProfileWizard() As Boolean Handles AlignmentProfileWizard.Action
			ProfileWizardWin.show
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function EditPreferences() As Boolean Handles EditPreferences.Action
			SettingsWin.show
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function FileMakeSigFile() As Boolean Handles FileMakeSigFile.Action
			Dim dlg As New SelectFolderDialog
			dlg.ActionButtonCaption = "Make .sig"
			dlg.Title = "Convert Folder to .sig File "
			dlg.PromptText = "Select folder with .fasta, .options and .info files to convert"
			dlg.InitialDirectory = Resources_f.child("Profiles")
			
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
			'just open file in genome browser and display 9 kb of it
			
			if GenomeWin.SaveCheck then 'save changes in the open file if any
			
			
			dim GenomeFile as folderitem
			Dim dlg as New OpenDialog
			
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
			GenomeWin.ShowGenomeStart
			end if
			
			
			Return True
			
			end if
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function FileOpenAlignment() As Boolean Handles FileOpenAlignment.Action
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
			dlg.Filter=FileTypes.Fasta + FileTypes.Sig_file
			tmpfile=dlg.ShowModal 'within(self)
			
			if tmpfile<>nil then
			logowin.Title="SigmoID: "+NthField(tmpfile.name,".",1)
			logowin.LoadAlignment(tmpFile)
			Return True
			end if
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function FileScanGenome() As Boolean Handles FileScanGenome.Action
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
		Function HelpSigmoIDHelp() As Boolean Handles HelpSigmoIDHelp.Action
			dim f As folderitem
			
			f=Resources_f.Child("Help").child("index.html")
			if f<>nil then
			if f.exists then
			HelpWin.LoadPage(f)
			end if
			end if
			
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
		    dim instream as TextInputStream
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
		      dim stock as FolderItem = SpecialFolder.Temporary.child("stock")
		      if stock <> nil then
		        dim AlignmentFile,rcAlignmentFile as FolderItem
		        'check if the site is marked as palindromic
		        if options.InStr("HmmGen.-p")>0 then 'reverse complement every site
		          AlignmentFile= SigFolder.child(sigfolder.displayname+".fasta")
		          if AlignmentFile<>Nil AND AlignmentFile.Exists then
		            rcAlignmentFile=SpecialFolder.Temporary.child("rcAliFile")
		            RevCompAlignment(AlignmentFile,rcAlignmentFile)
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
		          SigFile=dlg.ShowModal()
		          If SigFile <> Nil then
		            if SigFile.exists then
		              SigFile.Delete
		            end if
		            SigFileVV = SigFile.CreateVirtualVolume
		            If SigFileVV <> nil Then
		              'first copy the existing files:
		              'AlignmentFile.CopyFileTo(SigFileVV.Root)    'broken in Linux                            'alignment
		              CopyFileToVV(AlignmentFile,SigFileVV)
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
		              
		              file2copy=sigFolder.child("meme.txt")                     'meme.txt
		              if file2copy<>Nil AND file2copy.exists then
		                CopyFileToVV(file2copy,SigFileVV)
		                
		                If file2copy.LastErrorCode <> 0 Then
		                  msgbox "File copy error"
		                End If
		              else
		                'this file is optional
		              end if
		              
		              'generate logodata and save it:
		              dim weblogo_out as string = weblogo(AlignmentFile)
		              dim f2 as folderitem =SigFileVV.Root.child(basename+".logodata")
		              if weblogo_out <>"" then
		                if f2<>nil then
		                  dim outstream As TextOutputStream
		                  outstream = TextOutputStream.Create(f2)
		                  outstream.Write(weblogo_out)
		                  outstream.Close
		                else
		                  msgbox "Can't write converted file."
		                  return
		                end if
		              else
		                LogoWin.WriteToSTDOUT (EndofLine+"Conversion to .sig file aborted because of a weblogo problem")
		                return
		              end if
		              
		              'make sure each seq has its rev-compl copy for palindromic sites:
		              
		              'palindrome handling not done yet, palindromize manually!
		              
		              Stockholm(AlignmentFile,stock, cutoffs)
		              
		              
		              'build hmm:
		              'need a real file for hmmbuild output:
		              f2 = SpecialFolder.Temporary.child(basename+".hmm")      'place to save
		              if f2<>nil then
		                if hmmbuild(stock.ShellPath,f2.ShellPath) then
		                  if f2.exists then
		                    if f2<>Nil then
		                      CopyFileToVV(F2,SigFileVV)
		                      logowin.WriteToSTDOUT(EndOfLine+"sig file written to "+SigFile.ShellPath)
		                    else
		                      beep
		                    end if
		                  else
		                    beep
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


	#tag Note, Name = 2 do
		
		1. Deselect all hits in genome browser
		2. blastx search
		3. Alimask and nhmmer bark at lowercase sequence letters in alignment files. Should convert these to uppercase on the fly
		4. Clear description of the cleanup the scripts do.
		9. Prepare submission menu?
		13. Prompt for saving edited .sig info and options (Save as only)! 
		14. if a CDS is selected, Cmd-C should copy the AA, not DNA sequence
		16. add feature menu? (Add new feature from current hit, etc.)
		18. add scrolling/selection in detail view
		19. when a gene is selected, blastN/blastX should be in menu instead of blastp
		21. title case in menus
		22. text search glitch: searching with short upper case query (eg FNR) will pick up CDS with these letters in translation
		23. add 'GoTo hit # ' menu
		24. add meme results to .sig files and check for these when launching MAST...
		25. Check background frequences influence on MAST search.
		27. closing the last search tab in genome browser should hide htmlviewer control
		28. Add preference/option to set which database use with BLAST (same for taxonomy restriction)
		29. Correct HmmGenSettingsWin: disable Run button until score is set
		30. alternative start codons are not translated as methionine
		31. Find Minimal Score menu should not be enabled until a search is run!
		
	#tag EndNote

	#tag Note, Name = Linux details
		
		32-bit Webkit1 is required for displaying the search results. 
		This could be a problem on a 64-bit system
	#tag EndNote


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
	#tag EndViewBehavior
End Class
#tag EndClass
