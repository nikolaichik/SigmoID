#tag Class
Protected Class CloseBoxButton
Inherits LittleMiscButton
	#tag Method, Flags = &h0
		Sub paint(g as graphics, xoffset as integer = 0, yoffset as integer = 0)
		  If Not visible Then Return
		  If pic=Nil Then Return
		  
		  'dim oldC as color=g.ForeColor
		  
		  if clicked then
		    pic.mask.graphics.DrawPicture down,0,0
		  elseif toggle then
		    pic.mask.graphics.DrawPicture over,0,0
		  else
		    pic.mask.graphics.DrawPicture mask,0,0
		    
		  End If
		  
		  'g.ForeColor=&cEEEEEE
		  'g.FillOval x+xoffset,y+yoffset,pic.Width,pic.Height
		  'g.ForeColor=&cBBBBBB
		  'g.drawOval x+xoffset,y+yoffset,pic.Width,pic.Height
		  
		  g.DrawPicture pic,x+xoffset,y+yoffset
		  
		  'g.ForeColor=oldC
		End Sub
	#tag EndMethod


End Class
#tag EndClass
