#tag Module
Protected Module Globals
	#tag Method, Flags = &h0
		Sub AdjustLayout4linux(w as window)
		  'Adjust text sizes and buttons of a window to look better cross platform based on layout in Mac IDE
		  'this must be called only once in open event of window.
		  'by Guy Kuo         www.cosalient.com
		  
		  
		  #pragma BackgroundTasks false
		  
		  #if TargetLinux
		    
		    dim i , imax as integer
		    'dim scalingFactor as double
		    'dim dpi as integer
		    dim aControl as control
		    'const kBaseTextSizeIfZero = 12
		    
		    'dpi = screen DPI
		    'if dpi < 10 then exit
		    
		    'scalingFactor = (96/dpi)  'factor to scale from mac 96 dpi pixel size to windows equivalent size per inch
		    
		    imax = w.ControlCount-1
		    
		    for i = 0 to imax
		      aControl = w.Control(i) 'assign for better code readability
		      
		      if aControl isa PopupMenu then
		        PopupMenu(aControl).Top =PopupMenu(aControl).Top-4
		        PopupMenu(aControl).height =PopupMenu(aControl).height+8
		        'elseif aControl isa EditField then '-----------------------------
		        '
		        'if EditField(aControl).TextSize <> 0 then
		        'EditField(aControl).TextSize = round(scalingFactor * EditField(aControl).TextSize) 'base on actual textsize
		        'else
		        'EditField(aControl).TextSize = round(scalingFactor * kBaseTextSizeIfZero) 'base on 12
		        'end
		        '
		        'elseif aControl isa staticText then '-----------------------------
		        '
		        'if staticText(aControl).TextSize <> 0 then
		        'staticText(aControl).TextSize = round(scalingFactor * staticText(aControl).TextSize)
		        'else
		        'staticText(aControl).TextSize = round(scalingFactor * kBaseTextSizeIfZero)
		        'end
		        '
		        'elseif aControl isa ListBox then '-----------------------------
		        '
		        'if ListBox(aControl).TextSize <> 0 then
		        'ListBox(aControl).TextSize = round(scalingFactor * ListBox(aControl).TextSize)
		        'else
		        'ListBox(aControl).TextSize = round(scalingFactor * kBaseTextSizeIfZero)
		        'end
		        '
		        'elseif aControl isa CheckBox then '-----------------------------
		        '
		        'if CheckBox(aControl).TextSize <> 0 then
		        'CheckBox(aControl).TextSize = round(scalingFactor * CheckBox(aControl).TextSize)
		        'else
		        'CheckBox(aControl).TextSize = round(scalingFactor * kBaseTextSizeIfZero)
		        'end
		        
		      elseif aControl isa PushButton then '-----------------------------
		        
		        'if PushButton(aControl).TextSize <> 0 then
		        'PushButton(aControl).TextSize = round(scalingFactor * PushButton(aControl).TextSize)
		        'else
		        'PushButton(aControl).TextSize = round(scalingFactor * kBaseTextSizeIfZero)
		        'end
		        
		        #if TargetLinux then
		          PushButton(aControl).Top = PushButton(aControl).Top - 5
		          PushButton(aControl).Height = PushButton(aControl).Height + 10
		        #endif
		        
		        '#if TargetWin32 then
		        'PushButton(aControl).Top = PushButton(aControl).Top - 4
		        'PushButton(aControl).Height = PushButton(aControl).Height + 8
		        '#endif
		        
		        
		        'elseif aControl isa BevelButton then '-----------------------------
		        '
		        'if BevelButton(aControl).TextSize <> 0 then
		        'BevelButton(aControl).TextSize = round(scalingFactor * BevelButton(aControl).TextSize)
		        'else
		        'BevelButton(aControl).TextSize = round(scalingFactor * kBaseTextSizeIfZero)
		        'end
		        
		        '#if TargetLinux then
		        'BevelButton(aControl).Top = BevelButton(aControl).Top - 5
		        'BevelButton(aControl).Height = BevelButton(aControl).Height + 10
		        '#endif
		        '
		        '#if TargetWin32 then
		        'BevelButton(aControl).Top = BevelButton(aControl).Top - 4
		        'BevelButton(aControl).Height = BevelButton(aControl).Height + 8
		        '#endif
		        
		      end
		    next
		    
		  #endif
		  
		  Exception err
		    ExceptionHandler(err,"Globals:AdjustLayout4Linux")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CheckEmail()
		  If globals.email="" Then 
		    If  Not SettingsWin.Visible Then
		      SettingsWin.Show
		      SettingsWin.PagePanel1.value=1
		      SettingsWin.EmailField.SetFocus
		      MsgBox("Please, enter your e-mail address. It is required for some NCBI services.")
		    End If
		    
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CleanUp(Ge As string) As string
		  'Remove numbers, spaces, line ends
		  '(no complete cleanup for speed reasons!)
		  
		  #pragma disableBackgroundTasks
		  #pragma DisableBoundsChecking
		  #pragma NilObjectChecking False
		  #pragma StackOverflowChecking False
		  ge=ConvertEncoding(ge, Encodings.ASCII)
		  
		  
		  ge=ReplaceAllB(Ge," ","")
		  ge=ReplaceAllB(Ge,"1","")
		  ge=ReplaceAllB(Ge,"2","")
		  ge=ReplaceAllB(Ge,"3","")
		  ge=ReplaceAllB(Ge,"4","")
		  ge=ReplaceAllB(Ge,"5","")
		  ge=ReplaceAllB(Ge,"6","")
		  ge=ReplaceAllB(Ge,"7","")
		  ge=ReplaceAllB(Ge,"8","")
		  ge=ReplaceAllB(Ge,"9","")
		  ge=ReplaceAllB(Ge,"0","")
		  
		  ge=ReplaceLineEndings(ge,EndOfLine.UNIX) 'required on Windows and for files coming from it
		  ge=ReplaceAllB(Ge,EndOfLine.unix,"")
		  ge=ReplaceAllB(Ge,"//","")
		  
		  return Uppercase(Ge)
		  
		  
		  
		  Exception err
		    ExceptionHandler(err,"Globals:CleanUp")
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CleanUpReg(inp as string) As string
		  'Remove not IUPAC nucleotides characters from input string, aprox. five time slower then CleanUp method, but complete
		  
		  #pragma disableBackgroundTasks
		  #pragma NilObjectChecking False
		  #pragma StackOverflowChecking False
		  
		  dim StringLen, i as Integer
		  dim StringPool,raw as String
		  dim ClearString as New RegEx
		  ClearString.Options.CaseSensitive = false
		  ClearString.Options.ReplaceAllMatches = true
		  ClearString.SearchPattern = "[^ACGTNRYSWKMBDHVEFHILP-]"
		  ClearString.ReplacementPattern = ""
		  
		  inp=ConvertEncoding(inp, Encodings.ASCII)
		  StringLen = len(inp)
		  
		  If StringLen> 3500 then 'if string longer then 3500 char., make and proceed with substrings 
		    for i=1 to StringLen step 3500
		      StringPool=StringPool+ClearString.replace(inp.mid(i,3500))
		    next i
		    inp=StringPool
		  else
		    inp=ClearString.replace(inp)
		  end
		  return Uppercase(inp)
		  
		  Exception err
		    ExceptionHandler(err,"Globals:CleanUpReg")
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CompareScores(SigmoIDhits as string, TrainingData as string) As double
		  'Sigmoid gives a fasta file with headers like this:
		  '>2469306:2469325 (-) AscG Score=11.5 E-value=1.6
		  'or this:
		  '>ECA1243 2469306:2469325 (-) AscG Score=11.5 E-value=1.6
		  'or this:
		  '>nrdD ECA0375 427092:427113 (-) FNR Score=9.7 E-value=12.0
		  
		  
		  'the scores are in genomeWin.HmmHitDescriptions()
		  'names are in genomeWin.HmmHitNames()
		  'hit coords (just the left one) are in in genomeWin.HmmHits()
		  
		  dim SigSeq(0), SigName(0) as string
		  dim SigScore(0) as double
		  dim TSSeq(0), TSName(0) as string
		  dim aLine,theScore as string
		  dim MinScore as double = 1000
		  dim n,m as integer
		  dim missedHits(0) as string
		  
		  'First, fill the SigmoID and training set arrays with seqs and scores
		  for n=1 to CountFields(SigmoIDhits,EndOfLine.unix)
		    aLine=NthField(SigmoIDhits,EndOfLine.unix,n)
		    if left(aline,1)=">" then
		      SigName.Append aLine
		      'get the score:
		      TheScore=NthField(aLine,"Score=",2)
		      theScore=NthField(TheScore," ",1)
		      SigScore.Append(val(theScore))
		      n=n+1
		      aLine=NthField(SigmoIDhits,EndOfLine.unix,n)
		      SigSeq.Append aLine
		    end if
		  next
		  for n=1 to CountFields(TrainingData,EndOfLine.unix)
		    aLine=NthField(TrainingData,EndOfLine.unix,n)
		    if left(aline,1)=">" then
		      TSName.Append aLine
		      n=n+1
		      aLine=NthField(TrainingData,EndOfLine.unix,n)
		      TSSeq.Append aLine
		    end if
		  next
		  
		  
		  
		  'Read RegPrecise file and compare to Sigmoid data:
		  dim cTSseq,cTSname,RevTSseq as string
		  dim hitNum as integer = Ubound(SigSeq)
		  dim FPhits(0) as boolean 'to mark hits as true or "false positive"
		  redim FPhits(hitNum)
		  
		  
		  for m=1 to ubound(TSSeq) 'training set
		    
		    Dim hitCount as integer = 0
		    
		    cTSseq=TSSeq(m)
		    RevTSseq=ReverseComplement(cTSseq)
		    cTSname=TSname(m)
		    
		    for n=1 to hitNum 'the hits
		      if instr(SigSeq(n),cTSseq)>0 then
		        hitCount=hitCount+1
		        LogoWin.WriteToSTDOUT(cTSname+EndOfLine)
		        FPhits(n)=true
		        if HitCount=1 then
		          LogoWin.WriteToSTDOUT("corresponds to:"+EndOfLine)
		          LogoWin.WriteToSTDOUT(SigName(n)+EndOfLine)
		          LogoWin.WriteToSTDOUT(SigSeq(n)+EndOfLine)
		        else
		          LogoWin.WriteToSTDOUT("hit number "+str(n)+"! Corresponds to:"+EndOfLine)
		          LogoWin.WriteToSTDOUT(SigName(n)+EndOfLine)
		          LogoWin.WriteToSTDOUT(SigSeq(n)+EndOfLine)
		        end if
		        LogoWin.WriteToSTDOUT(SigName(0)+EndOfLine)
		        if SigScore(n)<MinScore then
		          MinScore=SigScore(n)
		        end if
		      elseif instr(SigSeq(n),RevTSseq)>0 then
		        hitCount=hitCount+1
		        LogoWin.WriteToSTDOUT(cTSname+EndOfLine)
		        FPhits(n)=true
		        if HitCount=1 then
		          LogoWin.WriteToSTDOUT("corresponds to:"+EndOfLine)
		          LogoWin.WriteToSTDOUT(SigName(n)+EndOfLine)
		          LogoWin.WriteToSTDOUT(SigSeq(n)+EndOfLine)
		        else
		          LogoWin.WriteToSTDOUT("hit number "+str(n)+"! Corresponds to:"+EndOfLine)
		          LogoWin.WriteToSTDOUT(SigName(n)+EndOfLine)
		          LogoWin.WriteToSTDOUT(SigSeq(n)+EndOfLine)
		        end if
		        LogoWin.WriteToSTDOUT(SigName(0)+EndOfLine)
		        if SigScore(n)<MinScore then
		          MinScore=SigScore(n)
		        end if
		        
		      end if
		    next 'n
		    
		    if hitCount=0 then 'no Sigmoid hit matches training set
		      missedHits.Append cTSname+EndOfLine+cTSseq
		    end if
		    
		  next 'm
		  
		  'check for false positive scores:
		  Dim maxFPscore as double = 0
		  
		  for n=1 to hitNum
		    if NOT FPhits(n) then
		      if SigScore(n)>maxFPscore then
		        maxFPscore=SigScore(n)
		      end if
		    end if
		  next
		  
		  
		  
		  LogoWin.WriteToSTDOUT(EndOfLine.unix)
		  if ubound(missedHits)>0 then
		    LogoWin.WriteToSTDOUT("Some training set sites were missed by SigmoID:"+EndOfLine.unix)
		    for n=1 to ubound(missedHits)
		      LogoWin.WriteToSTDOUT(missedHits(n)+EndOfLine.unix)
		    next
		  end if
		  
		  LogoWin.WriteToSTDOUT(EndOfLine+"Min. score for hits matching training set: "+str(minScore)+EndOfLine.unix)
		  if maxFPscore>0 then
		    LogoWin.WriteToSTDOUT("Max. score for hits not matching training set: "+str(maxFPscore)+EndOfLine.unix)
		  else
		    LogoWin.WriteToSTDOUT("No false positive hits found.")
		  end if
		  LogoWin.WriteToSTDOUT(EndOfLine.Unix+EndOfLine.Unix)
		  
		  
		  ProfileWizardWin.TrustedField.Text=str(minScore)
		  if maxFPscore>0 then
		    ProfileWizardWin.NoiseField.Text=str(maxFPscore)
		    if maxFPscore<minScore then
		      ProfileWizardWin.GatheringField.Text=str((minScore+maxFPscore)/2)
		    else
		      ProfileWizardWin.GatheringField.Text=str(minScore)
		    end if
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Complement(seq as string) As String
		  'memory blocks are up to 80 times faster than strings here!!! :
		  dim n,l,count as integer
		  dim in1,out as memoryBlock
		  l=lenB(seq)
		  in1=new MemoryBlock(l+1)
		  out=new MemoryBlock(l+2)
		  in1.pString(0)=seq    'Shouldn't there be a CString here?
		  
		  'setting endiannes here is probably unnecessary, but...
		  '#if targetWin32
		  'in1.littleEndian=true
		  'out.littleEndian=true
		  '#endif
		  
		  count=1
		  for n=1 to l
		    out.byte(count)=RevCompArr(in1.byte(n))
		    count=count+1
		  next
		  
		  out.byte(count)=0     ' ending with 0 to get CString
		  return out.cstring(1)
		  
		  Exception err
		    ExceptionHandler(err,"Globals:RevCompl")
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CopyFileToVV(File2copy as folderitem, VV as virtualVolume)
		  'this is used to copy files from tmp dir to virtualVolume
		  'as the built in CopyFileTo works for virtual volumes only on OS X
		  
		  dim f as FolderItem
		  Dim OutStream as TextOutputStream
		  Dim InStream As TextInputStream
		  f=VV.Root.Child(File2copy.name)
		  If f <> Nil then
		    Instream=TextInputStream.Open(File2copy)
		    OutStream = TextOutputStream.Create(f)
		    OutStream.Write(Instream.ReadAll)
		    OutStream.Close
		  End If
		  
		  Exception err
		    ExceptionHandler(err,"App:CopyFileToVV")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CountCPUcores() As integer
		  // returns number of CPU cores (threads)
		  ' (not sure if this works with Windows)
		  
		  dim cli as string
		  Dim sh As Shell
		  dim threadsSupport as Boolean = false
		  sh=New Shell
		  sh.mode=0
		  sh.TimeOut=-1
		  cli="ompi_info"
		  Sh.Execute cli
		  dim ompiversion as string=sh.Result 
		  if instr(ompiversion,"'ompi_info' not found")=0 then
		    ompiversion=NthField(ompiversion,EndOfLine.UNIX+"Open MPI repo",1)
		    ompiversion=NthField(ompiversion,"Open MPI: ",2)
		    ompiversion=NthField(ompiversion,".",1)
		    dim v as Integer = val(ompiversion)
		    if v>2 then
		      threadsSupport=false
		    else
		      threadsSupport=true
		    end
		  end
		  sh=New Shell
		  sh.mode=0
		  sh.TimeOut=-1
		  
		  cli=pythonPath+"-c 'import multiprocessing as mp; print mp.cpu_count()'"
		  sh.execute cli
		  If sh.errorCode=0 then
		    dim CPUs As Integer = Val(sh.result)
		    if CPUs>1 then
		      sh.execute MEMEpath+" -p 2"
		      if instr(sh.Result,"Parallel MEME not configured")>0 then
		        LogoWin.WriteToSTDOUT(EndOfLine.unix+"Parallel MEME not configured (refer to install.html from MEME Suite docs for proper installation)."+EndOfLine.unix)
		        return 1
		      else
		        If threadsSupport=False Then
		          CPUs=CPUs\2
		        End
		        
		        LogoWin.WriteToSTDOUT(EndOfLine.unix+Str(CPUs)+" CPU cores detected. All of them will be used for running MEME."+EndOfLine.unix)
		        Return CPUs
		        
		      end if
		    else
		      return 1
		    end if
		  else
		    return 1
		  End If
		  
		  
		  '
		  '#if TargetMacOS
		  '
		  'cli="sysctl -n hw.ncpu"
		  'sh.execute cli
		  'If sh.errorCode=0 then
		  'return Val(sh.result)
		  'else
		  'return 1
		  'End If
		  '
		  '#endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function countSubst(source as string, subst as string) As integer
		  
		  dim count,index,lensub as Integer
		  index=1
		  count=0
		  lensub=lenb(subst)
		  while index<>0
		    index=instrB(index, source, subst)
		    if index> 0 then 
		      count=count+1
		      index=index+lensub
		    end
		  wend
		  return count
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DeleteEntireFolder(theFolder as folderitem, continueIfErrors as Boolean = false) As integer
		  // From LR with no modifications
		  
		  dim returnCode, lastErr, itemCount as integer
		  dim files(), dirs() as FolderItem
		  
		  // Collect the folder‘s contents first.
		  // This is faster than collecting them in reverse order and deleting them right away!
		  itemCount = theFolder.Count
		  for i as integer = 1 to itemCount
		    dim f as FolderItem
		    f = theFolder.TrueItem( i )
		    if f <> nil then
		      if f.Directory then
		        dirs.Append f
		      else
		        files.Append f
		      end if
		    end if
		  next
		  
		  // Now delete the files
		  for each f as FolderItem in files
		    f.Delete
		    lastErr = f.LastErrorCode   // Check if an error occurred
		    if lastErr <> 0 then
		      if continueIfErrors then
		        if returnCode = 0 then returnCode = lastErr
		      else
		        // Return the error code if any. This will cancel the deletion.
		        return lastErr
		      end if
		    end if
		  next
		  
		  // Now delete the directories
		  for each f as FolderItem in dirs
		    lastErr = DeleteEntireFolder( f, continueIfErrors )
		    if lastErr <> 0 then
		      if continueIfErrors then
		        if returnCode = 0 then returnCode = lastErr
		      else
		        // Return the error code if any. This will cancel the deletion.
		        return lastErr
		      end if
		    end if
		  next
		  
		  if returnCode = 0 then
		    // We‘re done without error, so the folder should be empty and we can delete it.
		    theFolder.Delete
		    returnCode = theFolder.LastErrorCode
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DisableAppAutoTabbing()
		  // MacOS X Sierra and up has the option of opening new windows in tabs.
		  '  This is useless for SigmoID, so disabling it here
		  
		  
		  #if TargetMacOS  and TargetCocoa then
		    
		    Soft Declare Function objc_getClass lib "libobjc.dylib" (name As CString) As Ptr
		    Soft Declare Function sel_registerName lib "libobjc.dylib" (name As CString) As Ptr
		    Soft Declare Function RespondsToSelector Lib "Cocoa" selector "respondsToSelector:" (target As Ptr, Sel As Ptr) As Boolean
		    
		    Dim nsWindowClass As Ptr = objc_getClass("NSWindow")
		    if RespondsToSelector(nsWindowClass, sel_registerName("setAllowsAutomaticWindowTabbing:")) then 'check if this option is available
		      
		      declare sub AllowTabGrouping lib "AppKit"selector "setAllowsAutomaticWindowTabbing:" ( classPtr as Ptr , enableDisable as Boolean ) 
		      
		      AllowTabGrouping( nsWindowClass, false )
		    end if
		    
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DrawRuler(width as integer, baseY as integer, bp as integer) As Group2D
		  'Routine to draw  the ruler on linear maps
		  
		  'mapwidth, 20, me.seq.length
		  
		  dim Ruler as New Group2D
		  dim n,m as integer
		  dim pixperbp,x as double
		  'dim p as new picture (1,1,32)
		  if bp=0 then
		    pixPerbp=0
		  else
		    pixPerbp=width/bp
		  end if
		  
		  'draw seqline:
		  dim rect as New RectShape
		  rect.width=width
		  rect.height=2
		  rect.border=0
		  'rect.fillcolor=RGB(24,96,90)
		  rect.x=rect.width/2 'adjust for central coordinate
		  rect.y=BaseY+rect.height/2
		  Ruler.Append(rect)
		  
		  'drawticks across the line:
		  '100bp ticks:
		  n=bp/100
		  'find start:
		  dim  startCoordinate as integer = ((GBrowseShift\100)+1)*100-GBrowseShift
		  'Example:
		  'GBrowseShift=2291576
		  '                                     2291576               2291576
		  'dim  startCoordinate as integer = ((GBrowseShift\100)+1)*100-GBrowseShift
		  '                                             22915
		  '                                                 2291600
		  'startCoordinate= 24
		  
		  x=startCoordinate*pixPerbp  'shift left according to actual position
		  for m=0 to n
		    rect=New RectShape
		    rect.width=1
		    rect.height=2
		    rect.border=0
		    'rect.fillcolor=RGB(24,96,90)
		    'rect.x=x+rect.width/2+100*m*pixPerbp
		    rect.x=x+100*m*pixPerbp
		    
		    'rect.y=BaseY-1+rect.height/2
		    rect.y=BaseY-1
		    Ruler.Append(rect)
		  next
		  '500bp tick:
		  startCoordinate = ((GBrowseShift\500)+1)*500-GBrowseShift
		  x=startCoordinate*pixPerbp
		  n=bp/500
		  for m=0 to n
		    rect=New RectShape
		    rect.width=1
		    rect.height=3
		    rect.border=0
		    'rect.fillcolor=RGB(24,96,90)
		    'rect.x=x+rect.width/2+500*m*pixPerbp
		    rect.x=x+500*m*pixPerbp
		    
		    rect.y=BaseY-2'+rect.height/2
		    Ruler.Append(rect)
		  next
		  '1kb tick:
		  startCoordinate = ((GBrowseShift\1000)+1)*1000-GBrowseShift
		  x=startCoordinate*pixPerbp
		  n=bp/1000
		  for m=0 to n
		    'pic.graphics.fillrect x+100*m*pixPerbp,97,1,9
		    rect=New RectShape
		    rect.width=1
		    rect.height=5
		    rect.border=0
		    'rect.fillcolor=RGB(24,96,90)
		    'rect.x=x+rect.width/2+1000*m*pixPerbp
		    rect.x=x+1000*m*pixPerbp
		    
		    rect.y=BaseY-4'+rect.height/2
		    Ruler.Append(rect)
		    
		    'add coordinate text
		    dim s as New StringShape
		    s.Text=str(GBrowseShift+startCoordinate+1000*m)
		    s.TextFont=FixedFont
		    s.TextSize=10
		    's.rotation=1.5*3.1415926
		    s.x=rect.x'-(p.Graphics.StringWidth(s.text)/2)
		    s.y=baseY-8
		    Ruler.Append(s)
		    
		    
		  next
		  
		  ' add text labels:
		  
		  'dim s as New StringShape
		  's.Text="1"
		  's.TextFont=FixedFont
		  's.Bold=True
		  's.fillcolor=RGB(24,96,90)
		  's.rotation=1.5*3.1415926
		  's.x=20
		  's.y=baseY
		  'Ruler.Append(s)
		  '
		  's=New StringShape
		  's.Text=str(bp)
		  's.TextFont=FixedFont
		  's.Bold=True
		  's.fillcolor=RGB(24,96,90)
		  's.rotation=1.5*3.1415926
		  's.X=50+width
		  's.y=baseY
		  'Ruler.Append(s)
		  
		  return ruler
		  
		  Exception err
		    ExceptionHandler(err,"Globals:DrawRuler")
		    
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ExceptionHandler(err as RuntimeException, meth as string)
		  
		  dim errtype as string 
		  
		  if err IsA FunctionNotFoundException then
		    errtype="FunctionNotFoundException" ' A function declared using the Declare statement's "Soft" keyword could not be loaded.
		  elseif err IsA HTMLViewerException then
		    errtype="HTMLViewerException" '  There was an error parsing the HTML using HTMLViewer.
		  elseif err IsA IllegalCastException then
		    errtype="IllegalCastException" '  You cast an object to a different class and sent it a message its real class can't accept.
		  elseif err IsA InvalidParentException then
		    errtype="InvalidParentException" '  You tried to get the parent of a control using the Parent property of the Control class, but its parent is in a different window.
		  elseif err IsA IOException then
		    errtype="IOException" '  An error occurred while creating or opening a file.
		  elseif err IsA JSONException then
		    errtype="JSONException" '  A method of the JSONItem class failed.
		  elseif err IsA  KeyChainException then
		    errtype="KeyChainException" '  A method of the KeyChain or KeyChainItem classes failed.
		  elseif err IsA KeyNotFoundException then
		    errtype="KeyNotFoundException" '  An attempt was made to access a Dictionary item with a key that the dictionary does not contain.
		  elseif err IsA MenuHasParentException then
		    errtype="MenuHasParentException" '  A MenuItem has been used several times. Currently only applies to Cocoa applications.
		  elseIf err IsA NilObjectException then
		    errtype="NilObjectException" '  An attempt was made to access an object that does not exist.
		  elseIf err IsA ObjCException   then
		    errtype="ObjCException" ' An Objective-C exception around a Declare statement.
		  elseif err IsA OLEException then
		    errtype="OLEException" '  An OLE-related runtime exception occurred. Handle errors in Office Automation code via the OLEException class.
		  elseif err IsA OutOfBoundsException then
		    errtype="OutOfBoundsException" '  An attempt was made to read from or write to a value, character, or element outside the bounds of the object or data type.
		  elseif err IsA OutOfMemoryException then
		    errtype="OutOfMemoryException" '  Raised in certain cases when an operation cannot be completed due to insufficient memory.
		    'elseif err IsA RbScriptAlreadyRunningException then
		    'errtype="RbScriptAlreadyRunningException" '  The user tried to modify an RBscript that is already executing or tried to modify the context of the script while it is running.
		  elseif err IsA RegExException then
		    errtype="RegExException" '  The RegEx engine issued a runtime exception. Currently this means that you used an invalid search pattern in a Regular Expression. In the future, other types of regular expression exceptions may be added.
		  elseif err IsA RegistryAccessErrorException then
		    errtype="RegistryAccessErrorException" '  You tried to use the RegistryItem class without proper access privileges or tried to use it under any Macintosh OS or Linux. It is a Windows-only feature.
		  elseif err IsA ShellNotRunningException then
		    errtype="RegistryAccessErrorException" '   You tried to access an asynchronous or interactive shell session, but the shell was not running.
		  elseif err IsA SOAPException then
		    errtype="SOAPException" '  SOAPExceptions can be raised when using a WSDL to define your SOAP function. If the method name does not exist or the parameters passed do not match the WSDL specifications, a SOAPException runtime error will be raised.
		  elseif err IsA SpotlightException then
		    errtype="SpotlightException" '  An error related to a SpotlightQuery was encountered, such as an invalid query.
		  elseif err IsA StackOverflowException then
		    errtype="StackOverflowException" '  When one routine (method/event handler/menu handler) calls another, memory is used to keep track of the place in each routine where it was called along with the values of its local variables. The purpose of this is to return (when the routine being called finishes) to the previous routine with all local variables as they were before. The memory set aside for tracking this is called the Stack (because you are "stacking" one routine on top of another). If your application runs out of stack space, a StackOverflowException will occur. You should be able to test your application thoroughly enough to prevent this error from occurring.
		  elseif err IsA ThreadAlreadyRunningException then
		    errtype="ThreadAlreadyRunningException" '  You tried to change the stack size of a Thread while it was running.
		  elseif err IsA TypeMismatchException then
		    errtype="TypeMismatchException" '  You tried to assign to an object the wrong data type.
		  elseif err IsA UnsupportedFormatException then
		    errtype="UnsupportedFormatException" '  You used a string expression that does not evaluate to a number or tried to open or save an unsupported picture format.
		  elseif err IsA UnsupportedOperationException then
		    errtype="UnsupportedOperationException" '  You tried to perform an operation which is not supported.
		  elseif err IsA XMLDOMException  then
		    errtype="XMLDOMException" '  This exception may occur during the creation of a DOM document.
		  elseif err IsA XMLException then
		    errtype="XMLException" '  There was an error in parsing XML.
		  elseif err IsA XMLReaderException then
		    errtype="XMLReaderException" '  There was an error in parsing XML using XMLReader.
		  elseif err IsA ThreadAccessingUIException then
		    errtype="ThreadAccessingUIException" '  This exception is raised in Cocoa applications that access a user interface property or method from within a thread
		  elseif err isa EndException or err isa ThreadEndException then
		    raise err  //Re-raise the exception to allow for proper app or thread termination
		  else
		    errtype="Unknown exception" '  "Unnown error has occurred. Please try to save important files (under different names) and relaunch SQ."
		  end if
		  
		  
		  if err IsA HTMLViewerException then
		    'Occurs when The HTMLViewer cannot render the HTML, usually because of a missing library.
		    #if TargetLinux then
		      #if Target64Bit then
		        'An HTMLViewerException is most likely to occur on 64-bit Linux
		        'when the required 32-bit webkit libraries are not installed.
		        MsgBox "There was a problem displaying html. This is probably because of missing WebKit libraries. Please try to launch Sigmoid with the provided sigmoid.sh script or consult the docs on details of Linux install."
		      #endif
		    #else
		      MsgBox "There was a problem in the following method: "+meth+". "+ err.Message+" Error Code: "+Str(err.errorNumber)+" ("+ErrType+")"
		    #endif
		  else
		    MsgBox "There was a problem in the following method: "+meth+". "+ err.Message+" Error Code: "+Str(err.errorNumber)+" ("+ErrType+")"
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Fasta2IC(logoData as string) As Double
		  // Calculate Information content from alignment data
		  ' (simlified version of MakeLogoPic)
		  
		  'Information content per position as defined by Schneider et al, 1986
		  '
		  ' Ii=2+sum(Fb,i*log2(Fb,i)),
		  '
		  'where i is the position within site, b refers to each of the four bases,
		  'and Fb,i is the frequency of each base at that position
		  
		  dim replicas, currentX,letterData as integer
		  dim entropy, freq As double
		  dim Acount, Ccount, Gcount, Tcount as string
		  dim totalEntropy as double=0
		  
		  
		  dim Acounter(0) as integer
		  dim Ccounter(0) as integer
		  dim Gcounter(0) as integer
		  dim Tcounter(0) as integer
		  dim Arow, Achar as string
		  dim n,n2, SeqLen as integer
		  dim LogoDatarr(-1) as string
		  
		  LogoDatarr=split(logoData,EndOfLine.UNIX)
		  
		  'determine seqlength
		  RegPreciseTFcollectionsWin.siteLength=0
		  for n=0 to ubound(logodatarr)-1
		    Arow=trim(LogoDatarr(n)) 'trimming just in case
		    Achar=left(Arow,1)
		    if Achar<>">" then
		      SeqLen=len(Arow)
		      RegPreciseTFcollectionsWin.siteLength=SeqLen
		      exit
		    end if
		    
		  next
		  
		  
		  
		  
		  Redim Acounter(SeqLen)
		  Redim Ccounter(SeqLen)
		  Redim Gcounter(SeqLen)
		  Redim Tcounter(SeqLen)
		  
		  dim LogoPic as new Picture (30*(SeqLen+1),170,32)
		  LogoPic.Transparent=1
		  
		  for n=0 to ubound(logodatarr)-1
		    Arow=trim(LogoDatarr(n))
		    Achar=left(Arow,1)
		    if Achar<>">" AND len(Arow)>0 then
		      replicas=replicas+1
		      if len(Arow)<>SeqLen then
		        logowin.WriteToSTDOUT "The sequences are of different lengths!"+EndOfLine.UNIX
		        
		        LengthsDiffer=true
		        RegPreciseTFcollectionsWin.siteLength=0
		        exit
		      else
		        LengthsDiffer=false
		      end if
		      
		      for n2=1 to SeqLen
		        Achar=mid(Arow,n2,1)
		        select case Achar
		        case "A"
		          Acounter(n2)=Acounter(n2)+1
		        case "C"
		          Ccounter(n2)=Ccounter(n2)+1
		        case "G"
		          Gcounter(n2)=Gcounter(n2)+1
		        case "T"
		          Tcounter(n2)=Tcounter(n2)+1
		        case "N"
		          'do nothing
		        case "-"
		          'do nothing
		        case else
		          msgbox "Unexpected non-nucleotide character in input (only ACGTN- allowed)."
		          return 0
		        end select
		      next
		    end if
		    
		  next
		  
		  if not LengthsDiffer then
		    for n=1 to SeqLen
		      'combine letter names with counts for sorting
		      if Acounter(n)=0 AND Ccounter(n)=0 AND Gcounter(n)=0 AND Tcounter(n)=0 then
		        'some sites (e.g. in RegPrecise) have all 'N' positions
		        entropy=0
		      else
		        entropy=2
		        freq=Acounter(n)/replicas
		        entropy=entropy+freq*log2(freq)
		        freq=Ccounter(n)/replicas
		        entropy=entropy+freq*log2(freq)
		        freq=Gcounter(n)/replicas
		        entropy=entropy+freq*log2(freq)
		        freq=Tcounter(n)/replicas
		        entropy=entropy+freq*log2(freq)
		      end if
		      
		      totalEntropy=totalEntropy+entropy
		      
		    next
		    
		  end if
		  
		  return totalEntropy
		  
		  Exception err
		    ExceptionHandler(err,"Globals:Fasta2IC")
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FastaButtonsCheck()
		  
		  if RegPreciseWin.RegulatorList.SelCount=1 then
		    if LogoWin.GenomeFile<>nil then
		      RegPreciseWin.FastaButton.Enabled=true   
		    else
		      RegPreciseWin.FastaButton.Enabled=false
		    end if
		  end if
		  
		  if RegulonDBWin.RegulatorList.SelCount=1 then
		    if LogoWin.GenomeFile<>nil then
		      RegulonDBWin.FastaButton.Enabled=true
		    else
		      RegulonDBWin.FastaButton.Enabled=false
		    end if
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function FillGaps(sequences as String, fixDashes as boolean) As string
		  'RegPrecise data may contain gaps like this:
		  'TACAGAT-(17)-TTCAGAT-(13)-ATCTGTA-(23)-GTCTGTA
		  'filling the gaps with Ns:
		  if instr(sequences,"-(")>0 then
		    'msgbox "The binding site data may contain gaps. Please replace them with Ns."
		    dim Ns, gap as string
		    dim m, gapSize as integer
		    While instr(sequences,"-(")>0 AND instr(sequences,")-")>0
		      'this assumes there are no -( and )- in sequence names
		      gapSize=val(NthField(sequences,"-(",2))
		      'fill the gap:
		      Ns=""
		      for m=1 to gapSize
		        Ns=Ns+"N"
		      next
		      sequences=replaceall(sequences,"-("+str(gapSize)+")-",Ns)
		    wend
		  end if
		  
		  if FixDashes then
		    // Another gap case:
		    '  >OB0833(bceA) Score=7.9 Pos=-115 [Oceanobacillus iheyensis HTE831]
		    '  TGTGAC-----TGTCAC
		    '
		    '  Latest MEME versions don't like dashes, so replacin 'em with Ns
		    
		    sequences=replaceall(sequences,"=-","%%") 'save minus signs
		    sequences=replaceall(sequences,"-","N")   'fix dashes
		    sequences=replaceall(sequences,"%%","=-") 'save minus signs
		    
		  end if
		  
		  return sequences
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FixPath4Windows(aFile as folderitem)
		  #if TargetWin32
		    'a workaround for shellpath glitch
		    if not aFile.exists then
		      Dim t As TextOutputStream
		      t = TextOutputStream.Create(afile)
		      t.Close
		    end if
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub gbk2fasta(f as folderItem)
		  dim stre as textInputStream
		  dim s,s0,features,currentFeature, cf1,name,coord,start,finish,Separator,splitCoords,leftC,FeatureArray(-1) as string
		  dim en,st,l,m,n,p,p1,p2,p3,p4,p5 as integer
		  dim t as double
		  dim exitParsing as boolean
		  dim NewFeature as GBFeature
		  app.Genome=new cSeqObject
		  
		  
		  If f <> nil AND f.exists then
		    Stre=f.OpenAsTextFile
		    s=stre.readall
		    Stre.Close
		  End if
		  
		  if instrb(s,"LOCUS       ")>0 then
		    'w.gbopened=true
		    '
		    '
		    '****************Opening Genbank file******************
		    '
		    'Genebank file - sequence starts after "ORIGIN"
		    'the entry starts with "LOCUS       ";
		    'description and references follow down to
		    '"FEATURES             Location/Qualifiers",
		    'after which the feature list goes
		    'the sequence starts right after "ORIGIN      <cr>        1 "
		    
		    'first get the feature table:
		    st=instrb(s,"FEATURES             Location/Qualifiers")+41
		    's0=LineEnd+"BASE COUNT "  'this long in order to terminate parsing properly
		    
		    LineEnd=EndOfLine.unix
		    s0=LineEnd+"ORIGIN"
		    '^
		    '|
		    'SHOULD USE "origin" INSTEAD OF "BASE COUNT"
		    en=instrb(s,s0)-1
		    'line ends may vary wildly, so checking if platform-specific line ends are indeed used
		    cLineEnd=LineEnd
		    if en=-1 then  'line ends are different or this may be not a genebank file
		      s0=LF+"ORIGIN"
		      en=instrb(s,s0)-1
		      if en >= 0 then
		        'set the correct line ends for further use:
		        cLineEnd=LF
		      else
		        s0=CR+"ORIGIN"
		        en=instrb(s,s0)-1
		        if en > 0 then 'set the correct line ends for further use:
		          cLineEnd=CR
		        else
		          msgbox "Problem trying to read GenBank format! Annotated features may not be available."
		        end if
		      end
		    end
		    if cLineEnd="" then
		      cLineEnd=EndOfLine  'seems to be set wrong for some files
		    end if
		    LineEnd=cLineEnd
		    
		    features=midb(s,st,en-st+1)
		    
		    'get genetic code number
		    dim tt As string
		    if instr(features,"/transl_table=")>0 then
		      tt=NthField(features,"/transl_table=",2)
		      tt=trim(NthField(tt,EndOfLine.unix,1))
		      if len(tt)<3 then
		        gCodeNo=val(tt)
		      else
		        gCodeNo=1
		      end if
		    else
		      gCodeNo=1 'can't get the translation table – using the universal code
		    end if
		    
		    'save description:
		    app.Genome.Description=leftb(s,st)
		    
		    'now parse the feature table.
		    'every new feature is identified as the line having 5 rather than 21 leading spaces
		    
		    'First remove the blocks of 21 spaces:
		    features=ReplaceAll(features,"                     ","")
		    Separator=cLineEnd+"     "
		    m=countfields(features,Separator)
		    currentFeature=""
		    app.Genome.features(0)=new GBfeature(app.Genome.baselineY)   'this will store map title/sequence size
		    
		    
		    features=ConvertEncoding(features,Encodings.ASCII)
		    
		    featureArray=Split(features,Separator)
		    app.gbkSource=""
		    for n=0 to m-1
		      currentFeature=featureArray(n)
		      
		      'feature description parsing:
		      cf1=nthfield(currentFeature,cLineEnd,1)
		      name=trim(leftb(cf1,16))      'feature name
		      
		      if name ="source" then
		        'store source separately
		        app.gbkSource=currentFeature
		      else
		        NewFeature=new GBfeature(app.Genome.baselineY)
		        NewFeature.featureText=currentFeature
		        'now check the direction and coorginates:
		        cf1=replace((cf1),"<","")  'remove markers of truncated genes to simplify coordinate parsing
		        cf1=replace((cf1),">","")
		        if InStrB(17,cf1,"complement")>0 then
		          NewFeature.complement=true
		          'gene            complement(2659..4155)
		          if InStrB(27,cf1,"order")>0 OR InStrB(27,cf1,"join")>0 then
		            'split feature:
		            'misc_feature    complement(order(3576182..3576235,3576263..3576322,
		            '3576341..3576409,3576467..3576532))
		            'CDS             complement(join(2497077..2497340,2497344..2497514))
		            NewFeature.start=val(nthFieldB(cf1,"..",countfieldsB(cf1,"..")))  'replacement to correct for partial features
		            NewFeature.finish=val(nthfieldB(nthfieldB(cf1,"..",1),"(",3))
		          else
		            coord=rightb(cf1,lenb(cf1)-instrb(cf1,"("))  'coords in brackets for complementary strand
		            NewFeature.start=val(nthFieldB(coord,"..",2))
		            'NewFeature.finish=val(replace((nthFieldB(coord,"..",1)),"<",""))  'replacement to correct for partial features
		            NewFeature.finish=val(nthFieldB(coord,"..",1))  'replacement to correct for partial features
		          end if
		        else
		          if InStrB(17,cf1,"order")>0 OR InStrB(17,cf1,"join")>0 then
		            'split feature:
		            'misc_feature    order(343373..343441,343469..343537,343652..343720,
		            '343799..343867,343925..343984)
		            'CDS             join(843475..843549,843551..844573)
		            
		            NewFeature.start=val(nthfieldB(nthfieldB(cf1,"..",1),"(",2))
		            'splitCoords=NthFieldB(currentFeature,")",1)
		            'NewFeature.finish=val(nthFieldB(splitCoords,"..",CountFieldsB(splitCoords,"..") ))
		            NewFeature.finish=val(nthFieldB(cf1,"..",CountFieldsB(cf1,"..")))
		          else
		            'NewFeature.complement=false false is the default
		            coord=ltrim(rightb(cf1,lenb(cf1)-lenb(name)))
		            NewFeature.start=val(NthFieldB(coord,"..",1))
		            NewFeature.finish=val(nthFieldB(coord,"..",2))
		          end if
		        end if
		        App.Genome.features.Append NewFeature
		      end if
		      
		    next 'n
		    
		    's=DefineEncoding ("",Encodings.ASCII)
		    
		    app.FormattedSequence=trim(rightb(s,len(s)-instrb(s,"ORIGIN")-7)) 
		    'w.FormattedSequence=trim(rightb(s,lenb(s)-instrb(s,"ORIGIN")-7)) предлагаю вариант на замену
		    app.Genome.sequence=CleanUp(app.FormattedSequence)
		    
		  else
		    msgbox kInvalidGenbankFile
		    return
		  end 'if instrb(s,"LOCUS       ")>0
		  
		  
		  
		  dim prot,separTransl,separProtID,separGene,separProd,separ2,TitleLine as string
		  
		  dim n1,u1 as integer
		  dim ft as GBFeature
		  
		  separTransl="/translation="+chr(34)
		  separProtID="/protein_id="+chr(34)
		  separGene="/gene="+chr(34)
		  separProd="/product="+chr(34)
		  separ2=chr(34)
		  dim outfile as FolderItem
		  outfile = TemporaryFolder.child("gbkProtexport.fasta")
		  if outfile.Exists then outfile.Delete
		  
		  Dim s1 as TextOutputStream=TextOutputStream.Create(outfile)
		  if s1<> NIL then
		    u1=ubound(app.Genome.Features)
		    for n1=1 to u1
		      ft=app.Genome.Features(n1)
		      if left(ft.featuretext,3)="CDS" then
		        TitleLine=NthField(ft.FeatureText,separProtID,2)           'Protein_ID
		        TitleLine=">"+NthField(TitleLine,separ2,1)
		        prot=NthField(ft.FeatureText,separGene,2)                  'Gene
		        prot=NthField(prot,separ2,1)
		        if prot<>"" then
		          TitleLine=TitleLine+" "+prot
		        end if
		        prot=NthField(ft.FeatureText,separProd,2)                  'Product
		        prot=NthField(prot,separ2,1)
		        TitleLine=TitleLine+" "+prot
		        TitleLine=replaceall(TitleLine,EndOfLine," ")
		        
		        prot=NthField(ft.FeatureText,separTransl,2)                'AA sequence
		        prot=trim(NthField(prot,separ2,1))
		        if prot<>"" then
		          s1.Writeline TitleLine                                      'Write >Title
		          s1.write prot+EndOfLine.unix                                'and AA seq
		        end if
		      end if
		    next
		    
		    s1.close
		    
		  end if
		  
		  Exception err
		    ExceptionHandler(err,"App:gbk2fasta")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GeneticCodesInit()
		  'this routine fills in all the translation tables for all versions of genetic codes, as well as starts and stops.
		  
		  'dim CodonList As String ="AGA,AGG,CGA,CGC,CGG,CGT,CTA,CTC,CTG,CTT,TTA,TTG,AGC,AGT,TCA,TCC,TCG,TCT,GGA,GGC,GGG,GGT,GCA,GCC,GCG,GCT,CCA,CCC,CCG,CCT,ACA,ACC,ACG,ACT,GTA,GTC,GTG,GTT,ATA,ATC,ATT,CAA,CAG,AAC,AAT,AAA,AAG,CAC,CAT,TTC,TTT,GAA,GAG,GAC,GAT,TGC,TGT,TAC,TAT,TGG,ATG,TAA,TAG,TGA"
		  'dim aaList As String ="XRRRRRRLLLLLLSSSSSSGGGGAAAAPPPPTTTTVVVVIIIQQNNKKHHFFEEDDCCYYWM***"
		  'me.gcodes(gCodeNo)=new gCode(CodonList,aaList)
		  
		  dim f As FolderItem
		  Dim stream as TextInputStream
		  dim line As String
		  dim CodeNo,n,m as integer
		  dim starts,stops,base1,base2,base3,Codons,codon,AAs,CodeName as string
		  
		  f = Resources_f.child("Genetic.codes")
		  if f<>NIL AND f.exists then
		    
		    stream = f.OpenAsTextFile
		    
		    while not stream.EOF
		      line=stream.readLine
		      if leftb(line,14)=">transl_table=" then   'one code type definition starts
		        CodeNo=Val(midb(line,15,2))
		        CodeName=trim(Right(line,lenb(line)-16))
		        line=stream.readLine
		        AAs=trim(NthField(line,"=",2))
		        line=stream.readLine
		        starts=trim(NthField(line,"=",2))
		        line=stream.readLine
		        Base1=trim(NthField(line,"=",2))
		        line=stream.readLine
		        Base2=trim(NthField(line,"=",2))
		        line=stream.readLine
		        Base3=trim(NthField(line,"=",2))
		        Codons=""
		        stops=""
		        for n=1 to 64
		          codon=midb(base1,n,1)+midb(base2,n,1)+midb(base3,n,1)+","
		          Codons=codons+codon
		          if midb(AAs,n,1)="*" then 'stop-codon
		            stops=stops+codon
		          end
		        next
		        
		        gCodes(CodeNo)=new gCode(Codons,AAs)
		        m=CountFields(starts,",")
		        for n=1 to m
		          gCodes(CodeNo).Starts.append NthField(starts,",",n)
		        next
		        m=CountFields(stops,",")-1
		        for n=1 to m
		          gCodes(CodeNo).Stops.append NthField(stops,",",n)
		        next
		        
		        gCodes(CodeNo).Name=CodeName
		      end
		    wend
		    stream.close                     'close enzyme file
		    
		  else
		    msgbox "No file with genetic codes found in "+f.ShellPath+". Translation will be unavailable!"
		    
		  end
		  
		  Exception err
		    ExceptionHandler(err,"Globals:GeneticCodesInit")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetLocus_tag(FeatureText as string) As string
		  'extract locus_tag from feature text
		  
		  dim tagLoc as integer = instrb(FeatureText,"/locus_tag=")
		  dim locus_tag as string =rightb(FeatureText,lenb(FeatureText)-tagLoc-11)
		  
		  return trim(nthField(locus_tag,chr(34),1))
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetResources_f()
		  #if TargetMacOS then 'Bundle ↠ Contents ↠ Resources
		    
		    #if DebugBuild then
		      #If XojoVersion < 2015.03 Then
		        msgbox "Running with Xojo "+str(XojoVersion)
		      #endif
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
		    #If XojoVersion >= 2015.03 Then
		      'folders now include app name
		      #if DebugBuild then
		        resources_f=GetFolderItem("").Child("DebugSigmoID Resources")
		      #else
		        resources_f=GetFolderItem("").Child("SigmoID Resources")
		      #endif
		      if resources_f=NIL then
		        msgbox "Can't access Resources folder!"
		      end if
		      
		    #else
		      resources_f=GetFolderItem("").Child("Resources")
		      if resources_f=NIL then
		        msgbox "Can't access Resources folder!"
		      end if
		    #endif
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetShortPathName(LongPathName As String) As string
		  dim lpShort,lpLong As MemoryBlock
		  dim iBuff,iLen As Integer
		  
		  #IF TargetWin32 then
		    //Declare Function GetShortPathName
		    //Lib "kernel32" Alias "GetShortPathNameA" (
		    //ByVal lpszLongPath As String, --> change to ptr
		    //ByVal lpszShortPath As String,--> change to ptr
		    //ByVal cchBuffer As Long) --> Integer
		    //As Long --> Integer
		    // *** look out for line breaks... :
		    Declare Function GetShortPathName Lib "kernel32" Alias "GetShortPathNameA" (ByVal lpszLongPath As Ptr, ByVal lpszShortPath As Ptr, ByVal cchBuffer As Integer) As Integer
		    // *** End of line breaks
		    // lpszLongPath =long pointer to block in memory ;
		    // lpszShortPath =1-- ditto ;
		    // cchBuffer =>ize of resiving block ;
		    lpShort = newmemoryBlock(255)
		    lpLong = newMemoryBlock(len(LongPathName)+2)
		    iBuff = 254
		    if right(LongPathName,1) <> "\" then
		      lpLong.CString(0) = LongPathName+"\"
		    else
		      lpLong.CString(0) = LongPathName
		    end if
		    iLen = GetShortPathName(lpLong,lpShort,iBuff)
		    
		    if iLen > 0 then
		      Return lpShort.CString(0)
		    else
		      return "### Error Getting GetShortPathName: " + LongPathName
		    end if
		    
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HaveRedundancies(gen As string) As Boolean
		  'this is slow -
		  'can use memoryblocks instead of strings -
		  'chrB(memoryblock.byte) is faster than midB(gene,n,1),
		  'and I may not even need to use chrB()
		  dim n,last,GeneLength as integer
		  dim ch,gene as string
		  
		  '#pragma disableBackgroundTasks
		  '#pragma disableBoundsChecking
		  
		  'remove spaces, numerals and convert all to upper case
		  gene=UpperCase(gen)
		  'gene2=""
		  ''t=ticks
		  GeneLength=lenB(gene)
		  last=1
		  'find first illegal, write up to it, skip, find next and so on...
		  for n=1 to GeneLength
		    'set ch to character n of gene
		    ch=midB(gene,n,1)
		    if instrB("ACTG",ch)=0 then
		      return true
		    end
		  next
		  return false
		  
		  Exception err
		    ExceptionHandler(err,"Globals:HaveRedundancies")
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function hmmbuild(infilePath as string, outfilePath as string) As boolean
		  '/usr/local/bin/hmmbuild --informat afa --dna hrpl6.hmm hrpl6.fasta
		  
		  
		  '# hmmbuild :: profile HMM construction from multiple sequence alignments
		  '# HMMER 3.1b1 (May 2013); http://hmmer.org/
		  '# Copyright (C) 2013 Howard Hughes Medical Institute.
		  '# Freely distributed under the GNU General Public License (GPLv3).
		  '# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
		  'Usage: hmmbuild [-options] <hmmfile_out> <msafile>
		  '
		  'Basic options:
		  '-h     : show brief help on version and usage
		  '-n <s> : name the HMM <s>
		  '-o <f> : direct summary output to file <f>, not stdout
		  '-O <f> : resave annotated, possibly modified MSA to file <f>
		  '
		  'Options for selecting alphabet rather than guessing it:
		  '--amino : input alignment is protein sequence data
		  '--dna   : input alignment is DNA sequence data
		  '--rna   : input alignment is RNA sequence data
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
		  'Alternative effective sequence weighting strategies:
		  '--eent       : adjust eff seq # to achieve relative entropy target  [default]
		  '--eclust     : eff seq # is # of single linkage clusters
		  '--enone      : no effective seq # weighting: just use nseq
		  '--eset <x>   : set eff seq # for all models to <x>
		  '--ere <x>    : for --eent: set minimum rel entropy/position to <x>
		  '--esigma <x> : for --eent: set sigma param to <x>  [45.0]
		  '--eid <x>    : for --eclust: set fractional identity cutoff to <x>  [0.62]
		  '
		  'Alternative prior strategies:
		  '--pnone    : don't use any prior; parameters are frequencies
		  '--plaplace : use a Laplace +1 prior
		  '
		  'Handling single sequence inputs:
		  '--singlemx    : use substitution score matrix for single-sequence inputs
		  '--popen <x>   : gap open probability (with --singlemx)
		  '--pextend <x> : gap extend probability (with --singlemx)
		  '--mx <s>      : substitution score matrix (built-in matrices, with --singlemx)
		  '--mxfile <f>  : read substitution score matrix from file <f> (with --singlemx)
		  '
		  'Control of E-value calibration:
		  '--EmL <n> : length of sequences for MSV Gumbel mu fit  [200]  (n>0)
		  '--EmN <n> : number of sequences for MSV Gumbel mu fit  [200]  (n>0)
		  '--EvL <n> : length of sequences for Viterbi Gumbel mu fit  [200]  (n>0)
		  '--EvN <n> : number of sequences for Viterbi Gumbel mu fit  [200]  (n>0)
		  '--EfL <n> : length of sequences for Forward exp tail tau fit  [100]  (n>0)
		  '--EfN <n> : number of sequences for Forward exp tail tau fit  [200]  (n>0)
		  '--Eft <x> : tail mass for Forward exponential tail tau fit  [0.04]  (0<x<1)
		  '
		  'Other options:
		  '--cpu <n>          : number of parallel CPU workers for multithreads
		  '--stall            : arrest after start: for attaching debugger to process
		  '--informat <s>     : assert input alifile is in format <s> (no autodetect)
		  '--seed <n>         : set RNG seed to <n> (if 0: one-time arbitrary seed)  [42]
		  '--w_beta <x>       : tail mass at which window length is determined
		  '--w_length <n>     : window length
		  '--maxinsertlen <n> : pretend all inserts are length <= <n>
		  
		  dim cli as string
		  Dim sh As Shell
		  
		  'Usage: hmmbuild [-options] <hmmfile_out> <msafile>
		  cli=hmmbuildpath+" --dna "+outfilepath+" "+infilepath
		  
		  
		  
		  sh=New Shell
		  sh.mode=0
		  sh.TimeOut=-1
		  sh.execute ("bash --login -c '"+cli+"'")
		  If sh.errorCode=0 then
		    return true
		  else
		    LogoWin.WriteToSTDOUT (EndOfLine + "hmmbuild error code: "+Str(sh.errorCode)+EndOfLine)
		    LogoWin.WriteToSTDOUT sh.result
		    return false
		  end if
		  
		  Exception err
		    ExceptionHandler(err,"Globals:Hmmbuild")
		    
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HMMsearchWithCRtags(CDSfile as folderitem, HMMfilePath as string) As string
		  Dim HmmResultFile As folderitem
		  dim hmmSearchRes, cli, table as string
		  dim instream as TextInputStream
		  dim sh as new shell
		  
		  
		  'store the CDSs as a string for further use:
		  instream=CDSfile.OpenAsTextFile
		  
		  if instream<>nil then
		    CDSseqs=replaceall(trim(instream.ReadAll),EndOfLine.unix,"")
		    instream.close
		  end if
		  
		  HmmResultFile=TemporaryFolder.Child("alignments.table")
		  if HmmResultFile<>nil then
		    if HmmResultFile.exists then
		      HmmResultFile.Delete
		    end if
		    'LogoWin.WriteToSTDOUT (EndofLine.unix+"Running hmmsearch...")
		    dim HmmSearchPath as string = replace(nhmmerPath,"nhmmer","hmmsearch")
		    
		    cli=HmmSearchPath+" --cut_ga --notextw -A "+HmmResultFile.ShellPath+" "+HMMfilePath+" "+CDSfile.ShellPath
		    
		    sh.execute ("bash --login -c '"+cli+"'")
		    If sh.errorCode=0 then
		      'LogoWin.WriteToSTDOUT (" OK"+EndofLine.unix)
		      
		      instream=HmmResultFile.OpenAsTextFile
		      
		      if instream<>nil then         'save hmmsearch results
		        table=trim(instream.ReadAll)
		        instream.close
		        'hmmSearchRes="HMM file used: "+HMMfilePath+EndOfLine
		        hmmSearchRes=hmmSearchRes+"CRtag positions: " +CRtagPositions+EndOfLine
		        hmmSearchRes=hmmSearchRes+GetCRtags(sh.Result,Table,CRtagPositions)
		        
		        return HmmSearchRes
		      end if
		      
		      
		      
		    else
		      LogoWin.WriteToSTDOUT sh.Result
		      return ""
		    End If
		  else
		    LogoWin.WriteToSTDOUT (EndofLine.unix+"Can't create temporary file, have to abort search.")
		    return ""
		  end if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HMMsearchWithCRtagsCR(CDSfile as folderitem, HMMfilePath as string) As string
		  dim HmmResultFile as folderitem
		  dim hmmSearchRes, cli, table, aline as string
		  dim instream, tis as TextInputStream
		  dim sh as new shell
		  dim CRTAG as string = ""
		  dim f as FolderItem 
		  
		  'if  ScanGenomeWin.firstrun=0 then
		  'ScanGenomeWin.firstrun=1
		  'else
		  f= GetFolderItem (HMMfilePath, FolderItem.PathTypeNative)
		  'end
		  tis=f.OpenAsTextFile
		  if tis<>nil then
		    while CRTAG=""
		      aLine=tis.ReadLine     'hmmfile
		      if left(aline,6)="CRTAG " then
		        CRtag=NthField(aLine,"CRTAG ",2)
		        exit
		      end if
		    wend
		    CRtagPositions=CRtag
		  end if
		  tis.close
		  
		  'store the CDSs as a string for further use:
		  instream=CDSfile.OpenAsTextFile
		  
		  if instream<>nil then
		    CDSseqs=replaceall(trim(instream.ReadAll),EndOfLine.unix,"")
		    instream.close
		  end if
		  
		  HmmResultFile=TemporaryFolder.Child("alignments.table")
		  if HmmResultFile<>nil then
		    if HmmResultFile.exists then
		      HmmResultFile.Delete
		    end if
		    'LogoWin.WriteToSTDOUT (EndofLine.unix+"Running hmmsearch...")
		    dim HmmSearchPath as string = replace(nhmmerPath,"nhmmer","hmmsearch")
		    if instr(HMMfilePath, " ")>0 then
		      HMMfilePath=chr(34)+HMMfilePath+chr(34)
		    end
		    
		    cli=HmmSearchPath+" --cut_ga --notextw -A "+HmmResultFile.ShellPath+" "+HMMfilePath+" "+CDSfile.ShellPath
		    
		    sh.execute ("bash --login -c '"+cli+"'")
		    //LogoWin.WriteToSTDOUT (EndofLine.UNIX+str(sh.Result)+EndOfLine.UNIX)
		    If sh.errorCode=0 then
		      'LogoWin.WriteToSTDOUT (" OK"+EndofLine.unix)
		      
		      instream=HmmResultFile.OpenAsTextFile
		      
		      if instream<>nil then         'save hmmsearch results
		        table=trim(instream.ReadAll)
		        instream.close
		        'hmmSearchRes="HMM file used: "+HMMfilePath+EndOfLine
		        hmmSearchRes=hmmSearchRes+"CRtag positions: " +CRtagPositions+EndOfLine
		        hmmSearchRes=hmmSearchRes+GetCRtags(sh.Result,Table,CRtagPositions)
		        
		        return HmmSearchRes
		      end if
		      
		      
		      
		    else
		      LogoWin.WriteToSTDOUT sh.Result
		      return ""
		    End If
		  else
		    LogoWin.WriteToSTDOUT (EndofLine.unix+"Can't create temporary file, have to abort search.")
		    return ""
		  end if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HTTPerror(StatusCode as integer, ShowDialog as boolean) As string
		  dim ErrName, Desc As String
		  
		  select case StatusCode
		  case 100 
		    ErrName="Continue"
		    Desc="The server has received the request headers and the client should proceed to send the request body (in the case of a request for which a body needs to be sent; for example, a POST request). Sending a large request body to a server after a request has been rejected for inappropriate headers would be inefficient. To have a server check the request's headers, a client must send Expect: 100-continue as a header in its initial request and receive a 100 Continue status code in response before sending the body. The response 417 Expectation Failed indicates the request should not be continued."
		  case 101 
		    ErrName="Switching Protocols"
		    Desc="The requester has asked the server to switch protocols and the server has agreed to do so."
		  case 102 
		    ErrName="Processing (WebDAV; RFC 2518)"
		    Desc="A WebDAV request may contain many sub-requests involving file operations, requiring a long time to complete the request. This code indicates that the server has received and is processing the request, but no response is available yet.[6] This prevents the client from timing out and assuming the request was lost."
		    
		    '2xx Success
		    '
		    'This class of status codes indicates the action requested by the client was received, understood, accepted, and processed successfully.[2]
		    '
		    '200 OK
		    'Standard response for successful HTTP requests. The actual response will depend on the request method used. In a GET request, the response will contain an entity corresponding to the requested resource. In a POST request, the response will contain an entity describing or containing the result of the action.[7]
		    '201 Created
		    'The request has been fulfilled, resulting in the creation of a new resource.[8]
		    '202 Accepted
		    'The request has been accepted for processing, but the processing has not been completed. The request might or might not be eventually acted upon, and may be disallowed when processing occurs.[9]
		    '203 Non-Authoritative Information (since HTTP/1.1)
		    'The server is a transforming proxy (e.g. a Web accelerator) that received a 200 OK from its origin, but is returning a modified version of the origin's response.[10][11]
		    '204 No Content
		    'The server successfully processed the request and is not returning any content.[12]
		    '205 Reset Content
		    'The server successfully processed the request, but is not returning any content. Unlike a 204 response, this response requires that the requester reset the document view.[13]
		    '206 Partial Content (RFC 7233)
		    'The server is delivering only part of the resource (byte serving) due to a range header sent by the client. The range header is used by HTTP clients to enable resuming of interrupted downloads, or split a download into multiple simultaneous streams.[14]
		    '207 Multi-Status (WebDAV; RFC 4918)
		    'The message body that follows is an XML message and can contain a number of separate response codes, depending on how many sub-requests were made.[15]
		    '208 Already Reported (WebDAV; RFC 5842)
		    'The members of a DAV binding have already been enumerated in a previous reply to this request, and are not being included again.[16]
		    '226 IM Used (RFC 3229)
		    'The server has fulfilled a request for the resource, and the response is a representation of the result of one or more instance-manipulations applied to the current instance.[17]
		    
		    
		  case 300 
		    ErrName="Multiple Choices"
		    Desc="Indicates multiple options for the resource from which the client may choose (via agent-driven content negotiation). For example, this code could be used to present multiple video format options, to list files with different filename extensions, or to suggest word-sense disambiguation."
		  case 301 
		    ErrName="Moved Permanently"
		    Desc="This and all future requests should be directed to the given URI."
		  case 302 
		    ErrName="Found"
		    Desc="This is an example of industry practice contradicting the standard. The HTTP/1.0 specification (RFC 1945) required the client to perform a temporary redirect (the original describing phrase was 'Moved Temporarily'), but popular browsers implemented 302 with the functionality of a 303 See Other. Therefore, HTTP/1.1 added status codes 303 and 307 to distinguish between the two behaviours. However, some Web applications and frameworks use the 302 status code as if it were the 303."
		  case 303 
		    ErrName="See Other (since HTTP/1.1)"
		    Desc="The response to the request can be found under another URI using a GET method. When received in response to a POST (or PUT/DELETE), the client should presume that the server has received the data and should issue a redirect with a separate GET message."
		  case 304 
		    ErrName="Not Modified (RFC 7232)"
		    Desc="Indicates that the resource has not been modified since the version specified by the request headers If-Modified-Since or If-None-Match. In such case, there is no need to retransmit the resource since the client still has a previously-downloaded copy."
		  case 305 
		    ErrName="Use Proxy (since HTTP/1.1)"
		    Desc="The requested resource is available only through a proxy, the address for which is provided in the response. Many HTTP clients (such as Mozilla[26] and Internet Explorer) do not correctly handle responses with this status code, primarily for security reasons."
		  case 306 
		    ErrName="Switch Proxy"
		    Desc="No longer used. Originally meant 'Subsequent requests should use the specified proxy'."
		  case 307 
		    ErrName="Temporary Redirect (since HTTP/1.1)"
		    Desc="In this case, the request should be repeated with another URI; however, future requests should still use the original URI. In contrast to how 302 was historically implemented, the request method is not allowed to be changed when reissuing the original request. For example, a POST request should be repeated using another POST request."
		  case 308 
		    ErrName="Permanent Redirect (RFC 7538)"
		    Desc="The request and all future requests should be repeated using another URI. 307 and 308 parallel the behaviors of 302 and 301, but do not allow the HTTP method to change. So, for example, submitting a form to a permanently redirected resource may continue smoothly."
		    
		    
		  case 400 
		    ErrName="Bad Request"
		    Desc="The server cannot or will not process the request due to an apparent client error (e.g., malformed request syntax, too large size, invalid request message framing, or deceptive request routing)."
		  case 401 
		    ErrName="Unauthorized (RFC 7235)"
		    Desc="Similar to 403 Forbidden, but specifically for use when authentication is required and has failed or has not yet been provided. The response must include a WWW-Authenticate header field containing a challenge applicable to the requested resource. See Basic access authentication and Digest access authentication.[33] 401 semantically means 'unauthenticated', i.e. the user does not have the necessary credentials. Note: Some sites issue HTTP 401 when an IP address is banned from the website (usually the website domain) and that specific address is refused permission to access a website."
		  case 402 
		    ErrName="Payment Required"
		    Desc="Reserved for future use. The original intention was that this code might be used as part of some form of digital cash or micropayment scheme, but that has not happened, and this code is not usually used. Google Developers API uses this status if a particular developer has exceeded the daily limit on requests."
		  case 403 
		    ErrName="Forbidden"
		    Desc="The request was valid, but the server is refusing action. The user might not have the necessary permissions for a resource."
		  case 404 
		    ErrName="Not Found"
		    Desc="The requested resource could not be found but may be available in the future. Subsequent requests by the client are permissible."
		  case 405 
		    ErrName="Method Not Allowed"
		    Desc="A request method is not supported for the requested resource; for example, a GET request on a form that requires data to be presented via POST, or a PUT request on a read-only resource."
		  case 406 
		    ErrName="Not Acceptable"
		    Desc="The requested resource is capable of generating only content not acceptable according to the Accept headers sent in the request.[37] See Content negotiation."
		  case 407 
		    ErrName="Proxy Authentication Required (RFC 7235)"
		    Desc="The client must first authenticate itself with the proxy."
		  case 408 
		    ErrName="Request Time-out"
		    Desc="The server timed out waiting for the request. According to HTTP specifications: 'The client did not produce a request within the time that the server was prepared to wait. The client MAY repeat the request without modifications at any later time'."
		  case 409 
		    ErrName="Conflict"
		    Desc="Indicates that the request could not be processed because of conflict in the request, such as an edit conflict between multiple simultaneous updates."
		  case 410 
		    ErrName="Gone"
		    Desc="Indicates that the resource requested is no longer available and will not be available again. This should be used when a resource has been intentionally removed and the resource should be purged. Upon receiving a 410 status code, the client should not request the resource in the future. Clients such as search engines should remove the resource from their indices. Most use cases do not require clients and search engines to purge the resource, and a '404 Not Found' may be used instead."
		  case 411 
		    ErrName="Length Required"
		    Desc="The request did not specify the length of its content, which is required by the requested resource."
		  case 412 
		    ErrName="Precondition Failed (RFC 7232)"
		    Desc="The server does not meet one of the preconditions that the requester put on the request."
		  case 413 
		    ErrName="Payload Too Large (RFC 7231)"
		    Desc="The request is larger than the server is willing or able to process. Previously called 'Request Entity Too Large'."
		  case 414 
		    ErrName="URI Too Long (RFC 7231)"
		    Desc="The URI provided was too long for the server to process. Often the result of too much data being encoded as a query-string of a GET request, in which case it should be converted to a POST request Called 'Request-URI Too Long' previously."
		  case 415 
		    ErrName="Unsupported Media Type"
		    Desc="The request entity has a media type which the server or resource does not support. For example, the client uploads an image as image/svg+xml, but the server requires that images use a different format."
		  case 416 
		    ErrName="Range Not Satisfiable (RFC 7233)"
		    Desc="The client has asked for a portion of the file (byte serving), but the server cannot supply that portion. For example, if the client asked for a part of the file that lies beyond the end of the file. Called 'Requested Range Not Satisfiable' previously."
		  case 417 
		    ErrName="Expectation Failed"
		    Desc="The server cannot meet the requirements of the Expect request-header field."
		  case 418 
		    ErrName="I'm a teapot (RFC 2324)"
		    Desc="This code was defined in 1998 as one of the traditional IETF April Fools' jokes, in RFC 2324, Hyper Text Coffee Pot Control Protocol, and is not expected to be implemented by actual HTTP servers. The RFC specifies this code should be returned by teapots requested to brew coffee. This HTTP status is used as an Easter egg in some websites, including Google.com."
		  case 421 
		    ErrName="Misdirected Request (RFC 7540)"
		    Desc="The request was directed at a server that is not able to produce a response (for example because a connection reuse)."
		  case 422 
		    ErrName="Unprocessable Entity (WebDAV; RFC 4918)"
		    Desc="The request was well-formed but was unable to be followed due to semantic errors."
		  case 423 
		    ErrName="Locked (WebDAV; RFC 4918)"
		    Desc="The resource that is being accessed is locked."
		  case 424 
		    ErrName="Failed Dependency (WebDAV; RFC 4918)"
		    Desc="The request failed due to failure of a previous request (e.g., a PROPPATCH)."
		  case 426 
		    ErrName="Upgrade Required"
		    Desc="The client should switch to a different protocol such as TLS/1.0, given in the Upgrade header field."
		  case 428 
		    ErrName="Precondition Required (RFC 6585)"
		    Desc="The origin server requires the request to be conditional. Intended to prevent the 'lost update' problem, where a client GETs a resource's state, modifies it, and PUTs it back to the server, when meanwhile a third party has modified the state on the server, leading to a conflict."
		  case 429 
		    ErrName="Too Many Requests (RFC 6585)"
		    Desc="The user has sent too many requests in a given amount of time. Intended for use with rate-limiting schemes."
		  case 431 
		    ErrName="Request Header Fields Too Large (RFC 6585)"
		    Desc="The server is unwilling to process the request because either an individual header field, or all the header fields collectively, are too large."
		  case 451 
		    ErrName="Unavailable For Legal Reasons (RFC 7725)"
		    Desc="A server operator has received a legal demand to deny access to a resource or to a set of resources that includes the requested resource. The code 451 was chosen as a reference to the novel Fahrenheit 451."
		    
		  case 500 
		    ErrName="Internal Server Error"
		    Desc="A generic error message, given when an unexpected condition was encountered and no more specific message is suitable."
		  case 501 
		    ErrName="Not Implemented"
		    Desc="The server either does not recognize the request method, or it lacks the ability to fulfill the request. Usually this implies future availability (e.g., a new feature of a web-service API)."
		  case 502 
		    ErrName="Bad Gateway"
		    Desc="The server was acting as a gateway or proxy and received an invalid response from the upstream server."
		  case 503 
		    ErrName="Service Unavailable"
		    Desc="The server is currently unavailable (because it is overloaded or down for maintenance). Generally, this is a temporary state."
		  case 504 
		    ErrName="Gateway Time-out"
		    Desc="The server was acting as a gateway or proxy and did not receive a timely response from the upstream server."
		  case 505 
		    ErrName="HTTP Version Not Supported"
		    Desc="The server does not support the HTTP protocol version used in the request."
		  case 506 
		    ErrName="Variant Also Negotiates (RFC 2295)"
		    Desc="Transparent content negotiation for the request results in a circular reference."
		  case 507 
		    ErrName="Insufficient Storage (WebDAV; RFC 4918)"
		    Desc="The server is unable to store the representation needed to complete the request."
		  case 508 
		    ErrName="Loop Detected (WebDAV; RFC 5842)"
		    Desc="The server detected an infinite loop while processing the request (sent in lieu of 208 Already Reported)."
		  case 510 
		    ErrName="Not Extended (RFC 2774)"
		    Desc="Further extensions to the request are required for the server to fulfill it."
		  case 511 
		    ErrName="Network Authentication Required (RFC 6585)"
		    Desc="The client needs to authenticate to gain network access. Intended for use by intercepting proxies used to control access to the network (e.g., 'captive portals' used to require agreement to Terms of Service before granting full Internet access via a Wi-Fi hotspot)."
		    
		    
		    'Unofficial codes[edit]
		    'The following codes are not specified by any standard.
		    '
		    '103 Checkpoint
		    'Used in the resumable requests proposal to resume aborted PUT or POST requests.[65]
		    '103 Early Hints
		    'Used to return some response headers before entire HTTP response.[66][67]
		    '420 Method Failure (Spring Framework)
		    'A deprecated response used by the Spring Framework when a method has failed.[68]
		    '420 Enhance Your Calm (Twitter)
		    'Returned by version 1 of the Twitter Search and Trends API when the client is being rate limited; versions 1.1 and later use the 429 Too Many Requests response code instead.[69]
		    '450 Blocked by Windows Parental Controls (Microsoft)
		    'The Microsoft extension code indicated when Windows Parental Controls are turned on and are blocking access to the given webpage.[70]
		    '498 Invalid Token (Esri)
		    'Returned by ArcGIS for Server. Code 498 indicates an expired or otherwise invalid token.[71]
		    '499 Token Required (Esri)
		    'Returned by ArcGIS for Server. Code 499 indicates that a token is required but was not submitted.[71]
		    '509 Bandwidth Limit Exceeded (Apache Web Server/cPanel)
		    'The server has exceeded the bandwidth specified by the server administrator; this is often used by shared hosting providers to limit the bandwidth of customers.[72]
		    '530 Site is frozen
		    'Used by the Pantheon web platform to indicate a site that has been frozen due to inactivity.[73]
		    '598 (Informal convention) Network read timeout error
		    'Used by some HTTP proxies to signal a network read timeout behind the proxy to a client in front of the proxy.[74][75]
		    '599 (Informal convention) Network connect timeout error
		    'Used to indicate when the connection to the network times out.[76][citation needed]
		    'Internet Information Services[edit]
		    'The Internet Information Services expands the 4xx error space to signal errors with the client's request.
		    '
		    '440 Login Time-out
		    'The client's session has expired and must log in again.[77]
		    '449 Retry With
		    'The server cannot honour the request because the user has not provided the required information.[78]
		    '451 Redirect
		    'Used in Exchange ActiveSync when either a more efficient server is available or the server cannot access the users' mailbox.[79] The client is expected to re-run the HTTP AutoDiscover operation to find a more appropriate server.[80]
		    'nginx[edit]
		    'The nginx web server software expands the 4xx error space to signal issues with the client's request.[81][82] These are only used for logging purposes, no actual response is sent with these codes.
		    '
		    '444 No Response
		    'Used to indicate that the server has returned no information to the client and closed the connection.
		    '495 SSL Certificate Error
		    'An expansion of the 400 Bad Request response code, used when the client has provided an invalid client certificate.
		    '496 SSL Certificate Required
		    'An expansion of the 400 Bad Request response code, used when a client certificate is required but not provided.
		    '497 HTTP Request Sent to HTTPS Port
		    'An expansion of the 400 Bad Request response code, used when the client has made a HTTP request to a port listening for HTTPS requests.
		    '499 Client Closed Request
		    'Used when the client has closed the request before the server could send a response.
		    'Cloudflare[edit]
		    'Cloudflare's reverse proxy service expands the 5xx series of errors space to signal issues with the origin server.[83]
		    '
		    '520 Unknown Error
		    'The 520 error is used as a "catch-all response for when the origin server returns something unexpected", listing connection resets, large headers, and empty or invalid responses as common triggers.
		    '521 Web Server Is Down
		    'The origin server has refused the connection from Cloudflare.
		    '522 Connection Timed Out
		    'Cloudflare could not negotiate a TCP handshake with the origin server.
		    '523 Origin Is Unreachable
		    'Cloudflare could not reach the origin server; for example, if the DNS records for the origin server are incorrect.
		    '524 A Timeout Occurred
		    'Cloudflare was able to complete a TCP connection to the origin server, but did not receive a timely HTTP response.
		    '525 SSL Handshake Failed
		    'Cloudflare could not negotiate a SSL/TLS handshake with the origin server.
		    '526 Invalid SSL Certificate
		    'Cloudflare could not validate the SSL/TLS certificate that the origin server presented.
		    '527 Railgun Error
		    'Error 527 indicates that the requests timeout or failed after the WAN connection has been established
		  else
		    ErrName="Unknown HTTP error"
		  end
		  
		  
		  Dim d as New MessageDialog  //declare the MessageDialog object
		  Dim b as MessageDialogButton //for handling the result
		  d.icon=MessageDialog.GraphicCaution   //display warning icon
		  d.ActionButton.Caption=kClose
		  d.CancelButton.Visible=false     //hide the Cancel button
		  'd.CancelButton.Caption=kCancel
		  d.AlternateActionButton.Visible=false   //show the "Don't Save" button
		  
		  d.Message=kHTTPerror+str(StatusCode)+": "+ErrName
		  d.Explanation=Desc
		  
		  If ShowDialog then
		    b=d.ShowModal     //display the dialog
		  End If
		  
		  dim ret as string
		  ret=EndOfLine.unix+d.message+EndOfLine.unix+desc+EndOfLine.unix
		  
		  return ret
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function JSON2Fasta(JSONin as JSONItem) As string
		  dim sites,site as JSONItem
		  dim FastaHeader, FastaSequence, AllFasta as string
		  dim n as integer
		  
		  sites=JSONin.Value("site")
		  if sites.IsArray then
		    for n=0 to sites.Count-1
		      if sites(n) isa JSONItem then
		        'should contain smth like:
		        '{"geneLocusTag":"SO_0443","geneVIMSSId":"199635","position":"-94","regulonId":"6423","score":"6.9617","sequence":"ACCTTGGAGTAGGCTCCAAGGT"}
		        site=new JSONItem
		        site=sites(n)
		        Try
		          FastaSequence=""
		          FastaHeader=""
		          FastaSequence=site.value("sequence")
		          FastaHeader=">"+site.value("geneLocusTag")   'this key is missing quite often in RegPrecise data
		          FastaHeader=FastaHeader+" geneVIMSSId="+site.value("geneVIMSSId")
		          FastaHeader=FastaHeader+" regulonId="+site.value("regulonId")
		          FastaHeader=FastaHeader+" Pos="+site.value("position")
		          FastaHeader=FastaHeader+" Score="+site.value("score")
		          AllFasta=AllFasta+FastaHeader+EndOfLine+FastaSequence+EndOfLine
		        Catch err As KeyNotFoundException
		          if FastaSequence<>"" AND FastaHeader <>"" then
		            'there's a problem with one of the JSON keys, but it's not fatal
		            AllFasta=AllFasta+FastaHeader+EndOfLine+FastaSequence+EndOfLine
		          else
		            'JSON error, missing keys occur quite often with RegPrecise data 
		            
		            'Log the error: 
		            LogoWin.WriteToSTDOUT("There was a problem parsing RegPrecise data. Sequence number "+str(n)+" was skipped"+EndOfLine.unix)
		          end if
		        End Try
		        
		        
		      end if
		      
		    next
		    
		    return AllFasta
		    
		  else
		    'single site is of little use for SigmoID!
		    'logowin.WriteToSTDOUT("RegPrecise contains just one site for this regulator. Just ignore it!"+EndOfLine.UNIX)
		    Try
		      FastaSequence=""
		      FastaHeader=""
		      FastaSequence=sites.value("sequence")
		      FastaHeader=">"+sites.value("geneLocusTag")
		      FastaHeader=FastaHeader+" geneVIMSSId="+sites.value("geneVIMSSId")
		      FastaHeader=FastaHeader+" regulonId="+sites.value("regulonId")
		      FastaHeader=FastaHeader+" Pos="+sites.value("position")
		      FastaHeader=FastaHeader+" Score="+sites.value("score")
		      AllFasta=AllFasta+FastaHeader+EndOfLine+FastaSequence+EndOfLine
		    Catch err As KeyNotFoundException
		      if FastaSequence<>"" AND FastaHeader <>"" then
		        'there's a problem with one of the JSON keys, but it's not fatal
		        AllFasta=AllFasta+FastaHeader+EndOfLine+FastaSequence+EndOfLine
		      else
		        'Serious JSON error
		        MsgBox("There was a problem parsing RegPrecise data. Sequence number "+str(n)+" was skipped")
		      end if
		    End Try
		    return AllFasta
		  end if
		  Exception err
		    ExceptionHandler(err,"RegPreciseWin:JSON2Fasta")
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function LastField(extends s as string, separator as string) As string
		  // Replacement for the String.LastField(separator As String) As String function added in 2019r31
		  
		  'Returns the last field from a string of data. The first field is numbered 1. If you need to parse binary data, use a MemoryBlock instead
		  
		  Dim n As Integer
		  n=CountFields(s,separator)
		  
		  return NthField(s,separator,n)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function log2(numbr as double) As double
		  'log2(X)=ln(X)/ln(2)
		  'ln in Xojo is log
		  
		  const ln2 as double = 0.693147180559945
		  
		  if numbr=0 then
		    return 0  'that's incorrect mathematically, but required for proper Iseq calculation
		  else
		    return log(numbr)/ln2
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function LogoFromPWM(PWMdata as string) As picture
		  // Expects raw PWM data without header/trailer like this:
		  ' 0.166667 0.000000 0.000000 0.833333
		  ' 0.000000 0.833333 0.166667 0.000000
		  ' 0.000000 0.000000 1.000000 0.000000
		  ' 0.000000 1.000000 0.000000 0.000000
		  
		  ' no empty lines before/after the PWM!
		  
		  // Information content per position as defined by Schneider et al, 1986
		  '
		  ' Ii=2+sum(Fb,i*log2(Fb,i)),
		  '
		  'where i is the position within site, b refers to each of the four bases,
		  'and Fb,i is the frequency of each base at that position
		  
		  
		  dim baseX, currentX as integer
		  dim entropy, LetterHeight, baseY, nextY,letterData As double
		  dim posarray(4),letterName as string
		  dim PWMarr(-1) as string
		  dim LogoPic As picture
		  
		  dim totalEntropy as double=0
		  
		  baseX= -3
		  baseY=150
		  
		  
		  dim n, SeqLen as integer
		  
		  
		  // PWM data can have different column separators, so some precautions are required
		  
		  PWMdata=ReplaceAll(PWMdata,chr(9), " ")
		  while instr(PWMdata,"  ")>0
		    PWMdata=ReplaceAll(PWMdata,"  ", " ")
		  wend
		  PWMdata=trim(PWMdata)
		  
		  'LogoData is an array of base counts at numbered positions
		  
		  'determine PWM length
		  PWMarr=split(PWMdata,EndOfLine)
		  SeqLen=UBound(PWMarr)+1
		  
		  
		  
		  
		  
		  LogoPic=new Picture (30*(SeqLen+1),170,32)
		  LogoPic.Transparent=1
		  
		  dim pA, pC, pG, pT As Double
		  
		  for n=0 to SeqLen-1
		    pA=val(NthField(trim(PWMarr(n))," ",1))
		    pC=val(NthField(trim(PWMarr(n))," ",2))
		    pG=val(NthField(trim(PWMarr(n))," ",3))
		    pT=val(NthField(trim(PWMarr(n))," ",4))
		    
		    'combine letter names with frequencies for sorting
		    posarray(1)=str(pA*1000000)+"A"
		    posarray(2)=str(pC*1000000)+"C"
		    posarray(3)=str(pG*1000000)+"G"
		    posarray(4)=str(pT*1000000)+"T"
		    posarray.Sort
		    
		    entropy=2
		    entropy=entropy+pA*log2(pA)
		    entropy=entropy+pC*log2(pC)
		    entropy=entropy+pG*log2(pG)
		    entropy=entropy+pT*log2(pT)
		    
		    totalEntropy=totalEntropy+entropy
		    
		    
		    'lowest letter
		    letterData=val(posarray(1))/1000000
		    letterName=right(posarray(1),1)
		    LetterHeight=70*entropy*letterData
		    NextY=baseY-letterheight
		    CurrentX=baseX+(n+1)*30
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
		    letterData=val(posarray(2))/1000000
		    letterName=right(posarray(2),1)
		    LetterHeight=70*entropy*letterData
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
		    letterData=val(posarray(3))/1000000
		    letterName=right(posarray(3),1)
		    LetterHeight=70*entropy*letterData
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
		    letterData=val(posarray(4))/1000000
		    letterName=right(posarray(4),1)
		    LetterHeight=70*entropy*letterData
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
		  LogoPic.graphics.DrawLine(baseX+25,BaseY+3,baseX+30*(n+1),BaseY+3)
		  for n=1 to Seqlen
		    LogoPic.graphics.DrawLine(baseX+15+30*n,BaseY+3,baseX+15+30*n,BaseY+7)
		  next
		  for n=5 to Seqlen step 5
		    LogoPic.graphics.DrawString(str(n),baseX+10+30*n,baseY+20)
		  next
		  
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
		  
		  LocalMotifCollectionsWin.InfoBits=totalEntropy
		  
		  
		  return LogoPic
		  
		  Exception err
		    ExceptionHandler(err,"LogoWin:DrawLogo")
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function MakeLogoPic(logoData as string) As picture
		  'Information content per position as defined by Schneider et al, 1986
		  '
		  ' Ii=2+sum(Fb,i*log2(Fb,i)),
		  '
		  'where i is the position within site, b refers to each of the four bases,
		  'and Fb,i is the frequency of each base at that position
		  
		  dim replicas, baseX, currentX,letterData as integer
		  dim entropy, LetterHeight, baseY, nextY,freq As double
		  dim posarray(4),letterName, Acount, Ccount, Gcount, Tcount as string
		  dim totalEntropy as double=0
		  
		  
		  baseX= -3
		  baseY=150
		  
		  
		  dim Acounter(0) as integer
		  dim Ccounter(0) as integer
		  dim Gcounter(0) as integer
		  dim Tcounter(0) as integer
		  dim tis as TextInputStream
		  dim Arow, Achar as string
		  dim n,n2, SeqLen as integer
		  dim LogoDatarr(-1) as string
		  
		  LogoDatarr=split(logoData,EndOfLine.UNIX)
		  
		  'determine seqlength
		  RegPreciseTFcollectionsWin.siteLength=0
		  for n=0 to ubound(logodatarr)-1
		    Arow=trim(LogoDatarr(n)) 'trimming just in case
		    Achar=left(Arow,1)
		    if Achar<>">" then
		      SeqLen=len(Arow)
		      RegPreciseTFcollectionsWin.siteLength=SeqLen
		      exit
		    end if
		    
		  next
		  
		  
		  
		  
		  Redim Acounter(SeqLen)
		  Redim Ccounter(SeqLen)
		  Redim Gcounter(SeqLen)
		  Redim Tcounter(SeqLen)
		  
		  Dim LogoPic As New Picture (30*(SeqLen+1),170,32)
		  LogoPic.Transparent=1
		  
		  for n=0 to ubound(logodatarr)-1
		    Arow=trim(LogoDatarr(n))
		    Achar=left(Arow,1)
		    if Achar<>">" AND len(Arow)>0 then
		      replicas=replicas+1
		      if len(Arow)<>SeqLen then
		        'logowin.WriteToSTDOUT "The sequences are of different lengths!"+EndOfLine.UNIX
		        'WriteToSTDOUT "Can't draw the logo for unaligned sequences, hence just showing them."+EndOfLine.UNIX
		        'LengthsDiffer=true
		        'MEMEdata=""
		        'LogoWin.LogoWinToolbar.Item(4).Enabled=false 'disable 'Palindromise' for unaligned data
		        
		        
		        'should probably return a dummy picture
		        'however, RegPrecise is cheating here: it shows alignment with extra bases deleted!
		        'LogoPic.graphics.TextUnit=FontUnits.pixel
		        LogoPic.graphics.TextSize=48
		        LogoPic.graphics.ForeColor=&c99999900
		        LogoPic.graphics.DrawString("(TFBS lengths differ)",2,120)
		        LengthsDiffer=true
		        RegPreciseTFcollectionsWin.siteLength=0
		        exit
		      else
		        LengthsDiffer=false
		      end if
		      
		      for n2=1 to SeqLen
		        Achar=mid(Arow,n2,1)
		        select case Achar
		        case "A"
		          Acounter(n2)=Acounter(n2)+1
		        case "C"
		          Ccounter(n2)=Ccounter(n2)+1
		        case "G"
		          Gcounter(n2)=Gcounter(n2)+1
		        case "T"
		          Tcounter(n2)=Tcounter(n2)+1
		        case "N"
		          'do nothing
		        case "-"
		          'do nothing
		        case else
		          msgbox "Unexpected non-nucleotide character in input (only ACGTN- allowed)."
		          return LogoPic
		        end select
		      next
		    end if
		    
		  next
		  
		  if not LengthsDiffer then
		    for n=1 to SeqLen
		      'combine letter names with counts for sorting
		      if Acounter(n)=0 AND Ccounter(n)=0 AND Gcounter(n)=0 AND Tcounter(n)=0 then
		        'some sites (e.g. in RegPrecise) have all 'N' positions
		        entropy=0
		      else
		        posarray(1)=format(Acounter(n),"000")+"A"
		        posarray(2)=format(Ccounter(n),"000")+"C"
		        posarray(3)=format(Gcounter(n),"000")+"G"
		        posarray(4)=format(Tcounter(n),"000")+"T"
		        posarray.Sort
		        entropy=2
		        freq=Acounter(n)/replicas
		        entropy=entropy+freq*log2(freq)
		        freq=Ccounter(n)/replicas
		        entropy=entropy+freq*log2(freq)
		        freq=Gcounter(n)/replicas
		        entropy=entropy+freq*log2(freq)
		        freq=Tcounter(n)/replicas
		        entropy=entropy+freq*log2(freq)
		      end if
		      
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
		    LogoPic.graphics.DrawLine(baseX+25,BaseY+3,baseX+30*(n),BaseY+3)
		    for n=1 to Seqlen
		      LogoPic.graphics.DrawLine(baseX+15+30*n,BaseY+3,baseX+15+30*n,BaseY+7)
		    next
		    for n=5 to Seqlen step 5
		      LogoPic.graphics.DrawString(str(n),baseX+10+30*n,baseY+20)
		    next
		    
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
		  end if
		  
		  'return LogoPic
		  
		  'scale the picture down to 60 pixel heigh and stretch it horisontally a bit
		  'dim LogoPicScaled as new Picture (LogoPic.width*50/170,45,32)
		  'LogoPicScaled.Graphics.DrawPicture (LogoPic,0,0,LogoPic.width*50/170,45,0,0,LogoPic.width,LogoPic.Height)
		  
		  Dim LogoPicScaled As New Picture (LogoPic.width*70/170,60,32)
		  LogoPicScaled.Graphics.DrawPicture (LogoPic,0,0,LogoPicScaled.width,LogoPicScaled.height,0,0,LogoPic.width,LogoPic.Height)
		  
		  LogoPicScaled.Transparent=1
		  RegPreciseTFcollectionsWin.InfoBits=totalEntropy
		  return LogoPicScaled
		  
		  Exception err
		    ExceptionHandler(err,"Globals:MakeLogoPic")
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function MEMEconvert(FastaFile as folderitem, Palindromic as boolean) As integer
		  'Converts alignment (fasta format) to minimal MEME format
		  'results written to MEME.txt in the TemporaryFolder
		  
		  'copy alignment out of virtual volume:
		  dim alignment_tmp as folderitem = TemporaryFolder.child("alignment.tmp")
		  if alignment_tmp<>NIL then
		    if alignment_tmp.Exists then
		      alignment_tmp.Delete
		    end if
		    FastaFile.CopyFileTo alignment_tmp
		    
		  else
		    msgbox "Can't create temporary file!"
		    return -1
		  end if
		  
		  
		  'create a file to store MEME results:
		  dim MEMEtmp as folderitem
		  MEMEtmp=TemporaryFolder.child("MEME.txt")
		  FixPath4Windows(MEMEtmp)
		  
		  if MEMEtmp<>NIL then
		    if MEMEtmp.Exists then
		      MEMEtmp.Delete
		    end if
		    
		    
		    'find motif width (required to prevent MEME from cutting off motif edges)
		    dim tis as TextInputStream
		    dim ml as integer
		    dim aline as string
		    
		    tis=FastaFile.OpenAsTextFile
		    
		    if tis<>nil then
		      while not tis.EOF
		        aLine=tis.readLine
		        if left(aLine,1)="A" OR left(aLine,1)="C" OR left(aLine,1)="G" OR left(aLine,1)="T"  then
		          ml=len(aline)
		          exit
		        end if
		      wend
		    end if
		    
		    
		    
		    'actual conversion
		    dim cli as string
		    Dim sh As Shell
		    
		    cli=MEMEpath+" -nmotifs 1 -dna -text -w "+str(ml)+" "
		    if Palindromic then            
		      cli=cli+"-pal -revcomp "
		    end if
		    cli=cli+alignment_tmp.ShellPath
		    cli=cli+" > "+MEMEtmp.ShellPath
		    
		    sh=New Shell
		    sh.mode=0
		    sh.TimeOut=-1
		    Logowin.WriteToSTDOUT (EndofLine+"Running MEME...")
		    sh.execute ("bash --login -c '"+cli+"'")
		    If sh.errorCode=0 then
		      Logowin.WriteToSTDOUT (" OK") '(EndofLine+Sh.Result)
		      
		      'print the result in the log pane:
		      'dim res as FolderItem
		      'dim InStream As  TextInputStream
		      ''res=MEMEtmp.child("meme.txt")
		      'InStream = MEMEtmp.OpenAsTextFile
		      'if InStream<>NIL then
		      'Logowin.WriteToSTDOUT (EndofLine+InStream.ReadAll)
		      'end if
		      'InStream.close
		      return sh.errorCode
		    else
		      Logowin.WriteToSTDOUT (EndofLine+Sh.Result)
		      Logowin.WriteToSTDOUT ("MEME error code: "+Str(sh.errorCode)+EndofLine)
		      return sh.errorCode
		    end if
		    
		  else
		    msgbox "Can't create temporary folder!"
		    return -1
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function MotifLengthsDiffer(AlignmentData as string) As boolean
		  // Check for variable motif lengths in fasta formatted data
		  
		  dim n as integer
		  dim datarr(-1) as string
		  dim aRow, aChar as string
		  dim LengthsDiffer as boolean
		  dim SeqLen as integer
		  
		  datarr=AlignmentData.split(EndOfLine.unix)
		  
		  
		  'determine seqlength
		  for n=0 to ubound(datarr)-1
		    Arow=trim(datarr(n)) 'trimming just in case
		    Achar=left(Arow,1)
		    if Achar<>">" then
		      SeqLen=len(Arow)
		      exit
		    end if
		    
		  next
		  
		  
		  LengthsDiffer=false
		  for n=0 to ubound(datarr)-1
		    Arow=trim(datarr(n))
		    Achar=left(Arow,1)
		    if Achar<>">" AND len(Arow)>0 then
		      if len(Arow)<>SeqLen then
		        LengthsDiffer=true
		        exit
		      end if
		    end if
		  next
		  
		  return LengthsDiffer
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function PosNucWeight(A as Integer, C as integer, G as integer, T as integer) As String
		  'Positional Nucleotide Weight calculated as in Genome Explorer by Mironov et al
		  
		  dim SumN as integer
		  dim Wa,Wc,Wg,Wt,logAve as double
		  dim Wall as string
		  
		  SumN=A+C+G+T
		  
		  logAve=(log2(A/SumN+1/2)+log2(C/SumN+1/2)+log2(G/SumN+1/2)+log2(T/SumN+1/2))/4
		  Wa=log2(A/SumN+1/2)-logAve
		  Wc=log2(C/SumN+1/2)-logAve
		  Wg=log2(G/SumN+1/2)-logAve
		  Wt=log2(T/SumN+1/2)-logAve
		  
		  Wall=str(Wa)+";"+str(Wc)+";"+str(Wg)+";"+str(Wt)
		  return Wall
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function PosNucWeight1(A as Integer, C as integer, G as integer, T as integer) As String
		  'Positional Nucleotide Weight calculated as in Genome Explorer by Mironov et al
		  
		  dim SumN as integer
		  dim Wa,Wc,Wg,Wt,logAve as double
		  dim Wall as string
		  
		  SumN=A+C+G+T
		  
		  logAve=(log(A/SumN+1/2)+log(C/SumN+1/2)+log(G/SumN+1/2)+log(T/SumN+1/2))/4
		  Wa=log(A/SumN+1/2)-logAve
		  Wc=log(C/SumN+1/2)-logAve
		  Wg=log(G/SumN+1/2)-logAve
		  Wt=log(T/SumN+1/2)-logAve
		  
		  Wall=str(Wa)+";"+str(Wc)+";"+str(Wg)+";"+str(Wt)
		  return Wall
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function PosNucWeight2(A as Integer, C as integer, G as integer, T as integer) As String
		  'Positional Nucleotide Weight calculated as in Genome Explorer by Mironov et al
		  
		  dim SumN as integer
		  dim Wa,Wc,Wg,Wt,logAve as double
		  dim Wall as string
		  
		  SumN=A+C+G+T
		  
		  logAve=(log(A+1/2)+log(C+1/2)+log(G+1/2)+log(T+1/2))/4
		  Wa=log(A+1/2)-logAve
		  Wc=log(C+1/2)-logAve
		  Wg=log(G+1/2)-logAve
		  Wt=log(T+1/2)-logAve
		  
		  Wall=str(Wa)+";"+str(Wc)+";"+str(Wg)+";"+str(Wt)
		  return Wall
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function PosNucWeight3(A as Integer, C as integer, G as integer, T as integer) As String
		  'Positional Nucleotide Weight calculated as in Genome Explorer by Mironov et al
		  
		  dim SumN as integer
		  dim Wa,Wc,Wg,Wt,logAve as double
		  dim Wall as string
		  
		  SumN=A+C+G+T
		  
		  logAve=(log2(A+1/2)+log2(C+1/2)+log2(G+1/2)+log2(T+1/2))/4
		  Wa=log2(A+1/2)-logAve
		  Wc=log2(C+1/2)-logAve
		  Wg=log2(G+1/2)-logAve
		  Wt=log2(T+1/2)-logAve
		  
		  Wall=str(Wa)+";"+str(Wc)+";"+str(Wg)+";"+str(Wt)
		  return Wall
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function PosNucWeight4(A as Integer, C as integer, G as integer, T as integer) As String
		  'Positional Nucleotide Weight calculated as in Genome Explorer by Mironov et al
		  
		  dim SumN as integer
		  dim Wa,Wc,Wg,Wt,logAve as double
		  dim Wall as string
		  
		  SumN=A+C+G+T
		  
		  logAve=(A+C+G+T+2)/SumN
		  Wa=log2((A/SumN+1/2)/logAve)
		  Wc=log2((C/SumN+1/2)/logAve)
		  Wg=log2((G/SumN+1/2)/logAve)
		  Wt=log2((T/SumN+1/2)/logAve)
		  
		  Wall=str(Wa)+";"+str(Wc)+";"+str(Wg)+";"+str(Wt)
		  return Wall
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ReadPrefs()
		  SetDefaultPaths
		  
		  if PathsChanged then
		    alimaskpath=Prefs.value("alimaskpath",alimaskpath)
		    nhmmerpath=Prefs.value("nhmmerpath",nhmmerpath)
		    tfastxPath=Prefs.value("tfastxPath",tfastxPath)
		    hmmbuildpath=Prefs.value("hmmbuildpath",hmmbuildpath)
		    MEMEpath=Prefs.value("MEMEpath",MEMEpath)
		    MASTpath=Prefs.value("MASTpath",MASTpath)
		    TomTomPath=Prefs.value("TomTomPath",TomTomPath)
		    Globals.chipset.jarPath=Prefs.Value("ChIPmunkPath", Globals.chipset.jarPath)
		    PathsChanged=False
		  end if
		  
		  SettingsWin.tfastxPathField.text=tfastxPath
		  SettingsWin.alimaskPathField.text=alimaskpath
		  SettingsWin.nhmmerpathField.text=nhmmerpath
		  SettingsWin.hmmBuildPathField.text=hmmBuildPath
		  SettingsWin.MEMEPathField.text=MEMEpath
		  SettingsWin.MASTPathField.Text=MASTpath
		  SettingsWin.TomTomPathField.Text=TomTomPath
		  SettingsWin.APIKeyField.Text=API_Key
		  SettingsWin.ChIPmunkPathField.Text=Globals.chipset.jarPath
		  SettingsWin.EmailField.Text=Globals.email
		  SettingsWin.requestCount.Text=Str(Globals.requestCount)
		  
		  'weblogopath=Prefs.value("weblogopath",SettingsWin.weblogoPathField.text)
		  BLASTnDB=Prefs.value("BLASTnDB","refseq_genomic")
		  BLASTpDB=Prefs.value("BLASTpDB","SwissProt")
		  BLASTorganism=Prefs.value("BLASTorganism","")
		  API_Key=Prefs.value("API_Key","")
		  email=Prefs.value("email","")
		  requestCount=Val(Prefs.Value("requestCount","100"))
		  
		  // Fonts
		  
		  Dim ff,FFont,PFont As String
		  
		  ff=SetDefaultFonts(True)
		  
		  FFont=NthField(ff,";",1)
		  PFont=NthField(ff,";",2)
		  
		  FixedFont=Prefs.value("FixedFont",FFont)
		  ProportionalFont=Prefs.value("ProportionalFont",PFont)
		  ProportionalFontSize=Prefs.value("ProportionalFontSize",10)
		  
		  Dim n As Integer
		  For n=0 To SettingsWin.FixedFontSelMenu.ListCount-1
		    If SettingsWin.FixedFontSelMenu.list(n)=FixedFont Then
		      SettingsWin.FixedFontSelMenu.listIndex=n
		      Exit
		    End If
		  Next
		  For n=0 To SettingsWin.PropFontSelMenu.ListCount-1
		    If SettingsWin.PropFontSelMenu.list(n)=ProportionalFont Then
		      SettingsWin.PropFontSelMenu.listIndex=n
		      Exit
		    End If
		  Next
		  For n=0 To SettingsWin.PropFontSizeMenu.ListCount-1
		    If SettingsWin.PropFontSizeMenu.list(n)=Str(ProportionalFontSize) Then
		      SettingsWin.PropFontSizeMenu.listIndex=n
		      Exit
		    End If
		  Next
		  
		  // feedback info for NCBI
		  CheckEmail
		  DevInfo = "&tool=SigmoID&email="+email
		  if API_Key<>"" then 'without API_Key, only 3 requests to eutils per second are allowed
		    DevInfo=DevInfo+API_Key
		  end if
		  
		  'HMMER server scripts don't work in IE on Windows
		  'and with older WebKit on 32-bit Linux,
		  'so we work around this by switching to simpler plain text output
		  
		  'as of April 2016 webkit seems to be working properly with HMMER web server again,
		  'so this all isn't needed
		  
		  dim ResultFormat as string
		  ResultFormat=Prefs.value("LoadPlainResult","false")
		  
		  '#if TargetWin32 then
		  'ResultFormat=Prefs.value("LoadPlainResult","true") 
		  '#elseif TargetLinux
		  '#if Target32Bit
		  'ResultFormat=Prefs.value("LoadPlainResult","true")
		  '#else
		  'ResultFormat=Prefs.value("LoadPlainResult","false")
		  '#endif
		  '#else
		  'ResultFormat=Prefs.value("LoadPlainResult","false")
		  '#endif
		  
		  
		  if ResultFormat="true" then
		    LoadPlainResult=true
		  else
		    LoadPlainResult=false
		  end if
		  
		  
		  
		  
		  'set the path to default profiles folder
		  dim pf as new folderitem
		  #if TargetMacOS then 'Bundle ↠ Contents ↠ Resources
		    #if DebugBuild then
		      #If XojoVersion < 2015.03 Then
		        msgbox "Running with Xojo "+str(XojoVersion)
		      #endif
		      pf=GetFolderItem("SigmoID.debug.app")
		    #else
		      pf=GetFolderItem("SigmoID.app")
		    #endif
		    pf=pf.Child("Contents").Child("Resources").Child("Profiles").Child("Pectobacterium")
		  #else
		    #If XojoVersion >= 2015.03 Then
		      'folders now include app name
		      #if DebugBuild then
		        pf=GetFolderItem("").Child("DebugSigmoID Resources")
		        
		      #else
		        pf=GetFolderItem("").Child("SigmoID Resources")
		      #endif
		      pf=pf.Child("Profiles")
		      pf=pf.Child("Pectobacterium")
		      if resources_f=NIL then
		        msgbox "Can't access Profiles folder!"
		      end if
		    #else
		      pf=GetFolderItem("").Child("Resources").Child("Profiles").Child("Pectobacterium")
		      if resources_f=NIL then
		        msgbox "Can't access Profiles folder!"
		      end if
		    #endif
		  #endif
		  
		  'read/set profile folder path pref
		  ProfileFpath = Prefs.value("ProfileFpath",pf.shellPath)
		  if ProfileFpath="" then
		    ProfileFpath=pf.shellPath
		  end if
		  Profile_f=GetFolderItem(ProfileFpath,FolderItem.PathTypeShell)
		  if Profile_f <>nil then
		    SettingsWin.ProfileFolderLabel.text=Profile_f.NativePath
		  end if
		  LogoWin.BuildTBButtonMenu
		  
		  
		  // Colours
		  Dim intColor As Int32 = Val(Prefs.value("CDScolour",&c66FFFF00)) ' Can also use UInt32
		  CDScolour = Color(intColor)
		  
		  intColor = Val(Prefs.value("sig_peptideColour",&c0080FF00)) ' Can also use UInt32
		  sig_peptideColour = Color(intColor)
		  
		  intColor = Val(Prefs.value("rRNAcolour",&cFF00FF00)) 'magenta
		  rRNAcolour = Color(intColor)
		  
		  intColor = Val(Prefs.value("tRNAcolour",&cFF66FF00)) 'light magenta
		  tRNAcolour = Color(intColor)
		  
		  intColor = Val(Prefs.value("ncRNAcanvas",&cCC00CC00)) 'dark magenta
		  ncRNAcolour = Color(intColor)
		  
		  intColor = Val(Prefs.value("protein_bindColour",&c66CCFF00)) 'blue
		  protein_bindColour = Color(intColor)
		  
		  intColor = Val(Prefs.value("geneColour",&c66FF6600)) 'light green
		  geneColour = Color(intColor)
		  
		  intColor = Val(Prefs.value("operonColour",&cFFFF9900)) 'yellow
		  operonColour = Color(intColor)
		  
		  intColor = Val(Prefs.value("promoterColour",&c33993300)) 'green
		  promoterColour = Color(intColor)
		  
		  intColor = Val(Prefs.value("terminatorColour",&cCC000000)) 'dark red
		  terminatorColour = Color(intColor)
		  
		  intColor = Val(Prefs.value("attenuatorColour",&cFF666600)) 'pink
		  attenuatorColour = Color(intColor)
		  
		  intColor = Val(Prefs.value("riboswitchColour",&cCC666600)) 'dirty pink
		  riboswitchColour = Color(intColor)
		  
		  intColor = Val(Prefs.value("mobile_elementColour",&cCC66FF00)) 'lavender
		  mobile_elementColour = Color(intColor)
		  
		  intColor = Val(Prefs.value("repeat_regionColour",&c6666FF00)) 'orchid
		  repeat_regionColour = Color(intColor)
		  
		  intColor = Val(Prefs.value("otherColour",&cC0C0C0)) 'gray
		  otherColour = Color(intColor)
		  
		  intColor = Val(Prefs.value("HighlightColour",HighlightColor)) 'defaults to system setting (not set properly on some Linux distros)
		  highlightColour = Color(intColor)
		  
		  
		  
		  LogoWin.Informer.TextFont=FixedFont
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RegulonDB2fasta(infile as folderitem, outfile as FolderItem)
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
		  Dim tos As TextOutputStream
		  dim BSarr() as string
		  dim tab as string = chr(9)
		  dim aline, tline as string
		  dim theSeq, aGene, currentGene, geneArr() as string
		  dim linecount,n as integer
		  dim newgene as boolean
		  
		  tos = TextOutputStream.Create(outFile)
		  if tos=Nil then return
		  tis=infile.OpenAsTextFile
		  
		  if tis<>nil then
		    
		    minlen=100
		    while not tis.EOF
		      aLine=tis.readLine
		      if len(aline)>60 then 'skip empty lines
		        BSarr()=split(aline,tab)
		        BSarr.Insert(0,"") 'zero based array correction
		        if BSarr(12)<>"" then 'filter out empty sites
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
		          
		          
		          'RC should be an option
		          if BSarr(6)="forward" then
		            tos.WriteLine tline
		            tos.WriteLine theSeq
		          else
		            tos.WriteLine tline
		            tos.WriteLine ReverseComplement(theSeq)
		          end if
		        end if
		      end if
		    wend
		  end if
		  
		  
		  minLen=minLen-20
		  maxLen=maxLen-20
		  
		  LogoWin.WriteToSTDOUT(str(linecount)+" sites controlling "+str(UBound(genearr)+1)+" genes loaded."+EndOfLine.UNIX)
		  LogoWin.WriteToSTDOUT("Binding site width is ")
		  if minLen=maxlen then
		    LogoWin.WriteToSTDOUT(str(minLen)+"."+EndOfLine.UNIX)
		  else
		    LogoWin.WriteToSTDOUT(str(minLen)+"–"+str(maxLen)+"."+EndOfLine.UNIX)
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RegulonInfo(ID as integer, IsRegulog as boolean)
		  'Get RegPrecise web pages for a regulon (regulog)
		  
		  'http://regprecise.sbpdiscovery.org:8080/WebRegPrecise/regulon.jsp?regulon_id=12127
		  'http://regprecise.sbpdiscovery.org:8080/WebRegPrecise/regulog.jsp?regulog_id=1307
		  
		  WebBrowserWin.show
		  If IsRegulog then
		    WebBrowserWin.LoadPage("http://regprecise.sbpdiscovery.org:8080/WebRegPrecise/regulog.jsp?regulog_id="+str(ID))
		  else
		    WebBrowserWin.LoadPage("http://regprecise.sbpdiscovery.org:8080/WebRegPrecise/regulon.jsp?regulon_id="+str(ID))
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RevCompAlignment(infile as folderitem, outfile as folderitem, keepFwd as boolean)
		  // Either reverse complement (with keepFwd=false) or palindromise (with keepFwd=true) aligned multifasta file 
		  
		  dim instream as TextInputStream
		  dim outstream As TextOutputStream
		  dim aLine,title as string
		  
		  InStream = infile.OpenAsTextFile
		  OutStream = outfile.createTextFile 'make the file to store the stuff in
		  while not InStream.EOF
		    
		    aLine=trim(InStream.readLine)
		    if left(aLine,1)=">" then
		      if keepFwd then
		        OutStream.writeLine ">f_"+right(aline,len(aline)-1)
		      end if
		      title=aline
		    else
		      if aline<>"" then
		        if keepFwd then
		          OutStream.writeLine aline
		        end if
		        'and now the reverse complement:
		        OutStream.writeLine ">r_"+right(title,len(title)-1)
		        OutStream.writeLine ReverseComplement(aline)
		      end if
		    end if
		    
		  wend
		  InStream.close
		  OutStream.close
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Reverse(seq as string) As String
		  'memory blocks are up to 80 times faster than strings here!!! :
		  dim n,l,count as integer
		  dim in1,out as memoryBlock
		  l=lenB(seq)
		  in1=new MemoryBlock(l+1)
		  out=new MemoryBlock(l+2)
		  in1.pString(0)=seq    'Shouldn't there be a CString here?
		  
		  'setting endiannes here is probably unnecessary, but...
		  '#if targetWin32
		  'in1.littleEndian=true
		  'out.littleEndian=true
		  '#endif
		  
		  count=1
		  for n=l downto 1
		    out.byte(count)=in1.byte(n)
		    count=count+1
		  next
		  out.byte(count)=0     ' ending with 0 to get CString
		  return out.cstring(1)
		  
		  Exception err
		    ExceptionHandler(err,"Globals:RevCompl")
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ReverseComplement(seq As string) As string
		  'memory blocks are up to 80 times faster than strings here!!! :
		  dim n,l,count as integer
		  'dim  gene2 as string
		  dim in1,out as memoryBlock
		  l=lenB(seq)
		  in1=new MemoryBlock(l+1)
		  out=new MemoryBlock(l+2)
		  in1.pString(0)=seq    'Shouldn't there be a CString here?
		  
		  'setting endiannes here is probably unnecessary, but...
		  '#if targetWin32
		  'in1.littleEndian=true
		  'out.littleEndian=true
		  '#endif
		  
		  count=1
		  for n=l downto 1
		    out.byte(count)=RevCompArr(in1.byte(n))
		    count=count+1
		  next
		  out.byte(count)=0     ' ending with 0 to get CString
		  
		  ' memoryblock.cstring() function is setting illegal encoding of the result string
		  'so I have to forse the default encoding here:
		  return DefineEncoding(out.cstring(1), Encodings.UTF8)
		  
		  Exception err
		    ExceptionHandler(err,"Globals:ReverseComplement")
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SetDefaultFonts(FromFontSelWin as boolean) As string
		  'try to set the default fonts appropriate for three platforms
		  
		  'this method is called from fontSelectionWin.open (with TRUE)
		  'and from app.defaultPrefs (with FALSE)
		  
		  'returned are font names and their positions in the lists
		  
		  dim m,n,i,GoodFFont, GoodPFont as Integer
		  dim FixedFonts, PropFonts, CurrentFont, FF as string
		  dim pic as picture
		  
		  
		  pic=New Picture(20,20,1)
		  n=FontCount-1
		  For i=0 to n
		    CurrentFont=Font(i)
		    pic.graphics.textFont=CurrentFont
		    if pic.graphics.stringWidth("w")=pic.graphics.stringWidth("i") then
		      FixedFonts=FixedFonts+CurrentFont+";"
		    else
		      PropFonts=PropFonts+CurrentFont+";"
		    End If
		  Next
		  
		  FF=""
		  GoodFFont=0
		  if FixedFonts<>"" then
		    m=countFields(FixedFonts,";")
		    for n=1 to m-1
		      CurrentFont=NthField(FixedFonts,";",n)
		      if FromFontSelWin then
		        SettingsWin.FixedFontSelMenu.addrow CurrentFont
		      end if
		      #if TargetMacOS then
		        if CurrentFont="Lucida Console" then
		          FF="Lucida Console"
		          GoodFFont=n-1
		        elseif CurrentFont="Courier" then
		          FF="Courier"
		          GoodFFont=n-1
		        end
		      #elseif TargetLinux then
		        if CurrentFont="Monospace" then
		          FF="Monospace"
		          GoodFFont=n-1
		        end
		      #else
		        if CurrentFont="Courier New" then
		          FF="Courier New"
		          GoodFFont=n-1
		        end
		      #endif
		    next
		    'if FF="" then
		    'app.NeedFixedFont=true
		    'end
		  else
		    MsgBox "At least one fixed width font is required for proper work of SigmoID.  Please install such a font and run SigmoID again."
		    quit
		  end
		  
		  
		  dim PF as string
		  PF=""
		  GoodPFont=0
		  if PropFonts<>"" then
		    m=countFields(PropFonts,";")
		    for n=1 to m-1
		      CurrentFont=NthField(PropFonts,";",n)
		      if FromFontSelWin then
		        SettingsWin.PropFontSelMenu.addrow CurrentFont
		      end if
		      if CurrentFont="Arial" then
		        PF="Arial"
		        GoodPFont=n-1
		      elseif CurrentFont="Ubuntu" then
		        PF="Ubuntu"
		        GoodPFont=n-1
		      end
		    next
		    'if PF="" then
		    'app.NeedFixedFont=true
		    'end
		  else
		    MsgBox "At least one proportional font is required for proper work of SigmoID.  Please install such a font and run SigmoID again."
		    quit
		  end
		  
		  return FF+";"+PF+";"+str(GoodFFont)+";"+str(GoodPFont)
		  
		  Exception err
		    ExceptionHandler(err,"Globals:SetDefaultFonts")
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetDefaultPaths()
		  'set default paths
		  dim f as folderitem
		  dim pth as string
		  
		  tfastxPath=SystemPath("tfastx")  
		  alimaskpath=SystemPath("alimask")
		  nhmmerpath=SystemPath("nhmmer")
		  hmmBuildPath=SystemPath("hmmbuild")
		  MEMEpath=SystemPath("meme")
		  MASTpath=SystemPath("mast")
		  TomTomPath=SystemPath("tomtom")
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetLinuxIcon()
		  #if TargetLinux
		    ' For Gnome and related window managers launcher icon is set via the .desktop file
		    ' for user-specific apps this dir is used:
		    ' ~/.local/share/applications
		    
		    dim desktopText,appPath,iconPath as string
		    
		    dim f as folderitem
		    
		    // find the paths:
		    f=GetFolderItem("")
		    appPath=f.ShellPath+"/SigmoID"
		    iconPath=f.ShellPath+"/appicon_128.png"
		    
		    f=SpecialFolder.UserHome
		    f=f.child(".local")
		    if f<>NIL then
		      if f.exists then
		        f=f.child("share")
		        if f<>NIL then
		          if f.exists then
		            f=f.child("applications")
		            if f<>NIL then
		              if f.exists then
		                f=f.child("sigmoid.desktop")
		                if f<>NIL then
		                  if f.exists then f.Delete
		                  dim tos as TextOutputStream
		                  tos=textOutputStream.Create(f)
		                  if f<>nil then
		                    tos.Writeline "[Desktop Entry]"
		                    tos.Writeline "Version=2.0"
		                    tos.Writeline "Name=SigmoID"
		                    tos.Writeline "Comment=Analyse/find transcription factor binding sites"
		                    tos.Writeline "Comment[ru]=Анализ и поиск сайтов связывания транскрипционных факторов"
		                    tos.Writeline "Comment[be]=Аналіз і пошук сайтаў звязвання транскрыпцыйных фактараў"
		                    tos.Writeline "Terminal=false"
		                    tos.Writeline "Type=Application"
		                    tos.Writeline "Categories=GNOME;GTK;Application;"
		                    tos.Writeline "Exec="+appPath
		                    tos.Writeline "Icon="+iconPath
		                    tos.close
		                  end if
		                  
		                  
		                  
		                end if
		              else
		                return
		              end if
		            end if
		          else
		            return
		          end if
		        end if
		      else
		        return
		      end if
		    end if
		    'GetFolderItem("SigmoID.debug.app")  
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SimplePattern(Pattern as string) As string
		  
		  'routine to get all possible seqs for a redundant site
		  
		  dim actualSites(0) as string
		  dim chars2add(4) as string
		  dim l,m,n,ub,charNumber2add as integer
		  dim char,pat, simplepat as string
		  
		  '#pragma disableBackgroundTasks
		  
		  actualSites.append ""   //necessary because of that 0 element
		  
		  'a pattern could have any of the following legible DNA codes:
		  'R = G or A
		  'Y = C or T
		  'M = A or C
		  'K = G or T
		  'S = G or C
		  'W = A or T
		  'B = not A (C or G or T)
		  'D = not C (A or G or T)
		  'H = not G (A or C or T)
		  'V = not T (A or C or G)
		  'N = A or C or G or T
		  'X = A or C or G or T
		  'inosine is for the use in PCR
		  'I  = A or C or G or T
		  
		  
		  pat=pattern
		  for n=1 to lenB(pat)
		    char=midB(pat,n,1)
		    
		    'get all possible characters for the selected pattern position
		    select case char
		    case "A"
		      Chars2add(1)="A"
		      charNumber2add=1
		    case "C"
		      Chars2add(1)="C"
		      charNumber2add=1
		    case "G"
		      Chars2add(1)="G"
		      charNumber2add=1
		    case "T"
		      Chars2add(1)="T"
		      charNumber2add=1
		    case "R"
		      Chars2add(1)="G"
		      Chars2add(2)="A"
		      charNumber2add=2
		    case "Y"
		      Chars2add(1)="C"
		      Chars2add(2)="T"
		      charNumber2add=2
		    case "M"
		      Chars2add(1)="A"
		      Chars2add(2)="C"
		      charNumber2add=2
		    case "K"
		      Chars2add(1)="G"
		      Chars2add(2)="T"
		      charNumber2add=2
		    case "S"
		      Chars2add(1)="G"
		      Chars2add(2)="C"
		      charNumber2add=2
		    case "W"
		      Chars2add(1)="A"
		      Chars2add(2)="T"
		      charNumber2add=2
		    case "B"
		      Chars2add(1)="C"
		      Chars2add(2)="G"
		      Chars2add(3)="T"
		      charNumber2add=3
		    case "D"
		      Chars2add(1)="A"
		      Chars2add(2)="G"
		      Chars2add(3)="T"
		      charNumber2add=3
		    case "H"
		      Chars2add(1)="A"
		      Chars2add(2)="C"
		      Chars2add(3)="T"
		      charNumber2add=3
		    case "V"
		      Chars2add(1)="A"
		      Chars2add(2)="C"
		      Chars2add(3)="G"
		      charNumber2add=3
		    case "N"
		      Chars2add(1)="C"
		      Chars2add(2)="G"
		      Chars2add(3)="T"
		      Chars2add(4)="A"
		      charNumber2add=4
		    case "X"
		      Chars2add(1)="C"
		      Chars2add(2)="G"
		      Chars2add(3)="T"
		      Chars2add(4)="A"
		      charNumber2add=4
		    case "I"
		      Chars2add(1)="C"
		      Chars2add(2)="G"
		      Chars2add(3)="T"
		      Chars2add(4)="A"
		      charNumber2add=4
		    else
		      msgbox "An illegal character was found. Please check your sequence!"
		      simplepat="0"
		      return simplepat
		    end
		    
		    'extend the list of all possible sites
		    'first appending longer sites to the end of array
		    'then remove the shorter ones
		    ub=ubound(actualsites)
		    for m=1 to ub
		      for l=1 to charNumber2add
		        actualSites.Append actualSites(m)+Chars2add(l)
		      next
		    next
		    for m=ub downto 1
		      ActualSites.remove m
		    next
		  next
		  
		  'now convert the array into a string to be returned
		  simplepat=""
		  for n=1 to ubound(actualsites)-1
		    simplepat=simplepat+actualsites(n)+","
		    m=n
		  next
		  
		  simplepat=simplepat+actualsites(m+1) //adding the last one without a comma
		  
		  return simplepat   'comma separated list completely representing the pattern sequence
		  Exception err
		    ExceptionHandler(err,"Globals:SimplePattern")
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SocketError(ErrNo as integer)
		  dim msg as string 
		  
		  select case ErrNo
		  case -1
		    'If Get/Post/GetHeaders/SendRequest times out, then ErrorCode = -1
		    msg="Request timeout"
		  case 1
		    'When calling Get (the overloaded method that accepts a FolderItem as a parameter), if the file is a directory or could not be created then ErrorCode = 1
		    msg="File is a directory or could not be created"
		  case 100    'OpenDriverError    There was an error opening and initializing the drivers.
		    'It may mean that WinSock (on Windows) is not installed, or the version is too early.
		    msg="OpenDriverError"
		  case 101 'Deprecated 5.0
		    'This error code is no longer used.
		  case 102    'LostConnection    This code means that you lost your connection.
		    'You will get this error if the remote side disconnects (whether its forcibly- by pulling their ethernet cable out of the computer), or gracefully (by calling SocketCore's Close method). This may or not be a true error situation. If the remote side closed the connection, then it is not truly an error; it's just a status indication. But if they pulled the ethernet cable out of the computer, then it really is an error; but the results are the same. The connection was lost. You will also get this error if you call the Disconnect method of TCPSocket.
		    msg="LostConnection"
		  case 103    'NameResolutionError    The socket was unable to resolve the address that was specified.
		    'A prime example of this would be a mistyped IP address, or a domain name of an unknown or unreachable host.
		    msg="NameResolutionError"
		  case 104 'Deprecated 5.0
		    'This error code is no longer used.
		  case 105    'AddressInUseError    The address is currently in use.
		    'This error will occur if you attempt to bind to a port that you have already bound to. An example of this would be setting up two listening sockets to try to listen on the same port.
		    msg="AddressInUseError"
		  case 106    'InvalidStateError    This is an invalid state error, which means that the socket is not in the proper state to be doing a certain operation.
		    'An example of this is calling the Write method before the socket is actually connected.
		    msg="InvalidStateError"
		  case 107    'InvalidPortError    This error means that the port you specified is invalid.
		    'This could mean that you entered a port number less than 0, or greater than 65,535. It could also mean that you do not have enough privileges to bind to that port. This happens under Mac OS X and Linux if you are not running as root and try to bind to a port below 1024. You can only bind to ports less than 1024 if you have root privileges. A normal "Admin" user does not have root privileges.
		    msg="InvalidPortError"
		  case 108    'OutOfMemoryError
		    msg="OutOfMemoryError"
		    
		  else
		    msg=str(ErrNo)
		    
		    
		  end select
		  
		  if ErrNo=-999 then
		    'ignoring this spurious error type
		  else
		    msgbox "Server error: "+msg
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SocketError(ErrNo as integer, ErrMsg as string)
		  dim msg as string 
		  
		  select case ErrNo
		  case -1
		    'If Get/Post/GetHeaders/SendRequest times out, then ErrorCode = -1
		    msg="Request timeout"
		  case 1
		    'When calling Get (the overloaded method that accepts a FolderItem as a parameter), if the file is a directory or could not be created then ErrorCode = 1
		    msg="File is a directory or could not be created"
		  case 100    'OpenDriverError    There was an error opening and initializing the drivers.
		    'It may mean that WinSock (on Windows) is not installed, or the version is too early.
		    msg="OpenDriverError"
		  case 101 'Deprecated 5.0
		    'This error code is no longer used.
		  case 102    'LostConnection    This code means that you lost your connection.
		    'You will get this error if the remote side disconnects (whether its forcibly- by pulling their ethernet cable out of the computer), or gracefully (by calling SocketCore's Close method). This may or not be a true error situation. If the remote side closed the connection, then it is not truly an error; it's just a status indication. But if they pulled the ethernet cable out of the computer, then it really is an error; but the results are the same. The connection was lost. You will also get this error if you call the Disconnect method of TCPSocket.
		    msg="LostConnection"
		  case 103    'NameResolutionError    The socket was unable to resolve the address that was specified.
		    'A prime example of this would be a mistyped IP address, or a domain name of an unknown or unreachable host.
		    msg="NameResolutionError"
		  case 104 'Deprecated 5.0
		    'This error code is no longer used.
		  case 105    'AddressInUseError    The address is currently in use.
		    'This error will occur if you attempt to bind to a port that you have already bound to. An example of this would be setting up two listening sockets to try to listen on the same port.
		    msg="AddressInUseError"
		  case 106    'InvalidStateError    This is an invalid state error, which means that the socket is not in the proper state to be doing a certain operation.
		    'An example of this is calling the Write method before the socket is actually connected.
		    msg="InvalidStateError"
		  case 107    'InvalidPortError    This error means that the port you specified is invalid.
		    'This could mean that you entered a port number less than 0, or greater than 65,535. It could also mean that you do not have enough privileges to bind to that port. This happens under Mac OS X and Linux if you are not running as root and try to bind to a port below 1024. You can only bind to ports less than 1024 if you have root privileges. A normal "Admin" user does not have root privileges.
		    msg="InvalidPortError"
		  case 108    'OutOfMemoryError
		    msg="OutOfMemoryError"
		    
		  else
		    msg=str(ErrNo)
		    
		    
		  end select
		  
		  #if TargetLinux then
		    if ErrNo=1 OR ErrNo=4 then
		      'these errors happen all the time (number 1 on Linux32 and number 4 on Linux64)
		      'and I have no reason why
		      'The viewer seems to work OK despite these errors
		    else
		      msgbox "HTMLviewer error: "+msg+"("+ErrMsg+")"
		    end if
		  #else
		    msgbox "HTMLviewer error: "+msg+"("+ErrMsg+")"
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Stockholm(AlignmentFile as folderitem, StockholmFile as folderitem, cutoffs as string)
		  'convert alignment to Stockholm format:
		  
		  dim InStream As TextInputStream
		  dim OutStream As TextOutputStream
		  dim aline as string
		  dim dupCount as integer = 1
		  dim blocks(0) as string
		  dim n as integer
		  
		  OutStream = TextOutputStream.Create(StockholmFile)
		  InStream = AlignmentFile.OpenAsTextFile
		  
		  outstream.WriteLine "# STOCKHOLM 1.0"         'Stockholm header
		  if cutoffs<>"" then
		    outstream.Write cutoffs+EndOfLine
		  end if
		  
		  dim block as string = ""
		  dim xtra as string = "____________________________________________________________"
		  while not InStream.EOF                        'sequence blocks
		    aLine=InStream.readLine
		    if left(aLine,1)=">" then                    'seq title
		      aline=ReplaceAll(aline," ","_")             'hmmbuild doesn't like spaces
		      aline=ReplaceAll(aline,chr(9),"_")          'hmmbuild doesn't like tabs
		      aline=aline+xtra                            'equalise lengths
		      block=mid(aline,1,60)+" "                   'this long to distinguish duplicates from RegPrecise
		      'handle possible duplicates:
		      for n=1 to UBound(blocks)
		        if blocks(n)=block then
		          if len(str(dupCount))=1 then
		            block=left(block,58)+"|"+str(dupCount)+" " 'need a symbol not present in normal headers, hence the "|"
		          elseif len(str(dupCount))=2 then            'highly unlikely
		            block=left(block,57)+"|"+str(dupCount)+" "
		          else                                        'smth wrong!
		            msgbox "Too many duplicate names! Stockholm conversion failed"
		            return
		          end if
		          dupCount=dupCount+1
		          exit
		        end if
		      next
		      blocks.Append block
		    else
		      outstream.writeline block+aline
		      block=""
		    end if
		  wend
		  outstream.WriteLine "//"                       'Stockholm footer
		  instream.Close
		  outstream.close
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SystemPath(appName as string) As string
		  'find path to properly installed app
		  
		  dim f as folderitem
		  dim pth as string
		  
		  #if TargetWin32 'only look for included apps, locally installed must be manually configured
		    f=resources_f.child(appName+".exe")
		    if f<>Nil then
		      if f.exists then
		        return chr(34)+f.ShellPath+chr(34)
		      else
		        Return ""
		      end if
		    else
		      Return ""
		    end if
		  #endif
		  
		  dim cli as string
		  Dim sh As Shell
		  
		  sh=New Shell
		  sh.mode=0
		  
		  'assume bash is the normal user shell
		  'execute bash with login scripts to set the same env as in terminal
		  'command must be in single quotes
		  sh.Execute("bash --login -c '"+"which "+appName+"'")
		  
		  if sh.ErrorCode = 0 then
		    pth=trim(sh.Result)
		  else
		    pth=""
		  End If
		  if pth="" then 
		    f=resources_f.child(appName)
		    if f<>Nil then
		      if f.exists then
		        return "'"+f.NativePath+"'"
		      end if
		    end if
		  else
		    return pth
		  end if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TemporaryFolder() As FolderItem
		  // On Linux, SpecialFolder.Temporary returns /tmp/ (the same for all users!)
		  // this creates permission conflicts with temporary files on multi-user machines
		  
		  #if TargetLinux
		    dim userName as string=SpecialFolder.UserHome.name '/tmp/UserHome/
		    'userName=NthField(userName,"/",2)
		    
		    dim tmpF as folderitem=SpecialFolder.Temporary.Child(userName)
		    if tmpF<>Nil then
		      If Not tmpF.Exists Then
		        If XojoVersion>2019.2 Then
		          tmpf.CreateFolder
		        Else
		          tmpf.CreateAsFolder   'deprecated in 2019r21
		        End If
		      End If
		      Return tmpF
		    Else
		      MsgBox "Can't create a temporary folder for user data"
		    end if
		    
		  #else
		    Return SpecialFolder.Temporary
		  #endif
		  
		  Exception Err
		    ExceptionHandler(err,"Globals:TemporaryFolder")
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub tfastx(query as string)
		  'launch Fasta search
		  'tfastx36 [-options] query_file library_file [ktup]
		  'OPTIONS:
		  '-b:  high scores reported (limited by -E by default);
		  '-d:  number of alignments shown (limited by -E by default)
		  
		  'the genome is in GenBank format, need to specify it
		  'Fasta reads these formats:
		  '0 FASTA (>SEQID - comment/sequence)
		  '1 Uncompressed Genbank (LOCUS/DEFINITION/ORIGIN)
		  '...
		  'To specify a library type on the command line, add it to the library filename
		  'and surround the filename and library type in quotes:
		  'fasta36 query.file "/seqdb/genbank/gbmam 12"
		  
		  logowin.WriteToSTDOUT("OK"+EndOfLine.unix)
		  logowin.WriteToSTDOUT("Running tfastx..."+EndOfLine.unix)
		  
		  dim cli as string
		  Dim sh As Shell
		  
		  
		  if LogoWin.GenomeFile=Nil then
		    LogoWin.WriteToSTDOUT("Please open a genome file to search first."+EndOfLine.Unix)
		    return
		  end if
		  
		  
		  'get the temp file and write the query into it:
		  dim TFfastaFile as folderitem = TemporaryFolder.child("TF.fasta")
		  if TFfastaFile<>nil then
		    dim outstream As TextOutputStream
		    outstream = TextOutputStream.Create(TFfastaFile)
		    outstream.write query
		    outstream.close
		    
		    
		    cli=""
		    dim fastaOptions as string = " -b 3 -d 3 "
		    
		    dim genomefilepath as string
		    
		    if instr(LogoWin.GenomeFile.nativepath," ")=0 then
		      'Other illegal symbols should be checked too!
		      GenomeFilePath=chr(34)+LogoWin.GenomeFile.nativepath+" 1"+chr(34) 'need the quotes to include gbk format anyway
		    else
		      'Fasta can't hadle paths with white space/non-ASCII characters, so we move and rename the library (genome) file
		      dim genome_tmp as folderitem = TemporaryFolder.child("genome_tmp.gb")
		      if genome_tmp<>NIL then
		        if genome_tmp.Exists then
		          genome_tmp.Delete
		        end if
		        LogoWin.GenomeFile.CopyFileTo genome_tmp
		        GenomeFilePath=chr(34)+genome_tmp.nativepath+" 1"+chr(34)
		        
		      end if
		    end if
		    
		    'tfastx36 [-options] query_file library_file [ktup]
		    
		    cli=tfastxPath+fastaOptions+TFfastaFile.shellpath+" "+GenomeFilePath
		    
		    sh=New Shell
		    sh.mode=0
		    sh.TimeOut=-1
		    sh.execute ("bash --login -c '"+cli+"'")
		    If sh.errorCode=0 then
		      LogoWin.WriteToSTDOUT (EndofLine+Sh.Result)
		      return
		    else
		      LogoWin.WriteToSTDOUT (EndofLine+Sh.Result)
		      MsgBox "tfastx error code: "+Str(sh.errorCode)
		      LogoWin.WriteToSTDOUT (EndofLine+"tfastx command line was: "+cli+EndofLine)
		      return
		    end if
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Translate3(Gene As string, code as integer) As string
		  Dim  m,n,GeneLength,aa0,up  As Integer
		  dim protein,codon,codons,aa1st as string
		  dim gC as gCode
		  gc=gCodes(code)
		  
		  protein=""
		  GeneLength=lenB(Gene)
		  for n=1 to (GeneLength - 2) step 3
		    'the readable code:
		    'codon=midB(gene,n,3)
		    'CodonNo=((instr(CodonList,codon))-1)/4
		    'protein=protein+aa(codonNo)
		    'faster code:
		    codon=midB(Gene,n,3)
		    aa0=instr(gc.CodonList,codon)
		    
		    
		    if aa0>0 then
		      protein=protein+gc.aa3(((aa0)+3)/4)
		    else
		      'if instr doesn't find a codon in the list, it will return 0
		      'and  aa(0) is X - so it will work for all codons with redundancies-
		      'but also happily translate into Xes any crap
		      if haveRedundancies(codon)=true then
		        codons=SimplePattern(codon)
		        if codons="0" then 'Illegal character, exiting
		          return ""
		        end if
		        up=countfields(codons,",")
		        aa1st=gc.aa3((instr(gc.CodonList,nthfield(codons,",",1))+3)/4)
		        for m=2 to up
		          if aa1st<>gc.aa3((instr(gc.CodonList,nthfield(codons,",",m))+3)/4) then
		            aa1st="X"  'redundant codon translates to more than 1 amino acid
		            exit
		          end
		        next
		        protein=protein+aa1st
		        
		      else
		        'some crap is probably  being translated, nevertheless...
		        protein=protein+"X"
		      end
		      
		      
		      
		    end
		  next
		  return protein
		  
		  Exception err
		    ExceptionHandler(err,"Globals:Translate3")
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TranslateFrame(Sequence as string, frame as integer, code as integer) As string
		  dim p As String
		  dim gl, t as Integer
		  
		  
		  gl=lenb(Sequence) 'GeneLength
		  p=""
		  
		  if frame >3 then
		    'opposite strand -
		    'determine the number of spaces in front of the translation:
		    t=gl/3
		    t=gl-t*3
		    select case t
		    case 0
		      select case frame
		      case 4
		        p=""
		      case 5
		        p="  "
		      case 6
		        p=" "
		      end
		    case 1
		      select case frame
		      case 4
		        p=" "
		      case 5
		        p=""
		      case 6
		        p="  "
		      end
		    case 2
		      select case frame
		      case 4
		        p="  "
		      case 5
		        p=" "
		      case 6
		        p=""
		      end
		    end
		    
		  end
		  select case frame
		  case 1
		    p=Translate3(Sequence, code)
		  case 2
		    p=" "+Translate3(rightb(Sequence,gl-1), code)
		  case 3
		    p="  "+Translate3(rightb(Sequence,gl-2), code)
		  case 4
		    p=p+reverse(Translate3(ReverseComplement(Sequence), code))
		  case 5
		    p=p+reverse(Translate3(rightb(ReverseComplement(Sequence),gl-1), code))
		  case 6
		    p=p+reverse(Translate3(rightb(ReverseComplement(Sequence),gl-2), code))
		  end select
		  return p
		  
		  Exception err
		    ExceptionHandler(err,"Globals:TranslateFrame")
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Weblogo(f as folderitem) As string
		  'Unused at the moment
		  
		  'Usage: weblogo [options]  < sequence_data.fa > sequence_logo.eps
		  '
		  'Create sequence logos from biological sequence alignments.
		  '
		  'Options:
		  '--version                  show program's version number and exit
		  '-h --help                     show this help message and exit
		  '
		  'Input/Output Options:
		  '-f --fin FILENAME           Sequence input file (default: stdin)
		  '-D --datatype FORMAT        Type of multiple sequence alignment or
		  'position weight matrix file: (clustal, fasta,
		  'plain, msf, genbank, nbrf, nexus, phylip,
		  'stockholm, intelligenetics, table, array,
		  'transfac)
		  '-o --fout FILENAME          Output file (default: stdout)
		  '-F --format FORMAT          Format of output: eps (default), png,
		  'png_print, pdf, jpeg, svg, logodata
		  '
		  'Logo Data Options:
		  '-A --sequence-type TYPE     The type of sequence data: 'protein', 'rna' or
		  ''dna'.
		  '-a --alphabet ALPHABET      The set of symbols to count, e.g. 'AGTC'. All
		  'characters not in the alphabet are ignored. If
		  'neither the alphabet nor sequence-type are
		  'specified then weblogo will examine the input
		  'data and make an educated guess. See also
		  '--sequence-type, --ignore-lower-case
		  '-U --units NUMBER           A unit of entropy ('bits' (default), 'nats',
		  ''digits'), or a unit of free energy ('kT',
		  ''kJ/mol', 'kcal/mol'), or 'probability' for
		  'probabilities
		  '--composition COMP.      The expected composition of the sequences:
		  ''auto' (default), 'equiprobable', 'none' (do
		  'not perform any compositional adjustment), a
		  'CG percentage, a species name (e.g. 'E. coli',
		  ''H. sapiens'), or an explicit distribution
		  '(e.g. "{'A':10, 'C':40, 'G':40, 'T':10}"). The
		  'automatic option uses a typical distribution
		  'for proteins and equiprobable distribution for
		  'everything else.
		  '--weight NUMBER          The weight of prior data.  Default depends on
		  'alphabet length
		  '-i --first-index INDEX      Index of first position in sequence data
		  '(default: 1)
		  '-l --lower INDEX            Lower bound of sequence to display
		  '-u --upper INDEX            Upper bound of sequence to display
		  '
		  'Transformations:
		  'Optional transformations of the sequence data.
		  '
		  '--ignore-lower-case      Disregard lower case letters and only count
		  'upper case letters in sequences.
		  '--reverse                reverse sequences
		  '--complement             complement DNA sequences
		  '
		  'Logo Format Options:
		  'These options control the format and display of the logo.
		  '
		  '-s --size LOGOSIZE          Specify a standard logo size (small, medium
		  '(default), large)
		  '-n --stacks-per-line COUNT  Maximum number of logo stacks per logo line.
		  '(default: 40)
		  '-t --title TEXT             Logo title text.
		  '--label TEXT             A figure label, e.g. '2a'
		  '-X --show-xaxis YES/NO      Display sequence numbers along x-axis?
		  '(default: True)
		  '-x --xlabel TEXT            X-axis label
		  '--annotate TEXT          A comma separated list of custom stack
		  'annotations, e.g. '1,3,4,5,6,7'.  Annotation
		  'list must be same length as sequences.
		  '-S --yaxis UNIT             Height of yaxis in units. (Default: Maximum
		  'value with uninformative prior.)
		  '-Y --show-yaxis YES/NO      Display entropy scale along y-axis? (default:
		  'True)
		  '-y --ylabel TEXT            Y-axis label (default depends on plot type and
		  'units)
		  '-E --show-ends YES/NO       Label the ends of the sequence? (default:
		  'False)
		  '-P --fineprint TEXT         The fine print (default: weblogo version)
		  '--ticmarks NUMBER        Distance between ticmarks (default: 1.0)
		  '--errorbars YES/NO       Display error bars? (default: True)
		  '--reverse-stacks YES/NO  Draw stacks with largest letters on top?
		  '(default: True)
		  '
		  'Color Options:
		  'Colors can be specified using CSS2 syntax. e.g. 'red', '#FF0000', etc.
		  '
		  '-c --color-scheme SCHEME    Specify a standard color scheme (auto, base
		  'pairing, charge, chemistry, classic,
		  'hydrophobicity, monochrome)
		  '-C --color COLOR SYMBOLS DESCRIPTION
		  'Specify symbol colors, e.g. --color black AG
		  ''Purine' --color red TC 'Pyrimidine'
		  '--default-color COLOR    Symbol color if not otherwise specified.
		  '
		  'Advanced Format Options:
		  'These options provide fine control over the display of the logo.
		  '
		  '-W --stack-width POINTS     Width of a logo stack (default: 10.8)
		  '--aspect-ratio POINTS    Ratio of stack height to width (default: 5)
		  '--box YES/NO             Draw boxes around symbols? (default: no)
		  '--resolution DPI         Bitmap resolution in dots per inch (DPI).
		  '(Default: 96 DPI, except png_print, 600 DPI)
		  'Low resolution bitmaps (DPI<300) are
		  'antialiased.
		  '--scale-width YES/NO     Scale the visible stack width by the fraction
		  'of symbols in the column?  (I.e. columns with
		  'many gaps of unknowns are narrow.)  (Default:
		  'yes)
		  '--debug YES/NO           Output additional diagnostic information.
		  '(Default: False)
		  
		  dim cli as string
		  Dim sh As Shell
		  
		  if f<>Nil then
		    'shell within xojo doesn't read .bash_profile - hence PATH isn't set properly
		    'hence the full path below
		    'cli="/usr/local/bin/weblogo -c classic -F logodata -f "+f.ShellPath
		    cli=WebLogoPath+" -c classic -F logodata -f "+f.ShellPath
		  else
		    msgbox "Invalid input file for weblogo"
		  end if
		  
		  sh=New Shell
		  sh.mode=0
		  sh.TimeOut=-1
		  sh.execute ("bash --login -c '"+cli+"'")
		  If sh.errorCode=0 then
		    return Sh.Result
		  else
		    LogoWin.WriteToSTDOUT (EndofLine+"Weblogo error code: "+Str(sh.errorCode)+EndofLine)
		    LogoWin.WriteToSTDOUT (EndofLine+Sh.Result)
		    return ""
		  end if
		  
		  Exception err
		    ExceptionHandler(err,"Globals:WebLogo")
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		aa(65) As string
	#tag EndProperty

	#tag Property, Flags = &h0
		alimaskpath As string
	#tag EndProperty

	#tag Property, Flags = &h0
		API_Key As string
	#tag EndProperty

	#tag Property, Flags = &h0
		attenuatorColour As color
	#tag EndProperty

	#tag Property, Flags = &h0
		BLASTnDB As string
	#tag EndProperty

	#tag Property, Flags = &h0
		BLASTorganism As string
	#tag EndProperty

	#tag Property, Flags = &h0
		BLASTpDB As string
	#tag EndProperty

	#tag Property, Flags = &h0
		CDScolour As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		chipset As ChipMSettings
	#tag EndProperty

	#tag Property, Flags = &h0
		cLineEnd As String
	#tag EndProperty

	#tag Property, Flags = &h0
		CodonList As string
	#tag EndProperty

	#tag Property, Flags = &h0
		CPUcores As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		CR As string
	#tag EndProperty

	#tag Property, Flags = &h0
		CRtagPositions As String
	#tag EndProperty

	#tag Property, Flags = &h0
		email As string
	#tag EndProperty

	#tag Property, Flags = &h0
		FixedFont As string
	#tag EndProperty

	#tag Property, Flags = &h0
		GBrowseShift As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		gCodeNo As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		gCodes(30) As gCode
	#tag EndProperty

	#tag Property, Flags = &h0
		geneColour As color
	#tag EndProperty

	#tag Property, Flags = &h0
		highlightColour As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		hmmBuildPath As string
	#tag EndProperty

	#tag Property, Flags = &h0
		hmmSearchSettings As String
	#tag EndProperty

	#tag Property, Flags = &h0
		LengthsDiffer As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		LF As string
	#tag EndProperty

	#tag Property, Flags = &h0
		LineEnd As string
	#tag EndProperty

	#tag Property, Flags = &h0
		LoadPlainResult As boolean = true
	#tag EndProperty

	#tag Property, Flags = &h0
		MASTpath As String
	#tag EndProperty

	#tag Property, Flags = &h0
		MASTVersion As String
	#tag EndProperty

	#tag Property, Flags = &h0
		maxLen As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		MEMEpath As String
	#tag EndProperty

	#tag Property, Flags = &h0
		MeshClustPath As String
	#tag EndProperty

	#tag Property, Flags = &h0
		minLen As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		mobile_elementColour As color
	#tag EndProperty

	#tag Property, Flags = &h0
		ncRNAcolour As color
	#tag EndProperty

	#tag Property, Flags = &h0
		nhmmerPath As string
	#tag EndProperty

	#tag Property, Flags = &h0
		nhmmerVersion As string
	#tag EndProperty

	#tag Property, Flags = &h0
		operonColour As color
	#tag EndProperty

	#tag Property, Flags = &h0
		ORFMinLength As Integer = 50
	#tag EndProperty

	#tag Property, Flags = &h0
		ORFStarts As string
	#tag EndProperty

	#tag Property, Flags = &h0
		otherColour As color
	#tag EndProperty

	#tag Property, Flags = &h0
		PathsChanged As boolean
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static gPrefs as TTsSmartPreferences
			  if gPrefs = nil then
			    gPrefs = new TTsSmartPreferences ("SigmoID") // <- enter your app's name here, it's necessary for Windows and Linux
			  end
			  return gPrefs
			End Get
		#tag EndGetter
		Prefs As TTsSmartPreferences
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		ProfileFpath As String
	#tag EndProperty

	#tag Property, Flags = &h0
		ProfileWizardLocked As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Profile_f As folderitem
	#tag EndProperty

	#tag Property, Flags = &h0
		promoterColour As color
	#tag EndProperty

	#tag Property, Flags = &h0
		ProportionalFont As string
	#tag EndProperty

	#tag Property, Flags = &h0
		ProportionalFontSize As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		protein_bindColour As color
	#tag EndProperty

	#tag Property, Flags = &h0
		pythonPath As string
	#tag EndProperty

	#tag Property, Flags = &h0
		repeat_regionColour As color
	#tag EndProperty

	#tag Property, Flags = &h0
		requestCount As integer = 100
	#tag EndProperty

	#tag Property, Flags = &h0
		Resources_f As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		RevCompArr(256) As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		riboswitchColour As color
	#tag EndProperty

	#tag Property, Flags = &h0
		rRNAcolour As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		sig_peptideColour As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		terminatorColour As color
	#tag EndProperty

	#tag Property, Flags = &h0
		tfastxPath As string
	#tag EndProperty

	#tag Property, Flags = &h0
		ThreadCount As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		TomTomPath As string
	#tag EndProperty

	#tag Property, Flags = &h0
		tRNAcolour As color
	#tag EndProperty

	#tag Property, Flags = &h0
		TTlibString As String
	#tag EndProperty

	#tag Property, Flags = &h0
		WebLogoPath As string
	#tag EndProperty


	#tag Constant, Name = kErr1, Type = String, Dynamic = True, Default = \"Error No ", Scope = Public
		#Tag Instance, Platform = Any, Language = ru, Definition  = \"\xD0\x9E\xD1\x88\xD0\xB8\xD0\xB1\xD0\xBA\xD0\xB0 \xE2\x84\x96"
		#Tag Instance, Platform = Any, Language = be, Definition  = \"\xD0\x9F\xD0\xB0\xD0\xBC\xD1\x8B\xD0\xBB\xD0\xBA\xD0\xB0 \xE2\x84\x96"
	#tag EndConstant

	#tag Constant, Name = kErr2, Type = String, Dynamic = True, Default = \". Please try to save important files (under different names) and relaunch SigmoID.", Scope = Public
		#Tag Instance, Platform = Any, Language = ru, Definition  = \". \xD0\xA1\xD0\xBE\xD1\x85\xD1\x80\xD0\xB0\xD0\xBD\xD0\xB8\xD1\x82\xD0\xB5 \xD0\xBA\xD0\xBE\xD0\xBF\xD0\xB8\xD0\xB8 \xD0\xBD\xD1\x83\xD0\xB6\xD0\xBD\xD1\x8B\xD1\x85 \xD1\x84\xD0\xB0\xD0\xB9\xD0\xBB\xD0\xBE\xD0\xB2 \xD0\xB8 \xD0\xBF\xD0\xB5\xD1\x80\xD0\xB5\xD0\xB7\xD0\xB0\xD0\xBF\xD1\x83\xD1\x81\xD1\x82\xD0\xB8\xD1\x82\xD0\xB5 SigmoID."
		#Tag Instance, Platform = Any, Language = be, Definition  = \". \xD0\x97\xD0\xB0\xD1\x85\xD0\xB0\xD0\xB2\xD0\xB0\xD0\xB5\xD1\x86\xD0\xB5 \xD0\xBA\xD0\xBE\xD0\xBF\xD1\x96\xD1\x96 \xD0\xBF\xD0\xB0\xD1\x82\xD1\x80\xD1\x8D\xD0\xB1\xD0\xBD\xD1\x8B\xD1\x85 \xD1\x84\xD0\xB0\xD0\xB9\xD0\xBB\xD0\xB0\xD1\x9E \xD1\x96 \xD0\xBF\xD0\xB5\xD1\x80\xD0\xB0\xD0\xB7\xD0\xB0\xD0\xBF\xD1\x83\xD1\x81\xD1\x86\xD1\x96\xD1\x86\xD0\xB5 SigmoID."
	#tag EndConstant

	#tag Constant, Name = kIn, Type = String, Dynamic = True, Default = \" in ", Scope = Public
		#Tag Instance, Platform = Any, Language = ru, Definition  = \" \xD0\xB2 "
		#Tag Instance, Platform = Any, Language = be, Definition  = \" \xD1\x83 "
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="alimaskpath"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="API_Key"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="attenuatorColour"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="BLASTnDB"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BLASTorganism"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BLASTpDB"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CDScolour"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="cLineEnd"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CodonList"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CPUcores"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="CR"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CRtagPositions"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="email"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FixedFont"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="GBrowseShift"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="gCodeNo"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="geneColour"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="highlightColour"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="hmmBuildPath"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="hmmSearchSettings"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LengthsDiffer"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LF"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LineEnd"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LoadPlainResult"
			Visible=false
			Group="Behavior"
			InitialValue="true"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="MASTpath"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MASTVersion"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="maxLen"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="MEMEpath"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MeshClustPath"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="minLen"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="mobile_elementColour"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="color"
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
			Name="ncRNAcolour"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="nhmmerPath"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="nhmmerVersion"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="operonColour"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ORFMinLength"
			Visible=false
			Group="Behavior"
			InitialValue="50"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ORFStarts"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="otherColour"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="PathsChanged"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ProfileFpath"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ProfileWizardLocked"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="promoterColour"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ProportionalFont"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ProportionalFontSize"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="protein_bindColour"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="pythonPath"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="repeat_regionColour"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="requestCount"
			Visible=false
			Group="Behavior"
			InitialValue="100"
			Type="integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="riboswitchColour"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="rRNAcolour"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="sig_peptideColour"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
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
			Name="terminatorColour"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="tfastxPath"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ThreadCount"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TomTomPath"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="tRNAcolour"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TTlibString"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="WebLogoPath"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
