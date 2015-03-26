#tag Class
Protected Class GBFeature
	#tag Method, Flags = &h0
		Sub ArrowInit()
		  dim r,x1,x2,x3,y1,y2,y3,y4,y5 as integer
		  
		  'calculate corner coords, then call linshape.drawpolygon to form the shape
		  '     y1
		  '     |\
		  '1____| \y2
		  '        \y3 ____________BaselineY
		  ' ----|  /y4
		  '     | /
		  '     |/y5
		  'x1   x2  x3
		  
		  if Complement then 'check orientation
		    r=-1
		  else
		    r=1
		  end
		  x1=linShape.x
		  x2=linShape.X+r*linshape.length-r*linshape.ArrowLength
		  if Complement then
		    if x2>x1 then
		      x2=x1
		    end
		  else
		    if x2<x1 then
		      x2=x1
		    end
		  end
		  x3=linShape.X+r*linshape.length
		  
		  
		  'make regulatory sites more visible
		  if complement then
		    if x1-x3<4 then
		      x3=x1-3
		      x1=x1+1
		    end if
		  else
		    if x3-x1<4 then
		      x3=x1+3
		      x1=x1-1
		    end if
		  end if
		  
		  
		  y1=linShape.y+BaselineY-linshape.ArrowWidth/2
		  y2=linShape.y+BaselineY-linshape.width/2
		  y3=linShape.y+BaselineY
		  y4=linShape.y+BaselineY+linshape.width/2
		  y5=linShape.y+BaselineY+linshape.ArrowWidth/2
		  
		  
		  
		  linshape.AddPoint X1 , Y2
		  if hasArrow then     'add arrowhead corners
		    linshape.AddPoint X2 , Y2
		    linshape.AddPoint X2 , Y1
		    linshape.AddPoint X3 , Y3
		    linshape.AddPoint X2 , Y5
		    linshape.AddPoint X2 , Y4
		    linShape.ArrowWidth=ArrowWidth  'this is for calculating picture bounds
		  else   'no arrow: just simple rectangle
		    linshape.AddPoint X3 , Y2
		    linshape.AddPoint X3 , Y4
		    linShape.ArrowWidth=0
		  end
		  linShape.Width=Width
		  linshape.AddPoint X1 , Y4
		  
		  linshape.drawpolygon
		  linshape.Border=100
		  linShape.borderwidth=me.BorderWidth
		  linshape.BorderColor=me.BorderColor
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(BaseY as integer)
		  me.baselineY=baseY
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetBorderColor(c As color) As color
		  
		  dim c2 as color
		  
		  c2=RGB(c.red+(255-c.red)/2,c.green+(255-c.green)/2,c.blue+(255-c.blue)/2)
		  
		  
		  return c2
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Init()
		  dim s as string
		  'defaults for height and arrow size:
		  
		  'linshape=new cClickableShape
		  linShape.Width=14 'width
		  linshape.ArrowLength=ArrowLength
		  linshape.ArrowWidth=arrowwidth
		  linshape.border=100
		  linshape.Borderwidth=BorderWidth
		  'hasArrow=false
		  circular=False
		  
		  'find min and max coords (used in cClickableShape.Contains method):
		  
		  
		  'set feature colour:
		  s=me.type
		  Select case s
		  case "CDS"
		    linshape.colour= &c66FFFF00'RGB(10,100,200)
		    hasArrow=true
		    ArrowInit
		  case "sig_peptide"
		    linshape.colour= &c0080FF00
		    hasArrow=true
		    ArrowInit
		  case "rRNA"
		    linshape.colour=&cFF00FF00
		    hasArrow=true
		    ArrowInit
		  case "tRNA"
		    linshape.colour=&cFF66FF00
		    hasArrow=true
		    ArrowInit
		  case "ncRNA"
		    linshape.colour=&cCC66FF00
		    hasArrow=true
		    ArrowInit
		  case "protein_bind"
		    linshape.colour=&c66CCFF00
		    hasArrow=true
		    ArrowInit
		  case "gene"
		    linshape.colour=&c66FF6600'RGB(100,10,200)
		    hasArrow=true
		    ArrowInit
		  case "promoter"
		    linshape.colour=RGB(47,139,32)
		    if length<35 then
		      PromoterInit
		    else
		      hasarrow=true
		      ArrowInit
		    end
		  case "terminator"
		    linshape.colour=&cE8378F
		    'color=&cE8378F
		    hasArrow=false
		    ArrowInit
		  else
		    linshape.colour=&cC0C0C0
		    'color=&cC0C0C0
		    'hasArrow=false
		    ArrowInit
		  end select
		  
		  linShape.BorderColor=BorderColor 'circShape.BorderColor
		  linShape.Border=100
		  
		  'circshape.BorderWidth=1
		  'linShape.Border=1
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PromoterInit()
		  dim r,x1,x2,y1,y2,y3,y4 as integer
		  
		  'size defaults:
		  linshape.Width=16
		  linshape.length=7
		  
		  if Complement then 'check orientation
		    r=-1
		  else
		    r=1
		  end
		  
		  
		  'calculate corner coords, then call super.drawpolygon to form the shape
		  'new shape:
		  '           y4
		  '          |\ y3
		  '          |/
		  '          | y2
		  '          |
		  '          |  y1
		  
		  '         x1  x2
		  x1=linShape.x
		  x2=linShape.X+r*linshape.length
		  y1=linShape.y+BaselineY'+4
		  y2=y1-linshape.Width+8
		  y3=y1-linshape.Width+4
		  y4=y1-linshape.Width
		  
		  linshape.AddPoint X1 , Y1
		  linshape.AddPoint X1 , Y4
		  linshape.AddPoint X2 , Y3
		  linshape.AddPoint X1+r , Y2
		  linshape.AddPoint X1+r , Y1
		  
		  
		  linshape.drawpolygon
		  
		  
		  
		End Sub
	#tag EndMethod


	#tag Note, Name = changes
		
		Added features:
		
		ArrowLength
		ArrowWidth
		Width
		BorderWidth
		BorderColor
		Comments (as string)
		
		
		Store these in the file and use at init time!
	#tag EndNote

	#tag Note, Name = on some properties
		
		NameCX, NameCY, NameLX, NameLY are here to store name position on both maps before .init and restore it afterwards
	#tag EndNote


	#tag Property, Flags = &h0
		ArrowLength As Integer = 16
	#tag EndProperty

	#tag Property, Flags = &h0
		ArrowWidth As Integer = 21
	#tag EndProperty

	#tag Property, Flags = &h0
		BaselineY As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		BorderColor As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		BorderWidth As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		circular As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		complement As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		FeatureText As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Finish As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		hasArrow As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		LeftTrunc As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		length As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		linShape As cClickableShape
	#tag EndProperty

	#tag Property, Flags = &h0
		name As string
	#tag EndProperty

	#tag Property, Flags = &h0
		RightTrunc As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		start As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		type As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Visible As boolean = true
	#tag EndProperty

	#tag Property, Flags = &h0
		Width As Integer = 8
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="ArrowLength"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ArrowWidth"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BaselineY"
			Group="Behavior"
			Type="Integer"
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
			InitialValue="1"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="circular"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="complement"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FeatureText"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Finish"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="hasArrow"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
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
			Name="LeftTrunc"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="length"
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
			Name="RightTrunc"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="start"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
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
			Name="type"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Visible"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
