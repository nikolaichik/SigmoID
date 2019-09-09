#tag Menu
Begin Menu MainMenuBar
   Begin MenuItem FileMenu
      SpecialMenu = 0
      Text = "#kFile"
      Index = -2147483648
      AutoEnable = True
      Visible = True
      Begin MenuItem FileOpenAlignment
         SpecialMenu = 0
         Text = "#kOpenProfile"
         Index = -2147483648
         ShortcutKey = "L"
         Shortcut = "Cmd+L"
         MenuModifier = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem FileSaveProfileAs
         SpecialMenu = 0
         Text = "#kSaveProfileAs"
         Index = -2147483648
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem FileSaveAlignmentSelection
         SpecialMenu = 0
         Text = "#kSaveAlignmentSelection"
         Index = -2147483648
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem FileSaveLogo
         SpecialMenu = 0
         Text = "#kSaveLogoPicture"
         Index = -2147483648
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem FileClose
         SpecialMenu = 0
         Text = "#kClose"
         Index = -2147483648
         ShortcutKey = "W"
         Shortcut = "Cmd+W"
         MenuModifier = True
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem UntitledSeparator3
         SpecialMenu = 0
         Text = "-"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem FileOpen
         SpecialMenu = 0
         Text = "#kOpenGenome"
         Index = -2147483648
         ShortcutKey = "O"
         Shortcut = "Cmd+O"
         MenuModifier = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem FileSaveGenome
         SpecialMenu = 0
         Text = "#kSaveGenome"
         Index = -2147483648
         ShortcutKey = "S"
         Shortcut = "Cmd+S"
         MenuModifier = True
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem FileSaveGenomeAs
         SpecialMenu = 0
         Text = "#kSaveGenomeAs"
         Index = -2147483648
         ShortcutKey = "S"
         Shortcut = "Cmd+Shift+S"
         MenuModifier = True
         AltMenuModifier = True
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem FileMakeSigFile
         SpecialMenu = 0
         Text = "#kMakeSigFile"
         Index = -2147483648
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem FileConvertSigFilestoFolders
         SpecialMenu = 0
         Text = "#kConvertSig"
         Index = -2147483648
         AutoEnable = False
         Visible = False
      End
      Begin MenuItem FileExportSequence
         SpecialMenu = 0
         Text = "#kExportSequence"
         Index = -2147483648
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem FileExportProteinSequences
         SpecialMenu = 0
         Text = "#kExportProteinSequences"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem FileExportFeatureTable
         SpecialMenu = 0
         Text = "#kExportFeatureTable"
         Index = -2147483648
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem UntitledItem01
         SpecialMenu = 0
         Text = "-"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem FilePrint
         SpecialMenu = 0
         Text = "#kPrint"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem FilePageSetup
         SpecialMenu = 0
         Text = "#kPageSetup"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem UntitledSeparator9
         SpecialMenu = 0
         Text = "-"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin QuitMenuItem FileQuit
         SpecialMenu = 0
         Text = "#kQuit"
         Index = -2147483648
         ShortcutKey = "Q"
         Shortcut = "Cmd+Q"
         MenuModifier = True
         AutoEnable = True
         Visible = True
      End
   End
   Begin MenuItem EditMenu
      SpecialMenu = 0
      Text = "#kEdit"
      Index = -2147483648
      AutoEnable = True
      Visible = True
      Begin MenuItem EditUndo
         SpecialMenu = 0
         Text = "&Undo"
         Index = -2147483648
         ShortcutKey = "Z"
         Shortcut = "Cmd+Z"
         MenuModifier = True
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem EditSeparator1
         SpecialMenu = 0
         Text = "-"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem EditCut
         SpecialMenu = 0
         Text = "#kCut"
         Index = -2147483648
         ShortcutKey = "X"
         Shortcut = "Cmd+X"
         MenuModifier = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem EditCopy
         SpecialMenu = 0
         Text = "#kCopy"
         Index = -2147483648
         ShortcutKey = "C"
         Shortcut = "Cmd+C"
         MenuModifier = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem EditCopyTranslation
         SpecialMenu = 0
         Text = "#kCopyProtein"
         Index = -2147483648
         ShortcutKey = "C"
         Shortcut = "Cmd+Shift+C"
         MenuModifier = True
         AltMenuModifier = True
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem EditPaste
         SpecialMenu = 0
         Text = "#kPaste"
         Index = -2147483648
         ShortcutKey = "V"
         Shortcut = "Cmd+V"
         MenuModifier = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem EditClear
         SpecialMenu = 0
         Text = "#kClear"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem UntitledItem1
         SpecialMenu = 0
         Text = "-"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem EditSelectAll
         SpecialMenu = 0
         Text = "#kSelectAll"
         Index = -2147483648
         ShortcutKey = "A"
         Shortcut = "Cmd+A"
         MenuModifier = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem EditSeparator2
         SpecialMenu = 0
         Text = "-"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin PrefsMenuItem EditPreferences
         SpecialMenu = 0
         Text = "#kPreferences"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
   End
   Begin MenuItem ViewMenu
      SpecialMenu = 0
      Text = "#kView"
      Index = -2147483648
      AutoEnable = True
      Visible = True
      Begin MenuItem ViewLogo
         SpecialMenu = 0
         Text = "#kLogo"
         Index = -2147483648
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem ViewSequences
         SpecialMenu = 0
         Text = "#kSequences"
         Index = -2147483648
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem ViewAlignmentInfo
         SpecialMenu = 0
         Text = "#kProfileInfo"
         Index = -2147483648
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem ViewHmmProfile
         SpecialMenu = 0
         Text = "#kHmmProfile"
         Index = -2147483648
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem ViewMEMEresults
         SpecialMenu = 0
         Text = "#kMEMEData"
         Index = -2147483648
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem ViewHmmerSettings
         SpecialMenu = 0
         Text = "#kProfileSettings"
         Index = -2147483648
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem Separator1
         SpecialMenu = 0
         Text = "-"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem ViewHideViewer
         SpecialMenu = 0
         Text = "#kHideViewer"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem Separator2
         SpecialMenu = 0
         Text = "-"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem ViewViewDetails
         SpecialMenu = 0
         Text = "#kViewDetails"
         Index = -2147483648
         AutoEnable = False
         Visible = False
      End
   End
   Begin MenuItem AlignmentMenu
      SpecialMenu = 0
      Text = "#kAlignment"
      Index = -2147483648
      AutoEnable = True
      Visible = True
      Begin MenuItem AlignmentExtendBindingSites
         SpecialMenu = 0
         Text = "#kExtendBindingSites"
         Index = -2147483648
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem ProfilePalindromise
         SpecialMenu = 0
         Text = "Palindromise"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem ProfileReverseComplement
         SpecialMenu = 0
         Text = "Reverse Complement"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem UntitledSeparator7
         SpecialMenu = 0
         Text = "-"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem AlignmentConverttoStockholm
         SpecialMenu = 0
         Text = "#kConvertToStockholm"
         Index = -2147483648
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem AlignmentConvertToHmm
         SpecialMenu = 0
         Text = "#kConvertToHmm"
         Index = -2147483648
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem AlignmentConvertToMEME
         SpecialMenu = 0
         Text = "#kConvertToMEME"
         Index = -2147483648
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem UntitledSeparator0
         SpecialMenu = 0
         Text = "-"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem AlignmentMEME
         SpecialMenu = 0
         Text = "#kMEMEfind"
         Index = -2147483648
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem UntitledSeparator6
         SpecialMenu = 0
         Text = "-"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem AlignmentProfileWizard
         SpecialMenu = 0
         Text = "#kProfileWizard"
         Index = -2147483648
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem LogoFromPWMtest
         SpecialMenu = 0
         Text = "Logo From PWM test"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
   End
   Begin MenuItem RegPreciseMenu
      SpecialMenu = 0
      Text = "#kRegulon"
      Index = -2147483648
      AutoEnable = True
      Visible = True
      Begin MenuItem RegPreciseRegulons
         SpecialMenu = 0
         Text = "#kRegulons"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem RegulonRegPreciseTFFamilies
         SpecialMenu = 0
         Text = "RegPrecise TF Families"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem RegulonTomTom
         SpecialMenu = 0
         Text = "TomTom..."
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem FileListAllRegulonDBdata
         SpecialMenu = 0
         Text = "#kRegulonDBregulons"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem RegulonCollecTF
         SpecialMenu = 0
         Text = "CollecTF..."
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem UntitledSeparator4
         SpecialMenu = 0
         Text = "-"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem RegPreciseRegulonInfo
         SpecialMenu = 0
         Text = "#kRegulonInfo"
         Index = -2147483648
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem RegulonShowLogo
         SpecialMenu = 0
         Text = "#kShowLogo"
         Index = -2147483648
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem RegulonCheckTF
         SpecialMenu = 0
         Text = "#kCheckTF"
         Index = -2147483648
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem ChipMdata2Logo
         SpecialMenu = 0
         Text = "Logo from ChipMunk data "
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem UntitledSeparator5
         SpecialMenu = 0
         Text = "-"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem RegPreciseCompareScores
         SpecialMenu = 0
         Text = "#kFindMinimalScore"
         Index = -2147483648
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem RegulonGetRegPreciseTFseqs
         SpecialMenu = 0
         Text = "Get RegPrecise TF seqs"
         Index = -2147483648
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem RegulonLocalMotifCollections
         SpecialMenu = 0
         Text = "Local Motif Collections"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
   End
   Begin MenuItem GenomeMenu
      SpecialMenu = 0
      Text = "#kGenome"
      Index = -2147483648
      AutoEnable = True
      Visible = True
      Begin MenuItem GenomeNhmmersearch
         SpecialMenu = 0
         Text = "#kNhmmerSearch"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem GenomeAnnotate
         SpecialMenu = 0
         Text = "#kAnnotateCurrentSites"
         Index = -2147483648
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem GenomeMASTSearch
         SpecialMenu = 0
         Text = "#kMASTSearch"
         Index = -2147483648
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem GenomeTerminatorSearch
         SpecialMenu = 0
         Text = "#kTerminatorSearch"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem GenomeScanGenome
         SpecialMenu = 0
         Text = "#kScanGenome"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem GenomeScanCr
         SpecialMenu = 0
         Text = "Scan Genome (CRtag)..."
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem GenomeTFfamilySearch
         SpecialMenu = 0
         Text = "#kTFfamilySearch"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem GenomeRepeatSearch
         SpecialMenu = 0
         Text = "Repeat Search..."
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem UntitledItem5
         SpecialMenu = 0
         Text = "-"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem FileSaveCheckedSites
         SpecialMenu = 0
         Text = "#kSaveCheckedSites"
         Index = -2147483648
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem GenomeListRegulons
         SpecialMenu = 0
         Text = "#kListRegulons"
         Index = -2147483648
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem UntitledSeparator10
         SpecialMenu = 0
         Text = "-"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem GenomeGenomeInfo
         SpecialMenu = 0
         Text = "Genome Info"
         Index = -2147483648
         ShortcutKey = "I"
         Shortcut = "Cmd+I"
         MenuModifier = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem GenomeGenomeStatistics
         SpecialMenu = 0
         Text = "#kGenomeStatistics"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem UntitledItem6
         SpecialMenu = 0
         Text = "-"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem GenomeGoto
         SpecialMenu = 0
         Text = "#kGoTo"
         Index = -2147483648
         ShortcutKey = "G"
         Shortcut = "Cmd+Shift+G"
         MenuModifier = True
         AltMenuModifier = True
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem GenomeFind
         SpecialMenu = 0
         Text = "#kFind"
         Index = -2147483648
         ShortcutKey = "F"
         Shortcut = "Cmd+F"
         MenuModifier = True
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem GenomeFindAgain
         SpecialMenu = 0
         Text = "#kFindAgain"
         Index = -2147483648
         ShortcutKey = "G"
         Shortcut = "Cmd+G"
         MenuModifier = True
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem UntitledSeparator
         SpecialMenu = 0
         Text = "-"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem GenomeAddPlot
         SpecialMenu = 0
         Text = "#kAddPlot"
         Index = -2147483648
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem GenomeRemovePlots
         SpecialMenu = 0
         Text = "#kRemovePlots"
         Index = -2147483648
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem GenomeMergePlotData
         SpecialMenu = 0
         Text = "#kMergePlotData"
         Index = -2147483648
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem UntitledSeparator8
         SpecialMenu = 0
         Text = "-"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem GenomePrintMap
         SpecialMenu = 0
         Text = "#kPrintMap"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem GenomeGetCRtags
         SpecialMenu = 0
         Text = "Get CR tags"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem GenomeCRtagfilteredsearch
         SpecialMenu = 0
         Text = "CR tag filtered search..."
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem GenomeDeNovoTFBSinference
         SpecialMenu = 0
         Text = "de novo TFBS inference"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem GenomeRunMEMEtwice
         SpecialMenu = 0
         Text = "Run MEME twice"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem GenomeRedundantSeqs
         SpecialMenu = 0
         Text = "Redundant Seqs"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem Crtagbase
         SpecialMenu = 0
         Text = "Create CRtag base"
         Index = 0
         AutoEnable = True
         Visible = True
      End
   End
   Begin MenuItem WindowMenu
      SpecialMenu = 0
      Text = "#kWindows"
      Index = -2147483648
      AutoEnable = True
      Visible = True
   End
   Begin MenuItem HelpMenu
      SpecialMenu = 0
      Text = "#kHelp"
      Index = -2147483648
      AutoEnable = True
      Visible = True
      Begin AppleMenuItem AboutSigmoID
         SpecialMenu = 0
         Text = "#kAbout"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem HelpSigmoIDHelp
         SpecialMenu = 0
         Text = "#kSigmoIDHelp"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem UntitledSeparator1
         SpecialMenu = 0
         Text = "-"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem HelpHMMERuserguide
         SpecialMenu = 0
         Text = "HMMER User Guide"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem HelpHMMERWebSite
         SpecialMenu = 0
         Text = "hmmer.org"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem UntitledSeparator2
         SpecialMenu = 0
         Text = "-"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem HelpMEMEhelp
         SpecialMenu = 0
         Text = "#kMEMEhelp"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
   End
End
#tag EndMenu
