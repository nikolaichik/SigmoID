#tag Class
Protected Class App
Inherits Application
	#tag Event
		Sub Open()
		  
		  
		  #if TargetMacOS then 'Bundle ↠ Contents ↠ Resources
		    #if DebugBuild then
		      resources_f=GetFolderItem("SigmoID.debug.app")
		    #else
		      resources_f=GetFolderItem("SigmoID.app")
		    #endif
		    resources_f=resources_f.Child("Contents").Child("Resources")
		  #elseif TargetLinux then
		    #if DebugBuild then
		      resources_f=GetFolderItem("").Parent.Child("Resources")
		    #else
		      resources_f=GetFolderItem("").Child("Resources")
		    #endif
		  #else
		    resources_f=GetFolderItem("").Child("Resources")
		  #endif
		  
		  
		  //a piece from SQ
		  
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
		End Sub
	#tag EndEvent


	#tag MenuHandler
		Function AboutSigmoID() As Boolean Handles AboutSigmoID.Action
			About.Show
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
			
			dim GenomeFile as folderitem = GetOpenFolderItem("")
			if GenomeFile<> Nil then
			GenomeWin.opengenbankfile(GenomeFile)
			GenomeWin.ExtractFragment(1000,10000)
			GenomeWin.SegmentedControl1.Enabled=false
			GenomeWin.Show
			end if
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function FileScanGenome() As Boolean Handles FileScanGenome.Action
			ScanGenome
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
		  
		  
		  'Read options:
		  dim optionsFile As FolderItem = SigFolder.Child(sigfolder.displayname+".options")
		  if optionsFile.Exists AND optionsFile<>Nil then
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
		        'open alignment:
		        dim AlignmentFile as FolderItem = SigFolder.child(sigfolder.displayname+".fasta")
		        if AlignmentFile.Exists AND AlignmentFile<>Nil then
		          'select where to save the .sig file
		          Dim dlg as New SaveAsDialog
		          Dim f as FolderItem
		          dlg.InitialDirectory=SigFolder.Parent
		          dlg.promptText="Select where to save the converted file"
		          dlg.SuggestedFileName=SigFolder.displayname
		          dlg.Title="Save .sig file"
		          dlg.Filter=FileTypes.Sig_file
		          f=dlg.ShowModal()
		          If f <> Nil then
		            dim v as virtualVolume = f.CreateVirtualVolume
		            If v <> nil Then
		              
		              'first copy the existing files:
		              AlignmentFile.CopyFileTo(v.Root)                                'alignment
		              
		              'get the base of profile name
		              dim baseName as string
		              basename= NthField(f.DisplayName,".sig",1)
		              
		              dim file2copy as folderitem
		              file2copy=sigFolder.child(basename+".options")                  'options
		              if file2copy.exists AND file2copy<>Nil then
		                file2copy.CopyFileTo(v.Root)
		              else
		                msgbox sigfolder.displayname+" folder is missing some files!"
		                return
		              end if
		              
		              file2copy=sigFolder.child(basename+".info")                     'info
		              if file2copy.exists AND file2copy<>Nil then
		                file2copy.CopyFileTo(v.Root)
		              else
		                msgbox sigfolder.displayname+" folder is missing some files!"
		                return
		              end if
		              
		              'generate logodata and save it:
		              dim weblogo_out as string = weblogo(AlignmentFile)
		              dim f2 as folderitem =v.Root.child(basename+".logodata")
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
		              
		              'convert alignment to Stockholm format:
		              dim outstream As TextOutputStream
		              outstream = TextOutputStream.Create(stock)
		              InStream = AlignmentFile.OpenAsTextFile
		              
		              outstream.WriteLine "# STOCKHOLM 1.0"         'Stockholm header
		              outstream.Write cutoffs+EndOfLine
		              
		              dim block as string = ""
		              dim xtra as string = "____________________"
		              while not InStream.EOF                        'sequence blocks
		                aLine=InStream.readLine
		                if left(aLine,1)=">" then                    'seq title
		                  aline=ReplaceAll(aline," ","_")             'hmmbuild doesn't like spaces
		                  aline=aline+xtra                            'equalise lengths
		                  block=mid(aline,1,20)+" "
		                else
		                  outstream.writeline block+aline
		                  block=""
		                end if
		              wend
		              outstream.WriteLine "//"                       'Stockholm footer
		              instream.Close
		              outstream.close
		              
		              
		              'build hmm:
		              'need a real file for hmmbuild output:
		              f2 = SpecialFolder.Temporary.child(basename+".hmm")      'place to save
		              if f2<>nil then
		                if hmmbuild(stock.ShellPath,f2.ShellPath) then
		                  f2.CopyFileTo(v.Root)                                  'move the .hmm to the final place
		                  logowin.WriteToSTDOUT(EndOfLine+"sig file written to "+f.ShellPath)
		                else
		                  'error message handled by hmmbuild
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
