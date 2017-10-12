#tag Module
Protected Module CustomTabGlobals
	#tag Method, Flags = &h0
		Function leftTabImg(facing as integer) As picture
		  select case facing
		    
		  case NORTH, EAST, WEST
		    
		    if leftTabPic(0) = nil then
		      leftTabPic(0)=New Picture(leftTabOutline.Width,leftTabOutline.Height,32)
		    End If
		    leftTabPic(0).mask.graphics.DrawPicture leftTabOutlineMask,0,0
		    leftTabPic(0).graphics.DrawPicture leftTabOutline,0,0
		    
		    Return leftTabPic(0)
		  case SOUTH
		    
		    if leftTabPic(1) = nil then
		      leftTabPic(1)=New Picture(leftTabOutlineS.Width, leftTabOutlineS.Height,32)
		    End If
		    leftTabPic(1).mask.graphics.DrawPicture leftTabOutlineMaskS,0,0
		    leftTabPic(1).graphics.DrawPicture leftTabOutlineS,0,0
		    
		    Return leftTabPic(1)
		  End Select
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function rightTabImg(facing as integer) As picture
		  select case facing
		    
		  case NORTH, EAST, WEST
		    
		    if rightTabPic(0) = nil then
		      rightTabPic(0)=New Picture(rightTabOutline.Width, rightTabOutline.Height,32)
		    End If
		    rightTabPic(0).mask.graphics.DrawPicture rightTabOutlineMask,0,0
		    rightTabPic(0).graphics.DrawPicture rightTabOutline,0,0
		    
		    Return rightTabPic(0)
		  case SOUTH
		    
		    if rightTabPic(1) = nil then
		      rightTabPic(1)=New Picture(rightTabOutlineS.Width, rightTabOutlineS.Height,32)
		    End If
		    rightTabPic(1).mask.graphics.DrawPicture rightTabOutlineMaskS,0,0
		    rightTabPic(1).graphics.DrawPicture rightTabOutlineS,0,0
		    
		    Return rightTabPic(1)
		  End Select
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function scaleToFit(pic as picture, w as integer, h as integer, transpValue as integer = 0, backcolor as color = &cffffff) As picture
		  dim p as picture
		  dim ratio as single
		  dim a,b,xoff,yoff as integer
		  if pic <> nil then
		    p=New Picture(w,h,32)
		    if pic.width<=w and pic.height<=h then
		      
		      p.graphics.drawpicture pic,(w-pic.width)/2,(h-pic.height)/2
		      
		    else
		      a=pic.width
		      b=pic.height
		      
		      ratio = Min( w / a, h / b )
		      
		      a=a*ratio
		      b=b*ratio
		      
		      xoff=(w-a)/2
		      yoff=(h-b)/2
		      
		      if transpValue=0 then
		        p.graphics.foreColor=backcolor
		        p.graphics.fillRect 0,0,w,h
		      end if
		      
		      p.graphics.drawpicture pic,xoff,yoff,a,b,0,0,pic.width,pic.height
		    end if
		    p.transparent=transpValue
		    return p
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function stringWidth(caption as string, size as integer = 11, fontName as string = "System") As integer
		  if caption="" then Return 0
		  
		  dim tmp as Picture
		  dim result as Integer
		  tmp=New Picture(2,2,32)
		  
		  tmp.graphics.TextSize=size
		  tmp.graphics.TextFont=fontName
		  
		  result=tmp.Graphics.StringWidth(caption)
		  Return result
		  
		End Function
	#tag EndMethod


	#tag Property, Flags = &h21
		Private leftTabPic(2) As picture
	#tag EndProperty

	#tag Property, Flags = &h21
		Private rightTabPic(2) As picture
	#tag EndProperty


	#tag Constant, Name = EAST, Type = Double, Dynamic = False, Default = \"2", Scope = Public
	#tag EndConstant

	#tag Constant, Name = minimumTabBodySize, Type = Double, Dynamic = False, Default = \"80", Scope = Public
	#tag EndConstant

	#tag Constant, Name = NORTH, Type = Double, Dynamic = False, Default = \"0", Scope = Public
	#tag EndConstant

	#tag Constant, Name = SOUTH, Type = Double, Dynamic = False, Default = \"1", Scope = Public
	#tag EndConstant

	#tag Constant, Name = WEST, Type = Double, Dynamic = False, Default = \"3", Scope = Public
	#tag EndConstant


	#tag ViewBehavior
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
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
