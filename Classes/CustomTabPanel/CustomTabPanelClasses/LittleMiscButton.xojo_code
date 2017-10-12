#tag Class
Protected Class LittleMiscButton
	#tag Method, Flags = &h0
		Sub Constructor(data as picture, mask as picture, over as picture, clicked as picture)
		  self.data=data
		  self.mask=mask
		  self.over=over
		  down=clicked
		  
		  pic=New Picture(data.Width,data.Height,32)
		  pic.graphics.DrawPicture(data,0,0)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function hit(mx as integer, my as integer) As boolean
		  if not visible then Return False
		  if pic=nil then Return False
		  
		  return mx>=x and mx<=x+pic.Width and my>=y and my<=y+pic.Height
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function mouseDown(mx as integer, my as integer) As boolean
		  if not visible then Return False
		  
		  clicked = hit(mx,my)
		  Return clicked
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function mouseDrag(mx as integer, my as integer) As boolean
		  Return mouseDown(mx,my)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function mouseMove(mx as integer, my as integer) As boolean
		  if not visible then Return False
		  dim changed as Boolean
		  
		  Changed=toggle
		  toggle = hit(mx,my)
		  clicked=clicked and toggle
		  
		  //trigger it only if our state has changed
		  Changed=changed<>toggle
		  
		  Return Changed
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function mouseUp(mx as integer, my as integer) As boolean
		  clicked=False
		  return mouseMove(mx,my)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub paint(g as graphics, xoffset as integer = 0, yoffset as integer = 0)
		  if not visible then Return
		  if pic=nil then Return
		  
		  dim oldC as color=g.ForeColor
		  
		  if clicked then
		    pic.mask.graphics.DrawPicture down,0,0
		  elseif toggle then
		    pic.mask.graphics.DrawPicture over,0,0
		  else
		    pic.mask.graphics.DrawPicture mask,0,0
		  end if
		  
		  g.ForeColor=&cEEEEEE
		  g.FillOval x+xoffset,y+yoffset,pic.Width,pic.Height
		  g.ForeColor=&cBBBBBB
		  g.drawOval x+xoffset,y+yoffset,pic.Width,pic.Height
		  
		  g.DrawPicture pic,x+xoffset,y+yoffset
		  
		  g.ForeColor=oldC
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private clicked As boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private data As picture
	#tag EndProperty

	#tag Property, Flags = &h21
		Private down As picture
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return pic.Height
			End Get
		#tag EndGetter
		height As Integer
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mask As picture
	#tag EndProperty

	#tag Property, Flags = &h21
		Private over As picture
	#tag EndProperty

	#tag Property, Flags = &h21
		Private pic As picture
	#tag EndProperty

	#tag Property, Flags = &h21
		Private toggle As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		visible As boolean = true
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return pic.Width
			End Get
		#tag EndGetter
		width As Integer
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		x As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		y As Integer
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="height"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
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
		#tag ViewProperty
			Name="visible"
			Group="Behavior"
			InitialValue="true"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="width"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="x"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="y"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
