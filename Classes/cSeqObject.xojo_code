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
		    u.TextSize=ProportionalFontSize
		    p.Graphics.TextFont=ProportionalFont
		    p.Graphics.TextSize=ProportionalFontSize
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
		      'while newstrw>=lsl
		      while newstrw>lsl '>= leads to endless cycle in very rare cases
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
		  
		  dim plotstep as integer
		  if bpPerPixel<1 then
		    plotstep=1 
		  else
		    plotstep=bpPerPixel
		  end if
		  
		  if PlotScaleMax>0 then
		    maxdepth=PlotScaleMax
		  else
		    if NOT ScalePlotsSeparately then
		      'determine maximal value for all plots
		      maxdepth=0
		      for n=1 to UBound(ReadDepth1) step plotstep
		        if ReadDepth1(n)>maxdepth then
		          maxdepth=ReadDepth1(n)
		        end if
		      next
		      for n=1 to UBound(ReadDepth2) step plotstep
		        if ReadDepth2(n)>maxdepth then
		          maxdepth=ReadDepth2(n)
		        end if
		      next
		      for n=1 to UBound(ReadDepth3) step plotstep
		        if ReadDepth3(n)>maxdepth then
		          maxdepth=ReadDepth3(n)
		        end if
		      next
		      for n=1 to UBound(ReadDepth4) step plotstep
		        if ReadDepth4(n)>maxdepth then
		          maxdepth=ReadDepth4(n)
		        end if
		      next
		      
		      
		    end if
		  end if
		  
		  
		  // first track
		  if UBound(ReadDepth1)>1000 then
		    dim DepthPlot as new Group2D
		    dim lastX As double = 13
		    dim PlotStart as integer=13*bpPerPixel
		    
		    if ScalePlotsSeparately then
		      maxdepth=0
		      for n=PlotStart to UBound(ReadDepth1) step plotstep
		        if ReadDepth1(n)>maxdepth then
		          maxdepth=ReadDepth1(n)
		        end if
		      next
		    end if
		    
		    dim lastY As double = baselineY-70*ReadDepth1(PlotStart)/maxdepth
		    
		    for n=PlotStart to UBound(ReadDepth1) step plotstep 'starting from 10 to make room for the scale
		      'dim dot as new RectShape
		      dim lin as new CurveShape
		      avgDepth=0
		      avgDepth=ReadDepth1(n)
		      lin.BorderColor=&cFF000000   'Red
		      lin.Order=0
		      lin.x=lastx
		      lin.x2=n/bpPerPixel
		      lin.y=lastY
		      if avgdepth>maxdepth then
		        avgdepth=maxdepth
		      end if
		      lin.y2=baselineY-70*avgdepth/maxdepth 'graph is 70 pixels high
		      y2=lin.y2
		      DepthPlot.append lin
		      lastY=lin.y2
		      lastX=lin.x2
		    next
		    Lmap.append depthPlot
		    
		    
		    if ScalePlotsSeparately then
		      dim ss as new StringShape
		      ss.Text="max="+str(maxdepth)
		      ss.TextFont=FixedFont
		      ss.TextSize=9
		      ss.X=30
		      ss.y=35
		      ss.FillColor=&cFF000000
		      Lmap.append ss
		    else
		      'add a proper scale on the left
		      
		      
		      'draw the ordinate line:
		      dim rect as New RectShape
		      rect.width=1
		      rect.height=71
		      rect.border=0
		      'rect.fillcolor=RGB(24,96,90)
		      rect.x=2 
		      rect.y=baselineY-35
		      Lmap.Append(rect)
		      
		      'draw two(three) ticks across the line:
		      'rect=New RectShape
		      'rect.width=3
		      'rect.height=1
		      'rect.border=0
		      'rect.x=4
		      'rect.y=baselineY-35
		      'Lmap.Append(rect)
		      
		      rect=New RectShape
		      rect.width=3
		      rect.height=1
		      rect.border=0
		      rect.x=4
		      rect.y=baselineY-70
		      Lmap.Append(rect)
		      
		      rect=New RectShape
		      rect.width=3
		      rect.height=1
		      rect.border=0
		      rect.x=4
		      rect.y=baselineY
		      Lmap.Append(rect)
		      
		      'add text labels
		      dim s as New StringShape
		      s.TextFont=FixedFont
		      s.TextSize=10
		      s.Text="0"
		      s.x=9 '-(p.Graphics.StringWidth(s.text)/2)
		      s.y=baselineY+4
		      Lmap.Append(s)
		      
		      s = New StringShape
		      s.TextFont=FixedFont
		      s.TextSize=10
		      s.text=str(maxdepth)
		      s.x=7+p.Graphics.StringWidth(s.text)/2
		      s.y=baselineY-66
		      Lmap.Append(s)
		      
		      's = New StringShape
		      's.TextFont=FixedFont
		      's.TextSize=10
		      'dim midlabel as integer = maxdepth/2
		      's.text=str(midlabel)
		      's.x=7+p.Graphics.StringWidth(s.text)/2
		      's.y=baselineY-31
		      'Lmap.Append(s)
		      
		    end if
		    
		  end if
		  
		  
		  //second track
		  if UBound(ReadDepth2)>1000 then
		    dim DepthPlot as new Group2D
		    dim lastX As double = 13
		    dim PlotStart as integer=13*bpPerPixel
		    
		    if ScalePlotsSeparately then
		      maxdepth=0
		      for n=PlotStart to UBound(ReadDepth2) step plotstep
		        if ReadDepth2(n)>maxdepth then
		          maxdepth=ReadDepth2(n)
		        end if
		      next
		    end if
		    
		    dim lastY As double = baselineY-70*ReadDepth2(PlotStart)/maxdepth
		    
		    for n=plotstart to UBound(ReadDepth2) step plotstep
		      'dim dot as new RectShape
		      dim lin as new CurveShape
		      avgDepth=0
		      avgDepth=ReadDepth2(n)
		      lin.BorderColor=&c66330000   'Brown
		      lin.Order=0
		      lin.x=lastx
		      lin.x2=n/bpPerPixel
		      lin.y=lastY
		      if avgdepth>maxdepth then
		        avgdepth=maxdepth
		      end if
		      lin.y2=baselineY-70*avgdepth/maxdepth 'graph is 70 pixels high
		      y2=lin.y2
		      DepthPlot.append lin
		      lastY=lin.y2
		      lastX=lin.x2
		    next
		    Lmap.append depthPlot
		    
		    if ScalePlotsSeparately then
		      dim ss as new StringShape
		      ss.Text="max="+str(maxdepth)
		      ss.TextFont=FixedFont
		      ss.TextSize=9
		      ss.X=30
		      ss.y=45
		      ss.FillColor=&c66330000
		      Lmap.append ss
		    end if
		    
		  end if
		  
		  //third track
		  if UBound(ReadDepth3)>1000 then
		    dim DepthPlot as new Group2D
		    dim lastX As double = 13
		    dim PlotStart as integer=13*bpPerPixel
		    
		    if ScalePlotsSeparately then
		      maxdepth=0
		      for n=PlotStart to UBound(ReadDepth3) step plotstep
		        if ReadDepth3(n)>maxdepth then
		          maxdepth=ReadDepth3(n)
		        end if
		      next
		    end if
		    
		    dim lastY As double = baselineY-70*ReadDepth3(PlotStart)/maxdepth
		    
		    for n=PlotStart to UBound(ReadDepth3) step plotstep
		      'dim dot as new RectShape
		      dim lin as new CurveShape
		      avgDepth=0
		      avgDepth=ReadDepth3(n)
		      lin.BorderColor=&c00804000    'Green
		      lin.Order=0
		      lin.x=lastx
		      lin.x2=n/bpPerPixel
		      lin.y=lastY
		      if avgdepth>maxdepth then
		        avgdepth=maxdepth
		      end if
		      lin.y2=baselineY-70*avgdepth/maxdepth 'graph is 70 pixels high
		      y2=lin.y2
		      DepthPlot.append lin
		      lastY=lin.y2
		      lastX=lin.x2
		    next
		    Lmap.append depthPlot
		    
		    if ScalePlotsSeparately then
		      dim ss as new StringShape
		      ss.Text="max="+str(maxdepth)
		      ss.TextFont=FixedFont
		      ss.TextSize=9
		      ss.X=width-30
		      ss.y=35
		      ss.FillColor=&c00804000
		      Lmap.append ss
		    end if
		    
		  end if
		  
		  //fourth track
		  if UBound(ReadDepth4)>1000 then
		    dim DepthPlot as new Group2D
		    dim lastX As double = 13
		    dim PlotStart as integer=13*bpPerPixel
		    
		    if ScalePlotsSeparately then
		      maxdepth=0
		      for n=PlotStart to UBound(ReadDepth4) step plotstep
		        if ReadDepth4(n)>maxdepth then
		          maxdepth=ReadDepth4(n)
		        end if
		      next
		    end if
		    
		    dim lastY As double = baselineY-70*ReadDepth4(PlotStart)/maxdepth
		    
		    for n=PlotStart to UBound(ReadDepth4) step plotstep
		      'dim dot as new RectShape
		      dim lin as new CurveShape
		      avgDepth=0
		      avgDepth=ReadDepth4(n)
		      lin.BorderColor=&c0080FF00   'Blue
		      lin.Order=0
		      lin.x=lastx
		      lin.x2=n/bpPerPixel
		      lin.y=lastY
		      if avgdepth>maxdepth then
		        avgdepth=maxdepth
		      end if
		      lin.y2=baselineY-70*avgdepth/maxdepth 'graph is 70 pixels high
		      y2=lin.y2
		      DepthPlot.append lin
		      lastY=lin.y2
		      lastX=lin.x2
		    next
		    Lmap.append depthPlot
		    
		    if ScalePlotsSeparately then
		      dim ss as new StringShape
		      ss.Text="max="+str(maxdepth)
		      ss.TextFont=FixedFont
		      ss.TextSize=9
		      ss.X=width-30
		      ss.y=45
		      ss.FillColor=&c0080FF00
		      Lmap.append ss
		    end if
		    
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
		PlotScaleMax As Integer
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
		ReadDepth3(0) As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		ReadDepth4(0) As Integer
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
		ScalePlotsSeparately As boolean
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
			Name="PlotScaleMax"
			Group="Behavior"
			Type="Integer"
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
			Name="ScalePlotsSeparately"
			Group="Behavior"
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
