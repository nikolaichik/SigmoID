#tag Class
Protected Class CustomTabPanelTabs
Inherits canvas
	#tag Event
		Sub GotFocus()
		  '
		End Sub
	#tag EndEvent

	#tag Event
		Sub LostFocus()
		  '
		End Sub
	#tag EndEvent

	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  dim i as Integer
		  
		  if not me.enabled then Return False
		  
		  currentActionTab=nil
		  
		  //click on the moreTabs button?
		  if scrollRightIcn.mouseDown(x,y) then
		    Repaint
		    doContextualMissingTabs
		    Return true
		  end if
		  
		  //check all the tabs...
		  for i=UBound(drawOrder) downto 0
		    if drawOrder(i).mouseDown(x,y) then
		      currentActionTab = drawOrder(i)
		      
		      dragRect(0) = currentActionTab.x
		      dragRect(1) = currentActionTab.y
		      dragRect(2) = currentActionTab.width
		      dragRect(3) = currentActionTab.height
		      exit
		    end if
		  next
		  
		  //TODO, add some property to tabs to include a menu or something, or check for a specific hitpoint within the tab...
		  dim base as new MenuItem
		  if currentActionTab <> nil and ConstructTabContextualMenu(currentActionTab, base) then
		    self.value = currentActionTab.index
		    self.Repaint
		    
		    dim container as Window
		    dim locx as integer
		    dim locy as Integer
		    
		    select case facing
		    case NORTH, SOUTH
		      locx = me.Left + currentActionTab.x + leftTabImg(me.Facing).Width
		      locy = me.top + me.Height
		      
		    case EAST, WEST
		      locx = me.Left + me.Width
		      locy = me.top + currentActionTab.y + leftTabImg(me.Facing).Height
		      
		    end select
		    
		    Container = me.Window
		    while true
		      locx = locx + Container.Left
		      locy = locy + Container.top
		      if container isa ContainerControl then
		        Container = ContainerControl(Container).Window
		      elseif Container isa Window then
		        Exit
		      end if
		    Wend
		    
		    base = base.PopUp(locx, locy)
		    if base <> nil then
		      TabContextualMenuAction(currentActionTab, base)
		    end if
		    
		    Return False
		  end if
		  
		  Repaint
		  
		  draggingWholeTab = False
		  mouseDownTimeStamp = Ticks
		  lastMouseX = x
		  lastMouseY = y
		  
		  Return currentActionTab <> nil
		End Function
	#tag EndEvent

	#tag Event
		Sub MouseDrag(X As Integer, Y As Integer)
		  if currentActionTab = nil then Return
		  
		  if Facing = NORTH or facing = SOUTH then
		    dragOffsetX = x - lastMouseX
		    dragOffsetY = 0
		  else
		    dragOffsetY = y - lastMouseY
		    dragOffsetX = 0
		  end if
		  
		  if (abs(dragOffsetX + dragOffsetY) > 3) and EnableTabReordering and (draggingWholeTab or Ticks < mouseDownTimeStamp + 60) then
		    draggingWholeTab = true
		    swapTabsIfNeeded
		  end if
		  
		  //visual feedback
		  dim over as Boolean
		  over = currentActionTab.mouseDrag(x,y)
		  
		  if over or draggingWholeTab then self.Repaint
		End Sub
	#tag EndEvent

	#tag Event
		Sub MouseEnter()
		  '
		End Sub
	#tag EndEvent

	#tag Event
		Sub MouseExit()
		  if scrollRightIcn.mouseMove(-1,-1) then Repaint
		End Sub
	#tag EndEvent

	#tag Event
		Sub MouseMove(X As Integer, Y As Integer)
		  //visual feedback
		  dim tmp as CustomTab
		  dim over as Boolean
		  
		  for Each tmp in tabs
		    if tmp.mouseMove(x,y) then
		      over=true
		    end if
		  next
		  
		  over=over or scrollRightIcn.mouseMove(x,y)
		  
		  if over then self.Repaint
		End Sub
	#tag EndEvent

	#tag Event
		Sub MouseUp(X As Integer, Y As Integer)
		  draggingWholeTab = False
		  
		  //there's no active tab, check the moreTabs button...
		  if currentActionTab=nil then
		    call scrollRightIcn.mouseUp(x,y)
		    self.Repaint
		    Return
		  end if
		  
		  dim upOk, closing as Boolean
		  //either remove a tab (if clicked on the close box) or bring a tab to the front (make active)
		  
		  closing=currentActionTab.isClosing
		  upOk=currentActionTab.mouseUp(x,y)
		  
		  if closing and upOk then
		    //close tab...
		    removeTab(currentActionTab.index)
		    
		  elseif upOk and not closing then
		    //move tab to front...
		    value = currentActionTab.index
		  end if
		  
		  self.Repaint
		End Sub
	#tag EndEvent

	#tag Event
		Function MouseWheel(X As Integer, Y As Integer, deltaX as Integer, deltaY as Integer) As Boolean
		  '
		End Function
	#tag EndEvent

	#tag Event
		Sub Open()
		  // most of the double buffering code, original from Aaron Ballman.
		  // Check to see whether the user is on a system that
		  // requires double buffering
		  #if TargetWin32
		    // On Windows, we always want to double buffer
		    mDoubleBuffer = true
		  #elseif TargetMacOS
		    // We only want to double buffer on the Mac if
		    // we're running on OS 9.  OS X automatically
		    // double buffers for us
		    dim vers as Integer
		    if System.Gestalt( "sysv", vers ) then
		      mDoubleBuffer = vers < &h1000
		    end if
		  #endif
		  
		  if mDoubleBuffer then
		    // We don't want the background to be erased every time
		    // since we're doing our own buffering.  This would cause
		    // a lot of flickering.
		    
		    //this is useful just in rb>=2005
		    me.EraseBackground = false
		  end if
		  
		  fitSize
		  
		  //More tabs icon
		  scrollRightIcn=new LittleMiscButton(moreTabsData,moreTabsMask,moreTabsMaskOver,moreTabsMaskClicked)
		  
		  lastWidth=Width
		  lastHeight=Height
		  
		  // Call the user's Open event
		  Open
		End Sub
	#tag EndEvent

	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  // We're going to implement the paint event ourselves
		  // so that we can automatically do the double buffering
		  
		  // Check our back buffer to make sure we've got
		  // one that we can draw to
		  CheckBackBuffer
		  
		  if mDoubleBuffer then
		    // Erase the back buffer ourselves
		    mBackBuffer.Graphics.ForeColor = fillColor
		    mBackBuffer.Graphics.FillRect( 0, 0, me.Width, me.Height )
		    
		    // Set the background color to be black, like
		    // a normal canvas would be
		    mBackBuffer.Graphics.ForeColor = &c000000
		    
		    // Now call the user's paint event, but pass in
		    // our back buffer
		    repaint( mBackBuffer.Graphics )
		    
		    // Now we can draw the back buffer to the screen
		    g.DrawPicture( mBackBuffer, 0, 0, me.Width, me.Height )
		  else
		    // We're not double buffering, so just pass the Graphics
		    // object on to the user's Paint event.
		    repaint( g )
		  end if
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub animateTabsLeft(startingIndex as integer, targetX as integer)
		  //do the shifting animation after a tab has been removed
		  #pragma DisableBoundsChecking
		  #pragma DisableBackgroundTasks
		  
		  dim steps, currIndex, offset, lastFrame as Integer
		  
		  if startingIndex>UBound(tabs) then
		    self.Repaint
		    Return
		  end if
		  
		  offset=(tabs(startingIndex).x-Targetx)/7
		  
		  for steps=1 to 7
		    for currIndex=startingIndex to UBound(tabs)
		      tabs(currIndex).x=tabs(currIndex).x-offset
		    next
		    
		    //make sure me see the animation! delay animation it for a 1/60th of a second
		    While ticks<lastFrame+1
		    Wend
		    lastFrame=ticks
		    
		    Repaint
		  next
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub animateTabsUp(startingIndex as integer, targetY as integer)
		  //do the shifting animation after a tab has been removed
		  #pragma DisableBoundsChecking
		  #pragma DisableBackgroundTasks
		  
		  dim steps, currIndex, offset, lastFrame as Integer
		  
		  if startingIndex>UBound(tabs) then
		    self.Repaint
		    Return
		  end if
		  
		  offset=(tabs(startingIndex).y-Targety)/7
		  
		  for steps=1 to 7
		    for currIndex=startingIndex to UBound(tabs)
		      tabs(currIndex).y=tabs(currIndex).y-offset
		    next
		    
		    //make sure me see the animation! delay animation it for a 1/60th of a second
		    While ticks<lastFrame+1
		    Wend
		    lastFrame=ticks
		    
		    Repaint
		  next
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub appendTab(tab as CustomTab)
		  //append a tab
		  
		  //set the default tab location...
		  select case Facing
		  case NORTH
		    tab.x=nextLoc
		    tab.y=0
		  case SOUTH
		    tab.x=nextLoc
		    tab.y=tabSeparatorS.Height
		  case EAST
		    tab.x=tabSeparatorW.Width
		    tab.y=nextLoc
		  case WEST
		    tab.x=0
		    tab.y=nextLoc
		  End Select
		  
		  tabs.Append(tab)
		  drawOrder.Append(tab)
		  tab.index = UBound(tabs)
		  tab.tabValue = tab.index
		  
		  sizeChanged
		  
		  self.Repaint
		  
		  if panel<>nil then
		    panel.Append
		    PanelPageAdded(panel, value)
		  end if
		  
		  doTabChange(value)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub appendTab(caption as string)
		  appendTab(new CustomTab(caption,nil,false, facing))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub appendTab(caption as string, closeBox as boolean)
		  appendTab(new CustomTab(caption,nil,closeBox, facing))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub appendTab(caption as string, icon as picture)
		  appendTab(new CustomTab(caption,icon,false, facing))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub appendTab(caption as string, icon as picture, closeBox as boolean)
		  appendTab(new CustomTab(caption,icon,closeBox, facing))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub attachPanel(panel as pagePanel)
		  if Panel=nil then Return
		  self.panel=panel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function caption(tabIndex as integer) As string
		  //returns the caption of a given tab
		  if tabIndex<0 or tabIndex>UBound(tabs) then Return ""
		  
		  Return tabs(tabIndex).caption
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub caption(tabIndex as integer, assigns value as string)
		  //changes the caption of a given tab
		  if tabIndex<0 or tabIndex>UBound(tabs) then Return
		  
		  tabs(tabIndex).caption=value
		  sizeChanged
		  self.Repaint
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub CheckBackBuffer()
		  // We want to make sure our back buffer is the proper size
		  // and ready for drawing to
		  
		  dim create as Boolean
		  
		  if mDoubleBuffer then
		    // If we don't have a back buffer, then we need to create one
		    // If our size has gotten larger than our
		    // back buffer, then we need to create a new one
		    create=mBackBuffer = nil or me.Width <> mBackBuffer.Width or me.Height <> mBackBuffer.Height
		    
		    if create then
		      mBackBuffer = new Picture( me.Width, me.Height, 32 )
		      sizeChanged
		    end if
		    
		  else
		    if me.Width <> lastWidth or me.Height <> lastHeight then
		      lastWidth=Width
		      lastHeight=Height
		      sizeChanged
		    end if
		  end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub clear()
		  //erase tabs
		  redim tabs(-1)
		  Redim drawOrder(-1)
		  
		  self.Repaint
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function closeBox(tabIndex as integer) As boolean
		  //returns if a given tab has a closeBox
		  if tabIndex<0 or tabIndex>UBound(tabs) then Return false
		  
		  Return tabs(tabIndex).closeBox
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub closeBox(tabIndex as integer, assigns value as boolean)
		  //sets if a given tab has a closeBox
		  if tabIndex<0 or tabIndex>UBound(tabs) then Return
		  
		  tabs(tabIndex).closeBox=value
		  sizeChanged
		  self.Repaint
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub detachPanel()
		  Panel=nil
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub doContextualMissingTabs()
		  dim menu as new MenuItem
		  dim tmp as MenuItem
		  
		  dim i as Integer
		  
		  for i=hiddenIndex to UBound(tabs)
		    tmp=new MenuItem(caption(i))
		    tmp.tag=i
		    if value=i then tmp.Checked=true
		    if icon(i) <> nil then tmp.Icon = icon(i)
		    menu.Append(tmp)
		  next
		  
		  dim container as Window
		  dim locx, locy as integer
		  
		  //find the window where this control is...
		  //since the control can be deeeeeeep whithin container controls...
		  locx=me.Left+me.Width
		  locy=me.top+scrollRightIcn.y
		  
		  Container=me.Window
		  while true
		    locx=locx+Container.Left
		    locy=locy+Container.top
		    if container isa ContainerControl then
		      Container=ContainerControl(Container).Window
		    elseif Container isa Window then
		      Exit
		    end if
		  Wend
		  
		  tmp=menu.PopUp(locx,locy)'(container.left+me.Left+me.Width, container.top+me.top+scrollRightIcn.y)'(window.left+me.Left+me.Width,window.top+me.top+me.Height/2)
		  if tmp=nil then Return
		  
		  value=tmp.tag
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub doTabChange(tabIndex as integer)
		  if Panel<>nil then
		    panel.Value = tabs(tabIndex).tabValue
		  end if
		  
		  tabChanged(tabIndex)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub doTabRemove(tabIndex as integer, tabValue as Integer)
		  //remove page from PagePanel, if any
		  if panel<>nil then
		    panel.Remove(tabValue)
		  end if
		  
		  fixTabValues(tabValue)
		  sizeChanged
		  
		  if panel <> nil then
		    dim idx as Integer = me.value
		    dim tab as Integer = -1
		    
		    if idx >= 0 then
		      tab = tabs(idx).tabValue
		    end if
		    
		    panel.Value = tab
		  end if
		  
		  tabRemoved(tabIndex)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function drawIndex(forTabIndex as integer) As integer
		  //returns the drawOrder of a givenTab
		  dim i as Integer
		  
		  for i=0 to UBound(drawOrder)
		    if drawOrder(i).index=forTabIndex then
		      Return i
		    end if
		  next
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function enabled(tabIndex as integer) As boolean
		  //returns if a given tab has a closeBox
		  if tabIndex<0 or tabIndex>UBound(tabs) then Return false
		  
		  Return tabs(tabIndex).enabled
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub enabled(tabIndex as integer, assigns value as boolean)
		  //sets if a given tab has a closeBox
		  if tabIndex<0 or tabIndex>UBound(tabs) then Return
		  
		  tabs(tabIndex).enabled=value
		  self.Repaint
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub fitSize()
		  select case Facing
		  case NORTH, SOUTH
		    me.Height=tabBackground.Height+tabSeparator.Height
		  case EAST, WEST
		    me.Width=tabBackground.Height+tabSeparator.Height
		  End Select
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub fixLocations()
		  //fixes indexes and coordinates of all tabs
		  dim i as Integer
		  
		  nextLoc=0
		  for i=0 to UBound(tabs)
		    select case Facing
		    case NORTH, SOUTH
		      tabs(i).x=nextLoc
		      tabs(i).index=i
		      nextLoc=nextLoc+tabs(i).width-rightTabOutline.Width
		    case EAST, WEST
		      tabs(i).y=nextLoc
		      tabs(i).index=i
		      nextLoc=nextLoc+tabs(i).height-rightTabOutline.Width
		    end Select
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub fixTabValues(removedTabValue as integer)
		  for i as Integer = 0 to UBound(tabs)
		    if tabs(i).tabValue > removedTabValue then
		      tabs(i).tabValue = tabs(i).tabValue - 1
		    end if
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function icon(tabIndex as integer) As picture
		  //returns if a given tab has an icon
		  if tabIndex<0 or tabIndex>UBound(tabs) then Return nil
		  
		  Return tabs(tabIndex).icon
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub icon(tabIndex as integer, assigns value as picture)
		  //sets if a given tab has an icon
		  if tabIndex<0 or tabIndex>UBound(tabs) then Return
		  
		  tabs(tabIndex).icon=value
		  sizeChanged
		  self.Repaint
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub moveTabToFront(index as integer)
		  if UBound(tabs)<0 then Return
		  
		  //set is as the frontmost by moving it to the end of the draw queue
		  drawOrder.Remove(drawIndex(index))
		  drawOrder.Append(tabs(index))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Refresh(eraseBackground as Boolean = true)
		  // We don't do anything here because we don't want the user
		  // to be able to call refresh
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub removeTab(index as integer)
		  //check if the user wants to cancel the closing of the tab...
		  if CancelRemoveTab(index) then Return
		  
		  //remove a tab
		  dim targetLoc as integer
		  if index<0 or index>UBound(tabs) then Return
		  
		  dim tabValue as Integer = tabs(index).tabValue
		  tabs.Remove index
		  drawOrder.Remove(drawIndex(index))
		  
		  //find coordinates for shifting animation...
		  if index=0 then
		    targetLoc=0
		  else
		    if Facing=NORTH or Facing=SOUTH then
		      targetLoc=tabs(index-1).x+tabs(index-1).width-rightTabOutline.Width
		    else
		      targetLoc=tabs(index-1).y+tabs(index-1).height-rightTabOutline.Width
		    End If
		  end if
		  
		  if Facing=NORTH or Facing=SOUTH then
		    animateTabsLeft(index,targetLoc)
		  else
		    animateTabsUp(index,targetLoc)
		  End If
		  
		  //do remove cleanup
		  doTabRemove(Index, tabValue)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Repaint()
		  // We force the user to call Redraw instead of Refresh because
		  // we don't want the user to be able to accidentally cause an
		  // entire screen erase.  So we override Refresh by making it
		  // a private function.
		  
		  #if TargetWin32
		    Declare Sub InvalidateRect Lib "User32" ( hwnd as Integer, lpRect as Ptr, erase as Boolean )
		    
		    dim r as new MemoryBlock( 16 )
		    r.Long( 0 ) = 0
		    r.Long( 4 ) = 0
		    r.Long( 8 ) = me.Width
		    r.Long( 12 ) = me.Height
		    
		    InvalidateRect( me.Handle, r, false )
		    
		    Declare Sub UpdateWindow Lib "User32" ( hwnd as Integer )
		    
		    dim w as Window
		    w=me.Window
		    while true
		      if w isa ContainerControl then
		        w=ContainerControl(w).Window
		      elseif w isa Window then
		        Exit
		      end if
		    Wend
		    
		    UpdateWindow( w.Handle )
		  #else
		    super.Refresh( false )
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Repaint(g as graphics)
		  //draw all tabs
		  #pragma DisableBackgroundTasks
		  #pragma DisableBoundsChecking
		  
		  dim i, cnt as Integer
		  dim sx as Integer=0
		  dim tab as CustomTab
		  dim hiddenTabs as Boolean
		  
		  //separator
		  g.ForeColor=&caaaaaa
		  if Facing=NORTH then
		    g.DrawPicture tabSeparator, 0, g.Height-tabSeparator.Height, Width, tabSeparator.Height, 0, 0, tabSeparator.Width, tabSeparator.Height
		    g.DrawLine 0,g.Height,0,g.Height-tabSeparator.Height
		    g.DrawLine Width-1,g.Height,Width-1,g.Height-tabSeparator.Height
		  elseif Facing=SOUTH then
		    g.DrawPicture tabSeparatorS,0,0,Width,tabSeparatorS.Height,0,0,tabSeparatorS.Width,tabSeparatorS.Height
		    g.DrawLine 0,0,0,tabSeparatorS.Height-1
		    g.DrawLine Width-1,0,Width-1,tabSeparatorS.Height-1
		  elseif Facing=EAST then
		    g.DrawPicture tabSeparatorE,0,0,tabSeparatorE.Width,Height,0,0,tabSeparatorE.Width,tabSeparatorE.Height
		    g.DrawLine 0,0,tabSeparatorE.Width-1,0
		    g.DrawLine 0,Height-1,tabSeparatorE.Width-1, Height-1
		  elseif Facing=WEST then
		    g.DrawPicture tabSeparatorW, g.Width-tabSeparatorW.Width, 0, tabSeparatorW.Width, Height, 0, 0, tabSeparatorW.Width,tabSeparatorW.Height
		    g.DrawLine g.Width, 0, g.Width-tabSeparatorW.Width,0
		    g.DrawLine g.Width, Height-1, g.Width-tabSeparatorW.Width, Height-1
		  end if
		  
		  //no tabs? return...
		  if UBound(tabs)<0 then Return
		  
		  //tabs
		  cnt=UBound(drawOrder)
		  hiddenIndex=cnt
		  for i=0 to cnt
		    tab=drawOrder(i)
		    if tabFits(tab) then
		      tab.visible=true
		    else
		      tab.visible=False
		      hiddenTabs=true
		      if tab.index<hiddenIndex then hiddenIndex=tab.index
		    end if
		    tab.paint(g,i=cnt)
		  Next
		  
		  //moreTabs button
		  scrollRightIcn.x=g.Width-17
		  if Facing=NORTH then
		    scrollRightIcn.Y=2
		  elseif Facing=SOUTH then
		    scrollRightIcn.Y=g.Height-scrollRightIcn.Height-2
		  elseif Facing=EAST then
		    scrollRightIcn.Y=g.Height-scrollRightIcn.Height-2
		  elseif Facing=WEST then
		    scrollRightIcn.x=scrollRightIcn.x-tabSeparatorW.Width-1
		    scrollRightIcn.Y=g.Height-scrollRightIcn.Height-2
		  end if
		  
		  scrollRightIcn.visible=hiddenTabs
		  scrollRightIcn.paint(g)
		  
		  //grayout if not enabled...
		  if not me.Active or not me.Enabled then
		    dim tmp as Picture
		    tmp=NewPicture(Width,Height,32)
		    tmp.mask.graphics.ForeColor=&c888888
		    tmp.mask.graphics.FillRect 0,0,Width,Height
		    
		    tmp.graphics.ForeColor=&cffffff
		    tmp.graphics.FillRect 0,0,Width,Height
		    g.DrawPicture tmp,0,0
		  end if
		  
		  if draggingWholeTab then
		    g.DrawPicture currentActionTab.alphaTabPicture(0.7), max(dragRect(0) + dragOffsetX, 0), max(dragRect(1) + dragOffsetY, 0)
		  end if
		  
		  'g.DrawRect 0,0,g.Width,g.Height
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub sizeChanged()
		  //shrink the tabs!
		  dim i, tabSize, endIdx, tx as Integer
		  
		  if scrollRightIcn <> nil and scrollRightIcn.visible then
		    endIdx = hiddenIndex-1
		  else
		    endIdx = UBound(tabs)
		  end if
		  
		  if endIdx<0 then
		    fixLocations
		    Return
		  end if
		  
		  //find the shrinking offset
		  if Facing=NORTH or Facing=SOUTH then
		    tabSize=round((Width-(tabs(endIdx).width+tabs(endIdx).x+rightTabOutline.Width))/tabCount)
		  else
		    tabSize=round((Height-(tabs(endIdx).height+tabs(endIdx).y+rightTabOutline.Width))/tabCount)
		  End If
		  
		  if tabSize=0 then
		    fixLocations
		    Return
		  end if
		  
		  if Facing=NORTH or Facing=SOUTH then
		    for i=0 to endIdx
		      tabs(i).width=tabs(i).width+tabSize
		    next
		  else
		    for i=0 to endIdx
		      tabs(i).height=tabs(i).height+tabSize
		    next
		  End If
		  
		  fixLocations
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub swapTabsIfNeeded()
		  //see if the dragged tab overlaps another one...
		  dim x, y, w, h, mx, my as Integer
		  
		  x = max(dragRect(0) + dragOffsetX, 0)
		  y = max(dragRect(1) + dragOffsetY, 0)
		  
		  w = dragRect(2)
		  h = dragRect(3)
		  
		  mx = x + w / 2
		  my = y + h / 2
		  
		  dim tab as CustomTab
		  for i as Integer = 0 to UBound(tabs)
		    tab = tabs(i)
		    
		    if tab = currentActionTab then continue for
		    
		    if ((Facing = NORTH or Facing = SOUTH) and mx >= tab.x + leftTabOutline.Width and mx <= tab.x + tab.width - rightTabOutline.Width) or _
		      ((Facing = WEST or Facing = EAST) and my >= tab.y + leftTabOutline.Height and my <= tab.y + tab.height - rightTabOutline.Height) then
		      
		      tabs(i) = currentActionTab
		      tabs(currentActionTab.index) = tab
		      fixLocations
		      exit for
		    end if
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function tabCount() As integer
		  Return UBound(tabs)+1
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function tabFits(tab as CustomTab) As boolean
		  select case Facing
		  case NORTH, SOUTH
		    return tab.x+tab.width<=Width
		  case EAST, WEST
		    return tab.y+tab.height<=Height
		  End Select
		End Function
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event CancelRemoveTab(tabIndex as integer) As boolean
	#tag EndHook

	#tag Hook, Flags = &h0
		Event ConstructTabContextualMenu(tab as CustomTab, base as MenuItem) As Boolean
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Open()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event PanelPageAdded(panel as pagePanel, page as integer)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event TabChanged(tabIndex as integer)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event TabContextualMenuAction(tab as CustomTab, menu as MenuItem)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event TabRemoved(tabIndex as integer)
	#tag EndHook


	#tag Note, Name = About
		CustomTabPanelTabs 1.7
		Double buffering code modified from Aaron Ballman's double buffered canvas: http://ramblings.aaronballman.com/2005/07/Double_Buffering.html
		
		changes:
		version 1.7, 05/14/09
		Added drag reorder.
		
		version 1.6, 11/27/07
		Added an enumeration to the facing property.
		Fixed a couple of small bugs that prevented a tab to update when the caption had the same width as the previous caption
		appendTab(tab as CustomTab) has been made private, this to prevent adding tabs with a different facing from the parent tabpanel
		tested with RB2007r2
		
		version 1.5, 02/21/06
		Added the facing property, this allows the CustomTabPanel to be drawn facing N, S, E or W
		Added the CancelRemoveTab event, return true to stop the removal of a tab.
		Improved the drawing speed.
		NOTE: for some reason my RB2005 is not keeping the "facing" property in the window property editor, you can always add it if it's not there.
		
		By Alex Restrepo
		send comments, suggestions, fixes to alexrestrepo@mac.com
		
		A "TabPanel" canvas that mimics the tabpanel in the RealBasic IDE. you can use it by itself or attaching a page panel (via attachPanel).
		
		Properties:
		Facing: 
		0 = North
		1 = South
		2 = East
		3 = West
		
		value: 
		sets the topmost tab.
		
		Events:
		CancelRemoveTab
		return true if you want to cancel the closing of a tab whose closebox was clicked.
		
		PanelPageAdded
		triggered after a new page has been added to an attached PagePanel
		
		TabChanged
		Triggered when the topmost tab was changed
		
		TabRemoved
		triggered after a tab has been removed (and its attached PagePanel page, if any)
		
		Methods:
		add a tab to the tabpanel:
		appendTab(tab as customTab) //DEPRECATED, please use any of the following:
		appendTab(caption as string)
		appendTab(caption as string, closeBox as boolean)
		appendTab(caption as string, icon as picture)
		
		
		if there's an attached panel, the class will append pages to the panel automatically
		
		caption(index): sets or gets the caption of a tab
		
		closeBox(index): sets or gets the closeBox of a tab
		
		icon(index): sets or gets the icon of a tab
		
		attachPanel(PagePanel): attaches a page panel to the canvas, the canvas will change the pages and append/remove pages as ncessary
		
		detachPanel: removes the attached panel
		
		Clear: removes all tabs
		
		removeTab(index) removes the specified tab
		
		Use in whatever way you like... at your own risk :P
		let me know if you find it useful.
		
		If you decide to use it in your projects, please give me credit in your about window, thanks.
		
		
	#tag EndNote


	#tag Property, Flags = &h21
		Private currentActionTab As customTab
	#tag EndProperty

	#tag Property, Flags = &h21
		Private draggingWholeTab As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private dragOffsetX As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private dragOffsetY As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private dragRect(4) As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private drawOrder() As customTab
	#tag EndProperty

	#tag Property, Flags = &h0
		EnableTabReordering As Boolean = true
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return tabFacing
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value=tabFacing then Return
			  
			  tabFacing=value
			  fitSize
			End Set
		#tag EndSetter
		Facing As Integer
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private hiddenIndex As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private lastHeight As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private lastMouseX As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private lastMouseY As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private lastWidth As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mBackBuffer As Picture
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mDoubleBuffer As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mouseDownTimeStamp As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private nextLoc As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private panel As pagePanel
	#tag EndProperty

	#tag Property, Flags = &h21
		Private scrollRightIcn As littleMiscButton
	#tag EndProperty

	#tag Property, Flags = &h21
		Private tabFacing As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		tabs() As customTab
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if UBound(tabs)<0 then Return -1
			  Return drawOrder(UBound(drawOrder)).index
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  dim changed as Boolean
			  
			  if value>=0 and value<=UBound(tabs) and value<>self.value then
			    changed=true
			  elseif value>UBound(tabs) then
			    changed=self.value<>value
			    value=0
			  elseif value<0 then
			    changed=self.value<>value
			    value=UBound(tabs)
			  end if
			  
			  if changed then
			    if enabled(value) then
			      moveTabToFront(value)
			      doTabChange(value)
			    end if
			    self.Repaint
			  end if
			End Set
		#tag EndSetter
		value As Integer
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="AcceptFocus"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AcceptTabs"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutoDeactivate"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Backdrop"
			Visible=true
			Group="Appearance"
			Type="Picture"
			EditorType="Picture"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DoubleBuffer"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Enabled"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="EnableTabReordering"
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="EraseBackground"
			Visible=true
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Facing"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType="Enum"
			#tag EnumValues
				"0 - North"
				"1 - South"
				"2 - East"
				"3 - West"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Visible=true
			Group="Position"
			InitialValue="100"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HelpTag"
			Visible=true
			Group="Appearance"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			Type="Integer"
			EditorType="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InitialParent"
			Group="Behavior"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockBottom"
			Visible=true
			Group="Position"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockLeft"
			Visible=true
			Group="Position"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockRight"
			Visible=true
			Group="Position"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockTop"
			Visible=true
			Group="Position"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabIndex"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabPanelIndex"
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabStop"
			Visible=true
			Group="Position"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Transparent"
			Visible=true
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UseFocusRing"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="value"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Visible"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Visible=true
			Group="Position"
			InitialValue="100"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
