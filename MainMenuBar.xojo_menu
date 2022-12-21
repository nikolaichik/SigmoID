#tag Menu
Begin Menu MainMenuBar
   Begin MenuItem FileMenu
      SpecialMenu = 0
      Index = -2147483648
      Text = "#kFile"
      AutoEnabled = True
      AutoEnable = True
      Visible = True
      Begin MenuItem FileOpenAlignment
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kOpenProfile"
         ShortcutKey = "L"
         Shortcut = "Cmd+L"
         MenuModifier = True
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem FileSaveProfileAs
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kSaveProfileAs"
         AutoEnabled = False
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem FileSaveAlignmentSelection
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kSaveAlignmentSelection"
         AutoEnabled = False
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem FileSaveLogo
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kSaveLogoPicture"
         AutoEnabled = False
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem FileClose
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kClose"
         ShortcutKey = "W"
         Shortcut = "Cmd+W"
         MenuModifier = True
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem UntitledSeparator3
         SpecialMenu = 0
         Index = -2147483648
         Text = "-"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem FileNewTab
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kNewTab"
         ShortcutKey = "T"
         Shortcut = "Cmd+T"
         MenuModifier = True
         AutoEnabled = False
         AutoEnable = False
         Visible = False
      End
      Begin MenuItem FileOpen
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kOpenGenome"
         ShortcutKey = "O"
         Shortcut = "Cmd+O"
         MenuModifier = True
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem FileSaveGenome
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kSaveGenome"
         ShortcutKey = "S"
         Shortcut = "Cmd+S"
         MenuModifier = True
         AutoEnabled = False
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem FileSaveGenomeAs
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kSaveGenomeAs"
         ShortcutKey = "S"
         Shortcut = "Cmd+Shift+S"
         MenuModifier = True
         AltMenuModifier = True
         AutoEnabled = False
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem FileMakeSigFile
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kMakeSigFile"
         AutoEnabled = False
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem FileWriteSigFileToDatabase
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kExport2DB"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem FileConvertSigFilestoFolders
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kConvertSig"
         AutoEnabled = False
         AutoEnable = False
         Visible = False
      End
      Begin MenuItem FileExportSequence
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kExportSequence"
         AutoEnabled = False
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem FileExportCDSsequences
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kExportCDSsequences"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem FileExportProteinSequences
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kExportProteinSequences"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem FileExportFeatureTable
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kExportFeatureTable"
         AutoEnabled = False
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem UntitledItem01
         SpecialMenu = 0
         Index = -2147483648
         Text = "-"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem FilePrint
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kPrint"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem FilePageSetup
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kPageSetup"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem UntitledSeparator9
         SpecialMenu = 0
         Index = -2147483648
         Text = "-"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin QuitMenuItem FileQuit
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kQuit"
         ShortcutKey = "Q"
         Shortcut = "Cmd+Q"
         MenuModifier = True
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
   End
   Begin MenuItem EditMenu
      SpecialMenu = 0
      Index = -2147483648
      Text = "#kEdit"
      AutoEnabled = True
      AutoEnable = True
      Visible = True
      Begin MenuItem EditUndo
         SpecialMenu = 0
         Index = -2147483648
         Text = "&Undo"
         ShortcutKey = "Z"
         Shortcut = "Cmd+Z"
         MenuModifier = True
         AutoEnabled = False
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem EditSeparator1
         SpecialMenu = 0
         Index = -2147483648
         Text = "-"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem EditCut
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kCut"
         ShortcutKey = "X"
         Shortcut = "Cmd+X"
         MenuModifier = True
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem EditCopy
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kCopy"
         ShortcutKey = "C"
         Shortcut = "Cmd+C"
         MenuModifier = True
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem EditCopyTranslation
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kCopyProtein"
         ShortcutKey = "C"
         Shortcut = "Cmd+Shift+C"
         MenuModifier = True
         AltMenuModifier = True
         AutoEnabled = False
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem EditPaste
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kPaste"
         ShortcutKey = "V"
         Shortcut = "Cmd+V"
         MenuModifier = True
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem EditClear
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kClear"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem UntitledItem1
         SpecialMenu = 0
         Index = -2147483648
         Text = "-"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem EditSelectAll
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kSelectAll"
         ShortcutKey = "A"
         Shortcut = "Cmd+A"
         MenuModifier = True
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem EditFind
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kFind"
         ShortcutKey = "F"
         Shortcut = "Cmd+F"
         MenuModifier = True
         AutoEnabled = False
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem EditFindAgain
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kFindAgain"
         ShortcutKey = "G"
         Shortcut = "Cmd+G"
         MenuModifier = True
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem EditSeparator2
         SpecialMenu = 0
         Index = -2147483648
         Text = "-"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin PrefsMenuItem EditPreferences
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kPreferences"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
   End
   Begin MenuItem ViewMenu
      SpecialMenu = 0
      Index = -2147483648
      Text = "#kView"
      AutoEnabled = True
      AutoEnable = True
      Visible = True
      Begin MenuItem ViewLogo
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kLogo"
         AutoEnabled = False
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem ViewSequences
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kSequences"
         AutoEnabled = False
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem ViewAlignmentInfo
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kProfileInfo"
         AutoEnabled = False
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem ViewHmmProfile
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kHmmProfile"
         AutoEnabled = False
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem ViewMEMEresults
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kMEMEData"
         AutoEnabled = False
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem ViewHmmerSettings
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kProfileSettings"
         AutoEnabled = False
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem Separator1
         SpecialMenu = 0
         Index = -2147483648
         Text = "-"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem ViewHideViewer
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kHideViewer"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem Separator2
         SpecialMenu = 0
         Index = -2147483648
         Text = "-"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem ViewViewDetails
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kViewDetails"
         AutoEnabled = False
         AutoEnable = False
         Visible = False
      End
   End
   Begin MenuItem AlignmentMenu
      SpecialMenu = 0
      Index = -2147483648
      Text = "#kAlignment"
      AutoEnabled = True
      AutoEnable = True
      Visible = True
      Begin MenuItem AlignmentExtendBindingSites
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kExtendBindingSites"
         AutoEnabled = False
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem ProfilePalindromise
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kPalindromise"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem ProfileReverseComplement
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kRevCompl"
         ShortcutKey = "R"
         Shortcut = "Cmd+R"
         MenuModifier = True
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem FilterDuplicateSites
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kRemoveDuplicates"
         AutoEnabled = False
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem ProfilePermuteColumns
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kPermuteColumns"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem CalibrateProfilelibrary
         SpecialMenu = 0
         Index = -2147483648
         Text = "Calibrate profile library"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem UntitledSeparator7
         SpecialMenu = 0
         Index = -2147483648
         Text = "-"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem AlignmentConverttoStockholm
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kConvertToStockholm"
         AutoEnabled = False
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem AlignmentConvertToHmm
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kConvertToHmm"
         AutoEnabled = False
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem AlignmentConvertToMEME
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kConvertToMEME"
         AutoEnabled = False
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem ProfileConvertFolderToMEME
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kConvertFolderToMEME"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem UntitledSeparator0
         SpecialMenu = 0
         Index = -2147483648
         Text = "-"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem AlignmentMEME
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kMEMEfind"
         AutoEnabled = False
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem findSitesChipM
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kFindWithChIPmunk"
         AutoEnabled = False
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem FindSBioPros
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kFindWithBioProspector"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem UntitledSeparator6
         SpecialMenu = 0
         Index = -2147483648
         Text = "-"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem AlignmentProfileWizard
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kProfileWizard"
         AutoEnabled = False
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem ProfileCombineCRtags
         SpecialMenu = 0
         Index = -2147483648
         Text = "Combine Profiles..."
         AutoEnabled = True
         AutoEnable = True
         Visible = False
      End
      Begin MenuItem ChipMdata2Logo
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kLoadChIPmunk"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem BioProspData2Logo
         SpecialMenu = 0
         Index = -2147483648
         Text = "Logo from BioProspector data"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
   End
   Begin MenuItem RegPreciseMenu
      SpecialMenu = 0
      Index = -2147483648
      Text = "#kRegulon"
      AutoEnabled = True
      AutoEnable = True
      Visible = True
      Begin MenuItem RegPreciseRegulons
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kRegulons"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem RegulonRegPreciseTFFamilies
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kRegPreciseTFFamilies"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem RegulonTomTom
         SpecialMenu = 0
         Index = -2147483648
         Text = "TomTom..."
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem FileListAllRegulonDBdata
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kRegulonDBregulons"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem RegulonCollecTF
         SpecialMenu = 0
         Index = -2147483648
         Text = "CollecTF..."
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem RegulonCoryneRegNet
         SpecialMenu = 0
         Index = -2147483648
         Text = "CoryneRegNet..."
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem UntitledSeparator4
         SpecialMenu = 0
         Index = -2147483648
         Text = "-"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem RegPreciseRegulonInfo
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kRegulonInfo"
         AutoEnabled = False
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem RegulonShowLogo
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kShowLogo"
         AutoEnabled = False
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem RegulonCheckTF
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kCheckTF"
         AutoEnabled = False
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem UntitledSeparator5
         SpecialMenu = 0
         Index = -2147483648
         Text = "-"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem RegPreciseCompareScores
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kFindMinimalScore"
         AutoEnabled = False
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem RegulonGetRegPreciseTFseqs
         SpecialMenu = 0
         Index = -2147483648
         Text = "Get RegPrecise TF seqs"
         AutoEnabled = False
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem RegulonLocalMotifCollections
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kShowLocalPWMs"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
   End
   Begin MenuItem GenomeMenu
      SpecialMenu = 0
      Index = -2147483648
      Text = "#kGenome"
      AutoEnabled = True
      AutoEnable = True
      Visible = True
      Begin MenuItem GenomeNhmmersearch
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kNhmmerSearch"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem GenomeAnnotate
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kAnnotateCurrentSites"
         AutoEnabled = False
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem GenomeMASTSearch
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kMASTSearch"
         AutoEnabled = False
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem GenomeTerminatorSearch
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kTerminatorSearch"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem GenomeRepeatSearch
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kRepeatSearch"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem UntitledSeparator8
         SpecialMenu = 0
         Index = -2147483648
         Text = "-"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem GenomeScanCr
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kCRtagScan"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem GenomeDeNovoTFBSinference
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kDeNovoTFBSinference"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem GenomeScanGenome
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kScanGenome"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem GenomeTFfamilySearch
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kTFfamilySearch"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem AnnotateMEMEres
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kAnnotateMEMEresults"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem GenomeRunMEMEtwice
         SpecialMenu = 0
         Index = -2147483648
         Text = "Run MEME twice"
         AutoEnabled = False
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem UntitledItem5
         SpecialMenu = 0
         Index = -2147483648
         Text = "-"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem FileSaveCheckedSites
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kSaveCheckedSites"
         AutoEnabled = False
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem GenomeListRegulons
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kListRegulons"
         AutoEnabled = False
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem GenomeListencodedTFs
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kListTFs"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem UntitledSeparator10
         SpecialMenu = 0
         Index = -2147483648
         Text = "-"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem GenomeGoto
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kGoTo"
         ShortcutKey = "G"
         Shortcut = "Cmd+Shift+G"
         MenuModifier = True
         AltMenuModifier = True
         AutoEnabled = False
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem GenomeFind
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kFind"
         ShortcutKey = "F"
         Shortcut = "Cmd+F"
         MenuModifier = True
         AutoEnabled = False
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem GenomeFindAgain
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kFindAgain"
         ShortcutKey = "G"
         Shortcut = "Cmd+G"
         MenuModifier = True
         AutoEnabled = False
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem UntitledSeparator
         SpecialMenu = 0
         Index = -2147483648
         Text = "-"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem GenomeNewFeature
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kNewFeature"
         AutoEnabled = False
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem GenomeEditFeature
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kEditFeature"
         AutoEnabled = False
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem GenomeEditGene
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kEditGene"
         AutoEnabled = False
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem GenomeRemoveFeature
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kRemoveFeature"
         AutoEnabled = False
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem GenomeRemoveFeatures
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kRemoveFeatures"
         AutoEnabled = False
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem UntitledSeparator11
         SpecialMenu = 0
         Index = -2147483648
         Text = "-"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem GenomeAddPlot
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kAddPlot"
         AutoEnabled = False
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem GenomeRemovePlots
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kRemovePlots"
         AutoEnabled = False
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem GenomeMergePlotData
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kMergePlotData"
         AutoEnabled = False
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem GenomePrintMap
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kPrintMap"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem UntitledItem6
         SpecialMenu = 0
         Index = -2147483648
         Text = "-"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem GenomeGenomeInfo
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kGenomeInfo"
         ShortcutKey = "I"
         Shortcut = "Cmd+I"
         MenuModifier = True
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem GenomeGenomeStatistics
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kGenomeStatistics"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
   End
   Begin MenuItem WindowMenu
      SpecialMenu = 0
      Index = -2147483648
      Text = "#kWindows"
      AutoEnabled = True
      AutoEnable = True
      Visible = True
   End
   Begin MenuItem HelpMenu
      SpecialMenu = 0
      Index = -2147483648
      Text = "#kHelp"
      AutoEnabled = True
      AutoEnable = True
      Visible = True
      Begin AppleMenuItem AboutSigmoID
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kAbout"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem HelpSigmoIDHelp
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kSigmoIDHelp"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem UntitledSeparator1
         SpecialMenu = 0
         Index = -2147483648
         Text = "-"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem HelpHMMERuserguide
         SpecialMenu = 0
         Index = -2147483648
         Text = "HMMER User Guide"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem HelpHMMERWebSite
         SpecialMenu = 0
         Index = -2147483648
         Text = "hmmer.org"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem UntitledSeparator2
         SpecialMenu = 0
         Index = -2147483648
         Text = "-"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem HelpMEMEhelp
         SpecialMenu = 0
         Index = -2147483648
         Text = "#kMEMEhelp"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
   End
End
#tag EndMenu
