#tag Class
Class TextLine
Inherits TextSegment
	#tag Event
		Sub LengthChanged()
		  isDirty = true
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub addWord(word as textsegment)
		  if word.length = 0 then Return
		  
		  words.Append(word)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AppendHighlightedWords(storage() as charSelection, lineIndex as integer)
		  dim word as TextSegment
		  
		  for each Word in words
		    if Word.hasBackgroundColor then
		      dim tmp as new CharSelection(self.offset + word.offset, word.length, lineIndex, lineIndex, word.backgroundColor)
		      storage.Append(tmp)
		    end if
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CharToDisplayAt(buffer as gapbuffer, index as integer, displayInvisible as boolean) As string
		  dim theChar as String = buffer.getCharAt(self.offset + index)
		  
		  select case theChar
		  case " "
		    return " "
		    
		  case chr(9)
		    return TABCHAR
		    
		  case chr(10), chr(13)
		    if displayInvisible then Return VISIBLEEOLCHAR
		    return ""
		    
		  else
		    Return theChar
		    
		  end select
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(offset as integer, length as integer, delimiterLength as integer, tabWidth as integer)
		  visible = true
		  folded = False
		  super.Constructor(offset, length)
		  self.delimiterLength = delimiterLength
		  self.TabWidth = tabWidth
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HasPlaceholders() As Boolean
		  Return Placeholders.Ubound > -1
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Highlight(definition as highlightdefinition, storage as gapBuffer, forcedContext as highlightcontext = nil, defaultColor as color = &c0) As highlightcontext
		  ReDim Words(-1)
		  ReDim placeholders(-1)
		  LineSymbols = nil
		  
		  highlighted = False
		  if me.length = 0 then Return nil
		  
		  if definition = nil then
		    ParseLine(storage, DefaultColor)
		    Return nil
		  end if
		  
		  dim myText as String = storage.getText(offset, length)
		  
		  //run the highlighter, using this line as input and adding an extra EOL to make sure the definition matches EOLs
		  context = definition.highlight(myText+chr(13), words, placeholders, forcedContext)
		  
		  //we added an extra eol, remove it.
		  words.Remove(UBound(words))
		  
		  //see if this line is a blockStart
		  isBlockStart = definition.isBlockStart(myText) <> 0
		  isBlockEnd = definition.isBlockEnd(myText)
		  
		  LineSymbols = definition.ScanSymbols(myText)
		  
		  //if the highlighter returned a non nil context, we need to inform the Highlight thread, so it Highlights the next line with the current context.
		  highlighted = true
		  Return Context
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function LocalSegmentForXPos(xpos as integer) As textsegment
		  #if not DebugBuild
		    #pragma DisableBackgroundTasks
		    #pragma DisableBoundsChecking
		    #pragma DisableAutoWaitCursor
		  #endif
		  
		  dim word as TextSegment
		  dim sum as Single
		  
		  for Each Word in words
		    if xpos >= sum and xpos <= sum + Word.width then
		      exit for
		    end if
		    sum = sum + Word.width
		  next
		  
		  if Word = nil then Return nil //no words?
		  
		  //the desired xpos is within word.
		  Return Word
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function NextPlaceholderFromOffset(offset as Integer) As TextPlaceholder
		  if not self.HasPlaceholders then Return nil
		  
		  for each placeholder as TextPlaceholder in Placeholders
		    if Placeholder.offset + self.offset > offset then Return Placeholder
		  next
		  Return nil
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Paint(storage as gapBuffer, g as graphics, x as double, y as double, defaultColor as color, displayInvisible as boolean, cefSelStart as integer, cefSelLength as integer, showLeadingSpace as boolean = true)
		  //draws this line
		  #if not DebugBuild
		    #pragma DisableBackgroundTasks
		    #pragma DisableBoundsChecking
		    #pragma DisableAutoWaitCursor
		  #endif
		  
		  //if there are no words in this line, we need to at least quick-parse it so we can display it.
		  if words.Ubound < 0 and length > 0 then
		    ParseLine(storage, defaultColor)
		  end if
		  
		  width = 0
		  dim text as String
		  dim word as TextSegment
		  dim wordFound as Boolean
		  
		  //paint tokens
		  for i as Integer = 0 to words.Ubound
		    Word = words(i)
		    g.ForeColor = HighlightColor.darkerColor(50)
		    
		    if word.TYPE = TYPE_SPACE then
		      text = " "
		      if not showLeadingSpace and not wordFound then Continue for
		      
		    ElseIf Word.TYPE = TYPE_TAB then
		      text = TABCHAR
		      if not showLeadingSpace and not wordFound then Continue for
		      
		    elseif Word.TYPE = TYPE_EOL then
		      if displayInvisible then
		        text = VISIBLEEOLCHAR
		      else
		        text = ""'
		      end if
		      if not showLeadingSpace and not wordFound then Continue for
		      
		    elseif word.TYPE = TYPE_PLACEHOLDER then
		      wordFound = true
		      //Highlight color
		      if highlighted then
		        g.ForeColor = word.textColor
		      else
		        g.ForeColor = defaultColor
		      end if
		      text = PlaceholderPaddingString + storage.getText(TextPlaceholder(word).textRange.offset + offset, TextPlaceholder(word).textRange.length) + PlaceholderPaddingString
		      
		    else
		      wordFound = true
		      //Highlight color
		      if highlighted then
		        g.ForeColor = word.textColor
		      else
		        g.ForeColor = defaultColor
		      end if
		      text = storage.getText(word.offset + offset, word.length)
		    end if
		    
		    g.Bold = Word.bold or bold
		    g.Underline = Word.underline or underline
		    g.Italic = word.italic or italic
		    
		    //cache width
		    if word.lastFont <> g.TextFont or word.lastSize <> g.TextSize or showInvisible <> displayInvisible then
		      word.width = -1
		    end if
		    if word.width < 0 then
		      word.width = g.StringWidth(text)
		    end if
		    
		    //draw txt
		    if (word.Type = TYPE_WORD or word.Type = TYPE_PLACEHOLDER or displayInvisible) and x + word.width >= 0 and  x < g.Width and y >= 0 and y <= g.Height + g.TextHeight  then
		      if Word.TYPE = TYPE_TAB then
		        Text = VISIBLETABCHAR //a small hack to make the visible char the same width as the tab
		      ElseIf Word.TYPE = TYPE_SPACE then
		        text = VISIBLESPACECHAR
		      end if
		      
		      if word.TYPE = TYPE_PLACEHOLDER then
		        dim oldc as color = g.ForeColor
		        dim colorOffset as Integer = 0
		        
		        //make darker if placeholder is in selection...
		        if self.offset + word.offset >= cefSelStart and self.offset + word.offset + Word.length <= cefSelStart + cefSelLength then
		          colorOffset = 50
		        end if
		        g.ForeColor = TextPlaceholder(word).placeholderBackgroundColor.darkerColor(colorOffset)
		        g.fillRoundRect x, y - g.TextAscent, word.width, g.TextHeight + 1, g.TextHeight, g.TextHeight
		        
		        g.ForeColor = TextPlaceholder(word).placeholderBackgroundColor.darkerColor(30).darkerColor(colorOffset)
		        g.DrawRoundRect x, y - g.TextAscent, word.width, g.TextHeight + 1, g.TextHeight, g.TextHeight
		        g.ForeColor = oldc
		        
		        if self.offset + word.offset >= cefSelStart and self.offset + word.offset + Word.length <= cefSelStart + cefSelLength then
		          g.ForeColor = g.ForeColor.invertColor
		        end if
		      end if
		      
		      //utf-16 just won't work correctly..
		      if text.Encoding <> nil and text.Encoding.Equals(encodings.UTF16) then text = text + " "
		      
		      g.DrawString text, x, y
		      'g.DrawRect x,y - g.TextAscent,word.width,g.TextHeight
		    end if
		    
		    x = x + word.Width
		    width = width + Word.width
		    word.lastFont = g.TextFont
		    word.lastSize = g.TextSize
		  next
		  
		  //ellipsis image.
		  if folded then g.DrawPicture blockFoldedTrailImage, x + 3, y - g.TextAscent + (g.TextHeight - blockFoldedTrailImage.Height) / 2 + 1
		  showInvisible = displayInvisible
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub ParseLine(buffer as gapBuffer, defaultColor as color)
		  //quick parses a line, splitting it using spaces and tabs
		  // http://support.realsoftware.com/listarchives/gettingstarted/2005-05/msg00157.html
		  
		  ReDim Words(-1)
		  dim text as String = buffer.getText(offset, length)
		  if text.Encoding <> nil and text.Encoding.Equals(Encodings.UTF16) then text = text.ConvertEncoding(Encodings.UTF8)
		  
		  dim scanner as new regex
		  scanner.SearchPattern = "[ ]|\t|\x0A|(?:\x0D\x0A?)"
		  
		  dim match as RegExMatch
		  dim offset, length, subStart as Integer
		  dim char as String
		  
		  #if DebugBuild
		    dim tmp as String
		  #endif
		  
		  match = scanner.Search(text)
		  while match <> nil
		    subStart = text.Leftb(match.SubExpressionStartB(0)).len
		    
		    length = substart - offset
		    //everything from last position up to this whitespace
		    addWord new TextSegment(offset, length, TextSegment.TYPE_WORD, defaultColor)
		    #if DebugBuild
		      tmp = buffer.getText(offset + self.offset, length)
		    #endif
		    offset = substart + match.SubExpressionString(0).len
		    
		    //sort out the whitespace
		    char = match.SubExpressionString(0)
		    #if DebugBuild
		      tmp = char
		      tmp = buffer.getText(substart + self.offset, match.SubExpressionString(0).len)
		    #endif
		    
		    select case char
		    case chr(9) //tab
		      addWord new TextSegment(substart, match.SubExpressionString(0).len, TextSegment.TYPE_TAB, defaultColor)
		    case " "//space
		      addWord new TextSegment(substart, match.SubExpressionString(0).len, TextSegment.TYPE_SPACE, defaultColor)
		    case chr(10), chr(13), chr(13) + chr(10)//eol
		      addWord new TextSegment(substart, match.SubExpressionString(0).len, TextSegment.TYPE_EOL, defaultColor)
		    end select
		    
		    match = scanner.Search
		  wend
		  
		  //add any trailing text
		  if offset<  text.len then
		    addWord new TextSegment(offset, text.len - offset, TextSegment.TYPE_WORD, defaultColor)
		    #if DebugBuild
		      tmp = text.Mid(offset + 1)
		    #endif
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function PlaceholderForOffset(offset as Integer) As TextPlaceholder
		  for each placeholder as TextPlaceholder in Placeholders
		    if Placeholder.inRange(offset - self.offset) then Return Placeholder
		  next
		  Return nil
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function PrinterPaint(storage as gapBuffer, g as graphics, x as double, y as double, w as integer, defaultColor as color, displayInvisible as boolean, wrap as boolean) As integer
		  //draws this line
		  #if not DebugBuild
		    #pragma DisableBackgroundTasks
		    #pragma DisableBoundsChecking
		    #pragma DisableAutoWaitCursor
		  #endif
		  
		  dim ox, lines as Integer
		  ox = x
		  lines = 1
		  
		  //if there are no words in this line, we need to at least quick-parse it so we can display it.
		  if UBound(Words) < 0 and length > 0 then
		    ParseLine(storage, defaultColor)
		  end if
		  
		  dim words() as TextSegment
		  
		  width = 0
		  dim text as String
		  dim word as TextSegment
		  
		  //make copies of tokens, in case we need to split
		  for each word in self.words
		    words.Append word.Clone
		  next
		  
		  //paint tokens
		  for i as Integer = 0 to UBound(Words)
		    Word = words(i)
		    g.ForeColor = HighlightColor.darkerColor(50)
		    
		    if word.TYPE = TYPE_SPACE then
		      text = " "
		      
		    ElseIf Word.TYPE = TYPE_TAB then
		      text = TABCHAR
		      
		    elseif Word.TYPE = TYPE_EOL then
		      if displayInvisible then
		        text = VISIBLEEOLCHAR
		      else
		        text = ""
		      end if
		      
		    elseif word.TYPE = TYPE_PLACEHOLDER then
		      //Highlight color
		      if highlighted then
		        g.ForeColor = word.textColor
		      else
		        g.ForeColor = defaultColor
		      end if
		      text = PlaceholderPaddingString + storage.getText(TextPlaceholder(word).textRange.offset + offset, TextPlaceholder(word).textRange.length) + PlaceholderPaddingString
		      
		    else
		      //Highlight color
		      if highlighted then
		        g.ForeColor = word.textColor
		      else
		        g.ForeColor = defaultColor
		      end if
		      text = storage.getText(word.offset + offset, word.length)
		    end if
		    
		    g.Bold = Word.bold or bold
		    g.Underline = Word.underline or underline
		    g.Italic = word.italic or italic
		    
		    //cache width
		    if word.lastFont <> g.TextFont or word.lastSize <> g.TextSize or showInvisible <> displayInvisible then
		      word.width = -1
		    end if
		    if word.width < 0 then
		      word.width = g.StringWidth(text)
		    end if
		    
		    //text wrap
		    if x + word.width > ox + w then
		      //split word?
		      if Word.width > w then
		        dim idx as Integer
		        for idx = 1 to word.length
		          if g.StringWidth(storage.getText(word.offset + offset, idx)) >= w then exit for
		        next
		        idx = idx - 1
		        dim tmp as TextSegment = word.SplitAtLength(idx)
		        if wrap then words.Insert i + 1, tmp
		        i = i - 1
		        Continue for
		      elseif wrap then
		        y = y + g.TextHeight
		        x = ox
		        lines = lines + 1
		      else //just clip
		        Return lines
		      end if
		    end if
		    
		    //draw background, if any
		    if word.hasBackgroundColor and word.Type <> word.TYPE_EOL then
		      dim oc as Color = g.ForeColor
		      g.ForeColor = word.backgroundColor
		      g.FillRect ceil(x), y - g.TextAscent, ceil(word.width), g.TextHeight + 1
		      g.ForeColor = oc
		    end if
		    
		    //draw txt
		    if (word.Type = TYPE_WORD or word.Type = TYPE_PLACEHOLDER or displayInvisible) and x + word.width >= 0 and  x < g.Width and y >= 0 and y <= g.Height + g.TextHeight  then
		      if Word.TYPE = TYPE_TAB then
		        Text = VISIBLETABCHAR //a small hack to make the visible char the same width as the tab
		      ElseIf Word.TYPE = TYPE_SPACE then
		        text = VISIBLESPACECHAR
		      end if
		      
		      if word.TYPE = TYPE_PLACEHOLDER then
		        dim oldc as color = g.ForeColor
		        g.ForeColor = TextPlaceholder(word).placeholderBackgroundColor
		        g.fillRoundRect x, y - g.TextAscent, word.width, g.TextHeight + 1, g.TextHeight, g.TextHeight
		        
		        g.ForeColor = TextPlaceholder(word).placeholderBackgroundColor.darkerColor(30)
		        g.DrawRoundRect x, y - g.TextAscent, word.width, g.TextHeight + 1, g.TextHeight, g.TextHeight
		        g.ForeColor = oldc
		      end if
		      
		      //utf-16 just won't work correctly..
		      if text.Encoding <> nil and text.Encoding.Equals(encodings.UTF16) then text = text + " "
		      
		      g.DrawString text, x, y
		      'g.DrawRect x,y - g.TextAscent,word.width,g.TextHeight
		    end if
		    
		    x = x + word.Width
		    width = width + Word.width
		    word.lastFont = g.TextFont
		    word.lastSize = g.TextSize
		  next
		  
		  showInvisible = displayInvisible
		  Return lines
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub TabWidth(assigns value as integer)
		  TABCHAR = ""
		  for i as Integer = 1 to value
		    TABCHAR = TABCHAR + " "
		  next
		  
		  dim word as TextSegment
		  for each Word in words
		    word.width = -1
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TextWidth(buffer as gapBuffer, g as graphics, displayInvisible as boolean, length as integer = - 1) As Single
		  #if not DebugBuild
		    #pragma DisableBackgroundTasks
		    #pragma DisableBoundsChecking
		    #pragma DisableAutoWaitCursor
		  #endif
		  
		  //gets the text to be displayed by this line.
		  if length = 0 then Return 0
		  if length < 0 then
		    length = self.length
		    
		    if self.lastFont <> g.TextFont or self.lastSize <> g.TextSize then width = 0
		    if TotalWidth > 0 then Return TotalWidth
		  end if
		  
		  self.lastFont = g.TextFont
		  self.lastSize = g.TextSize
		  
		  //unparsed? return the raw text
		  if UBound(words) < 0 then
		    ParseLine(buffer, &c00)
		    if UBound(words) < 0 then Return g.StringWidth(buffer.getText(self.offset, self.length))
		  end if
		  
		  dim ret as Single
		  dim word as TextSegment
		  dim charsToRead as Integer
		  dim text as String
		  dim u as Integer = UBound(words)
		  
		  for i as integer = 0 to u
		    Word = words(i)
		    
		    charsToRead = word.length
		    select case word.TYPE
		    case TextSegment.TYPE_SPACE
		      text = " "
		      
		    case TextSegment.TYPE_TAB
		      text = TABCHAR
		      
		    case TextSegment.TYPE_EOL
		      if displayInvisible then
		        text = " "
		      else
		        text = ""
		      end if
		      
		    case TextSegment.TYPE_PLACEHOLDER
		      text = PlaceholderPaddingString + buffer.getText(TextPlaceholder(word).textRange.offset + offset, TextPlaceholder(word).textRange.length) + PlaceholderPaddingString
		      
		    else
		      //find out the number of chars to read in the current token
		      if word.offset + word.length > length then
		        'charsToRead = word.length
		        'else
		        charsToRead = length - word.offset
		      end if
		      
		      text = buffer.getText(word.offset + self.offset, charsToRead)
		    end select
		    
		    if word.lastFont <> g.TextFont or word.lastSize <> g.TextSize then
		      word.width = -1
		    end if
		    
		    if word.width < 0 or charsToRead < word.length then
		      //measure
		      g.Bold = word.bold
		      g.Italic = Word.italic
		      g.Underline = Word.underline
		      ret = ret + g.StringWidth(text)
		    else
		      ret = ret + word.width
		    end if
		    
		    word.lastFont = g.TextFont
		    word.lastSize = g.TextSize
		    if word.offset + Word.length >= length then exit for
		  next
		  
		  Return ret
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TotalWidth() As integer
		  Return width
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		Context As highlightContext
	#tag EndProperty

	#tag Property, Flags = &h0
		delimiterLength As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		folded As boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected highlighted As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		icon As picture
	#tag EndProperty

	#tag Property, Flags = &h0
		isBlockEnd As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		isBlockStart As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		isDirty As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		LineSymbols As dictionary
	#tag EndProperty

	#tag Property, Flags = &h21
		Private placeholders() As TextPlaceholder
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return width
			End Get
		#tag EndGetter
		ScreenWidth As Integer
	#tag EndComputedProperty

	#tag Property, Flags = &h1
		Protected showInvisible As boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected TABCHAR As String
	#tag EndProperty

	#tag Property, Flags = &h0
		visible As boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected words() As textsegment
	#tag EndProperty


	#tag Constant, Name = PlaceholderPaddingString, Type = String, Dynamic = False, Default = \"  ", Scope = Private
	#tag EndConstant

	#tag Constant, Name = VISIBLEEOLCHAR, Type = String, Dynamic = False, Default = \"\xC2\xB6", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = VISIBLESPACECHAR, Type = String, Dynamic = False, Default = \"\xC2\xB7", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = VISIBLETABCHAR, Type = String, Dynamic = False, Default = \"", Scope = Protected
		#Tag Instance, Platform = Mac OS, Language = Default, Definition  = \"\xE2\x9E\x9D"
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"\xC2\xBB"
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="BackgroundColor"
			Group="Behavior"
			InitialValue="&h000000"
			Type="color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="bold"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="delimiterLength"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="EndOffset"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="folded"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasBackgroundColor"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="icon"
			Group="Behavior"
			InitialValue="0"
			Type="picture"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ID"
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
			Name="isBlockEnd"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="isBlockStart"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="isDirty"
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="italic"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="length"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="offset"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ScreenWidth"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextColor"
			Group="Behavior"
			InitialValue="&h000000"
			Type="color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Type"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="underline"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="visible"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="width"
			Group="Behavior"
			InitialValue="0"
			Type="double"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass