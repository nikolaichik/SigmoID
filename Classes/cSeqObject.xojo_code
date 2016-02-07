#tag Class
Protected Class cSeqObject
	#tag Method, Flags = &h0
		Sub Init(width as integer, height As integer)
		  dim l,o, adjWidth as integer
		  dim SelRect As rectShape
		  dim Circ as OvalShape
		  dim SelArc As ArcShape
		  'dim s as GeneName
		  'dim s1 as cName
		  'dim t as cName
		  'dim u as REname
		  dim c as curveShape
		  dim parts, m, n, dir,r, r2, Ymax, AW, BW as integer
		  dim avgDepth, avgstart, avgend, maxdepth as Integer
		  dim x0,x1,x2,x3,y0,y1,y2,y3 as double
		  dim arcSecAngle, ancorX, ancorY, currRotAngle as double
		  dim ArSizeAngle,ArStartAngle,ArHeadAngle,ArBodyAngle, corr as double
		  dim ls,cs as cClickableShape
		  'dim f as FigureShape
		  dim p as Picture
		  dim gf as gbfeature
		  
		  ExtraObj=0
		  lmap=nil
		  
		  
		  p=New Picture(1,1,1) 'needed to get string widths
		  
		  'baselineY=200  '- default  'global property from which all Y object coords are calculated on linear map
		  Ymax=BaselineY*me.LScale  'not sure this is req'd any more
		  'calculate and fill in the values
		  
		  map=New Picture(width,height,0)
		  
		  me.length=lenb(me.Sequence)
		  
		  
		  'initialise linear map:
		  Lmap=New Group2D
		  'adjWidth=width-20
		  'adjWidth=MapSizeX-20
		  adjWidth=width'-20
		  
		  bpPerPixel=length/adjWidth   'default picture width - 500 pixels, left&right margins -10 pixels
		  o=25                                   'vertical offset for overlapping features
		  
		  
		  size=10     'arrow parameter that equals to body width, arrowhead length and half of arrowhead width
		  'bpPerRad=length/(twoPi)
		  
		  
		  'add dummy selection rectangle (or arc) to be used later for raw (across feature borders) seq selection:
		  SelRect=new rectshape
		  SelRect.FillColor=RGB(191,204,242)
		  SelRect.x=SelStart/bpPerPixel
		  SelRect.Width=SelLength/bpPerPixel
		  SelRect.y=height/2
		  SelRect.height=height+2 'needs adjustment!
		  Lmap.append selrect
		  
		  Lmap.append DrawRuler(adjWidth, 20, me.length)
		  
		  
		  
		  'now draw the rest of the map (actual features)!
		  
		  for l=1 to ubound(features)
		    
		    gf=features(l)
		    
		    'parameters for linear map:
		    features(l).linShape=New cClickableShape
		    ls=features(l).linShape     'a pointer to speed things up
		    size=features(l).width
		    ls.x=features(l).start/bpPerPixel
		    ls.y=ls.y+o*FtRow(l)  'strange y coord - check!
		    ls.length=features(l).length/bpPerPixel
		    
		    features(l).init 'sets the colour and arrow size, then calls real init
		    
		    'add feature name:
		    dim u as new StringShape
		    dim pos as integer
		    if features(l).complement then
		      pos=features(l).start-features(l).length/2
		    else
		      pos=features(l).start+features(l).length/2
		    end
		    u.TextFont=ProportionalFont
		    u.TextSize=10
		    p.Graphics.TextFont=ProportionalFont
		    p.Graphics.TextSize=10
		    u.Text=features(l).Name
		    u.X=(ceil(pos/bpPerPixel))'*me.Lscale
		    u.Y=features(l).baselineY+features(l).linShape.y+4
		    'truncate feature name length to fit its shape:
		    dim strw,newstrw as double
		    dim lsl as double = features(l).linshape.length
		    strw = p.Graphics.StringWidth(u.text)
		    if strw>features(l).linshape.length then
		      dim cw as double
		      dim newtext as string
		      dim newtextlength as integer
		      cw=features(l).linshape.length/strw
		      newtextlength=len(u.text)*cw
		      newtext=left(u.text,newtextlength)
		      newstrw=p.Graphics.StringWidth(newtext)
		      
		      'that's approximate and text doesn't fit sometimes, therefore cutting off a bit%
		      while newstrw>=lsl
		        newtext=left(newtext,len(newtext)-1)
		        newstrw=p.Graphics.StringWidth(newtext)
		      wend
		      u.text=newtext
		    end if
		    
		    
		    if features(l).Visible=true then  'only add visible features
		      if ubound(ls.polyX)>1 then 'only add figureShapes that have been actually drawn
		        ls.scale=LScale
		        Lmap.Append ls
		        Lmap.Append u
		      end
		    end
		  next
		  
		  // add RNA-seq coverage plots
		  ' we should really be using curveshapes here, but these behave starngely
		  ' (the .X2 coordinate is always twice bigger than the value it's set to)
		  dim plotstep as integer
		  if bpPerPixel<1 then
		    plotstep=1 
		  else
		    plotstep=bpPerPixel
		  end if
		  if UBound(ReadDepth1)>1000 then
		    dim DepthPlot as new Group2D
		    dim lastY As double = baselineY
		    dim lastX As double = 0
		    
		    maxdepth=0
		    for n=1 to UBound(ReadDepth1) step plotstep
		      if ReadDepth1(n)>maxdepth then
		        maxdepth=ReadDepth1(n)
		      end if
		    next
		    for n=1 to UBound(ReadDepth1) step plotstep
		      'dim dot as new RectShape
		      dim lin as new CurveShape
		      avgDepth=0
		      if plotstep=1 then
		        avgDepth=ReadDepth1(n)
		      else
		        if n-bpPerPixel/2<1 then
		          avgstart=1
		        else
		          avgstart=n-bpPerPixel/2
		        end if
		        if n+bpPerPixel/2>UBound(ReadDepth1) then
		          avgend=UBound(ReadDepth1)
		        else
		          avgend=n+bpPerPixel/2
		        end if
		        for m=avgstart to avgend
		          avgDepth=avgDepth+ReadDepth1(m)
		        next
		        avgDepth=avgDepth/bpPerPixel
		      end if
		      lin.BorderColor=&cCC339900
		      lin.Order=0
		      lin.x=lastx
		      lin.x2=n/bpPerPixel
		      lin.y=lastY
		      lin.y2=baselineY-60*avgdepth/maxdepth 'graph is 60 pixels high
		      y2=lin.y2
		      DepthPlot.append lin
		      lastY=lin.y2
		      lastX=lin.x2
		    next
		    Lmap.append depthPlot
		    
		    dim ss as new StringShape
		    ss.Text="max depth="+str(maxdepth)
		    ss.TextFont=FixedFont
		    ss.TextSize=8
		    ss.X=40
		    ss.y=35
		    ss.FillColor=&cCC339900
		    Lmap.append ss
		    
		  end if
		  
		  
		  //second track
		  if UBound(ReadDepth2)>1000 then
		    dim DepthPlot as new Group2D
		    dim lastY As double = baselineY
		    dim lastX As double = 0
		    
		    maxdepth=0
		    for n=1 to UBound(ReadDepth2) step plotstep
		      if ReadDepth2(n)>maxdepth then
		        maxdepth=ReadDepth2(n)
		      end if
		    next
		    for n=1 to UBound(ReadDepth2) step plotstep
		      'dim dot as new RectShape
		      dim lin as new CurveShape
		      avgDepth=0
		      if plotstep=1 then
		        avgDepth=ReadDepth2(n)
		      else
		        if n-bpPerPixel/2<1 then
		          avgstart=1
		        else
		          avgstart=n-bpPerPixel/2
		        end if
		        if n+bpPerPixel/2>UBound(ReadDepth2) then
		          avgend=UBound(ReadDepth2)
		        else
		          avgend=n+bpPerPixel/2
		        end if
		        for m=avgstart to avgend
		          avgDepth=avgDepth+ReadDepth2(m)
		        next
		        avgDepth=avgDepth/bpPerPixel
		      end if
		      lin.BorderColor=&cFF660000
		      lin.Order=0
		      lin.x=lastx
		      lin.x2=n/bpPerPixel
		      lin.y=lastY
		      lin.y2=baselineY-60*avgdepth/maxdepth 'graph is 60 pixels high
		      y2=lin.y2
		      DepthPlot.append lin
		      lastY=lin.y2
		      lastX=lin.x2
		    next
		    Lmap.append depthPlot
		    
		    dim ss as new StringShape
		    ss.Text="max depth="+str(maxdepth)
		    ss.TextFont=FixedFont
		    ss.TextSize=8
		    ss.X=width-40
		    ss.y=35
		    ss.FillColor=&cFF660000
		    Lmap.append ss
		    
		  end if
		  
		  
		  
		  
		  map.Objects=Lmap
		  
		  
		  
		  Exception err
		    ExceptionHandler(err,"cSeqObject:Init")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Init(width as integer, height As integer, imya as string)
		  name=imya
		  init width, height
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Load()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Save()
		  
		End Sub
	#tag EndMethod


	#tag Note, Name = On properties
		Redundant and uppercase are to compress the sequence properly
		with my compression algorithm, have to add proper checks for both
	#tag EndNote


	#tag Property, Flags = &h0
		baselineY As Integer = 20
	#tag EndProperty

	#tag Property, Flags = &h0
		bpPerPixel As single
	#tag EndProperty

	#tag Property, Flags = &h0
		bpPerRad As double
	#tag EndProperty

	#tag Property, Flags = &h0
		centerX As integer = 300
	#tag EndProperty

	#tag Property, Flags = &h0
		centerY As integer = 300
	#tag EndProperty

	#tag Property, Flags = &h0
		Circular As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Cmap As group2D
	#tag EndProperty

	#tag Property, Flags = &h0
		CScale As Double = 1
	#tag EndProperty

	#tag Property, Flags = &h0
		Description As string
	#tag EndProperty

	#tag Property, Flags = &h0
		ExtraObj As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Features(0) As GBFeature
	#tag EndProperty

	#tag Property, Flags = &h0
		FileVersion As string
	#tag EndProperty

	#tag Property, Flags = &h0
		FtRow(0) As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		gCodeNo As integer = 11
	#tag EndProperty

	#tag Property, Flags = &h0
		Length As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Lmap As Group2D
	#tag EndProperty

	#tag Property, Flags = &h0
		LScale As double = 1
	#tag EndProperty

	#tag Property, Flags = &h0
		Map As Picture
	#tag EndProperty

	#tag Property, Flags = &h0
		Map4 As picture
	#tag EndProperty

	#tag Property, Flags = &h0
		Name As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Radius As integer = 130
	#tag EndProperty

	#tag Property, Flags = &h0
		RCsequence As String
	#tag EndProperty

	#tag Property, Flags = &h0
		ReadDepth1(0) As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		ReadDepth2(0) As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Redundant As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		REnzymes(0) As string
	#tag EndProperty

	#tag Property, Flags = &h0
		REpos(0) As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		SelLength As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		SelStart As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Sequence As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Size As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Uppercase As boolean
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="baselineY"
			Group="Behavior"
			InitialValue="200"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="bpPerPixel"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="bpPerRad"
			Group="Behavior"
			InitialValue="0"
			Type="double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="centerX"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="centerY"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Circular"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CScale"
			Group="Behavior"
			InitialValue="0"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Description"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ExtraObj"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FileVersion"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="gCodeNo"
			Group="Behavior"
			InitialValue="11"
			Type="integer"
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
			Name="Length"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LScale"
			Group="Behavior"
			InitialValue="0"
			Type="double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Map"
			Group="Behavior"
			InitialValue="0"
			Type="Picture"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Map4"
			Group="Behavior"
			InitialValue="0"
			Type="picture"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="radius"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RCsequence"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Redundant"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SelLength"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SelStart"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Sequence"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Size"
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
			Name="Uppercase"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
