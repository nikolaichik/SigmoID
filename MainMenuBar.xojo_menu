#tag Menu
Begin Menu MainMenuBar
   Begin MenuItem FileMenu
      SpecialMenu = 0
      Text = "&File"
      Index = -2147483648
      AutoEnable = True
      Visible = True
      Begin MenuItem FileScanGenome
         SpecialMenu = 0
         Text = "Scan Genome..."
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem FileExtendBindingSites
         SpecialMenu = 0
         Text = "Extend Binding Sites..."
         Index = -2147483648
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem UntitledItem2
         SpecialMenu = 0
         Text = "-"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem FileSaveAlignmentSelection
         SpecialMenu = 0
         Text = "Save Alignment Selection..."
         Index = -2147483648
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem FileSaveLogo
         SpecialMenu = 0
         Text = "Save Logo..."
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem FileMakeSigFile
         SpecialMenu = 0
         Text = "Make Sig File..."
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem UntitledSeparator
         SpecialMenu = 0
         Text = "-"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem FileOpen
         SpecialMenu = 0
         Text = "Open Genome..."
         Index = -2147483648
         ShortcutKey = "O"
         Shortcut = "Cmd+O"
         MenuModifier = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem FileSaveGenomeAs
         SpecialMenu = 0
         Text = "Save Genome As..."
         Index = -2147483648
         ShortcutKey = "S"
         Shortcut = "Cmd+Shift+S"
         MenuModifier = True
         AltMenuModifier = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem UntitledItem4
         SpecialMenu = 0
         Text = "-"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin QuitMenuItem FileQuit
         SpecialMenu = 0
         Text = "#App.kFileQuit"
         Index = -2147483648
         ShortcutKey = "#App.kFileQuitShortcut"
         Shortcut = "#App.kFileQuitShortcut"
         AutoEnable = True
         Visible = True
      End
   End
   Begin MenuItem EditMenu
      SpecialMenu = 0
      Text = "&Edit"
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
         AutoEnable = True
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
         Text = "Cu&t"
         Index = -2147483648
         ShortcutKey = "X"
         Shortcut = "Cmd+X"
         MenuModifier = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem EditCopy
         SpecialMenu = 0
         Text = "&Copy"
         Index = -2147483648
         ShortcutKey = "C"
         Shortcut = "Cmd+C"
         MenuModifier = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem EditCopyTranslation
         SpecialMenu = 0
         Text = "Copy Translation"
         Index = -2147483648
         ShortcutKey = "C"
         Shortcut = "Cmd+Shift+C"
         MenuModifier = True
         AltMenuModifier = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem EditPaste
         SpecialMenu = 0
         Text = "&Paste"
         Index = -2147483648
         ShortcutKey = "V"
         Shortcut = "Cmd+V"
         MenuModifier = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem EditClear
         SpecialMenu = 0
         Text = "#App.kEditClear"
         Index = -2147483648
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
      Begin MenuItem EditSelectAll
         SpecialMenu = 0
         Text = "Select &All"
         Index = -2147483648
         ShortcutKey = "A"
         Shortcut = "Cmd+A"
         MenuModifier = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem UntitledItem3
         SpecialMenu = 0
         Text = "-"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin PrefsMenuItem EditPreferences
         SpecialMenu = 0
         Text = "Preferences..."
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
   End
   Begin MenuItem ViewMenu
      SpecialMenu = 0
      Text = "View"
      Index = -2147483648
      AutoEnable = True
      Visible = True
      Begin MenuItem ViewLogo
         SpecialMenu = 0
         Text = "Logo"
         Index = -2147483648
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem ViewSequences
         SpecialMenu = 0
         Text = "Sequences"
         Index = -2147483648
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem ViewAlignmentInfo
         SpecialMenu = 0
         Text = "Alignment Info"
         Index = -2147483648
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem ViewHmmProfile
         SpecialMenu = 0
         Text = "Hmm Profile"
         Index = -2147483648
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem ViewHmmerSettings
         SpecialMenu = 0
         Text = "Profile Settings"
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
         Text = "Hide Viewer"
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
         Text = "View Details"
         Index = -2147483648
         AutoEnable = False
         Visible = False
      End
   End
   Begin MenuItem GenomeMenu
      SpecialMenu = 0
      Text = "Genome"
      Index = -2147483648
      AutoEnable = True
      Visible = True
      Begin MenuItem GenomeGoto
         SpecialMenu = 0
         Text = "Go to..."
         Index = -2147483648
         ShortcutKey = "G"
         Shortcut = "Cmd+G"
         MenuModifier = True
         AutoEnable = True
         Visible = True
      End
   End
   Begin MenuItem HelpMenu
      SpecialMenu = 0
      Text = "Help"
      Index = -2147483648
      AutoEnable = True
      Visible = True
      Begin MenuItem HelpSigmoidHelp
         SpecialMenu = 0
         Text = "Sigmoid Help"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem HelpHMMERuserguide
         SpecialMenu = 0
         Text = "HMMER user guide"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin AppleMenuItem AboutSigmoID
         SpecialMenu = 0
         Text = "About SigmoID"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
   End
End
#tag EndMenu
