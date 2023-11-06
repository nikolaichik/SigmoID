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


	#tag ViewBehavior
		#tag ViewProperty
			Name="height"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
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
		#tag ViewProperty
			Name="clicked"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="data"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="picture"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="down"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="picture"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="mask"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="picture"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="over"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="picture"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="pic"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="picture"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="toggle"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
