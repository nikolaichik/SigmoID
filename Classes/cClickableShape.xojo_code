#tag Class
Protected Class cClickableShape
Inherits FigureShape
	#tag Method, Flags = &h0
		Sub AddPoint(X as integer, Y as integer)
		  polyX.append X
		  polyY.append Y
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Contains(X as integer, Y As integer) As Boolean
		  'draws filled figure to an offscreen white 1 bit picture and
		  'checks if the colour of the XY point is black
		  
		  'to adjust coordinates within the offscreen pic, X and Y of the main ancor point are subtracted
		  
		  
		  dim c as Color
		  dim wid, hei as integer
		  
		  'first simple checks:
		  'if X<minX*me.scale then
		  'return false
		  'elseif X>maxX*me.scale then
		  'return false
		  'elseif Y<minY*me.scale then
		  'return false
		  'elseif Y>maxY*me.scale then
		  'return false
		  'end
		  
		  
		  if X<minX then
		    return false
		  elseif X>maxX then
		    return false
		  elseif Y<minY then
		    return false
		  elseif Y>maxY then
		    return false
		  end
		  
		  
		  wid=(maxX-minX)'*me.scale
		  hei=(maxY-minY)'*me.scale
		  if wid>32766 then
		    'the max width of object2D is 32767,
		    'we simply assume here that the object covers all screen
		    '(which isn't the case when obj end is onscreen)
		    return true
		  end if
		  p = new Picture (wid+1, hei+1)
		  if p = nil then
		    'beep
		    msgBox "Sorry, there's not enough memory to run. I must quit now."
		    quit
		  end if
		  p.graphics.ForeColor=RGB(255,255,255) 'white
		  p.graphics.FillRect 0,0,wid, hei
		  p.graphics.DrawObject me,1-minX*me.scale,1-minY*me.scale
		  c=p.Graphics.Pixel(X-minX*me.scale,Y-minY*me.scale)
		  'if c=me.Colour or c=me.BorderColor then
		  'return true
		  'else
		  'return false
		  'end
		  
		  if c.Red=255 AND c.Green=255 AND c.Blue=255 then
		    return false
		  else
		    return true
		  end
		  
		  Exception err
		    ExceptionHandler(err,"cClickableShape.Contains")
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DrawPolygon()
		  // add lines to figure shape
		  dim m,n as integer
		  
		  me.fillcolor=colour
		  m=ubound(polyX)
		  for n=2 to m
		    addline polyX(n-1),polyY(n-1),polyX(n),polyY(n)
		  next
		  addline polyX(n-1),polyY(n-1),polyX(1),polyY(1) 'close the polygon
		  
		  'find min and max coords (used in Contains method):
		  minX=polyX(1)
		  maxX=polyX(1)
		  minY=polyY(1)
		  maxY=polyY(1)
		  for n=2 to m
		    if polyX(n)<minX then
		      minX=polyX(n)
		    end
		    if polyX(n)>maxX then
		      maxX=polyX(n)
		    end
		    if polyY(n)<minY then
		      minY=polyY(n)
		    end
		    if polyY(n)>maxY then
		      maxY=polyY(n)
		    end
		  next
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ToggleSelection()
		  dim c as color
		  
		  Selected=not selected
		  
		  'change visual appearance next by simply inverting the object colour:
		  c=RGB(255-me.fillcolor.red,255-me.fillcolor.green, 255-me.fillColor.blue)
		  me.fillColor=c
		  
		  
		End Sub
	#tag EndMethod


	#tag Note, Name = How to Use
		0. Super class for all polygon(figureShape) based shapes
		
		1. Define all corners by using .AddPoint(X,Y) method
		2. Initialise side lines by calling the DrawPolygon method
		
		3. The .Contains(X,Y) As Boolean method determines if a (X,Y) point
		 is within the polygon. This is functional equivalent 
		 of the built in .Contains method of RectShape
	#tag EndNote


	#tag Property, Flags = &h0
		ArrowLength As integer = 8
	#tag EndProperty

	#tag Property, Flags = &h0
		ArrowWidth As integer = 24
	#tag EndProperty

	#tag Property, Flags = &h0
		Colour As color
	#tag EndProperty

	#tag Property, Flags = &h0
		length As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		maxX As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		maxY As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		minX As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		minY As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		p As picture
	#tag EndProperty

	#tag Property, Flags = &h0
		polyX(0) As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		polyY(0) As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Selected As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Width As integer = 8
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="ArrowLength"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ArrowWidth"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Border"
			Group="Behavior"
			InitialValue="0"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BorderColor"
			Group="Behavior"
			InitialValue="&h000000"
			Type="Color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BorderWidth"
			Group="Behavior"
			InitialValue="0"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Colour"
			Group="Behavior"
			InitialValue="&h000000"
			Type="color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Count"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Fill"
			Group="Behavior"
			InitialValue="0"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FillColor"
			Group="Behavior"
			InitialValue="&h000000"
			Type="Color"
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
			Name="length"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="maxX"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="maxY"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="minX"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="minY"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="p"
			Group="Behavior"
			InitialValue="0"
			Type="picture"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Rotation"
			Group="Behavior"
			InitialValue="0"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Scale"
			Group="Behavior"
			InitialValue="0"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Selected"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
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
			Name="Width"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="X"
			Group="Behavior"
			InitialValue="0"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Y"
			Group="Behavior"
			InitialValue="0"
			Type="Double"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
