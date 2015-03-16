#tag Class
Protected Class gCode
	#tag Method, Flags = &h0
		Function BackTranslate(Protein as string) As string
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(Codons as string, AAs as string)
		  'the constructor fills in the translation tables
		  
		  aaList=AAs
		  CodonList=Codons
		  
		  dim n as integer
		  dim a as string
		  
		  for n=1 to 65
		    a=midB(aaList,n,1)
		    me.aa(n)=a
		    me.aa3(n)=" "+a+" "
		    
		    'aa3(n-1)=" "+a+" "
		    'aa3m(n-1)=midB(aaListCompl,3*(n-1)+1,3)
		  next
		  
		  
		  'initialise back translation
		  'BackTransList="GCN,MGN,AAY,GAY,TGY,CAR,GAR,GGN,CAY,ATH,YTN,AAR,ATG,TTY,CCN,WSN,ACN,TGG,TAY,GTN,TRR,NNN,RAY,SAR"
		  'aaBackList="ARNDCQEGHILKMFPSTWYV*XBZ"
		  'for n=1 to 24
		  'BackTransCodons(n)=NthField(BackTransList,",",n)
		  'next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Translate(orf As string) As string
		  dim  m,n,GeneLength,aa0,up  as integer
		  dim protein,codon,codons,aa1st as string
		  protein=""
		  GeneLength=lenB(orf)
		  
		  for n=1 to (GeneLength - 2) step 3
		    
		    
		    codon=midB(orf,n,3)
		    aa0=instr(CodonList,codon)
		    if aa0>0 then
		      protein=protein+aa((aa0+3)/4)
		    else
		      'if instr doesn't find a codon in the list, it will return 0
		      'and  aa(0) is X - so it will work for all codons with redundancies-
		      'but also happily translate into Xes any crap
		      if haveRedundancies(codon)=true then
		        codons=SimplePattern(codon)
		        up=countfields(codons,",")
		        aa1st=me.aa((instr(CodonList,nthfield(codons,",",1))+3)/4)
		        for m=2 to up
		          if aa1st<>me.aa((instr(CodonList,nthfield(codons,",",m))+3)/4) then
		            aa1st="X"  'redundant codon translates to more than 1 amino acid
		            exit
		          end
		        next
		        protein=protein+aa1st
		        
		      else
		        'some crap is probably  being translated,
		        'a warning may be more appropriate, nevertheless...
		        protein=protein+"X"
		      end
		      
		    end
		  next
		  return protein
		  Exception err
		    ExceptionHandler(err,"MethodsAndGlobals:Translate")
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		aa(65) As string
	#tag EndProperty

	#tag Property, Flags = &h0
		aa3(65) As string
	#tag EndProperty

	#tag Property, Flags = &h0
		AAlist As string = """XRRRRRRLLLLLLSSSSSSGGGGAAAAPPPPTTTTVVVVIIIQQNNKKHHFFEEDDCCYYWM***"""
	#tag EndProperty

	#tag Property, Flags = &h0
		CodonList As string = """AGA,AGG,CGA,CGC,CGG,CGT,CTA,CTC,CTG,CTT,TTA,TTG,AGC,AGT,TCA,TCC,TCG,TCT,GGA,GGC,GGG,GGT,GCA,GCC,GCG,GCT,CCA,CCC,CCG,CCT,ACA,ACC,ACG,ACT,GTA,GTC,GTG,GTT,ATA,ATC,ATT,CAA,CAG,AAC,AAT,AAA,AAG,CAC,CAT,TTC,TTT,GAA,GAG,GAC,GAT,TGC,TGT,TAC,TAT,TGG,ATG,TAA,TAG,TGA"""
	#tag EndProperty

	#tag Property, Flags = &h0
		Name As string
	#tag EndProperty

	#tag Property, Flags = &h0
		OnlyATGstart As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		Starts(0) As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Stops(0) As string
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="AAlist"
			Group="Behavior"
			InitialValue="""""XRRRRRRLLLLLLSSSSSSGGGGAAAAPPPPTTTTVVVVIIIQQNNKKHHFFEEDDCCYYWM***"""""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CodonList"
			Group="Behavior"
			InitialValue="""""AGA,AGG,CGA,CGC,CGG,CGT,CTA,CTC,CTG,CTT,TTA,TTG,AGC,AGT,TCA,TCC,TCG,TCT,GGA,GGC,GGG,GGT,GCA,GCC,GCG,GCT,CCA,CCC,CCG,CCT,ACA,ACC,ACG,ACT,GTA,GTC,GTG,GTT,ATA,ATC,ATT,CAA,CAG,AAC,AAT,AAA,AAG,CAC,CAT,TTC,TTT,GAA,GAG,GAC,GAT,TGC,TGT,TAC,TAT,TGG,ATG,TAA,TAG,TGA"""""
			Type="string"
			EditorType="MultiLineEditor"
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
			Name="OnlyATGstart"
			Group="Behavior"
			InitialValue="false"
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
	#tag EndViewBehavior
End Class
#tag EndClass
