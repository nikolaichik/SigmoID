#tag Class
Protected Class CustomTab
	#tag Method, Flags = &h0
		Function alphaTabPicture(alpha as Single) As Picture
		  if self.alphaTabPicture <> nil then Return self.alphaTabPicture
		  
		  dim tmp as Picture = New Picture(tabPicture.Width, tabPicture.Height, 32)
		  
		  if alpha > 1.0 then alpha = 1.0
		  dim maskColor as Color = rgb(255 - alpha * 255, 255 - alpha * 255, 255 - alpha * 255)
		  tmp.Mask.Graphics.DrawPicture tabPicture.Mask, 0, 0
		  tmp.Mask.RGBSurface.FloodFill(tmp.Width / 2, tmp.Height / 2, maskColor)
		  
		  tmp.Graphics.DrawPicture tabPicture, 0,0
		  
		  Return tmp
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function backPattern() As picture
		  //get the tab background
		  select case facing
		  case NORTH, EAST, WEST
		    Return tabBackground
		  case SOUTH
		    Return tabBackgroundS
		  End Select
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub buildTab()
		  buildTab(0, False)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub buildTab(forceRebuild as boolean)
		  buildTab(0, forceRebuild)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub buildTab(maxSize as integer)
		  buildTab(maxSize, False)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub buildTab(maxSize as integer, forceRebuild as boolean)
		  select case facing
		  case NORTH, SOUTH
		    buildTabHorizontal(maxSize, forceRebuild)
		  case EAST, WEST
		    buildTabVertical(maxSize, forceRebuild)
		  End Select
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub buildTabHorizontal(maxWidth as integer = 0, forceRebuild as boolean = false)
		  //build a horizontal tab, either facing north or south.
		  //build the Picture and mask for this tab.
		  
		  #pragma DisableBackgroundTasks
		  #pragma DisableBoundsChecking
		  
		  dim optimum, tabw as Integer
		  
		  //find optimum size
		  optimum=optimumSize
		  if maxWidth>0 then
		    tabW=min(maxWidth,optimum)
		    tabW=max(minimumTabBodySize,tabW)
		  else
		    tabW=optimum
		  end if
		  
		  if tabPicture<>nil then
		    if tabPicture.Width=tabW and not forceRebuild then Return  //no need to rebuild
		    tabPicture=nil
		  end if
		  
		  //create the tabPicture, which will hold the composed Picture
		  alphaTabPicture = nil
		  'tabPicture = New Picture(tabW, tabBackground.Height,32)
		  tabPicture = New Picture(170, tabBackground.Height, 32)
		  tabPicture.graphics.TextSize=11
		  tabPicture.graphics.TextFont="System"
		  
		  //now, the mask
		  if facing=NORTH then
		    tabPicture.mask.graphics.DrawPicture leftTabMask, 0, 0
		    tabPicture.mask.graphics.DrawPicture rightTabMask, tabPicture.width-rightTabMask.Width,0
		  else
		    tabPicture.mask.graphics.DrawPicture leftTabMaskS, 0, 0
		    tabPicture.mask.graphics.DrawPicture rightTabMaskS,tabPicture.width-rightTabMaskS.Width,0
		  end if
		  
		  //this overlay will "Darken" the tab when the mouse is clicked on the tab
		  //its just a black picture with a 50% mask
		  if hitOverlay<>nil then
		    hitOverlay=nil
		  end if
		  
		  hitOverlay=New Picture(tabPicture.Width,tabPicture.Height,32)
		  hitOverlay.mask.graphics.ForeColor=&c888888
		  hitOverlay.mask.graphics.FillRect 0,0,hitOverlay.Width,hitOverlay.Height
		  
		  hitOverlay.graphics.ForeColor=&c000000
		  hitOverlay.graphics.FillRect 0,0,hitOverlay.Width,hitOverlay.Height
		  
		  //now, the actual appearance of the tab...
		  dim iconOffset, iconW, closeW as Integer
		  
		  //create picture
		  tabData=New Picture(width,height,32)
		  tabData.graphics.TextSize=11
		  tabData.graphics.TextFont="System"
		  
		  //fill the tab with the appropiate backgroundColor
		  dim tmp as Picture=backPattern
		  tabData.graphics.DrawPicture tmp,0,0,tabData.Width,tabData.Height,0,0,tmp.Width,tmp.Height
		  
		  //left and right edges
		  tabData.graphics.DrawPicture leftTabImg(facing),0,0
		  tmp=rightTabImg(facing)
		  tabData.graphics.DrawPicture tmp, tabData.Width-tmp.Width, tabData.Height-tmp.Height
		  
		  //draw the icon, if present
		  if icon=nil then
		    iconOffset=leftTabOutline.Width+3
		  else
		    iconOffset=leftTabOutline.Width+icon.Width+3
		    tabData.graphics.DrawPicture icon,leftTabOutline.Width,(tabData.Height-icon.Height)/2+1
		    iconW=16
		  end if
		  
		  //position closeBox, if any
		  if closeBoxButton<>nil then
		    closeBoxButton.x=tabPicture.Width-rightTabOutline.Width-closeBoxData.Width
		    closeBoxButton.y=(tabPicture.Height-closeBoxData.Height)/2+1
		    closeW=closeBoxData.Width
		  end if
		  
		  //caption
		  tabData.graphics.ForeColor=&c000000
		  tabW=width-(leftTabOutline.Width+iconw+7+closeW+rightTabOutline.Width)
		  tabData.graphics.DrawString caption, iconOffset, (tabData.Height+tabData.Graphics.TextAscent)/2, tabw,true
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub buildTabVertical(maxHeight as integer = 0, forceRebuild as boolean = false)
		  //build a vertical tab, either facing east or west.
		  //build the Picture and mask for this tab.
		  
		  #pragma DisableBackgroundTasks
		  #pragma DisableBoundsChecking
		  
		  dim optimum, tabW as Integer
		  
		  //find optimum size
		  optimum=optimumSize
		  if maxHeight>0 then
		    tabW=min(maxHeight,optimum)
		    tabW=max(minimumTabBodySize,tabW)
		  else
		    tabW=optimum
		  end if
		  
		  if tabPicture<>nil then
		    if tabPicture.Height=tabW and not forceRebuild then Return  //no need to rebuild
		    tabPicture=nil
		  end if
		  
		  //create the tabPicture, which will hold the composed Picture
		  alphaTabPicture = nil
		  tabPicture=New Picture(tabBackground.Height, tabW, 32)
		  tabPicture.graphics.TextSize=11
		  tabPicture.graphics.TextFont="System"
		  
		  //now, add the mask
		  if facing=EAST then
		    tabPicture.mask.graphics.DrawPicture leftTabMaskE, 0, 0
		    tabPicture.mask.graphics.DrawPicture rightTabMaskE, 0, tabPicture.Height-leftTabMaskE.Height
		  else
		    tabPicture.mask.graphics.DrawPicture rightTabMaskW, 0, 0
		    tabPicture.mask.graphics.DrawPicture leftTabMaskW,0, tabPicture.Height-leftTabMaskW.Height
		  end if
		  
		  //this overlay will "Darken" the tab when the mouse is clicked on the tab
		  //its just a black picture with a 50% mask
		  if hitOverlay<>nil then
		    hitOverlay=nil
		  end if
		  
		  hitOverlay=New Picture(tabPicture.Width,tabPicture.Height,32)
		  hitOverlay.mask.graphics.ForeColor=&c888888
		  hitOverlay.mask.graphics.FillRect 0,0,hitOverlay.Width,hitOverlay.Height
		  
		  hitOverlay.graphics.ForeColor=&c000000
		  hitOverlay.graphics.FillRect 0,0,hitOverlay.Width,hitOverlay.Height
		  
		  //now, the actual appearance of the tab...
		  dim iconOffset, iconW, closeW as Integer
		  dim tabData as Picture
		  
		  //create a temporary picture with the tab appearance, this picture will be rotated 90ºCW or CCW
		  tabData=New Picture(height,width,32)
		  tabData.graphics.TextSize=11
		  tabData.graphics.TextFont="System"
		  
		  //fill the tab with the appropiate backgroundColor
		  dim tmp as Picture=backPattern
		  tabData.graphics.DrawPicture tmp,0,0,tabPicture.Height,tabPicture.Width,0,0,tmp.Width,tmp.Height
		  
		  //left and right edges
		  tabData.graphics.DrawPicture leftTabImg(facing),0,0
		  tmp=rightTabImg(facing)
		  tabData.graphics.DrawPicture tmp, tabData.Width-tmp.Width, tabData.Height-tmp.Height
		  
		  //draw the icon, if present
		  if icon=nil then
		    iconOffset=leftTabOutline.Width+3
		  else
		    iconOffset=leftTabOutline.Width+icon.Width+3
		    tabData.graphics.DrawPicture icon,leftTabOutline.Width,(tabData.Height-icon.Height)/2+1
		    iconW=16
		  end if
		  
		  //position closeBox, if any
		  if closeBoxButton<>nil then
		    closeBoxButton.x=(tabPicture.Width-closeBoxData.Width)/2
		    if facing=EAST then
		      closeBoxButton.y=tabPicture.Height-rightTabOutline.Width-closeBoxData.Width
		    else
		      closeBoxButton.x=closeBoxButton.x+1
		      closeBoxButton.y=rightTabOutline.Width
		    End If
		    closeW=closeBoxData.Width
		  end if
		  
		  //draw caption
		  tabData.graphics.ForeColor=&c000000
		  tabW=height-(leftTabOutline.Width+iconw+7+closeW+rightTabOutline.Width)
		  tabData.graphics.DrawString caption, iconOffset, (tabData.Height+tabData.Graphics.TextAscent)/2, tabw+4,true
		  
		  //now, create the tabData picture
		  self.tabData=New Picture(tabPicture.Width, tabPicture.Height, 32)
		  
		  //and draw the rotated tab onto it
		  dim pms as new PixmapShape(tabData)
		  if facing=EAST then
		    pms.Rotation=pi/2
		    pms.x=self.tabData.Width/2-1
		    pms.y=self.tabData.Height/2
		  else
		    pms.Rotation=-pi/2
		    pms.x=self.tabData.Width/2
		    pms.y=self.tabData.Height/2-2
		  End If
		  
		  self.tabData.Graphics.DrawObject pms
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(caption as string, hasCloseBox as boolean = false, facing as integer = 0)
		  self.Constructor(caption,nil, hasCloseBox, facing)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(caption as string, icon as picture, hasCloseBox as boolean = false, facing as integer = 0)
		  //designated initializer :P
		  self.captionStr=caption
		  if hasCloseBox then closeBoxButton=new LittleMiscButton(closeBoxData,closeBoxMask,closeBoxMaskOver,closeBoxMaskClicked)
		  self.iconPic=icon
		  self.facing=facing
		  
		  //build appropriate tab
		  buildTab
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function hit(mx as integer, my as integer) As boolean
		  //hit test
		  
		  if not visible or not enabled then Return False
		  Return mx>=x and mx<=x+width and my>=y and my<=y+Height
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function isClosing() As boolean
		  Return closing
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function mouseDown(mx as integer, my as integer) As boolean
		  if closeBoxButton<>nil then
		    //test for initial click on the closebox
		    closing=closeBoxButton.mouseDown(mx-x,my-y)
		  else
		    closing = false
		  end if
		  
		  Return hit(mx,my) or closing
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function mouseDrag(mx as integer, my as integer) As boolean
		  if not visible or not enabled then Return False
		  
		  if closeBoxButton<>nil then
		    if closing then
		      if closeBoxButton.mouseMove(mx-x,my-y) then
		        call closeBoxButton.mouseDrag(mx-x,my-y)
		        Return true
		      else
		        Return False
		      end if
		    end if
		  end
		  
		  dim changed as Boolean
		  
		  Changed=mouseHit
		  mouseHit = hit(mx,my)
		  
		  //trigger it only if our state has changed
		  Changed=changed<>mouseHit
		  
		  Return Changed
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function mouseMove(mx as integer, my as integer) As boolean
		  if not visible or not enabled then Return False
		  
		  //visual feedback for mouse over closebox
		  if closeBoxButton<>nil then
		    Return closeBoxButton.mouseMove(mx-x,my-y)
		  else
		    Return False
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function mouseUp(mx as integer, my as integer) As boolean
		  //reset the state of this tab
		  mouseOver=False
		  mouseHit=False
		  
		  if closeBoxButton<>nil and closing then
		    closing=False
		    return closeBoxButton.mouseUp(-1,-1)
		  end if
		  
		  Return hit(mx,my)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function optimumSize() As integer
		  Dim iconw, closew, tabW As Integer
		  
		  //icon present?
		  if iconPic=nil then
		    iconw=0
		  else
		    //resize if needed
		    if iconPic.Width>16 or iconPic.Height>16 then
		      self.iconPic=CustomTabGlobals.scaleToFit(iconPic,16,16,1)
		    end if
		    iconw=16
		  end  if
		  
		  //closebox present?
		  if closeBoxButton<>nil then
		    closeW=closeBoxData.Width
		  end if
		  
		  //calculate width
		  tabW=leftTabOutline.Width+iconw+13+closeW+rightTabOutline.Width+stringWidth(caption)
		  
		  Return tabW
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub paint(g as graphics, topMost as boolean)
		  #pragma DisableBackgroundTasks
		  #pragma DisableBoundsChecking
		  
		  //visible?
		  if not visible then
		    Return
		  end if
		  
		  dim iconOffset, tabW, iconW as Integer
		  dim rightImg as Picture
		  
		  //paint unmodified tab data...
		  tabPicture.Graphics.DrawPicture tabData,0,0
		  
		  rightImg=rightTabImg(facing)
		  
		  //draw the overlay, if mouse hit
		  if mouseHit and not topMost then
		    tabPicture.graphics.DrawPicture hitOverlay,0,0
		  elseif not topMost then
		    //or if not in foreground...
		    hitOverlay.graphics.ForeColor=&c888888
		    hitOverlay.graphics.FillRect 0,0,hitOverlay.Width,hitOverlay.Height
		    tabPicture.Graphics.DrawPicture hitOverlay,0,0
		  end if
		  
		  //gray out if not enabled
		  if not enabled then
		    hitOverlay.graphics.ForeColor=&cffffff
		    hitOverlay.graphics.FillRect 0,0,hitOverlay.Width,hitOverlay.Height
		    tabPicture.Graphics.DrawPicture hitOverlay,0,0
		  elseif hitOverlay.graphics.ForeColor<>&c000000 then
		    hitOverlay.graphics.ForeColor=&c000000
		    hitOverlay.graphics.FillRect 0,0,hitOverlay.Width,hitOverlay.Height
		  end if
		  
		  //draw whole tab
		  g.DrawPicture tabPicture,x,y
		  
		  'tabPicture.Graphics.ClearRect 0,0,width,height
		  
		  //draw the closeBox if present
		  if closeBoxButton<>nil then
		    closeBoxButton.paint(g, x, y)
		  end if
		  
		  if topMost then
		    select case facing
		    case NORTH
		      g.DrawPicture tabTopMostSeparator, x+1, g.Height-tabTopMostSeparator.Height, width-2, tabTopMostSeparator.Height, 0, 0,tabTopMostSeparator.Width,tabTopMostSeparator.Height
		    case SOUTH
		      g.DrawPicture tabTopMostSeparatorS, x+1, 0, width-2, tabTopMostSeparatorS.Height, 0, 0, tabTopMostSeparatorS.Width, tabTopMostSeparatorS.Height
		    case EAST
		      g.DrawPicture tabTopMostSeparatorE, 0, y+1, tabTopMostSeparatorE.Width, height-2, 0,0, tabTopMostSeparatorE.Width, tabTopMostSeparatorE.Height
		    case WEST
		      g.DrawPicture tabTopMostSeparatorW, g.Width-tabTopMostSeparatorW.Width, y+1, tabTopMostSeparatorW.Width, height-2, 0, 0,  tabTopMostSeparatorW.Width, tabTopMostSeparatorW.Height
		    End Select
		  end if
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private alphaTabPicture As Picture
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return captionStr
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value=captionStr then Return
			  
			  captionStr=value
			  
			  buildTab(true) //always force a rebuild
			End Set
		#tag EndSetter
		caption As string
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private captionStr As string
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return closeBoxButton<>nil
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value=(closeBoxButton<>nil) then Return
			  
			  if value then
			    closeBoxButton=new LittleMiscButton(closeBoxData,closeBoxMask,closeBoxMaskOver,closeBoxMaskClicked)
			  else
			    closeBoxButton=nil
			  end if
			  
			  buildTab
			End Set
		#tag EndSetter
		closeBox As boolean
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private closeBoxButton As littleMiscButton
	#tag EndProperty

	#tag Property, Flags = &h21
		Private closing As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		enabled As boolean = true
	#tag EndProperty

	#tag Property, Flags = &h21
		Private facing As Integer
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return tabPicture.Height
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value=tabPicture.Height then Return
			  
			  buildTab(value)
			End Set
		#tag EndSetter
		height As Integer
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private hitOverlay As picture
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return iconPic
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  iconPic=value
			  
			  buildTab
			End Set
		#tag EndSetter
		icon As picture
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private iconPic As picture
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return tabIndex
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  tabindex=value
			End Set
		#tag EndSetter
		index As Integer
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private locX As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private locY As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mouseHit As boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mouseOver As boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private tabData As picture
	#tag EndProperty

	#tag Property, Flags = &h21
		Private tabIndex As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private tabPicture As picture
	#tag EndProperty

	#tag Property, Flags = &h0
		tabValue As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		visible As boolean = true
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return tabPicture.Width
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value=tabPicture.Width then Return
			  
			  buildTab(value)
			End Set
		#tag EndSetter
		width As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return locx
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  locx=value
			End Set
		#tag EndSetter
		x As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return locY
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  locy=value
			End Set
		#tag EndSetter
		y As Integer
	#tag EndComputedProperty


	#tag Constant, Name = PI, Type = Double, Dynamic = False, Default = \"3.14159265358979323846264338327950", Scope = Private
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="caption"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="closeBox"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="enabled"
			Visible=false
			Group="Behavior"
			InitialValue="true"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="height"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="icon"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="picture"
			EditorType=""
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
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
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
			Name="tabValue"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
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
			Name="visible"
			Visible=false
			Group="Behavior"
			InitialValue="true"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="width"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="x"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="y"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
