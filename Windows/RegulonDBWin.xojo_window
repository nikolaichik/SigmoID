#tag Window
Begin Window RegulonDBWin
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   False
   Frame           =   0
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
   MinHeight       =   64
   MinimizeButton  =   True
   MinWidth        =   64
   Placement       =   0
   Resizeable      =   True
   Title           =   "E. coli regulons (RegulonDB)"
   Visible         =   False
   Width           =   672
   Begin Listbox RegulatorList
      AutoDeactivate  =   True
      AutoHideScrollbars=   True
      Bold            =   False
      Border          =   False
      ColumnCount     =   5
      ColumnsResizable=   True
      ColumnWidths    =   ""
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   -1
      Enabled         =   True
      EnableDrag      =   False
      EnableDragReorder=   False
      GridLinesHorizontal=   0
      GridLinesVertical=   0
      HasHeading      =   True
      HeadingIndex    =   -1
      Height          =   348
      HelpTag         =   ""
      Hierarchical    =   False
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   "TF name	Number of sites	Genes controlled	Site width"
      Italic          =   False
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      RequiresSelection=   False
      Scope           =   0
      ScrollbarHorizontal=   False
      ScrollBarVertical=   True
      SelectionType   =   1
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   0
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   672
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin ProgressWheel ProgressWheel1
      AutoDeactivate  =   True
      Enabled         =   False
      Height          =   16
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   292
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   -58
      Visible         =   True
      Width           =   88
   End
   Begin PushButton LogoButton
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Show Logo"
      Default         =   True
      Enabled         =   False
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   534
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   360
      Underline       =   False
      Visible         =   True
      Width           =   118
   End
   Begin BevelButton InfoButton
      AcceptFocus     =   True
      AutoDeactivate  =   True
      BackColor       =   &c00000000
      Bevel           =   4
      Bold            =   False
      ButtonType      =   0
      Caption         =   ""
      CaptionAlign    =   3
      CaptionDelta    =   0
      CaptionPlacement=   1
      Enabled         =   True
      HasBackColor    =   False
      HasMenu         =   0
      Height          =   22
      HelpTag         =   ""
      Icon            =   568940543
      IconAlign       =   1
      IconDX          =   0
      IconDY          =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   358
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   22
   End
   Begin Label RegulonDBinfoLabel
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
      Left            =   68
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   11
      TabPanelIndex   =   0
      Text            =   ""
      TextAlign       =   1
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   360
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   440
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub EnableMenuItems()
		  if RegulatorList.SelCount=1 then
		    RegPreciseRegulonInfo.enabled=true
		    RegPreciseRegulonInfo.Text="Regulon Info"
		  end if
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  
		End Sub
	#tag EndEvent


	#tag MenuHandler
		Function FileClose() As Boolean Handles FileClose.Action
			Close
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function RegPreciseRegulonInfo() As Boolean Handles RegPreciseRegulonInfo.Action
			RegulonInfo
		End Function
	#tag EndMenuHandler


	#tag Method, Flags = &h0
		Sub FillRegulatorList(RegulonDBfile as folderitem)
		  
		  'tab-sepaprated columns:
		  '# Columns:
		  '# (1) Transcription Factor (TF) identifier assigned by RegulonDB
		  '# (2) TF name
		  '# (3) TF binding site (TF-bs) identifier assigned by RegulonDB
		  '# (4) TF-bs left end position in the genome
		  '# (5) TF-bs right end position in the genome
		  '# (6) DNA strand where the  TF-bs is located
		  '# (7) TF-Gene interaction identifier assigned by RegulonDB (related to the "TF gene interactions" file)
		  '# (8) Transcription unit regulated by the TF
		  '# (9) Gene expression effect caused by the TF bound to the  TF-bs (+ activation, - repression, +- dual, ? unknown)
		  '# (10) Promoter name
		  '# (11) Center position of TF-bs, relative to Transcription Start Site
		  '# (12) TF-bs sequence (upper case)
		  '# (13) Evidence that supports the existence of the TF-bs
		  '# (14) Evidence confidence level (Confirmed, Strong, Weak)
		  'ECK125140816    AccB    ECK120011222    0    0    forward    ECK120032360    accBC    -    accBp
		  'ECK120015994    AcrR    ECK120018491    484933    484956    reverse    ECK120033472    acrAB    -    acrAp    -22.5    gcgttagattTACATACATTTGTGAATGTATGTAccatagcacg    [BCE|W|Binding of cellular extracts],[GEA|W|Gene expression analysis]
		  
		  'Some 'sites' are empty!
		  
		  'We convert some of the available info into fasta title, changing the order slightly:
		  '# (8) Transcription unit regulated by the TF
		  '# (11) Center position of TF-bs, relative to Transcription Start Site
		  '# (10) Promoter name
		  '# (9) Gene expression effect caused by the TF bound to the  TF-bs (+ activation, - repression, +- dual, ? unknown)
		  '# (1) Transcription Factor (TF) identifier assigned by RegulonDB
		  '# (2) TF name
		  '# (3) TF binding site (TF-bs) identifier assigned by RegulonDB
		  '# (4) TF-bs left end position in the genome
		  '# (5) TF-bs right end position in the genome
		  '# (6) DNA strand where the  TF-bs is located
		  '# (7) TF-Gene interaction identifier assigned by RegulonDB (related to the "TF gene interactions" file)
		  '# (13) Evidence that supports the existence of the TF-bs
		  '# (14) Evidence confidence level (Confirmed, Strong, Weak)
		  
		  'Evidence confidence level added in version 9
		  
		  dim tis as TextInputStream
		  dim tos as TextOutputStream
		  dim BSarr() as string
		  dim tab as string = chr(9)
		  dim aline, tline as string
		  dim theSeq, aGene, currentGene, geneArr() as string
		  dim linecount, n, GeneNo as integer
		  dim newgene as boolean
		  dim aTF, currentTF, TFdata, TF_ID as string
		  
		  
		  tis=RegulonDBfile.OpenAsTextFile
		  
		  if tis<>nil then
		    
		    'skip the header, but get version number:
		    while not tis.EOF
		      aLine=tis.readLine
		      if instr(aline,"# Release:")>0 then
		        RegulonDBVersion=NthField(aline,"# Release: ",2)
		        RegulonDBVersion=replace(RegulonDBVersion," Date:","(")
		        RegulonDBVersion=RegulonDBVersion+")"
		        exit
		      end if
		    wend
		    while not tis.EOF
		      aLine=tis.readLine
		      if left(aline,6)="# (14)" then
		        exit
		      end if
		    wend
		    
		    minlen=100
		    while not tis.EOF
		      aLine=tis.readLine
		      if len(aline)>60 then 'skip empty lines
		        BSarr()=split(aline,tab)
		        BSarr.Insert(0,"") 'zero based array correction
		        if BSarr(12)<>"" then 'filter out empty sites
		          
		          aTF=BSarr(2)
		          if aTF<>currentTF then 'new TF
		            'First, fill the table and array with the data for the previous TF:
		            MinLen=MinLen-20 '10 bases added by RegulonDB on each side
		            MaxLen=maxLen-20
		            GeneNo=UBound(geneArr)+1
		            
		            if GeneNo>0 then
		              RegulatorArray.Append TFdata
		              'RegulatorList columns are:
		              'TF name    Number of sites    Genes controlled    Site width    RegulonDB_TF_ID
		              dim reg() as string
		              if MinLen=MaxLen then
		                reg=array(currentTF, str(linecount), str(GeneNo), str(minLen), TF_ID)
		              else
		                reg=array(currentTF, str(linecount), str(GeneNo), str(minLen)+"-"+str(maxLen), TF_ID)
		              end if
		              RegulatorList.AddRow(reg)
		            end if
		            
		            'reinitialise counters and accumulators
		            currentTF=aTF
		            linecount=0
		            MinLen=100
		            MaxLen=0
		            redim geneArr(-1)
		            TFdata=""
		            TF_ID=BSarr(1)
		          end if
		          
		          linecount=linecount+1
		          
		          currentGene=BSarr(8)
		          newgene=true
		          for n=0 to UBound(genearr)
		            if currentGene=genearr(n) then
		              newgene=false
		              exit
		            end if
		          next
		          if newgene then
		            geneArr.append(currentGene)
		          end if
		          
		          'BSarr(8)+"_"+BSarr(11) gives unique name
		          if ubound(BSarr)<14 then
		            tline=">"+BSarr(8)+"_"+BSarr(11)+" "+BSarr(10)+" "+BSarr(9)+" "+BSarr(1)+" "+BSarr(2)+" "+BSarr(3)+" "+BSarr(4)+" "+BSarr(5)+" "+BSarr(6)+" "+BSarr(7)+" "+BSarr(13)
		          else
		            tline=">"+BSarr(8)+"_"+BSarr(11)+" "+BSarr(10)+" "+BSarr(9)+" "+BSarr(1)+" "+BSarr(2)+" "+BSarr(3)+" "+BSarr(4)+" "+BSarr(5)+" "+BSarr(6)+" "+BSarr(7)+" "+BSarr(13)+" "+BSarr(14)
		          end if
		          theSeq=BSarr(12)
		          
		          if lenb(theSeq)<minLen then
		            minLen=lenb(theSeq)
		          end if
		          
		          if lenb(theSeq)>maxLen then
		            maxLen=lenb(theSeq)
		          end if
		          
		          TFdata=TFdata+tline+EndOfLine.Unix
		          'RC should be an option
		          if BSarr(6)="forward" then
		            TFdata=TFdata+theSeq+EndOfLine.Unix
		          else
		            TFdata=TFdata+ReverseComplement(theSeq)+EndOfLine.Unix
		          end if
		          
		        end if
		      end if
		    wend
		    'add the last TF
		    MinLen=MinLen-20 '10 bases added by RegulonDB on each side
		    MaxLen=maxLen-20
		    GeneNo=UBound(geneArr)+1
		    if GeneNo>0 then
		      RegulatorArray.Append TFdata
		      'RegulatorList columns are:
		      'TF name    Number of sites    Genes controlled    Site width
		      dim reg() as string
		      if MinLen=MaxLen then
		        reg=array(currentTF, str(linecount), str(GeneNo), str(minLen), TF_ID)
		      else
		        reg=array(currentTF, str(linecount), str(GeneNo), str(minLen)+"-"+str(maxLen), TF_ID)
		      end if
		      RegulatorList.AddRow(reg)
		    end if
		    
		    
		  end if
		  RegulonDBinfoLabel.text="GegulonDB "+RegulonDBVersion+". "+str(RegulatorList.ListCount)+" transcription factors."
		  
		  Exception err
		    ExceptionHandler(err,"RegPreciseWin:FillRegulatorList")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RegulonInfo()
		  'get the ID:
		  dim TF_ID, theURL as string
		  TF_ID=RegulatorList.Cell(RegulatorList.ListIndex,4)
		  
		  theURL="http://regulondb.ccg.unam.mx/regulon?term="+TF_ID
		  theURL=theURL+"&organism=ECK12&format=jsp&type=regulon"
		  
		  WebBrowserWin.show
		  WebBrowserWin.LoadPage(theURL)
		  
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		RegulatorArray(-1) As string
	#tag EndProperty

	#tag Property, Flags = &h0
		RegulonDBVersion As String
	#tag EndProperty


#tag EndWindowCode

#tag Events RegulatorList
	#tag Event
		Sub Change()
		  if me.SelCount=1 then
		    LogoButton.Enabled=true
		    InfoButton.Enabled=true
		  else
		    LogoButton.Enabled=false
		    InfoButton.Enabled=false
		  end if
		  
		  'if me.SelCount>=1 then
		  'DeselectAllButton.enabled=true
		  'SearchButton.Enabled=true
		  'else
		  'DeselectAllButton.enabled=true
		  'SearchButton.Enabled=true
		  'end if
		  
		  'if me.SelCount=me.ListCount then
		  'SelectAllButton.enabled=false
		  'else
		  'SelectAllButton.enabled=true
		  'end if
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  me.ColumnWidths="25%,25%,25%,25%,0%"
		  'the last column is invisible and holds RegulonDB ID
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events LogoButton
	#tag Event
		Sub Action()
		  dim tmpfile as folderitem
		  dim TFname as string
		  
		  TFname=RegulatorList.Cell(RegulatorList.ListIndex,0)
		  
		  tmpfile=SpecialFolder.Temporary.child("RegulonDBtmp.fasta")
		  if tmpfile<>nil then
		    dim OutStream As TextOutputStream
		    OutStream = TextOutputStream.Create(tmpfile)
		    outstream.Write(RegulatorArray(RegulatorList.ListIndex))
		    OutStream.Close
		    logowin.Title="SigmoID: "+TFname+" (RegulonDB)"
		    logowin.LoadAlignment(tmpfile)
		    
		    'determine site width(s):
		    dim instream as TextInputStream
		    dim aLine as string
		    minLen=100
		    maxLen=0
		    InStream = tmpfile.OpenAsTextFile
		    while not InStream.EOF
		      aLine=trim(InStream.readLine)
		      if left(aLine,1)=">" then
		      else
		        if lenb(aline)<minLen then
		          minLen=lenb(aline)
		        end if
		        if lenb(aline)>maxLen then
		          maxLen=lenb(aline)
		        end if
		      end if
		    wend
		    instream.close
		    minLen=minlen-20
		    maxLen=maxLen-20
		    
		  end if
		  
		  LogoWin.show
		  
		  Exception err
		    ExceptionHandler(err,"RegulonDBWin:LogoButton.Action")
		    
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events InfoButton
	#tag Event
		Sub Open()
		  #if TargetCocoa then
		    me.Icon=SystemIcons.Info(20,20)
		    me.Caption=""
		  #endif
		End Sub
	#tag EndEvent
	#tag Event
		Sub Action()
		  RegulonInfo
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
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
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Group="Appearance"
		InitialValue="0"
		Type="Integer"
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
		Name="RegulonDBVersion"
		Group="Behavior"
		Type="String"
		EditorType="MultiLineEditor"
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
