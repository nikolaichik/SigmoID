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
		    
		    'dpi = screenDPI
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
		  
		  'ConvertEncoding to ASCII
		  return Uppercase(Ge)
		  
		  
		  
		  Exception err
		    ExceptionHandler(err,"Globals:CleanUp")
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
		Function DrawRuler(width as integer, baseY as integer, bp as integer) As Group2D
		  'Routine to draw  the ruler on linear maps
		  
		  'mapwidth, 20, me.seq.length
		  
		  dim Ruler as New Group2D
		  dim n,m as integer
		  dim pixperbp,x as double
		  'dim p as new picture (1,1,32)
		  
		  pixPerbp=width/bp
		  
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
		  cli=hmmbuildpath+" "+outfilepath+" "+infilepath
		  
		  
		  
		  sh=New Shell
		  sh.mode=0
		  sh.TimeOut=-1
		  sh.execute cli
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
		          FastaHeader=">"+site.value("geneLocusTag")
		          FastaHeader=FastaHeader+" VIMSSId="+site.value("geneVIMSSId")
		          FastaHeader=FastaHeader+" Pos="+site.value("position")
		          FastaHeader=FastaHeader+" Score="+site.value("score")
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
		        
		        
		      end if
		      
		    next
		    
		    return AllFasta
		    
		  else
		    'single site is of no use for SigmoID!
		    logowin.WriteToSTDOUT("RegPrecise contains just one site for this regulator. Just ignore it!")
		    return ""
		  end if
		  Exception err
		    ExceptionHandler(err,"RegPreciseWin:JSON2Fasta")
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
		    PathsChanged=false
		  end if
		  
		  SettingsWin.tfastxPathField.text=tfastxPath
		  SettingsWin.alimaskPathField.text=alimaskpath
		  SettingsWin.nhmmerpathField.text=nhmmerpath
		  SettingsWin.hmmBuildPathField.text=hmmBuildPath
		  SettingsWin.MEMEPathField.text=MEMEpath
		  SettingsWin.MASTPathField.text=MASTpath
		  
		  'weblogopath=Prefs.value("weblogopath",SettingsWin.weblogoPathField.text)
		  BLASTnDB=Prefs.value("BLASTnDB","refseq_genomic")
		  BLASTpDB=Prefs.value("BLASTpDB","SwissProt")
		  BLASTorganism=Prefs.value("BLASTorganism","")
		  
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
		        pf=GetFolderItem("").Child("DebugSigmoID Resources").Child("Profiles").Child("Pectobacterium")
		      #else
		        pf=GetFolderItem("").Child("SigmoID Resources").Child("Profiles").Child("Pectobacterium")
		      #endif
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
		  dim tos as TextOutputStream
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
		  
		  'http://regprecise.lbl.gov/RegPrecise/regulon.jsp?regulon_id=12127
		  'http://regprecise.lbl.gov/RegPrecise/regulog.jsp?regulog_id=1307
		  
		  WebBrowserWin.show
		  If IsRegulog then
		    WebBrowserWin.LoadPage("http://regprecise.lbl.gov/RegPrecise/regulog.jsp?regulog_id="+str(ID))
		  else
		    WebBrowserWin.LoadPage("http://regprecise.lbl.gov/RegPrecise/regulon.jsp?regulon_id="+str(ID))
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RevCompAlignment(infile as folderitem, outfile as folderitem)
		  dim instream as TextInputStream
		  dim outstream As TextOutputStream
		  dim aLine,title as string
		  
		  InStream = infile.OpenAsTextFile
		  OutStream = outfile.createTextFile 'make the file to store the stuff in
		  while not InStream.EOF
		    
		    aLine=trim(InStream.readLine)
		    if left(aLine,1)=">" then
		      OutStream.writeLine ">f_"+right(aline,len(aline)-1)
		      title=aline
		    else
		      if aline<>"" then
		        OutStream.writeLine aline
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
		  
		  
		  pic=newPicture(20,20,1)
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
		        FontSelectionWin.FixedFontSelMenu.addrow CurrentFont
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
		    MsgBox "At least one fixed width font is required for proper work of the programme.  Please install such a font and run the programme again."
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
		        FontSelectionWin.PropFontSelMenu.addrow CurrentFont
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
		    MsgBox "At least one proportional font is required for proper work of the programme.  Please install such a font and run the programme again."
		    quit
		  end
		  
		  return FF+";"+PF+";"+str(GoodFFont)+";"+str(GoodPFont)
		  
		  Exception err
		    ExceptionHandler(err,"Globals:SetDefaultFonts")
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetDefaultPaths()
		  'set defaults:
		  dim f as folderitem
		  
		  #if TargetWin32
		    f=resources_f.child("tfastx.exe")
		    if f<>Nil then
		      if f.exists then
		        tfastxPath=f.ShellPath
		      end if
		    end if
		    f=resources_f.child("alimask.exe")
		    if f<>Nil then
		      if f.exists then
		        alimaskpath=f.ShellPath
		      end if
		    end if
		    f=resources_f.child("nhmmer.exe")
		    if f<>Nil then
		      if f.exists then
		        nhmmerpath=f.ShellPath
		      end if
		    end if
		    f=resources_f.child("hmmBuild.exe")
		    if f<>Nil then
		      if f.exists then
		        hmmBuildPath=f.ShellPath
		      end if
		    end if
		    f=resources_f.child("meme.exe")
		    if f<>Nil then
		      if f.exists then
		        MEMEpath=f.ShellPath
		      end if
		    end if
		    f=resources_f.child("mast.exe")
		    if f<>Nil then
		      if f.exists then
		        MASTpath=f.ShellPath
		      end if
		    end if
		  #else
		    f=resources_f.child("tfastx")
		    if f<>Nil then
		      if f.exists then
		        tfastxPath=f.ShellPath
		      end if
		    end if
		    f=resources_f.child("alimask")
		    if f<>Nil then
		      if f.exists then
		        alimaskpath=f.ShellPath
		      end if
		    end if
		    f=resources_f.child("nhmmer")
		    if f<>Nil then
		      if f.exists then
		        nhmmerpath=f.ShellPath
		      end if
		    end if
		    f=resources_f.child("hmmbuild")
		    if f<>Nil then
		      if f.exists then
		        hmmBuildPath=f.ShellPath
		      end if
		    end if
		    f=resources_f.child("meme")
		    if f<>Nil then
		      if f.exists then
		        MEMEpath=f.ShellPath
		      end if
		    end if
		    f=resources_f.child("mast")
		    if f<>Nil then
		      if f.exists then
		        MASTpath=f.ShellPath
		      end if
		    end if
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
		  
		  
		  msgbox "Server error: "+msg
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
		  dim TFfastaFile as folderitem = SpecialFolder.Temporary.child("TF.fasta")
		  if TFfastaFile<>nil then
		    dim outstream As TextOutputStream
		    outstream = TextOutputStream.Create(TFfastaFile)
		    outstream.write query
		    outstream.close
		    
		    
		    cli=""
		    dim fastaOptions as string = " -b 3 -d 3 "
		    
		    dim genomefilepath as string
		    
		    GenomeFilePath=chr(34)+LogoWin.GenomeFile.nativepath+" 1"+chr(34) 'need the quotes to include gbk format anyway
		    'tfastx36 [-options] query_file library_file [ktup]
		    cli=tfastxPath+fastaOptions+TFfastaFile.shellpath+" "+GenomeFilePath
		    
		    sh=New Shell
		    sh.mode=0
		    sh.TimeOut=-1
		    sh.execute cli
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
		  dim  m,n,GeneLength,aa0,up  as integer
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
		    ExceptionHandler(err,"Globals:Translate")
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
		  sh.execute cli
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
		BLASTnDB As string
	#tag EndProperty

	#tag Property, Flags = &h0
		BLASTorganism As string
	#tag EndProperty

	#tag Property, Flags = &h0
		BLASTpDB As string
	#tag EndProperty

	#tag Property, Flags = &h0
		cLineEnd As String
	#tag EndProperty

	#tag Property, Flags = &h0
		CodonList As string
	#tag EndProperty

	#tag Property, Flags = &h0
		CR As string
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
		hmmBuildPath As string
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
		minLen As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		nhmmerPath As string
	#tag EndProperty

	#tag Property, Flags = &h0
		nhmmerVersion As string
	#tag EndProperty

	#tag Property, Flags = &h0
		ORFMinLength As Integer = 50
	#tag EndProperty

	#tag Property, Flags = &h0
		ORFStarts As string
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
		ProportionalFont As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Resources_f As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		RevCompArr(256) As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		tfastxPath As string
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
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BLASTnDB"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BLASTorganism"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BLASTpDB"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="cLineEnd"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CodonList"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CR"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FixedFont"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="GBrowseShift"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="gCodeNo"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="hmmBuildPath"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LengthsDiffer"
			Group="Behavior"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LF"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LineEnd"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LoadPlainResult"
			Group="Behavior"
			InitialValue="true"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MASTpath"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MASTVersion"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="maxLen"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MEMEpath"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="minLen"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="nhmmerPath"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="nhmmerVersion"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ORFMinLength"
			Group="Behavior"
			InitialValue="50"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ORFStarts"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PathsChanged"
			Group="Behavior"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ProfileFpath"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ProfileWizardLocked"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ProportionalFont"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="tfastxPath"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="WebLogoPath"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
