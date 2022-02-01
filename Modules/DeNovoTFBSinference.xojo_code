#tag Module
Protected Module DeNovoTFBSinference
	#tag Method, Flags = &h0
		Function BioProspector(inFile as folderitem, outFolder as folderitem) As integer
		  
		  dim Settings as String = ""
		  dim cli as String
		  
		  For Each entry As DictionaryEntry In LogoWin.BioProspectSettings
		    if entry.Value <> "" and entry.Key<>"runGenomeBg" Then
		      if instr(entry.key, "_") > 0 Then
		        Settings = Settings +" -" + Nthfield(entry.Key,"_",1) + " " + entry.Value
		      else
		        Settings = Settings +" -" + entry.Key + " " + entry.Value
		      end
		    end
		  Next
		  cli="'"+BioProsPath+"' -i '"+inFile.NativePath+"'"+Settings+" -o '"+outFolder.NativePath+"'"
		  #If TargetWindows
		    ExecuteWSL(cli)
		  #Else
		    UserShell(cli)
		  #endif
		  Return shError
		  
		  Exception err
		    ExceptionHandler(err,"DeNovoTFBSinference:BioProspector")
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Bits2thresholds(IC as double) As string
		  // Estimate nhmmer thresholds from profile information content (IC, bits)
		  '  Coefficients derived from linear regression of threshold values of manually calibrated profiles
		  '
		  '  Trusted cutoff:
		  '  TC=0.73IC-6.02
		  '
		  '  Noise cutoff:
		  '  NC=0.28IC+2.52
		  ' 
		  ' return format intended for both the hmm and options file and looks like this:
		  ' // Trusted cutoff. Bit score per-sequence cutoff, set according to the lowest scores seen for true homologous sequences that were above the GA gathering thresholds, when gathering members of the alignment
		  ' #=GF TC 8.5 8.5
		  '
		  ' // Gathering threshold. Bit score per-sequence cutoff used in gathering the members of the alignment
		  ' #=GF GA 7.9 7.9
		  '
		  ' //Noise cutoff. Bit score per-sequence cutoff, set according to the highest scores seen for unrelated sequences
		  ' #=GF NC 7.6 7.6
		  
		  // Re-evaluate the coefficients with carefully calibrated v.2 profiles!
		  
		  Dim TC, NC, GA as double
		  
		  Const Atc as double = 0.73
		  Const Btc as double = -6.02
		  Const Anc as double = 0.28
		  Const Bnc as double = 2.52
		  
		  TC = Atc*IC + Btc  'Trusted
		  
		  NC = Anc*IC + Bnc  'Noise
		  
		  GA= (TC+NC)/2      'Gathering
		  
		  'return str(TC)+";"+str(GA)+";"+str(NC)  ' TC;GA;NC
		  
		  dim cutoffs as string  
		  cutoffs="#=GF TC "+str(TC)+" "+str(TC)+Endofline
		  cutoffs=cutoffs+"#=GF GA "+str(GA)+" "+str(GA)+Endofline
		  cutoffs=cutoffs+"#=GF NC "+str(NC)+" "+str(NC)+Endofline
		  
		  return cutoffs
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ChIPmunk(infile as folderItem, outfile as folderItem) As integer
		  Dim cli As String
		  if outfile.Exists then outfile.Delete
		  dim copyDestination As FolderItem
		  copyDestination=resources_f
		  inFile.CopyFileTo(copyDestination)
		  #If TargetWindows
		    cli="java -cp "+PlaceQuotesToPath(globals.chipset.jarPath)+" ru.autosome.ChIPHorde "+globals.chipset.motifLength+" "+globals.chipset.mode+" yes 1 s:"+chr(34)+Str(copyDestination.NativePath+inFile.Name)+chr(34)+""
		    cli=cli+" "+globals.chipset.tryLimit+" "+globals.chipset.stepLimit+" 1 "+globals.chipset.threadCount+" random "+globals.chipset.gcPercent+" "+globals.chipset.motifShape
		  #Else 
		    cli="java -cp "+globals.chipset.jarPath+" ru.autosome.ChIPHorde "+globals.chipset.motifLength+" "+globals.chipset.mode+" yes 1 s:'"+inFile.NativePath+"'"
		    cli=cli+" "+globals.chipset.tryLimit+" "+globals.chipset.stepLimit+" 1 "+globals.chipset.threadCount+" random "+globals.chipset.gcPercent+" "+globals.chipset.motifShape
		    
		    
		    
		    'cli=cli+" > "+str(outfile.ShellPath)+"_outputChIPmunk"
		  #EndIf
		  for i as integer = 0 to WindowCount - 1
		    if window(i) isa deNovoWin then
		      deNovoWin.rp.writeToWin(EndOfLine.unix+"Running ChIPmunk...")
		      exit
		    elseif i = WindowCount-1 then
		      LogoWin.WriteToSTDOUT(EndOfLine.unix+"Running ChIPmunk...")
		    end
		  next i
		  
		  'assume bash is the normal user shell
		  'execute bash with login scripts to set the same env as in terminal
		  'command must be in single quotes
		  
		  userShell(cli)
		  
		  If sherror=0 Then
		    Dim tos As TextOutputStream
		    tos = TextOutputStream.Create(outFile)
		    If tos=Nil Then Return 1
		    tos.writeline(cli)
		    tos.Write(shResult)
		    
		    Return sherror
		  else
		    for i as integer = 0 to WindowCount - 1
		      if window(i) isa deNovoWin then
		        deNovoWin.rp.writeToWin(EndOfLine.unix+"ChIPmunk error code: "+Str(shError))
		        deNovoWin.rp.writeToWin(EndofLine+shResult)
		        exit
		      elseif i = WindowCount-1 then
		        LogoWin.WriteToSTDOUT(EndOfLine.unix+"ChIPmunk error code: "+Str(shError))
		        LogoWin.WriteToSTDOUT(EndofLine+shResult)
		      end
		    next i
		    
		    return sherror
		  end if
		  
		  Exception err
		    ExceptionHandler(err,"DeNovoTFBSinference:ChIPmunk",True)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ConvertIDtoGenPept(ncbiID as string) As string
		  'currently unused
		  
		  // Requires a valid NCBI ID (e.g. the one returned by UniProt2ncbi_ID)
		  //
		  // Returns correct ID (currently gi, may break in September 2016) for the protein sequence in GenPept
		  
		  // The response from NCBI should look like this:
		  '<eSearchResult>
		  '<Count>1</Count>
		  '<RetMax>1</RetMax>
		  '<RetStart>0</RetStart>
		  '<IdList>
		  '<Id>734488852</Id>
		  '</IdList>
		  '<TranslationSet/>
		  '<QueryTranslation/>
		  '</eSearchResult>
		  '110 15090522 15090522[UID] UID -1 N GROUP 15090522[UID]
		  
		  Const URLstart As String="https://eutils.ncbi.nlm.nih.gov/entrez/eutils/esearch.fcgi?db=protein&term="
		  Dim Separ1 as string="<Id>"
		  Dim Separ2 as string="</Id>"
		  dim GenPeptID, theURL as string
		  
		  
		  dim hts as new HTTPSecureSocket
		  hts.Secure = True
		  dim res as string
		  dim outfile as folderitem
		  
		  
		  LogoWin.WriteToSTDOUT ("Looking for GenPept ID @NCBI... ")
		  'LogoWin.show
		  
		  hts.Yield=true  'allow background activities while waiting
		  hts.SetRequestHeader("Content-Type:","text/plain")
		  
		  theURL=URLstart+ncbiID
		  
		  res=hts.Get(theURL,60)  'adjust timeout?
		  
		  if hts.HTTPStatusCode>=200 AND hts.HTTPStatusCode<300 then 'successful
		    if Res="" then
		      if hts.ErrorCode=-1 then
		        logowin.WriteToSTDOUT("Server timeout (No response in one minute"+EndOfLine.UNIX)
		      else
		        LogoWin.WriteToSTDOUT ("Server error (empty response)"+EndOfLine)
		      end if
		    else
		      GenPeptID=NthField(res,separ1,2)
		      GenPeptID=NthField(GenPeptID,separ2,1)
		      LogoWin.WriteToSTDOUT (GenPeptID)
		      LogoWin.WriteToSTDOUT (EndOfLine)
		      
		      
		      
		    end if
		  else
		    LogoWin.WriteToSTDOUT ("eutils error "+str(hts.HTTPStatusCode)+EndOfLine.unix)
		  end if
		  
		  hts.close
		  return GenPeptID
		  Exception err
		    ExceptionHandler(err,"SeqRetrieval:ConvertIDtoGenPept")
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function FetchGenBankEntryFragment(EntryID as string, entryStart as integer, entryEnd as integer) As string
		  
		  Const URLstart as string="https://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch.fcgi?db=nuccore&id="
		  Const URLend as string="&rettype=gbwithparts&retmode=text&seq_start=" 
		  
		  
		  dim theURL as string
		  
		  
		  'dim hts as new HTTPSecureSocket
		  'hts.Secure = True
		  dim res as string
		  
		  If InStr(EntryID,"join(")>0 Then  'this could be either a real pseudogene or sequencing error leading to a frameshift, better ignore this locus anyway
		    EntryID=NthField(EntryID,"join(",2)
		    deNovoWin.rp.writeToWin("Getting the GenBank entry "+EntryID+" fragment... It seems to be a pseudogene: ignoring"+EndOfLine.UNIX)
		    Return ""
		  End If
		  
		  deNovoWin.rp.writeToWin("Getting the GenBank entry "+EntryID+" fragment... ")
		  'LogoWin.show
		  
		  'old socket masked
		  'hts.Yield=true  'allow background activities while waiting
		  'hts.SetRequestHeader("Content-Type:","text/plain")
		  
		  theURL=URLstart+EntryID+URLend+Str(entryStart)+"&seq_stop="+Str(entryEnd)+DevInfo
		  'res=DefineEncoding(hts.Get(theURL,60), Encodings.ASCII)  'no encoding is set 
		  
		  dim hts as New URLConnection
		  hts.RequestHeader("Content-Type:")="text/plain"
		  try
		    res=DefineEncoding(hts.SendSync("GET", theURL,60), Encodings.ASCII) 
		  catch e as NetworkException
		    deNovoWin.rp.writeToWin(e.message+EndOfLine.UNIX)
		  catch e as RuntimeException
		    deNovoWin.rp.writeToWin(e.message+EndOfLine.UNIX)
		  end try
		  
		  if hts.HTTPStatusCode>=200 AND hts.HTTPStatusCode<300 then 'successful
		    if Res="" then
		      'if hts.Error=-1 then
		      'Logowin.WriteToSTDOUT("Server timeout (No response in one minute"+EndOfLine.UNIX)
		      'else
		      deNovoWin.rp.writeToWin("Error (empty response)"+EndOfLine.UNIX)
		      'end if
		    else
		      'LogoWin.WriteToSTDOUT (EndOfLine)
		      deNovoWin.rp.writeToWin(" OK"+EndOfLine.unix)'(res)
		      
		    end if
		  else
		    deNovoWin.rp.writeToWin("eutils error "+Str(hts.HTTPStatusCode)+EndOfLine.UNIX)
		    deNovoWin.rp.writeToWin("The URL requested was "+theURL+EndOfLine.UNIX)
		  end if
		  
		  'hts.close
		  return res
		  Exception err
		    ExceptionHandler(err,"DeNovoTFBSinference:FetchGenBankEntryFragment",True)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function FetchGenPeptEntries(Entries as string) As string
		  'Currently unused
		  
		  Const URLstart As String="https://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch.fcgi?db=protein&rettype=gp&retmode=text&id="
		  Dim theURL As String
		  
		  
		  dim hts as new HTTPSecureSocket
		  hts.Secure = True
		  Dim res As String
		  
		  LogoWin.WriteToSTDOUT ("Getting GenPept entries... ")
		  'LogoWin.show
		  
		  hts.Yield=true  'allow background activities while waiting
		  hts.SetRequestHeader("Content-Type:","text/plain")
		  hts.SetRequestHeader("email:","nikolaichik@bio.bsu.by")
		  hts.SetRequestHeader("tool:","SigmoID")
		  hts.SSLConnectionType=SSLSocket.SSLConnectionTypes.TLSv12
		  
		  theURL=URLstart+Entries
		  
		  res=DefineEncoding(hts.post(theURL,60), Encodings.ASCII)  'no encoding is set
		  
		  If hts.HTTPStatusCode>=200 And hts.HTTPStatusCode<300 Then 'successful
		    if Res="" then
		      if hts.ErrorCode=-1 then
		        logowin.WriteToSTDOUT("Server timeout (No response in one minute"+EndOfLine.UNIX)
		      else
		        LogoWin.WriteToSTDOUT ("Server error (empty response)"+EndOfLine)
		      end if
		    else
		      'LogoWin.WriteToSTDOUT (EndOfLine)
		      LogoWin.WriteToSTDOUT "OK" '(res)
		      LogoWin.WriteToSTDOUT (EndOfLine)
		      
		    end if
		  else
		    LogoWin.WriteToSTDOUT ("eutils error "+str(hts.HTTPStatusCode)+EndOfLine.unix)
		  end if
		  
		  hts.close
		  return res
		  '
		  'Exception err
		  'ExceptionHandler(err,"SeqRetrieval:FetchGenPeptEntry")
		  
		  
		  Exception err
		    if err isa IOException then
		      LogoWin.WriteToSTDOUT(EndOfLine.unix+"IOException has occurred.")
		      LogoWin.WriteToSTDOUT(EndOfLine.unix+"ErrorNumber: "+str(err.ErrorNumber))
		      LogoWin.WriteToSTDOUT(EndOfLine.unix+"Message: "+err.Message)
		      LogoWin.WriteToSTDOUT(EndOfLine.unix+"Reason: "+err.Reason)
		    end if
		    ExceptionHandler(err,"FetchGenPeptEntry")
		    
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function FixProtName(ProtName as string) As string
		  // Capitalise the first letter of protein name
		  
		  Dim f,l As String
		  
		  f=Left(ProtName,1)
		  l=Right(ProtName,Len(ProtName)-1)
		  
		  return f.uppercase+l
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetCRtags(SearchResRaw as string, SearchResTable as string, CRs as string) As string
		  // Add Critical Residues (CRs) according to Sahota and Stormo (2010; doi:10.1093/bioinformatics/btq501) 
		  ' to hmmsearch output 
		  ' CRs should be in the format "2,3,7,9,11,13,14,21"
		  ' requires an alignment table (example below) in addition to standard hmmsearch output to simplify things a bit.
		  ' the dot denotes a 'gap' in the position where an insertion relative to the hmm occurred:
		  ' such dots should be skipped, but the the sequence with lowercase letter in this position 
		  ' has the actual insertion and should be ignored (its tag is likely to be invalid)
		  ' the target should also have no dashes (gaps) within the CR range
		  ' also, seqs with duplicate domains should probably be ignored (like OA04_28280 in the sample)
		  
		  'hmmsearch command:
		  'hmmsearch --domE 0.1 -A hmmer.table LacI.hmm CDSs.fasta
		  
		  '# STOCKHOLM 1.0
		  '
		  '#=GS OA04_12200/36-82   DE [subseq from] acrR AcrAB operon repressor
		  '#=GS OA04_28280/12-54   DE [subseq from] transcriptional regulator, TetR family
		  '#=GS OA04_28280/249-295 DE [subseq from] transcriptional regulator, TetR family
		  '#=GS OA04_32680/23-68   DE [subseq from] HTH-type transcriptional regulator TcmR
		  '
		  '
		  'OA04_12200/36-82           ILDTAL.RVFSEHGVSATSLSDIATAAGVTRGAIYWHFKNKAEIFDEI
		  '#=GR OA04_12200/36-82   PP 9*****.**************************************996
		  'OA04_28280/12-54           ILDAAE.KVLLRDGVHRFTLDAVAAEAGISKGGLVYSFPSKDLL----
		  '#=GR OA04_28280/12-54   PP 9*****.**********************************966....
		  'OA04_28280/249-295         IVETAM.NIIKRDGIGALTHRAVANEAHVPLGSTTYHFKSLDDMLNAV
		  '#=GR OA04_21850/18-62   PP 9*****.*********************************998875..
		  'OA04_43270/21-62           --EAAFsQLSAERSFASLSLREVAREAGIAPTSFYRHFRDVDEL----
		  '#=GR OA04_43270/21-62   PP ..555415679***************************986665....
		  
		  
		  'Hits truncated at termini are not handled properly (if truncation eats into CR tag region)
		  
		  Dim CRarray(0) As Integer
		  dim TableArray(0) as string
		  dim AlignmentArray(0) as string
		  dim ProtName As string
		  dim currentCDS as string
		  dim Alignments, hitSeq,currethit,CDStmp, CRtag, CRtagRegion as string
		  Dim m,n,n1,o,p,q,r,fst,CRlen As Integer
		  Dim CRCs(1), CRtagParts(1) As String
		  Dim Repeats As Integer = 0
		  Dim CRtags2(0) As String
		  
		  // Check for a double CR tag (two DNA-binding domains like in AraC family proteins)
		  
		  If InStr(CRs,"|")>0 Then
		    Repeats=1
		    CRCs(1)=NthField(CRs,"|",2) 'Second tag
		    CRCs(0)=NthField(CRs,"|",1) 'First tag
		  Else
		    CRCs(0)=CRs
		  End If
		  Redim ProtNames(0)
		  Redim CRtags(0)
		  
		  For n1=0 To Repeats       'Two cycles only for double tags 
		    Redim hmmSearchMatches(0)
		    Redim CRarray(0)
		    Redim TableArray(0)
		    Redim AlignmentArray(0)
		    
		    // Store CR positions
		    m=CountFields(CRCs(n1),",")
		    for n=1 to m
		      CRarray.Append(Val(NthField(CRCs(n1),",",n)))
		    next
		    if ubound(CRarray)<1 then
		      return ""                 'hmmsearch failed
		    end if
		    fst=CRarray(1)
		    CRlen=CRarray(m)-fst+1
		    
		    // Get the second part of the table containing the actual alignments:
		    TableArray=SearchResTable.Split("#=GS")
		    if Ubound(TableArray)=-1 then
		      return ""                    ' empty result, probably wrong HMM/CDS combination
		    end if
		    Alignments=TableArray(UBound(TableArray)) 'we only need the last item:
		    n=instr(Alignments,EndOfLine.UNIX)
		    Alignments=Right(alignments, len(Alignments)-n)
		    AlignmentArray=Alignments.Split(EndOfLine.UNIX) 'every second item isn't needed
		    
		    // Extract CR tag
		    m=ubound(AlignmentArray)-4
		    o=ubound(CRarray)
		    for n=1 to m step 2
		      hitseq=AlignmentArray(n)
		      ProtName=NthField(hitSeq,"/",1)
		      'if InStr(ProtName,"|")>0 then        'questionable: this will prevent adding CR tags to hmmsearch result
		      'ProtName=NthField(ProtName,"|",2)
		      'end if
		      if n1 = 0 then
		        ProtNames.Append(ProtName) 
		      end if
		      hitseq=NthField(hitSeq," ",countfields(hitseq," ")) 'the seq goes after the last space
		      hitSeq=ReplaceAll(hitseq,".","") 'removing gaps resulting from insertions in other seqs: probably not the wise thing to do! 
		      
		      
		      
		      'extending hits to equal lengths at ends (if necessary)
		      'checking for alignments truncated at ends (and fixing this when possible)
		      if instr(hitSeq,"-")>0 then
		        dim currentHit As string=hitseq
		        q=0
		        if left(hitSeq, 1)="-" then 
		          'hitSeq=Replace(hitSeq,"-","x")
		          r=len(hitSeq)
		          for q=2 to r     'trim left end
		            if mid(hitSeq,q,1)<>"-" then exit
		          next
		          q=q-1
		          
		          currentHit=right(hitseq,len(hitseq)-q)
		          
		        end if
		        
		        While Right(currentHit,1)="-"     'trim right end
		          currentHit=Left(currentHit,Len(currentHit)-1)
		        wend
		        
		        'get extended hit
		        CDStmp=Uppercase(NthField(CDSseqs,">"+ProtName,2))
		        If Instr(CDStmp, EndOfLine.UNIX)>0 Then
		          CDStmp=Nthfield(CDStmp, EndOfLine.UNIX, 2)
		        End
		        CDStmp="XXXXXXXXXXXXX"+CDStmp 'rough workaround for rare cases when N terminus is shorter than the model
		        
		        'CDStmp=CDStmp+Uppercase(NthField(CDSseqs,">"+ProtNames(ubound(ProtNames)),2))'precaution for paralogues
		        If Len(cdstmp)<40 Then 
		          If App.CurrentThread.DebugIdentifier="deNovoSearch" Then
		            deNovoWin.rp.writeToWin("Warning! Protein sequence may be too short for proper CR tag extraction! Check the following protein: "+ ProtNames(ubound(ProtNames)))
		            
		          Else
		            MsgBox "Warning! Protein sequence may be too short for proper CR tag extraction! Check the following protein: "+ ProtNames(ubound(ProtNames))
		          End
		        end if
		        dim gapPos,leftPartStart, rightPartStart as integer
		        dim leftPart, rightPart, leftExt, rightExt as string
		        
		        'if the left end was truncated, we get completely wrong tag here!     <--
		        'so, we extend the left end by required number of residues first:
		        gapPos=instr(currenthit,"-")
		        leftPart=nthfield(currentHit,"-",1)
		        leftPartStart=instr(CDStmp,leftPart)
		        leftExt=mid(CDStmp,leftPartStart-q,q)
		        currenthit=leftext+currentHit
		        
		        'extend the right end
		        'rightPart=NthField(currentHit,"-",CountFields(currentHit,"-"))
		        'rightPartStart=InStr(CDStmp,rightPart)
		        'rightExt=Mid(CDStmp,rightPartStart+Len(rightPart),Len(hitseq)-Len(currenthit))
		        
		        
		        rightPart=NthField(currentHit,"-",1)
		        rightPartStart=InStr(CDStmp,rightPart)
		        rightExt=Mid(CDStmp,rightPartStart+Len(rightPart),Len(hitseq)-Len(currenthit))
		        
		        'replace dashes so that phmmer doesn't bark at them later
		        'Dim hitpos As Integer = InStr(CDStmp,currenthit)
		        'if hitpos=0 then
		        ''zero should be due to gap(s) in the central part of the hit region
		        ''these can probably be tolerated if located outside of the CR tag region,
		        ''so we are replacing 'em with small 'x' here 
		        ''This may leave C terminus truncated, and this could be a problem 
		        '
		        ''An example of a complex situation (CR tag positions are marked by astericks:
		        ''                            *        ***                  **                           
		        '' ----VINQIIDDMARGHIP--SPLPSQNALAEMYNISRTTVRHILAHLRDCGVLT---------
		        ''(a warning should be issued if CR tag positions are in non-conserved part of the HTH like in this example)
		        '
		        'currenthit=ReplaceAll(currenthit,"-","x")+rightExt
		        'else
		        ''currenthit=mid(CDStmp,hitpos-q,len(hitSeq))
		        ''if len(currentHit)<len(hitSeq) then
		        '''extend the right end
		        ''rightPartStart=instr(CDStmp,currenthit)
		        ''rightExt=mid(CDStmp,rightPartStart+len(currenthit),len(hitseq)-len(currenthit))
		        'currenthit=currenthit+rightExt
		        ''end if
		        '
		        'end if
		        
		        currenthit=currenthit+rightExt
		        
		        'CRtag=""
		        'for p=1 to o
		        'CRtag=CRtag+mid(currenthit,CRarray(p),1)
		        'next
		        
		        hmmSearchMatches.Append currenthit
		        hitseq=currenthit
		      else
		        hmmSearchMatches.Append hitseq
		      end
		      
		      
		      'gaps in the modelbefore the CRtag region should be corrected for, e.g
		      'XRE_superfamily  1 rLrelReer....gLtqeelAellGisrstlsryEnGrrkPsqevlkklakaLgvsldel 56
		      '                   rL+++ e++    gL+qe +A+++G+++s + +++nG    +  ++ +lak L+vs++e+
		      '     ABO40696.1 18 RLKAIYEKKknelGLSQESVADKMGMGQSGVGALFNGINALNAYNAALLAKILNVSVEEF 77
		      ' 
		      CRtagRegion=left(hitSeq,fst)
		      
		      if strcomp(CRtagRegion,Uppercase(CRtagRegion),0)<>0 then
		        dim p2 as integer =1
		        dim gapChars as integer
		        dim ch as string
		        for p2=1 to len(CRtagRegion)
		          ch =mid(CRtagRegion,p2,1)
		          if strcomp(ch,Uppercase(ch),0)<>0 then
		            gapChars=gapChars+1
		          end if
		        next
		        
		        hitseq=Right(hitseq,len(hitseq)-gapChars)
		        hmmSearchMatches(ubound(hmmSearchMatches))=hitseq
		        
		      end if
		      
		      
		      
		      
		      
		      
		      
		      
		      
		      
		      
		      'checking for gaps/insertions within CR range
		      CRtagRegion=mid(hitSeq,fst,CRlen)
		      
		      If StrComp(CRtagRegion,Uppercase(CRtagRegion),0)=0 Then
		        If InStr(CRtagRegion,"-")=0 Then  'no problems
		          CRtag=""
		          for p=1 to o
		            'CRtag=CRtag+mid(hitseq,CRarray(p),1)
		            CRtag=CRtag+mid(hitseq,CRarray(p),1)
		          Next
		        Else
		          'should capture gaps both in the model and in the hit seq
		          CRtag="[indel within CR tag region]"
		        End If
		        
		      Else
		        'should capture gaps both in the model and in the hit seq
		        CRtag="[indel within CR tag region]"
		      end if
		      
		      
		      
		      If n1=0 Then
		        CRtags.append(CRtag)
		      Else
		        CRtags2.append(CRtag)
		      End If
		    next
		    
		  Next 'n1
		  'return CRtags
		  
		  // Add CR tags to hmmsearch output
		  ' title lines of the alignments part of hmmsearch results look like this:
		  ' >> AIK13051.1  acrR putative acrAB operon repressor
		  m=ubound(CRtags)
		  If Repeats=0 Then
		    For n=1 To m
		      SearchResRaw=ReplaceAll(SearchResRaw, ">> "+ProtNames(n), ">"+CRtags(n)+"> "+ProtNames(n))
		    Next
		  Else
		    Dim DoubleTag As String
		    For n=1 To m
		      DoubleTag=CRtags(n)+CRtags2(n)
		      CRtags(n)=DoubleTag
		      SearchResRaw=ReplaceAll(SearchResRaw, ">> "+ProtNames(n), ">"+DoubleTag+"> "+ProtNames(n))
		    Next
		  End If
		  
		  Return SearchResRaw
		  Exception err
		    ExceptionHandler(err,"Globals:GetCRtags")
		    
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetHmmFromFamilyName(familyName as string) As FolderItem
		  // Family names and the matching file names are hard coded here
		  'some families without CR tag mapped to closest CR tagged family (for RegPrecise export)
		  
		  'currently the function is used during RegPrecise export and in CoryneRegNetWin
		  
		  Dim TF_HMMs, hmmFile As folderitem
		  Dim hmmFileName As String
		  
		  Select Case familyName
		  Case "AraC"
		    hmmFileName="AraC.hmm"
		  Case "ArgR"
		    hmmFileName="Arg_repressor.hmm"
		  Case "ArgR_repressor"
		    hmmFileName="Arg_repressor.hmm"
		  Case "ArsR"
		    hmmFileName="HTH_20.hmm"
		  Case "AsnC"
		    hmmFileName="HTH_AsnC_type.hmm"
		  Case "bEBP"
		    hmmFileName="bEBP.hmm"
		  Case "CitB"
		    hmmFileName="CitT.hmm"
		  Case "CitT"
		    hmmFileName="CitT.hmm"
		  Case "CRP"
		    hmmFileName="HTH_Crp_2.hmm"
		  Case "DcuR"
		    hmmFileName="DcuR.hmm"
		  Case "DeoR"
		    hmmFileName="HTH_DeoR.hmm"
		  Case "ECF02"
		    hmmFileName="ECF02.hmm"
		  Case "RpoE"
		    hmmFileName="ECF02.hmm"
		  Case "ECF16"
		    hmmFileName="ECF16.hmm"
		  Case "ECF26"
		    hmmFileName="ECF26.hmm"
		  Case "ECF32"
		    hmmFileName="ECF32.hmm"
		  Case "HrpL"
		    hmmFileName="ECF32.hmm"
		  Case "ECF240"
		    hmmFileName="ECF243.hmm"
		  Case "ECF240"
		    hmmFileName="ECF243.hmm"
		  Case "FecI"
		    hmmFileName="ECF243.hmm"
		  Case "Fis"
		    hmmFileName="bEBP.hmm"
		  Case "FliA_WhiG"
		    hmmFileName="RpoF.hmm"
		  Case "Fur"
		    hmmFileName="FUR.hmm"
		  Case "GerE"
		    hmmFileName="GerE.hmm"
		  Case "GntR/MocR"
		    'hmmFileName="GntR.hmm" 'RegPrecise divides GntR into two families - have to pick proper model for each one
		    hmmFileName="GntR.hmm"
		  Case "GntR/Others"
		    'hmmFileName="GntR.hmm" 'RegPrecise divides GntR into two families - have to pick proper model for each one
		    hmmFileName="GntR.hmm"
		  Case "GntR"
		    hmmFileName="GntR.hmm"
		  Case "GntRx2"
		    hmmFileName="GntRx2.hmm"
		  Case "HTH_1"
		    hmmFileName="LysR.hmm"
		  Case "HTH_6"
		    hmmFileName="HTH_6.hmm"
		    'Case "HTH_8"
		    'hmmFileName="HTH_8.hmm"
		  Case "HTH_18"
		    hmmFileName="AraC.hmm"
		  Case "HTH_20"
		    hmmFileName="HTH_20.hmm"
		  Case "HTH_AsnC-type"
		    hmmFileName="HTH_AsnC_type.hmm"
		  Case "HTH_AsnC_type"
		    hmmFileName="HTH_AsnC_type.hmm"
		  Case "HTH_Crp_2"
		    hmmFileName="HTH_Crp_2.hmm"
		  Case "HTH_DeoR"
		    hmmFileName="HTH_DeoR.hmm"
		  Case "HTH_IclR"
		    hmmFileName="IclR.hmm"
		  Case "HTH_LacI"
		    hmmFileName="LacI.hmm"
		  Case "HTH_MARR"
		    hmmFileName="MarR_Superfamily.hmm"
		  Case "HxlR"
		    hmmFileName="HxlR.hmm"
		  Case "IclR"
		    hmmFileName="IclR.hmm"
		  Case "LacI"
		    hmmFileName="LacI.hmm"
		  Case "LexA"
		    hmmFileName="LexA_DNA_bind.hmm"
		  Case "LexA_DNA_bind"
		    hmmFileName="LexA_DNA_bind.hmm"
		  Case "LuxR"
		    hmmFileName="GerE.hmm"
		  Case "LysR"
		    hmmFileName="LysR.hmm"
		  Case "MarR"
		    hmmFileName="MarR_Superfamily.hmm"
		  Case "MerR"
		    hmmFileName="MerR.hmm"
		  Case "MerR_superfamily"
		    hmmFileName="MerR.hmm"
		  Case "MetJ"               'RHH sub-family
		    hmmFileName="RHH.hmm"
		  Case "ModE"               'LysR sub-family
		    hmmFileName="LysR.hmm" 
		  Case "NikR"               'RHH sub-family
		    hmmFileName="RHH.hmm"
		  Case "OmpR"
		    hmmFileName="Trans_reg_C.hmm"  'RegPrecise mixes OmpR family with CitT one, so this fails for CitT family members
		  Case "PhdYeFM_antitox"
		    hmmFileName="PhdYeFM_antitox.hmm"
		  Case "RHH"
		    hmmFileName="RHH.hmm"
		  Case "ROK"
		    hmmFileName="ROK.hmm"
		  Case "Rrf2"
		    hmmFileName="Rrf2.hmm"
		  Case "RpiR"
		    hmmFileName="HTH_6.hmm"
		  Case "Sigma54_DBD"
		    hmmFileName="Sigma54_DBD.hmm"
		  Case "TetR"
		    hmmFileName="TetR.hmm"
		  Case "TetR_N"
		    hmmFileName="TetR.hmm"
		  Case "Trans_reg_C"
		    hmmFileName="Trans_reg_C.hmm"
		  Case "Trp_repressor"
		    hmmFileName="Trp_repressor.hmm"
		  Case "TrpR"
		    hmmFileName="Trp_repressor.hmm"
		  Case "XRE"
		    hmmFileName="XRE_superfamily.hmm"
		  Case "XRE_superfamily"
		    hmmFileName="XRE_superfamily.hmm"
		  Case ""
		    hmmFileName=""
		    
		  Else
		    'can't find the proper .hmm file, so asking the user to choose it
		    Dim dlg2 As New OpenDialog
		    dlg2.InitialDirectory=Resources_f.child("TF_HMMs")          'only these are meaningful
		    dlg2.promptText="Select hmm file with the model matching this TF family"
		    'dlg2.SuggestedFileName=nthfield(GenomeFile.Name,".",1)+"_"+nthfield(Logofile.Name,".",1)+".gb"
		    dlg2.Title="Open HMM"
		    dlg2.Filter=FileTypes.All
		    dlg2.CancelButtonCaption=kCancel
		    dlg2.ActionButtonCaption=kOpen_
		    HMMfile=dlg2.ShowModal
		    
		  End Select
		  
		  If hmmFileName<>"" Then
		    TF_HMMs=Resources_f.Child("TF_HMMs")
		    
		    If TF_HMMs=Nil Then
		      MsgBox "Can't find TF_HMMs folder"
		    End If
		    
		    HMMfile=TF_HMMs.Child(hmmFileName)
		    
		  End If
		  
		  If HMMfile=Nil Then 
		    MsgBox "Can't open the hmm file"
		  End If
		  
		  Return HMMfile
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetOrthoRegSeq(ecodes as string, GBfragmentFolder as folderitem) As String
		  // Given a (CR tag filtered) phmmer result in text format, 
		  // extract regulatory regions corresponding to all hits
		  
		  // GenBank files are saved to specified  folder
		  
		  // The limit of requestCount sequences is hard-coded (should be an option)
		  
		  
		  dim ResArray(0) as string
		  dim m,id,i,k,z as integer
		  dim UniProtID, MultiFasta, SingleFasta, cli, genpeptIDs, shellRes(-1)  as string
		  dim EntryFragmentsF, uniprot2genpept as FolderItem
		  dim gbkcount as integer = Proteins2process 'Val(deNovoWin.Proteins2processField.text)
		  
		  dim rg as New RegEx
		  Dim rgmatch As RegExMatch
		  rg.SearchPattern="\S*(?=\.)"
		  
		  uniprot2genpept=Resources_f.Child("uniprot2genpept.py")
		  If uniprot2genpept<>Nil Then
		    If Not uniprot2genpept.Exists Then
		      'doesn't work MsgBox("Check "+uniprot2genpept.ShellPath+" for uniprot2genpept.py")
		      Return ""
		    Else
		      'cli= "python "+uniprot2genpept.ShellPath+" '"+ecodes+"' | grep -o -Pe '\S*(?=\.)' - | paste -s -d, -" 'convert UniprotKB IDs to Genpept IDs and replace end of line with comma 
		      'change from python to to xojo urlconnection
		      'cli= pythonpath+uniprot2genpept.ShellPath+" '"+ecodes+"'"
		      '
		      
		      ''assume bash is the normal user shell
		      'execute bash with login scripts to set the same env as in terminal
		      'command must be in single quotes
		      
		      'sh.execute ("bash --login -c "+chr(34)+cli+chr(34))
		      Const URL As String="https://www.uniprot.org/uploadlists/?"
		      HTTPSError=""
		      WebContent=""
		      dim content as String = "&from=ACC&to=EMBL&format=tab&query="
		      dim hts as new HTTPSconnection
		      dim tempcontent as FolderItem
		      tempcontent=TemporaryFolder.Child("gpfile")
		      if tempcontent.Exists then tempcontent.Remove
		      hts.SetRequestContent(content+ecodes, "application/x-www-form-urlencoded")
		      hts.Send("POST", URL, tempcontent)
		      while HTTPSerror="" and WebContent="" 
		        app.YieldToNextThread
		      wend
		      if hts.HTTPStatusCode <> 200 then
		        if HTTPSError = "" then
		          HTTPSError = str(hts.HTTPStatusCode)
		        end
		      end
		      if HTTPSError<>"" then
		        deNovoWin.rp.writeToWin("A tryout to convert accession codes with uniprot.org/uploadlists/ resulted in HTTPS error, code: "+HTTPSError+EndOfLine.UNIX)
		        HTTPSError=""
		        WebContent=""
		        Return ""
		      else
		        shellres=WebContent.split(Endofline.unix)
		        HTTPSError=""
		        WebContent=""
		        if UBound(shellRes)>1 then
		          if instr(shellRes(0),"from")<>0 then  shellRes.RemoveRowAt(0)
		        end
		      end
		      
		      
		      'If sh.ErrorCode<>0 Then
		      'doesn't work logoWin.WriteToSTDOUT (EndOfLine.unix+"Error converting UniprotKB IDs: "+sh.Result+EndOfLine.unix)
		      'Else
		      'shellRes=sh.Result.Split(EndOfLine.UNIX)
		      'shellRes=sh.Result.Split("\n")
		      
		      deNovoWin.rp.writeToWin("converted to "+Str(Ubound(shellRes)-1)+" NCBI accessions. ")
		      
		      'check for duplicate (multiple) GenBank accessions per given UniProt ID and leave just the first one
		      
		      'Why this If block? All redundancies must always be removed 
		      'If ubound(shellRes)>shellResMax Then     ' <-- 50(default) is rather arbitrary, can be user configurable
		      Dim y As Integer
		      Dim lastCode As String = NthField(shellRes(ubound(shellRes)),Chr(9),1)
		      For y=ubound(shellRes)-1 DownTo 1
		        App.YieldToNextThread()
		        If NthField(shellRes(y),Chr(9),1)=LastCode Then
		          'If NthField(shellRes(y),"\t",1)=LastCode Then
		          shellRes.RemoveRowAt(y+1)
		        Else
		          lastCode=NthField(shellRes(y),Chr(9),1)
		        End If
		      Next
		      'End If
		      
		      For id=0 To UBound(shellRes)
		        App.YieldToNextThread()
		        rgmatch=rg.Search(shellRes(id))
		        If rgmatch<> Nil Then
		          If genpeptIDs="" Then 
		            genpeptIDs=rgmatch.SubExpressionString(0)
		          Else
		            genpeptIDs=genpeptIDs+","+rgmatch.SubExpressionString(0)
		          End
		        End
		      Next
		      ecodes=genpeptIDs  'a Uniprot accession can be converted to several NCBI ones due to identical proteins. Most often we need just one of those 
		      deNovoWin.rp.writeToWin(Str(CountFields(ecodes,","))+" left after removing redundancies."+EndOfLine.unix)
		      
		      'End If
		    End
		  Else
		    'MsgBox("Path to SigmoID folder is Nil")
		    Return ""
		  end
		  if instr(ecodes,",")>0 then
		    ResArray=split(eCodes,",") 'if only one tag, then exception, fix
		    ResArray.Shuffle 'random distribution of the codes to prevent not using codes in the string's "tail"  
		    if ubound(ResArray) +1>gbkcount then
		      ecodes=""
		      for i=0 to gbkcount-1
		        App.YieldToNextThread()
		        if i<>gbkcount-1 then 
		          ecodes=ecodes+ResArray(i)+","
		        else
		          ecodes=ecodes+ResArray(i)
		        end
		      next
		      ResArray=ecodes.Split(",")
		      m=ubound(ResArray)+1
		    else
		      ecodes=join(ResArray,",")
		      m=ubound(ResArray)+1
		    end
		  else
		    ecodes=ecodes.NthField("\t", ecodes.CountFields("\t"))
		    if ecodes<>"" then
		      ResArray.Append(ecodes)
		      m = UBound(ResArray)+1
		      'singleCodeTags=singleCodeTags+1
		    else
		      return ""
		    end
		  end
		  
		  // localgbk string for GetRegSeq method 
		  'is a signal to use local gbk file for TF's nearby regions extraction
		  if m>requestCount then
		    deNovoWin.rp.writeToWin("Extracting genome fragments around TF genes..."+EndOfLine.unix)
		    EntryFragmentsF=GBfragmentFolder'.child(UniProtID)
		    k=m\requestCount 
		    z=m mod requestCount
		    for i=1 to k
		      if requestCount<UBound(ResArray) then
		        UniProtID=trim(NthField(eCodes,","+Resarray(requestCount),1))
		      else
		        UniProtID=ecodes
		      end
		      SingleFasta=GetRegSeq(UniProtID,EntryFragmentsF)
		      
		      if SingleFasta<>"" then
		        'if len(Nthfield(SingleFasta,EndofLine.unix,2))>100 then       'anything shorter is probably rubbish
		        MultiFasta=MultiFasta+SingleFasta
		        'end if
		      end if
		      'end if
		      'LogoWin.WriteToSTDOUT(EndOfLine.unix)
		      eCodes=NthField(eCodes,Resarray(requestCount-1)+",",2)
		      ResArray=split(eCodes,",")
		    next
		    if z<>0 then
		      SingleFasta=GetRegSeq(ecodes,EntryFragmentsF)
		      if SingleFasta<>"" then
		        'if len(Nthfield(SingleFasta,EndofLine.unix,2))>100 then       'anything shorter is probably rubbish
		        MultiFasta=MultiFasta+SingleFasta
		        'end if
		      end if
		      '''if len(Nthfield(SingleFasta,EndofLine.unix,2))>100 then       'anything shorter is probably rubbish
		    end
		    MultiFasta=MultiFasta+GetRegSeq("localgbk",EntryFragmentsF)
		    return MultiFasta
		  else
		    deNovoWin.rp.writeToWin("Extracting genome fragments around TF genes..."+EndOfLine.unix)
		    EntryFragmentsF=GBfragmentFolder'.child(UniProtID)
		    SingleFasta=GetRegSeq(ecodes,EntryFragmentsF)
		    SingleFasta=SingleFasta+GetRegSeq("localgbk",EntryFragmentsF)
		    return SingleFasta
		    
		  end if
		  
		  Exception err
		    if err isa IOException then
		      LogoWin.WriteToSTDOUT(EndOfLine.unix+"IOException has occurred.")
		      LogoWin.WriteToSTDOUT(EndOfLine.unix+"ErrorNumber: "+str(err.ErrorNumber))
		      LogoWin.WriteToSTDOUT(EndOfLine.unix+"Message: "+err.Message)
		      LogoWin.WriteToSTDOUT(EndOfLine.unix+"Reason: "+err.Reason)
		    End If
		    
		    ExceptionHandler(err,"DeNovoTFBSinference:GetOrthoRegSeq", true)
		    
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetPhmmerResult(sender As HTTPSocket, URL as String, HTTPStatus as Integer, Headers as InternetHeaders, Content as String)
		  // delegate method to handle HTTPSocket.PageReceived event
		  
		  return 
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetRegSeq(UniProtCodes as string, FragmentsFolder as folderitem) As String
		  // Given a UniProt ID, find the corresponding gene
		  // and get regulatory regions for it and two neighbour operons
		  'Using Xojo.Core
		  'Using Xojo.IO
		  
		  
		  dim cli as String
		  Dim getprot As FolderItem
		  Dim extractfragment As  FolderItem 
		  dim Entry as string
		  dim gbID as string
		  dim COO as string 
		  dim FastaName, Multifasta as string
		  dim qualifier as string
		  dim leftCOO, rightCOO, i, k as integer
		  dim entryarray(-1) as string
		  dim OutStream As TextOutputStream
		  dim CodesArray(-1) as String 
		  'dim operonGap as integer = 100     ' <-- adjust this/ make configurable!
		  
		  'dim LengthLimit as integer = 30000 ' <-- adjust this/ make configurable!
		  
		  'dim UpstreamSize as Integer = 400  ' <-- adjust this/ make configurable!
		  
		  'dim DownstreamSize as Integer = 50 ' <-- adjust this/ make configurable!
		  
		  'Ensembl ID are quite a mess and don't map to anything properly, so we are not using these :(
		  
		  'if InStr(UniProtCodes,"_")>0 then
		  ''this should be Ensembl ID which is actually a locus_tag directly usable in NCBI system
		  'else
		  'end if
		  
		  //ALREADY HAVE CODES
		  
		  if UniProtCodes="" then
		    deNovoWin.rp.writeToWin("Can't get GenPept ID - reference is empty "+EndOfLine.UNIX)
		    return ""
		  end if
		  
		  'Entry=FetchGenPeptEntry(UniProtCodes)
		  dim f as GBFeature 
		  if instr(UniProtCodes,"localgbk")>0 then 
		    if deNovoWin.TFfeature<>-1 and GenomeWin.Genome<>nil  then
		      redim entryarray(0)
		      f= GenomeWin.Genome.Features(deNovoWin.TFfeature)
		      if f.FeatureText="" then 
		        deNovoWin.rp.writeToWin("Failed to process gene's description from "+Str(GenomeWin.GenomeFile.Name)+", feature text is empty."+EndOfLine.UNIX)
		        return ""
		      end
		      entryarray(0)=str(GenomeWin.Genome.Description)+str(f.FeatureText)
		      k=UBound(entryarray)
		      deNovoWin.TFfeature=-1
		    else
		      deNovoWin.rp.writeToWin("Failed to determine the nearby located operons -  TF coding gene was not found  in the local GenBank file, check TF id in hmmsearch_result_withCRtags.txt and corresponding GeneBank record" +EndOfLine.UNIX)
		      return ""
		    end
		  else
		    'getprot=Resources_f.Child("getprot.py")
		    'replace getprot.py with xojo URLConnection
		    Const URL As String="https://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch.fcgi"
		    Dim content As String = "db=protein&rettype=gp&retmode=text&id="+UniProtCodes
		    dim hts as new HTTPSconnection
		    dim tempcontent as FolderItem
		    tempcontent=TemporaryFolder.Child("gpfile")
		    if tempcontent.Exists then tempcontent.Remove
		    HTTPSError=""
		    WebContent=""
		    hts.SetRequestContent(content, "application/x-www-form-urlencoded")
		    hts.Send("POST", URL, tempcontent)
		    while HTTPSerror="" and WebContent="" 
		      app.YieldToNextThread
		    wend
		    if HTTPSError<>"" then
		      deNovoWin.rp.writeToWin("HTTPS error occured while retrieving genome regions from NCBI, "+HTTPSError+EndOfLine.UNIX)
		    else
		      Entry=WebContent
		    end
		    HTTPSError=""
		    WebContent=""
		    'If getprot.exists Then
		    'sh=New ShellT
		    'sh.mode=0
		    'sh.TimeOut=-1
		    'cli=pythonpath+getprot.ShellPath+" "+"'"+UniProtCodes+"'"+" '"+email+"'"
		    '
		    ''assume bash is the normal user shell
		    ''execute bash with login scripts to set the same env as in terminal
		    ''command must be in single quotes
		    '
		    'sh.execute ("bash --login -c "+Chr(34)+cli+Chr(34))
		    '
		    'If sh.errorCode=0 And InStr(sh.result, "Error retrieving: ") =0 Then
		    'entry=sh.Result
		    'Elseif  InStr(UniProtCodes,",")<>0 And InStr(sh.result, "Error retrieving: ") <>0 Then
		    'sh=New Shell
		    'sh.mode=0
		    'sh.TimeOut=-1
		    'deNovoWin.rp.writeToWin(Trying to retrieve a batch of identificators has resulted in error. Attempting to process them sequentially..."+EndOfLine.UNIX)
		    '
		    'Dim tempIDs() As String = UniProtCodes.Split(",")
		    'For id As Integer = 0 To UBound(tempIDs)
		    'App.YieldToNextThread()
		    'cli=pythonpath+getprot.ShellPath+" "+"'"+tempIDs(id)+"'"+" '"+email+"'"
		    'sh.execute ("bash --login -c "+Chr(34)+cli+Chr(34))
		    'If sh.errorCode=0 And InStr(sh.result, "Error retrieving: ") =0 Then
		    'entry=entry+sh.Result
		    'Else
		    'deNovoWin.rp.writeToWin(EndOfLine.Unix+Str(sh.Result)+EndOfLine.UNIX)
		    'End
		    'Next
		    'Else 
		    ''deNovoWin.rp.writeToWin(EndOfLine.Unix+Str(sh.Result)+EndOfLine.UNIX)
		    'Return ""
		    'End If
		    'Else
		    ''deNovoWin.rp.writeToWin("File "+getprot.NativePath+" doesn't exist")
		    'Return ""
		    'End
		    
		    
		    'entry=FetchGenPeptEntries(UniProtCodes)
		    
		    
		    
		    entryarray=entry.split("//"+EndOfLine.UNIX)
		    CodesArray=UniProtCodes.Split(",")
		    k=UBound(entryarray)-1 'last entry always empty line, so replace with data for TF from local gbkfile
		  End
		  
		  
		  
		  'get Locus_tag to be used later. The line to look for:
		  '/locus_tag="OI69_02845"
		  '
		  '(some) WGS seqs don't have the "gene" and "locus_tag" qualifiers
		  'we just skip those for now
		  for i=0 to k
		    'App.YieldToNextThread()
		    Dim Separ1 as string="/locus_tag="+chr(34)
		    Dim Separ2 as string=chr(34)
		    Dim LocusTag As string
		    if entryarray(i)<>"" then
		      'LocusTag=NthField(Entry,separ1,2)
		      LocusTag=NthField(entryarray(i),separ1,2)
		      LocusTag=NthField(LocusTag,separ2,1)
		      
		      if LocusTag="" then
		        'return "Error extracting locus_tag from GenPept entry "+ConvertEncoding(UniProtCodes,Encodings.UTF8)+EndOfLine.unix+EndOfLine.unix
		        if UBound(CodesArray)>=i then
		          deNovoWin.rp.writeToWin("Error extracting locus_tag from GenPept entry "+CodesArray(i)+EndOfLine.unix)
		        else
		          deNovoWin.rp.writeToWin("Error extracting locus_tag from GenPept entry "+UniProtCodes+EndOfLine.unix)
		        end
		        Continue for i
		      end if
		      
		      //assemble the name string:
		      'qualifier=NthField(Entry,"/gene="+chr(34),2)
		      qualifier=NthField(entryarray(i),"/gene="+chr(34),2)
		      qualifier=NthField(qualifier,chr(34),1)         'gene
		      if qualifier<>"" then
		        FastaName=">"+qualifier+"|"+LocusTag+"|"
		      else
		        FastaName=">"+LocusTag+"|"
		      end if
		      'qualifier=NthField(Entry,"ACCESSION   ",2)      'accession
		      qualifier=NthField(entryarray(i),"ACCESSION   ",2)      'accession
		      qualifier=trim(NthField(qualifier,"VERSION     ",1))
		      
		      //Get GB entry ID and TF gene coordinates
		      ' GenPept entry should have a line like this:
		      ' /coded_by="JSXC01000011.1:16659..17396"
		      //localgbk string is passed from GetRthoRegSeq method
		      'as a code to exctract regions nearby TF gene.
		      If InStr(UniProtCodes,"localgbk")>0 Then
		        qualifier=replace(qualifier,EndOfLine.unix,"")
		        FastaName=FastaName+qualifier+"|"
		        gbID=qualifier
		        qualifier=NthField(entryarray(i),"ORGANISM  ",2)
		        qualifier=NthField(qualifier,EndOfLine.UNIX,1)
		        FastaName=FastaName+qualifier+" from-local-gbk-file"
		        if f.complement then
		          leftCOO=f.Finish-GBKfragFlanks
		          rightCOO=f.start+GBKfragFlanks
		        else
		          leftCOO=f.start-GBKfragFlanks
		          rightCOO=f.Finish+GBKfragFlanks
		        end
		        if leftCOO<0 then leftCOO=1
		      else
		        FastaName=FastaName+qualifier+"|"
		        'qualifier=NthField(Entry,"/organism="+chr(34),2)
		        qualifier=NthField(entryarray(i),"/organism="+chr(34),2)
		        qualifier=NthField(qualifier,chr(34),1)         'organism name
		        qualifier=replace(qualifier,EndOfLine.unix,"")  'name cleanup
		        qualifier=replace(qualifier,"                     "," ")
		        FastaName=FastaName+qualifier+" "
		        'qualifier=NthField(Entry,"/strain="+chr(34),2)
		        qualifier=NthField(entryarray(i),"/strain="+chr(34),2)
		        qualifier=NthField(qualifier,chr(34),1)         'strain
		        FastaName=FastaName+qualifier
		        Separ1="/coded_by="+chr(34)                      ' <-- some (older?) files don't have this qualifier. 
		        'Dim TFcoord as string = NthField(Entry,separ1,2)
		        Dim TFcoord as string = NthField(entryarray(i),separ1,2)
		        TFcoord=NthField(TFcoord,separ2,1)
		        gbID=NthField(TFcoord,":",1)
		        gbID=Replace(gbID,"complement(","")
		        COO=NthField(TFcoord,":",2)
		        COO=ReplaceAll(COO,">","")  'very rare cases of partial ORFs 
		        COO=ReplaceAll(COO,"<","")
		        leftCOO=Val(NthField(COO,"..",1))-GBKfragFlanks
		        if leftCOO<0 then leftCOO=1
		        rightCOO=val(NthField(COO,"..",2))+GBKfragFlanks
		      end
		      
		      // Get the required GenBank entry fragment
		      if InStr(UniProtCodes,"localgbk")>0 Then
		        deNovoWin.rp.writeToWin("Getting  fragment from the opened GenBank file: "+str(GenomeWin.GenomeFile.Name)+"... ")
		        extractfragment=Resources_f.Child("ExtractFragment.py")
		        If extractfragment.exists and GenomeWin.GenomeFile.exists Then
		          dim sh as New Shell
		          sh.mode=1
		          sh.TimeOut=-1
		          cli=pythonpath+PlaceQuotesToPath(extractfragment.ShellPath)+" "+PlaceQuotesToPath(GenomeWin.GenomeFile.ShellPath)+" @@coord "+str(leftCOO)+","+str(rightCOO)
		          
		          'assume bash is the normal user shell
		          'execute bash with login scripts to set the same env as in terminal
		          'command must be in single quotes
		          #if TargetWindows
		            sh.execute(cli)
		          #else
		            sh.execute("bash --login -c "+chr(34)+cli+chr(34)) 'Should be corrected
		          #endif
		          
		          While sh.IsRunning=true
		            app.YieldToNextThread()
		          wend
		          
		          If sh.errorCode=0 Then
		            Entry=sh.Result
		            deNovoWin.rp.writeToWin("OK"+EndOfLine.UNIX)
		          else
		            deNovoWin.rp.writeToWin(EndOfLine.unix+"Failed. Can't get nearby operons region from "+GenomeWin.GenomeFile.ShellPath+EndOfLine.unix)
		            deNovoWin.rp.writeToWin(sh.Result)
		          end
		        else
		          if extractfragment.exists then
		            deNovoWin.rp.writeToWin(EndOfLine.unix+"Failed. Check if genome file exists: "+GenomeWin.GenomeFile.ShellPath+EndOfLine.unix)
		          else
		            deNovoWin.rp.writeToWin("Failed. Can't get nearby operons region, check if ExtractFragment.py is present in  SigmoID Resources folder."+EndOfLine.unix)
		          end
		          
		          
		        end
		      else
		        Entry=FetchGenBankEntryFragment(gbID,leftCOO,rightCOO)
		      end
		      
		      dim GBfileName As String
		      dim gbFile as FolderItem
		      If FragmentsFolder <> Nil Then
		        'save the genBank entry to a file:
		        GBfileName=replace(FastaName,">","")
		        GBfileName=replaceall(GBfileName,"|","_")
		        GBfileName=replaceall(GBfileName,":","_")
		        if len(GBfileName)>100 then          'some names may be too long
		          GBfileName=left(GBfileName,100)
		        End If
		        GBfileName=replaceall(GBfileName,"\","_")
		        GBfileName=replaceall(GBfileName,"//","_")
		        GBfileName=replaceall(GBfileName,"/","_")
		        GBfileName=replaceall(GBfileName," ","_")+".gb"
		        gbFile=FragmentsFolder.Child(GBfileName)
		        if gbFile<>Nil then
		          'dim OutStream As TextOutputStream
		          try  
		            OutStream = TextOutputStream.Create(gbFile)
		          catch e as IOException
		            deNovoWin.rp.writeToWin(EndOfLine.unix+"Can't create the file to save a genome fragment. Path:"+gbFile.ShellPath+EndOfLine.unix)
		            'return ""
		          end try
		          // check existence of the file
		          if OutStream<>Nil then
		            try 
		              OutStream.Write(Entry)
		              OutStream.Close
		            catch eNil as NilObjectException
		              deNovoWin.rp.writeToWin(EndOfLine.unix+"Can't save genome fragment to this file:"+gbFile.ShellPath+EndOfLine.unix)
		            end try
		          else
		            deNovoWin.rp.writeToWin(EndOfLine.unix+"Can't save genome fragment to this file:"+gbFile.ShellPath+EndOfLine.unix)
		          End If
		        End If
		      End If
		      // load the sequence into a seq object
		      dim eSeq as new cSeqObject
		      dim  s0, features,Separator,currentFeature,cf1,name,coord as string
		      dim en,st,m,n as integer
		      dim featureArray(0) as string
		      dim NewFeature as GBFeature
		      
		      '****************Opening Genbank file******************
		      '
		      'Genebank file - sequence starts after "ORIGIN"
		      'the entry starts with "LOCUS       ";
		      'description and references follow down to
		      '"FEATURES             Location/Qualifiers",
		      'after which the feature list goes
		      'the sequence starts right after "ORIGIN      <cr>        1 "
		      
		      'first get the feature table:
		      st=instrb(Entry,"FEATURES             Location/Qualifiers")+41
		      
		      s0=EndOfLine.unix+"ORIGIN"
		      en=instrb(Entry,s0)-1
		      features=midb(Entry,st,en-st+1)
		      
		      'now parse the feature table.
		      'every new feature is identified as the line having 5 rather than 21 leading spaces
		      
		      'First remove the blocks of 21 spaces:
		      features=ReplaceAll(features,"                     ","")
		      Separator=EndOfLine.unix+"     "
		      m=countfields(features,Separator)
		      currentFeature=""
		      features=ConvertEncoding(features,Encodings.ASCII)
		      
		      featureArray=Split(features,Separator)
		      
		      for n=0 to m-1
		        'App.YieldToNextThread()
		        currentFeature=featureArray(n)
		        
		        'feature description parsing:
		        cf1=nthfield(currentFeature,EndOfLine.unix,1)
		        name=trim(leftb(cf1,16))      'feature name
		        
		        if name="gene" OR name="rRNA" OR name="tRNA" then 'we don't need anything else here
		          NewFeature=new GBfeature(eSeq.baselineY)
		          NewFeature.featureText=currentFeature 'for debugging only
		          
		          'now check the direction and coorginates:
		          cf1=replace((cf1),"<","")  'remove markers of truncated genes to simplify coordinate parsing
		          cf1=replace((cf1),">","")
		          if InStrB(17,cf1,"complement")>0 then
		            NewFeature.complement=true
		            'gene            complement(2659..4155)
		            if InStrB(27,cf1,"order")>0 OR InStrB(27,cf1,"join")>0 then
		              'split feature:
		              'misc_feature    complement(order(3576182..3576235,3576263..3576322,
		              '3576341..3576409,3576467..3576532))
		              'CDS             complement(join(2497077..2497340,2497344..2497514))
		              NewFeature.start=val(nthfieldB(nthfieldB(cf1,"..",1),"(",3))
		              NewFeature.finish=val(nthFieldB(cf1,"..",countfieldsB(cf1,"..")))  'replacement to correct for partial features
		            else
		              coord=rightb(cf1,lenb(cf1)-instrb(cf1,"("))  'coords in brackets for complementary strand
		              NewFeature.start=val(nthFieldB(coord,"..",2))
		              'NewFeature.finish=val(replace((nthFieldB(coord,"..",1)),"<",""))  'replacement to correct for partial features
		              NewFeature.finish=val(nthFieldB(coord,"..",1))  'replacement to correct for partial features
		            end if
		          else
		            if InStrB(17,cf1,"order")>0 OR InStrB(17,cf1,"join")>0 then
		              'split feature:
		              'misc_feature    order(343373..343441,343469..343537,343652..343720,
		              '343799..343867,343925..343984)
		              'CDS             join(843475..843549,843551..844573)
		              
		              NewFeature.start=val(nthfieldB(nthfieldB(cf1,"..",1),"(",2))
		              'splitCoords=NthFieldB(currentFeature,")",1)
		              'NewFeature.finish=val(nthFieldB(splitCoords,"..",CountFieldsB(splitCoords,"..") ))
		              NewFeature.finish=val(nthFieldB(cf1,"..",CountFieldsB(cf1,"..")))
		            else
		              'NewFeature.complement=false false is the default
		              coord=ltrim(rightb(cf1,lenb(cf1)-lenb(name)))
		              NewFeature.start=val(NthFieldB(coord,"..",1))
		              NewFeature.finish=val(nthFieldB(coord,"..",2))
		            end if
		          end if
		          If abs(NewFeature.finish - NewFeature.start) >= MinORFSize Then
		            eSeq.features.Append NewFeature
		          end
		        end if
		        
		      next 'n
		      
		      eSeq.sequence=CleanUp(trim(rightb(Entry,len(Entry)-instrb(Entry,"ORIGIN")-7)))
		      
		      if len(eSeq.sequence)<LengthLimit and i<=CodesArray.Ubound then
		        deNovoWin.rp.writeToWin("Genome piece coding for "+CodesArray(i)+" is too short ("+Str(Len(eSeq.sequence)) +" bp). Skipping it. "+EndOfLine.UNIX)
		        continue for i
		      end if
		      
		      // Now find operons and the gaps in between:
		      
		      'Find the gene coding for the TF:
		      dim TFno as integer
		      m=ubound(eSeq.Features)
		      LocusTag="/locus_tag="+chr(34)+LocusTag
		      for n=1 to m
		        if instr(eSeq.Features(n).FeatureText,LocusTag)>0 then
		          TFno=n
		          exit
		        end if
		      next
		      
		      if TFno<1 OR TFno>m then
		        'return "Error extracting intergenic sequences. GenBank file problem?"+EndOfLine.unix
		        If ubound(CodesArray)>=0 And i<=ubound(CodesArray) Then 'precaution for non-standard cases
		          deNovoWin.rp.writeToWin("Error extracting intergenic sequences for "+CodesArray(i)+". GenBank file problem?"+EndOfLine.unix)
		        End If
		        If i=0 Then Return ""  'Most likely for local modified gbks
		        continue for i
		        
		      end if
		      
		      'check TF gene orientation:
		      dim leftC, rightC as integer
		      dim SeqLen as integer
		      dim downStreamSeq, upStreamSeq,upStreamSeq2, regSeq as string
		      
		      if eSeq.Features(TFno).complement=true then 'complement
		        'correct start and finish, flip the complement boolean
		        'reverse feature order(and reverse the seq)
		        m=ubound(eSeq.Features)
		        dim eSeqlength as integer = len(eSeq.sequence)
		        for n=1 to m
		          'read all of the feature properties:
		          eSeq.Features(n).complement=NOT(eSeq.Features(n).complement) 
		          eSeq.Features(n).start=2+eSeqlength-eSeq.Features(n).start  '2 is a necessary correction
		          eSeq.Features(n).finish=2+eSeqlength-eSeq.Features(n).finish  
		          
		          
		          
		        next
		        eSeq.Sequence=ReverseComplement(eSeq.Sequence)
		        'reverse feature array
		        
		        dim rSeq(0) as GBFeature
		        redim rSeq(m)
		        
		        for n=m downto 1
		          rSeq(n)=new GBFeature(100)
		          rSeq(n).complement=eSeq.Features(m-n+1).complement
		          rSeq(n).start=eSeq.Features(m-n+1).start
		          rSeq(n).finish=eSeq.Features(m-n+1).finish
		          rSeq(n).featuretext=eSeq.Features(m-n+1).featuretext
		        next
		        
		        'copy the values back to the original object
		        for n=1 to m
		          eSeq.Features(n).complement=rSeq(n).complement
		          eSeq.Features(n).start=rSeq(n).start
		          eSeq.Features(n).finish=rSeq(n).finish
		          eSeq.Features(n).featuretext=rSeq(n).featuretext
		        next 
		        
		        'find the TF gene again:
		        for n=1 to m
		          if instr(eSeq.Features(n).FeatureText,LocusTag)>0 then
		            TFno=n
		            exit
		          end if
		        next
		      end if                                     
		      
		      
		      'checking upstream gene(s):
		      upStreamSeq2=""
		      upstreamSeq=""
		      if TFno>1 then
		        
		        if eSeq.Features(TFno-1).complement=true then
		          'previous gene is opposite to TF: simply get the whole intergenic piece 
		          'including the first 50 bp of each ORF
		          rightC=eSeq.Features(TFno).start+DownstreamSize
		          leftC=eSeq.Features(TFno-1).start-DownstreamSize
		          SeqLen=rightC-LeftC
		          if SeqLen<2*(UpstreamSize+DownstreamSize) then
		            upStreamSeq=mid(eSeq.sequence,leftC,SeqLen)
		          else
		            'intergenic seq too long - get two separate pieces
		            
		            upStreamSeq=mid(eSeq.sequence,leftC,UpstreamSize+DownstreamSize)+"NNN"
		            upStreamSeq=upStreamSeq+mid(eSeq.sequence,rightC-UpstreamSize-DownstreamSize,UpstreamSize+DownstreamSize)
		            
		          end if
		        else
		          'previous gene has the same orientation: extract the sequence in front of the TF gene...
		          n=TFno
		          while eSeq.Features(n).complement=eSeq.Features(n-1).complement AND eSeq.Features(n).start-eSeq.Features(n-1).finish<operonGap
		            n=n-1
		            if n<2 then exit
		          wend
		          if n>1 then
		            if eSeq.Features(n).complement=eSeq.Features(n-1).complement then
		              rightC=eSeq.Features(n).start+DownstreamSize
		              leftC=rightC-DownstreamSize-UpstreamSize
		              SeqLen=rightC-LeftC
		              if LeftC<eSeq.Features(n-1).Finish then
		                SeqLen=SeqLen-eSeq.Features(n-1).Finish+LeftC
		                leftC=eSeq.Features(n-1).Finish
		              end if
		              upStreamSeq=mid(eSeq.sequence,leftC,SeqLen)
		            else
		              rightC=eSeq.Features(n).start+DownstreamSize
		              leftC=eSeq.Features(n-1).start-DownstreamSize
		              SeqLen=rightC-LeftC
		              
		              
		              if SeqLen<2*(UpstreamSize+DownstreamSize) then
		                upStreamSeq=mid(eSeq.sequence,leftC,SeqLen)
		              else
		                'intergenic seq too long - get two separate pieces
		                
		                upStreamSeq=mid(eSeq.sequence,leftC,UpstreamSize+DownstreamSize)+"NNN"
		                upStreamSeq=upStreamSeq+mid(eSeq.sequence,rightC-UpstreamSize-DownstreamSize,UpstreamSize+DownstreamSize)
		                
		              end if
		              
		            end if
		          end if
		          
		          '...and look for sequence upstream of the previous operon
		          '(only if orientation is the same! if it's divergent, the reg. seq of prev. operon is already there!
		          if n>1 then
		            n=n-1
		            if eSeq.Features(n).complement=false then
		              if n>1 then
		                while eSeq.Features(n).complement=eSeq.Features(n-1).complement AND eSeq.Features(n).start-eSeq.Features(n-1).finish<operonGap
		                  n=n-1
		                  if n<2 then exit
		                wend
		              end if
		              if n>1 then
		                if eSeq.Features(n).complement=eSeq.Features(n-1).complement then
		                  rightC=eSeq.Features(n).start+DownstreamSize
		                  leftC=eSeq.Features(n-1).finish
		                  SeqLen=rightC-LeftC
		                  upStreamSeq2=mid(eSeq.sequence,leftC,SeqLen)
		                else
		                  
		                  rightC=eSeq.Features(n).start+DownstreamSize
		                  leftC=eSeq.Features(n-1).start-DownstreamSize
		                  SeqLen=rightC-LeftC
		                  upStreamSeq2=mid(eSeq.sequence,leftC,SeqLen)
		                end if
		              end if
		              
		            end if
		          end if
		        end if
		      end if
		      
		      'checking downstream gene(s):
		      
		      if TFno<m then
		        if eSeq.Features(TFno+1).complement=true then
		          'next gene is opposite to TF: check for operon start
		          n=TFno+1
		          if n<m then
		            while eSeq.Features(n).complement=eSeq.Features(n+1).complement AND eSeq.Features(n+1).finish-eSeq.Features(n).start<operonGap
		              n=n+1
		              if n>=m then exit
		            wend
		            if n<m then
		              
		              'add length limits here!
		              
		              if eSeq.Features(n).complement=eSeq.Features(n+1).complement then
		                rightC=eSeq.Features(n+1).finish
		                leftC=eSeq.Features(n).start-DownstreamSize
		                SeqLen=rightC-LeftC
		                if seqlen>DownstreamSize+UpstreamSize then
		                  SeqLen=DownstreamSize+UpstreamSize
		                end if
		                downstreamSeq=mid(eSeq.sequence,leftC,SeqLen)
		              else
		                rightC=eSeq.Features(n+1).start+DownstreamSize
		                leftC=eSeq.Features(n).start-DownstreamSize
		                SeqLen=rightC-LeftC
		                
		                
		                if SeqLen<2*(UpstreamSize+DownstreamSize) then
		                  downstreamSeq=mid(eSeq.sequence,leftC,SeqLen)
		                else
		                  'intergenic seq too long - get two separate pieces
		                  
		                  downstreamSeq=mid(eSeq.sequence,leftC,UpstreamSize+DownstreamSize)+"NNN"
		                  downstreamSeq=downstreamSeq+mid(eSeq.sequence,rightC-UpstreamSize-DownstreamSize,UpstreamSize+DownstreamSize)
		                  
		                end if
		                
		                
		              end if
		            end if
		          end if
		          
		          
		        else
		          'next gene has the same orientation: extract the intergenic sequence
		          'SeqLen=450
		          
		          'find next operon
		          n=TFno
		          while eSeq.Features(n).complement=eSeq.Features(n+1).complement AND eSeq.Features(n+1).start-eSeq.Features(n).finish<operonGap
		            n=n+1
		            if n>=m then exit
		          wend
		          
		          if n<m-1 then
		            if eSeq.Features(n+1).complement=true then
		              'we have a converging operon here, go further to its start:
		              n=n+1
		              while eSeq.Features(n).complement=eSeq.Features(n+1).complement AND eSeq.Features(n+1).finish-eSeq.Features(n).start<operonGap
		                n=n+1
		                if n>=m then exit
		              wend
		            end if
		            
		          end if
		          if n<m then
		            if eSeq.Features(n).complement=eSeq.Features(n+1).complement then
		              'same orientation
		              if eSeq.Features(n).complement then 'bottom strand
		                rightC=eSeq.Features(n+1).finish
		                leftC=eSeq.Features(n).start-DownstreamSize
		                SeqLen=rightC-LeftC
		                if seqlen>DownstreamSize+UpstreamSize then
		                  SeqLen=DownstreamSize+UpstreamSize
		                end if
		                
		                downstreamSeq=mid(eSeq.sequence,leftC,SeqLen)
		              else    'top strand
		                rightC=eSeq.Features(n+1).start+DownstreamSize  
		                leftC=rightC-DownstreamSize-UpstreamSize
		                SeqLen=rightC-LeftC
		                if LeftC<eSeq.Features(n).Finish then
		                  SeqLen=SeqLen-eSeq.Features(n).Finish+LeftC
		                  leftC=eSeq.Features(n).Finish
		                end if
		                
		                downstreamSeq=mid(eSeq.sequence,leftC,SeqLen)
		              end if
		              
		            else
		              'divergent operons
		              
		              rightC=eSeq.Features(n+1).start+DownstreamSize
		              leftC=eSeq.Features(n).start-DownstreamSize
		              SeqLen=rightC-LeftC
		              
		              if SeqLen<2*(UpstreamSize+DownstreamSize) then
		                downstreamSeq=mid(eSeq.sequence,leftC,SeqLen)
		              else
		                'intergenic seq too long - get two separate pieces
		                
		                downstreamSeq=mid(eSeq.sequence,leftC,UpstreamSize+DownstreamSize)+"NNN"
		                downstreamSeq=downstreamSeq+mid(eSeq.sequence,rightC-UpstreamSize-DownstreamSize,UpstreamSize+DownstreamSize)
		                
		              end if
		              
		              
		              
		              
		            end if
		          end if
		        end if
		      end if
		      
		      regSeq=FastaName+EndOfLine.unix
		      if len(upStreamSeq2)>20 then
		        if upStreamSeq2<>upStreamSeq then
		          RegSeq=RegSeq+upStreamSeq2+"NNN"
		          
		        end if
		      end if
		      
		      RegSeq=RegSeq+upStreamSeq+"NNN"+downStreamSeq
		      
		      if RegSeq<>"" then
		        if left(RegSeq,5)="Error" then
		          'problems with GenBank file
		          deNovoWin.rp.writeToWin(RegSeq)
		        elseif left(RegSeq,24)="Genome piece coding for " then
		          'extracted piece length is less then set limit
		          deNovoWin.rp.writeToWin(RegSeq)
		        else
		          if len(Nthfield(RegSeq,EndofLine.unix,2))>100 then       'anything shorter is probably rubbish
		            MultiFasta=MultiFasta+RegSeq+EndOfLine.unix
		          end if
		        end if 
		      end
		    end
		  next
		  return Multifasta
		  
		  Exception err
		    if err isa IOException then
		      deNovoWin.rp.writeToWin("IOException has occurred.")
		      deNovoWin.rp.writeToWin("ErrorNumber: "+str(err.ErrorNumber))
		      deNovoWin.rp.writeToWin("Message: "+err.Message)
		      deNovoWin.rp.writeToWin(EndOfLine.unix+"Reason: "+err.Reason)
		    end if
		    ExceptionHandler(err,"DeNovoTFBSinference:GetRegSeq",true)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetRegSeq2(Entry As string) As string
		  // Given a UniProt ID, find the corresponding gene
		  // and get regulatory regions for it and two neighbour operons
		  
		  dim tempID, tempID1 as string 
		  'dim Entry as string
		  dim gbID as string
		  dim COO as string 
		  dim FastaName as string
		  dim qualifier as string
		  dim leftCOO, rightCOO as integer
		  
		  'dim operonGap as integer = 100     ' <-- adjust this/ make configurable!
		  
		  'dim LengthLimit as integer = 30000 ' <-- adjust this/ make configurable!
		  
		  'dim UpstreamSize as Integer = 400  ' <-- adjust this/ make configurable!
		  
		  'dim DownstreamSize as Integer = 50 ' <-- adjust this/ make configurable!
		  
		  'tempID1 = UniProt2ncbi_ID(UniProtID)
		  'if tempID1="" then
		  'LogoWin.WriteToSTDOUT("Can't find NCBI reference for UniProt entry "+UniProtID+EndOfLine.UNIX)
		  'return ""
		  'end if
		  'tempID=ConvertIDtoGenPept(tempID1)
		  'if tempID="" then
		  'LogoWin.WriteToSTDOUT("Can't get GenPept ID for NCBI reference "+tempID1+EndOfLine.UNIX)
		  'return ""
		  'end if
		  
		  'Entry=FetchGenPeptEntry(tempID)
		  
		  'get Locus_tag to be used later. The line to look for:
		  '/locus_tag="OI69_02845"
		  '
		  '(some) WGS seqs don't have the "gene" and "locus_tag" qualifiers
		  'we just skip those for now
		  
		  Dim Separ1 as string="/locus_tag="+chr(34)
		  Dim Separ2 as string=chr(34)
		  Dim LocusTag As string
		  LocusTag=NthField(Entry,separ1,2)
		  LocusTag=NthField(LocusTag,separ2,1)
		  
		  if LocusTag="" then
		    return "Error extracting locus_tag from GenPept entry "+ConvertEncoding(tempID,Encodings.UTF8)+EndOfLine.unix+EndOfLine.unix
		  end if
		  
		  '//assemble the name string:
		  'qualifier=NthField(Entry,"/gene="+chr(34),2)
		  'qualifier=NthField(qualifier,chr(34),1)         'gene
		  'if qualifier<>"" then
		  'FastaName=">"+qualifier+"|"+LocusTag+"|"
		  'else
		  'FastaName=">"+LocusTag+"|"
		  'end if
		  'qualifier=NthField(Entry,"ACCESSION   ",2)      'accession
		  'qualifier=trim(NthField(qualifier,"VERSION     ",1))
		  'FastaName=FastaName+qualifier+"|"
		  'qualifier=NthField(Entry,"/organism="+chr(34),2)
		  'qualifier=NthField(qualifier,chr(34),1)         'organism name
		  'qualifier=replace(qualifier,EndOfLine.unix,"")  'name cleanup
		  'qualifier=replace(qualifier,"                     "," ")
		  'FastaName=FastaName+qualifier+" "
		  'qualifier=NthField(Entry,"/strain="+chr(34),2)
		  'qualifier=NthField(qualifier,chr(34),1)         'strain
		  'FastaName=FastaName+qualifier
		  '
		  '//Get GB entry ID and TF gene coordinates
		  '' GenPept entry should have a line like this:
		  '' /coded_by="JSXC01000011.1:16659..17396"
		  '
		  'Separ1="/coded_by="+chr(34)
		  'Dim TFcoord as string = NthField(Entry,separ1,2)
		  'TFcoord=NthField(TFcoord,separ2,1)
		  'gbID=NthField(TFcoord,":",1)
		  'gbID=Replace(gbID,"complement(","")
		  'COO=NthField(TFcoord,":",2)
		  'COO=ReplaceAll(COO,">","")  'very rare cases of partial ORFs 
		  'COO=ReplaceAll(COO,"<","")
		  '
		  'leftCOO=val(NthField(COO,"..",1))-20000
		  'if leftCOO<0 then leftCOO=1
		  'rightCOO=val(NthField(COO,"..",2))+20000
		  '
		  '// Get the required GenBank entry fragment
		  'Entry=FetchGenBankEntryFragment(gbID,leftCOO,rightCOO)
		  
		  'dim GBfileName As String
		  'dim gbFile as FolderItem
		  'If FragmentsFolder <> Nil Then
		  ''save the genBank entry to a file:
		  'GBfileName=replace(FastaName,">","")
		  'GBfileName=replaceall(GBfileName,"|","_")
		  'GBfileName=replaceall(GBfileName,":","_")
		  'GBfileName=replaceall(GBfileName," ","_")+".gb"
		  'gbFile=FragmentsFolder.Child(GBfileName)
		  'if gbFile<>Nil then
		  'dim OutStream As TextOutputStream
		  'OutStream = TextOutputStream.Create(gbFile)
		  'OutStream.Write(Entry)
		  'OutStream.Close
		  'End If
		  'End If
		  
		  // load the sequence into a seq object
		  dim eSeq as new cSeqObject
		  dim  s0, features,Separator,currentFeature,gbkSource,cf1,name,coord as string
		  dim en,st,m,n as integer
		  dim featureArray(0) as string
		  dim NewFeature as GBFeature
		  
		  '****************Opening Genbank file******************
		  '
		  'Genebank file - sequence starts after "ORIGIN"
		  'the entry starts with "LOCUS       ";
		  'description and references follow down to
		  '"FEATURES             Location/Qualifiers",
		  'after which the feature list goes
		  'the sequence starts right after "ORIGIN      <cr>        1 "
		  
		  'first get the feature table:
		  st=instrb(Entry,"FEATURES             Location/Qualifiers")+41
		  
		  s0=EndOfLine.unix+"ORIGIN"
		  en=instrb(Entry,s0)-1
		  features=midb(Entry,st,en-st+1)
		  
		  'now parse the feature table.
		  'every new feature is identified as the line having 5 rather than 21 leading spaces
		  
		  'First remove the blocks of 21 spaces:
		  features=ReplaceAll(features,"                     ","")
		  Separator=EndOfLine.unix+"     "
		  m=countfields(features,Separator)
		  currentFeature=""
		  features=ConvertEncoding(features,Encodings.ASCII)
		  
		  featureArray=Split(features,Separator)
		  'gbkSource=""
		  for n=0 to m-1
		    currentFeature=featureArray(n)
		    
		    'feature description parsing:
		    cf1=nthfield(currentFeature,EndOfLine.unix,1)
		    name=trim(leftb(cf1,16))      'feature name
		    
		    if name="gene" OR name="rRNA" OR name="tRNA" then
		      NewFeature=new GBfeature(eSeq.baselineY)
		      NewFeature.featureText=currentFeature 'for debugging only
		      
		      'now check the direction and coorginates:
		      cf1=replace((cf1),"<","")  'remove markers of truncated genes to simplify coordinate parsing
		      cf1=replace((cf1),">","")
		      if InStrB(17,cf1,"complement")>0 then
		        NewFeature.complement=true
		        'gene            complement(2659..4155)
		        if InStrB(27,cf1,"order")>0 OR InStrB(27,cf1,"join")>0 then
		          'split feature:
		          'misc_feature    complement(order(3576182..3576235,3576263..3576322,
		          '3576341..3576409,3576467..3576532))
		          'CDS             complement(join(2497077..2497340,2497344..2497514))
		          NewFeature.start=val(nthfieldB(nthfieldB(cf1,"..",1),"(",3))
		          NewFeature.finish=val(nthFieldB(cf1,"..",countfieldsB(cf1,"..")))  'replacement to correct for partial features
		        else
		          coord=rightb(cf1,lenb(cf1)-instrb(cf1,"("))  'coords in brackets for complementary strand
		          NewFeature.start=val(nthFieldB(coord,"..",2))
		          'NewFeature.finish=val(replace((nthFieldB(coord,"..",1)),"<",""))  'replacement to correct for partial features
		          NewFeature.finish=val(nthFieldB(coord,"..",1))  'replacement to correct for partial features
		        end if
		      else
		        if InStrB(17,cf1,"order")>0 OR InStrB(17,cf1,"join")>0 then
		          'split feature:
		          'misc_feature    order(343373..343441,343469..343537,343652..343720,
		          '343799..343867,343925..343984)
		          'CDS             join(843475..843549,843551..844573)
		          
		          NewFeature.start=val(nthfieldB(nthfieldB(cf1,"..",1),"(",2))
		          'splitCoords=NthFieldB(currentFeature,")",1)
		          'NewFeature.finish=val(nthFieldB(splitCoords,"..",CountFieldsB(splitCoords,"..") ))
		          NewFeature.finish=val(nthFieldB(cf1,"..",CountFieldsB(cf1,"..")))
		        else
		          'NewFeature.complement=false false is the default
		          coord=ltrim(rightb(cf1,lenb(cf1)-lenb(name)))
		          NewFeature.start=val(NthFieldB(coord,"..",1))
		          NewFeature.finish=val(nthFieldB(coord,"..",2))
		        end if
		      end if
		      eSeq.features.Append NewFeature
		    end if
		    
		  next 'n
		  
		  eSeq.sequence=CleanUp(trim(rightb(Entry,len(Entry)-instrb(Entry,"ORIGIN")-7)))
		  
		  'if len(eSeq.sequence)<LengthLimit then
		  'return "Genome piece coding for "+UniProtID+" is too short. Skipping it. "+EndOfLine.UNIX
		  'end if
		  
		  // Now find operons and the gaps in between:
		  
		  'Find the gene coding for the TF:
		  dim TFno as integer
		  m=ubound(eSeq.Features)
		  
		  LocusTag = trim(RedundantSeqWin.TextField1.text)
		  
		  LocusTag="/locus_tag="+chr(34)+LocusTag
		  
		  
		  for n=1 to m
		    if instr(eSeq.Features(n).FeatureText,LocusTag)>0 then
		      TFno=n
		      exit
		    end if
		  next
		  
		  if TFno<1 OR TFno>m then
		    return "Error extracting intergenic sequences. GenBank file problem?"+EndOfLine.unix
		    
		  end if
		  
		  'check TF gene orientation:
		  dim leftC, rightC as integer
		  dim SeqLen as integer
		  dim downStreamSeq, upStreamSeq,upStreamSeq2, regSeq as string
		  
		  if eSeq.Features(TFno).complement=true then 'complement
		    'correct start and finish, flip the complement boolean
		    'reverse feature order(and reverse the seq)
		    m=ubound(eSeq.Features)
		    dim eSeqlength as integer = len(eSeq.sequence)
		    for n=1 to m
		      'read all of the feature properties:
		      eSeq.Features(n).complement=NOT(eSeq.Features(n).complement) 
		      eSeq.Features(n).start=2+eSeqlength-eSeq.Features(n).start  '2 is a necessary correction
		      eSeq.Features(n).finish=2+eSeqlength-eSeq.Features(n).finish  
		      
		      
		      
		    next
		    eSeq.Sequence=ReverseComplement(eSeq.Sequence)
		    'reverse feature array
		    
		    dim rSeq(0) as GBFeature
		    redim rSeq(m)
		    
		    for n=m downto 1
		      rSeq(n)=new GBFeature(100)
		      rSeq(n).complement=eSeq.Features(m-n+1).complement
		      rSeq(n).start=eSeq.Features(m-n+1).start
		      rSeq(n).finish=eSeq.Features(m-n+1).finish
		      rSeq(n).featuretext=eSeq.Features(m-n+1).featuretext
		    next
		    
		    'copy the values back to the original object
		    for n=1 to m
		      eSeq.Features(n).complement=rSeq(n).complement
		      eSeq.Features(n).start=rSeq(n).start
		      eSeq.Features(n).finish=rSeq(n).finish
		      eSeq.Features(n).featuretext=rSeq(n).featuretext
		    next 
		    
		    'find the TF gene again:
		    for n=1 to m
		      if instr(eSeq.Features(n).FeatureText,LocusTag)>0 then
		        TFno=n
		        exit
		      end if
		    next
		  end if                                     
		  
		  
		  'checking upstream gene(s):
		  upStreamSeq2=""
		  upstreamSeq=""
		  if TFno>1 then
		    
		    if eSeq.Features(TFno-1).complement=true then
		      'previous gene is opposite to TF: simply get the whole intergenic piece 
		      'including the first 50 bp of each ORF
		      rightC=eSeq.Features(TFno).start+DownstreamSize
		      leftC=eSeq.Features(TFno-1).start-DownstreamSize
		      SeqLen=rightC-LeftC
		      if SeqLen<2*(UpstreamSize+DownstreamSize) then
		        upStreamSeq=mid(eSeq.sequence,leftC,SeqLen)
		      else
		        'intergenic seq too long - get two separate pieces
		        
		        upStreamSeq=mid(eSeq.sequence,leftC,UpstreamSize+DownstreamSize)+"NNN"
		        upStreamSeq=upStreamSeq+mid(eSeq.sequence,rightC-UpstreamSize-DownstreamSize,UpstreamSize+DownstreamSize)
		        
		      end if
		    else
		      'previous gene has the same orientation: extract the sequence in front of the TF gene...
		      n=TFno
		      while eSeq.Features(n).complement=eSeq.Features(n-1).complement AND eSeq.Features(n).start-eSeq.Features(n-1).finish<operonGap
		        n=n-1
		        if n<2 then exit
		      wend
		      if n>1 then
		        if eSeq.Features(n).complement=eSeq.Features(n-1).complement then
		          rightC=eSeq.Features(n).start+DownstreamSize
		          leftC=rightC-DownstreamSize-UpstreamSize
		          SeqLen=rightC-LeftC
		          if LeftC<eSeq.Features(n-1).Finish then
		            SeqLen=SeqLen-eSeq.Features(n-1).Finish+LeftC
		            leftC=eSeq.Features(n-1).Finish
		          end if
		          upStreamSeq=mid(eSeq.sequence,leftC,SeqLen)
		        else
		          rightC=eSeq.Features(n).start+DownstreamSize
		          leftC=eSeq.Features(n-1).start-DownstreamSize
		          SeqLen=rightC-LeftC
		          
		          
		          if SeqLen<2*(UpstreamSize+DownstreamSize) then
		            'downstreamSeq=mid(eSeq.sequence,leftC,SeqLen)
		            upStreamSeq=mid(eSeq.sequence,leftC,SeqLen)
		          else
		            'intergenic seq too long - get two separate pieces
		            
		            upStreamSeq=mid(eSeq.sequence,leftC,UpstreamSize+DownstreamSize)+"NNN"
		            upStreamSeq=upStreamSeq+mid(eSeq.sequence,rightC-UpstreamSize-DownstreamSize,UpstreamSize+DownstreamSize)
		            
		          end if
		          
		        end if
		      end if
		      
		      '...and look for sequence upstream of the previous operon
		      '(only if orientation is the same! if it's divergent, the reg. seq of prev. operon is already there!
		      
		      if n>1 then
		        n=n-1
		        if eSeq.Features(n).complement=false then
		          
		          if n>1 then
		            while eSeq.Features(n).complement=eSeq.Features(n-1).complement AND eSeq.Features(n).start-eSeq.Features(n-1).finish<operonGap
		              n=n-1
		              if n<2 then exit
		            wend
		          end if
		          if n>1 then
		            if eSeq.Features(n).complement=eSeq.Features(n-1).complement then
		              rightC=eSeq.Features(n).start+DownstreamSize
		              leftC=eSeq.Features(n-1).finish
		              SeqLen=rightC-LeftC
		              upStreamSeq2=mid(eSeq.sequence,leftC,SeqLen)
		            else
		              
		              rightC=eSeq.Features(n).start+DownstreamSize
		              leftC=eSeq.Features(n-1).start-DownstreamSize
		              SeqLen=rightC-LeftC
		              upStreamSeq2=mid(eSeq.sequence,leftC,SeqLen)
		            end if
		          end if
		          
		        end if
		      end if
		    end if
		  end if
		  
		  'checking downstream gene(s):
		  
		  if TFno<m then
		    if eSeq.Features(TFno+1).complement=true then
		      'next gene is opposite to TF: check for operon start
		      n=TFno+1
		      if n<m then
		        while eSeq.Features(n).complement=eSeq.Features(n+1).complement AND eSeq.Features(n+1).finish-eSeq.Features(n).start<operonGap
		          n=n+1
		          if n>=m then exit
		        wend
		        if n<m then
		          
		          'add length limits here!
		          
		          if eSeq.Features(n).complement=eSeq.Features(n+1).complement then
		            rightC=eSeq.Features(n+1).finish
		            leftC=eSeq.Features(n).start-DownstreamSize
		            SeqLen=rightC-LeftC
		            if seqlen>DownstreamSize+UpstreamSize then
		              SeqLen=DownstreamSize+UpstreamSize
		            end if
		            downstreamSeq=mid(eSeq.sequence,leftC,SeqLen)
		          else
		            rightC=eSeq.Features(n+1).start+DownstreamSize
		            leftC=eSeq.Features(n).start-DownstreamSize
		            SeqLen=rightC-LeftC
		            
		            
		            if SeqLen<2*(UpstreamSize+DownstreamSize) then
		              downstreamSeq=mid(eSeq.sequence,leftC,SeqLen)
		            else
		              'intergenic seq too long - get two separate pieces
		              
		              downstreamSeq=mid(eSeq.sequence,leftC,UpstreamSize+DownstreamSize)+"NNN"
		              downstreamSeq=downstreamSeq+mid(eSeq.sequence,rightC-UpstreamSize-DownstreamSize,UpstreamSize+DownstreamSize)
		              
		            end if
		            
		            
		          end if
		        end if
		      end if
		      
		      
		    else
		      'next gene has the same orientation: extract the intergenic sequence
		      'SeqLen=450
		      n=TFno
		      while eSeq.Features(n).complement=eSeq.Features(n+1).complement AND eSeq.Features(n+1).start-eSeq.Features(n).finish<operonGap
		        n=n+1
		        if n>=m then exit
		      wend
		      
		      if n<m-1 then
		        if eSeq.Features(n+1).complement=true then
		          'we have a converging operon here, go further to its start:
		          n=n+1
		          while eSeq.Features(n).complement=eSeq.Features(n+1).complement AND eSeq.Features(n+1).start-eSeq.Features(n).finish<operonGap
		            n=n+1
		            if n>=m then exit
		          wend
		        end if
		        
		      end if
		      if n<m then
		        if eSeq.Features(n).complement=eSeq.Features(n+1).complement then
		          'same orientation (both genes on top strand)
		          rightC=eSeq.Features(n+1).start+DownstreamSize
		          leftC=rightC-DownstreamSize-UpstreamSize
		          SeqLen=rightC-LeftC
		          if LeftC<eSeq.Features(n).Finish then
		            SeqLen=SeqLen-eSeq.Features(n).Finish+LeftC
		            leftC=eSeq.Features(n).Finish
		          end if
		          
		          'rightC=eSeq.Features(n+1).finish
		          'leftC=eSeq.Features(n).start-DownstreamSize
		          'SeqLen=rightC-LeftC
		          'if seqlen>DownstreamSize+UpstreamSize then
		          'SeqLen=DownstreamSize+UpstreamSize
		          'end if
		          
		          
		          downstreamSeq=mid(eSeq.sequence,leftC,SeqLen)
		        else
		          'divergent operons
		          
		          rightC=eSeq.Features(n+1).start+DownstreamSize
		          leftC=eSeq.Features(n).start-DownstreamSize
		          SeqLen=rightC-LeftC
		          
		          if SeqLen<2*(UpstreamSize+DownstreamSize) then
		            downstreamSeq=mid(eSeq.sequence,leftC,SeqLen)
		          else
		            'intergenic seq too long - get two separate pieces
		            
		            downstreamSeq=mid(eSeq.sequence,leftC,UpstreamSize+DownstreamSize)+"NNN"
		            downstreamSeq=downstreamSeq+mid(eSeq.sequence,rightC-UpstreamSize-DownstreamSize,UpstreamSize+DownstreamSize)
		            
		          end if
		          
		          
		          
		          
		        end if
		      end if
		    end if
		  end if
		  
		  regSeq=FastaName+EndOfLine.unix
		  if len(upStreamSeq2)>20 then
		    if upStreamSeq2<>upStreamSeq then
		      RegSeq=RegSeq+upStreamSeq2+"NNN"
		      
		    end if
		  end if
		  
		  RegSeq=RegSeq+upStreamSeq+"NNN"+downStreamSeq
		  
		  return regseq
		  
		  Exception err
		    ExceptionHandler(err,"SeqRetrieval:GetRegSeq")
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function LocusTag2proteinFasta(locusTag as string, genomeName as string) As string
		  // Uses NCBI Entrez Direct (EDirect) that should be installed on the user machine
		  ' download link:
		  ' https://www.ncbi.nlm.nih.gov/books/NBK179288/
		  
		  
		  
		  Dim cmdStart As String
		  Dim cmdEnd As String
		  Dim f As FolderItem
		  f=Resources_f
		  Dim OutputFilePath As String = f.NativePath + "output.txt"
		  'OutputFilePath="D:/output.txt"
		  #If TargetWindows
		    ' Work in progress here
		    'cmdStart = "esearch -db protein -query "
		    'cmdEnd = " | efetch -format fasta >> "+chr(34)+chr(34)+MakeWSLPath(OutputFilePath)+chr(34)+chr(34)
		    cmdStart = "esearch -db protein -query ''"
		    cmdEnd = "'' | efetch -format fasta"
		  #Else 
		    cmdStart = "esearch -db protein -query '"
		    cmdEnd = "' | efetch -format fasta"
		  #EndIf
		  
		  Dim cmd As String
		  cmd=cmdStart+locusTag+" [GENE] AND "+genomeName+" [ORGN]"+cmdEnd
		  
		  #If TargetWindows
		    UserShellMode=1
		    ExecuteWSL(cmd, false, " > "+PlaceQuotesToPath(OutputFilePath))
		    'ExecuteWSL("esearch", false, " > "+PlaceQuotesToPath(OutputFilePath))
		  #Else 
		    userShell(cmd)
		  #EndIf
		  
		  Dim res As String
		  Dim m,n As Integer
		  res=shResult
		  
		  #If TargetWindows
		    Dim output As New FolderItem(OutputFilePath)
		    For i As Integer = 1 To 100 ' Wait for 5 seconds, while the asynchronous command is executing
		      If output=Nil Then
		        App.SleepCurrentThread(50)
		      Else
		        Exit
		      End If
		    Next
		    If output<>Nil Then
		      For i As Integer = 1 To 100 ' Wait for 5 seconds, while we will get results in file
		        If output.Length=0 Then
		          App.SleepCurrentThread(50)
		        Else
		          res=TextInputStream.Open(output).ReadAll
		          Exit
		        End If
		      Next
		    Else
		      res=""
		    End If
		  #Endif
		  
		  If InStr(res, ">")>0 Then 'find correct seq among several possible
		    'we simply check for the presence of all words of genomeName within fasta title
		    Dim Fastas(-1) As String
		    Dim genomeWords(-1) As String
		    
		    fastas=res.Split(">")
		    genomeWords=genomeName.Split
		    
		    Dim Scores(-1) As Integer
		    For m=0 To ubound(Fastas)
		      Scores.append 0
		    Next
		    
		    'find the best match
		    For m=0 To ubound(Fastas)
		      For n=0 To ubound(genomeWords)
		        If InStr(fastas(m),genomeWords(n))>0 Then 
		          Scores(m)=Scores(m)+1
		        End If
		      Next
		    Next
		    
		    Dim TopScore As Integer = Scores(0)
		    Dim Scoremax As Integer = 0
		    
		    If ubound(scores)>0 Then
		      For m=1 To ubound(Scores)
		        If Scores(m)>TopScore Then
		          TopScore=Scores(m)
		          Scoremax=m
		        End If
		      Next
		    End If
		    
		    If TopScore>0 Then
		      Return ">"+Fastas(Scoremax)
		    Else
		      'MsgBox "Can't find a protein that matches both locus_tag and genome name"
		      Return ""
		    End If
		    
		    
		    
		  Else
		    'MsgBox res
		    Return ""
		  End If
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function maskedFetchGenPeptEntry(Entry as string) As string
		  'Currently unused
		  
		  Const URLstart As String="https://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch.fcgi?db=protein&id="
		  Const URLend as string="&rettype=gp" 
		  Dim Separ1 as string="reference id="+chr(34)
		  Dim Separ2 as string=chr(34)
		  dim theURL as string
		  
		  
		  dim hts as new HTTPSecureSocket
		  hts.Secure = True
		  dim res as string
		  dim outfile as folderitem
		  
		  
		  LogoWin.WriteToSTDOUT ("Getting GenPept entries... ")
		  'LogoWin.show
		  
		  hts.Yield=true  'allow background activities while waiting
		  hts.SetRequestHeader("Content-Type:","text/plain")
		  
		  theURL=URLstart+Entry+URLend
		  
		  res=DefineEncoding(hts.post(theURL,60), Encodings.ASCII)  'no encoding is set
		  
		  if hts.HTTPStatusCode>=200 AND hts.HTTPStatusCode<300 then 'successful
		    if Res="" then
		      if hts.ErrorCode=-1 then
		        logowin.WriteToSTDOUT("Server timeout (No response in one minute"+EndOfLine.UNIX)
		      else
		        LogoWin.WriteToSTDOUT ("Server error (empty response)"+EndOfLine)
		      end if
		    else
		      'LogoWin.WriteToSTDOUT (EndOfLine)
		      LogoWin.WriteToSTDOUT "OK" '(res)
		      LogoWin.WriteToSTDOUT (EndOfLine)
		      
		    end if
		  else
		    LogoWin.WriteToSTDOUT ("eutils error "+str(hts.HTTPStatusCode)+EndOfLine.unix)
		  end if
		  
		  hts.close
		  return res
		  '
		  'Exception err
		  'ExceptionHandler(err,"SeqRetrieval:FetchGenPeptEntry")
		  
		  
		  Exception err
		    if err isa IOException then
		      LogoWin.WriteToSTDOUT(EndOfLine.unix+"IOException has occurred.")
		      LogoWin.WriteToSTDOUT(EndOfLine.unix+"ErrorNumber: "+str(err.ErrorNumber))
		      LogoWin.WriteToSTDOUT(EndOfLine.unix+"Message: "+err.Message)
		      LogoWin.WriteToSTDOUT(EndOfLine.unix+"Reason: "+err.Reason)
		    end if
		    ExceptionHandler(err,"FetchGenPeptEntry")
		    
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function MEME(inFile as folderitem, outFolder as folderitem, options as string) As integer
		  'Standard MEME run with result display in browser
		  
		  'USAGE:
		  'meme    <dataset> [optional arguments]
		  
		  'available options:
		  '[-o <output dir>]    name of directory for output files
		  'will not replace existing directory
		  '[-oc <output dir>]    name of directory for output files
		  'will replace existing directory
		  '[-text]            output in text format (default is HTML)
		  '[-dna]            sequences use DNA alphabet
		  '[-protein]        sequences use protein alphabet
		  '[-mod oops|zoops|anr]    distribution of motifs
		  '[-nmotifs <nmotifs>]    maximum number of motifs to find
		  '[-evt <ev>]        stop if motif E-value greater than <evt>
		  '[-nsites <sites>]    number of sites for each motif
		  '[-minsites <minsites>]    minimum number of sites for each motif
		  '[-maxsites <maxsites>]    maximum number of sites for each motif
		  '[-wnsites <wnsites>]    weight on expected number of sites
		  '[-w <w>]        motif width
		  '[-minw <minw>]        minimum motif width
		  '[-maxw <maxw>]        maximum motif width
		  '[-nomatrim]        do not adjust motif width using multiple
		  'alignment
		  '[-wg <wg>]        gap opening cost for multiple alignments
		  '[-ws <ws>]        gap extension cost for multiple alignments
		  '[-noendgaps]        do not count end gaps in multiple alignments
		  '[-bfile <bfile>]    name of background Markov model file
		  '[-revcomp]        allow sites on + or - DNA strands
		  '[-pal]            force palindromes (requires -dna)
		  '[-maxiter <maxiter>]    maximum EM iterations to run
		  '[-distance <distance>]    EM convergence criterion
		  '[-psp <pspfile>]    name of positional priors file
		  '[-prior dirichlet|dmix|mega|megap|addone]
		  'type of prior to use
		  '[-b <b>]        strength of the prior
		  '[-plib <plib>]        name of Dirichlet prior file
		  '[-spfuzz <spfuzz>]    fuzziness of sequence to theta mapping
		  '[-spmap uni|pam]    starting point seq to theta mapping type
		  '[-cons <cons>]        consensus sequence to start EM from
		  '[-heapsize <hs>]    size of heaps for widths where substring
		  'search occurs
		  '[-x_branch]        perform x-branching
		  '[-w_branch]        perform width branching
		  '[-allw]            include all motif widths from min to max
		  '[-bfactor <bf>]        branching factor for branching search
		  '[-maxsize <maxsize>]    maximum dataset size in characters
		  '[-nostatus]        do not print progress reports to terminal
		  '[-p <np>]        use parallel version with <np> processors
		  '[-time <t>]        quit before <t> CPU seconds consumed
		  '[-sf <sf>]        print <sf> as name of sequence file
		  '[-V]            verbose mode
		  
		  
		  
		  
		  
		  'actual conversion
		  Dim cli As String
		  Dim sh As Shell
		  
		  ''need to set MEME_BIN_DIRS for the bundled meme version
		  'dim MEME_BIN_DIRS as string
		  '#if TargetWindows
		  ''MEME_BIN_DIRS=nthfield(MEMEpath,"/meme.exe",1)
		  'dim ff as folderitem
		  'ff=TemporaryFolder.child("meme_xml_to_html")
		  'if ff<>NIL AND ff.exists then
		  ''it's already there
		  'MEME_BIN_DIRS=TemporaryFolder.ShellPath
		  'else
		  'ff=resources_f.child("meme_xml_to_html")
		  'if ff<>NIL AND ff.exists then
		  'ff.copyfileto(TemporaryFolder)
		  'MEME_BIN_DIRS=TemporaryFolder.ShellPath
		  'end if
		  'ff=resources_f.child("meme.exe")
		  'if ff<>NIL AND ff.exists then
		  'ff.copyfileto(TemporaryFolder)
		  'end if
		  'end if
		  '
		  ''need to copy the dlls too!
		  '
		  '
		  '
		  '#elseif targetLinux
		  'MEME_BIN_DIRS=nthfield(MEMEpath,"/meme",1)
		  'if instr(MEME_BIN_DIRS," ")>0 then
		  'moved2tmp=true
		  ''MEME_BIN_DIRS should not have white space, so moving the script to /tmp
		  'dim ff as folderitem
		  'ff=TemporaryFolder.child("meme_xml_to_html")
		  'if ff<>NIL AND ff.exists then
		  ''it's already there
		  'MEME_BIN_DIRS=TemporaryFolder.ShellPath
		  'else
		  'ff=resources_f.child("meme_xml_to_html")
		  'if ff<>NIL AND ff.exists then
		  'ff.copyfileto(TemporaryFolder)
		  'MEME_BIN_DIRS=TemporaryFolder.ShellPath
		  'end if
		  'ff=resources_f.child("meme")
		  'if ff<>NIL AND ff.exists then
		  'ff.copyfileto(TemporaryFolder)
		  'end if
		  'end if
		  'end if
		  '
		  '#else
		  'MEME_BIN_DIRS=nthfield(MEMEpath,"/meme",1)
		  '#endif
		  
		  '#if TargetLinux
		  'if moved2tmp then
		  'cli="/tmp/meme"+" "+alignment_tmp.ShellPath+" -dna -minw "+str(MinField.text)
		  'else
		  'cli="MEME_BIN_DIRS="+MEME_BIN_DIRS+" "+MEMEpath+" "+alignment_tmp.ShellPath+" -dna -minw "+str(MinField.text)
		  'end if
		  '
		  '#elseif TargetWindows
		  'cli=TemporaryFolder.child("meme.exe").ShellPath+" "+alignment_tmp.ShellPath+" -dna -minw "+str(MinField.text)
		  '#else
		  'cli="MEME_BIN_DIRS="+MEME_BIN_DIRS+" "+MEMEpath+" "+alignment_tmp.ShellPath+" -dna -minw "+str(MinField.text)
		  '#endif
		  
		  #if TargetWindows
		    cli=PlaceQuotesToPath(TemporaryFolder.child("meme.exe").ShellPath)+" "+PlaceQuotesToPath(infile.ShellPath)
		  #else
		    cli=MEMEpath+" '"+PlaceQuotesToPath(infile.NativePath)+"'"
		  #EndIf
		  
		  If cores2use>1 Then 'for parallelised meme
		    If cores2use>CPUcores Then
		      ' with OpenMPI v.>2 in mind, physical cores are allowed by default.
		      ' to use threads on CPUs with hyperthreading, use the --use-hwthread-cpus option for mpirun
		      ' e.g. on a 4-core processor with 8 threads, meme can be launched like this:
		      ' meme -p "8 --use-hwthread-cpus" 
		      If MPICH Then
		        cli=cli+" -p " + Str(cores2use)
		      Else
		        cli=cli+" -p '" + Str(cores2use) + " --use-hwthread-cpus'"
		      End
		    Else
		      cli=cli+" -p " + Str(cores2use)  
		    End If
		    
		  End If
		  
		  cli=cli+" -oc '"+outFolder.NativePath+"' "+Options
		  
		  sh=New Shell
		  sh.mode=1
		  sh.TimeOut=-1
		  #if TargetWindows
		    sh.execute(cli)
		  #else
		    sh.execute("bash --login -c "+chr(34)+cli+chr(34)) 'Should be corrected
		  #endif
		  While sh.IsRunning=true
		    app.YieldToNextThread()
		  wend
		  
		  'return sh.errorCode
		  If sh.errorCode=0 Then
		    Return sh.errorCode
		  else
		    MEMEerr="MEME error code: "+Str(sh.errorCode)+EndOfLine
		    MEMEerr=MEMEerr+"MEME command was: "+cli+EndOfLine+sh.Result
		    return sh.errorCode
		  end if
		  
		  Exception err
		    ExceptionHandler(err,"DeNovoTFBSinference:MEME")
		    
		    
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function PalindromicFamily(FamilyName as string, TFname as string) As boolean
		  // Used in RegPrecise export
		  
		  // Guess if the profile should be palindromic
		  '  Based solely on family name,
		  '  in case of known exceptions TF name is taken into account 
		  
		  // These names must match RegPrecise family names exactly!
		  ' the alternative would be using file names in TF_families folder
		  
		  'drop extension
		  FamilyName=Replace(FamilyName,".hmm","")
		  
		  'Trim TF name to the first space. Add comma to avoid partial matches
		  TFname=NthField(TFname," ",1)+","
		  
		  Select Case FamilyName
		  Case "AraC"               'PF12833
		    Return False 'all direct repeats
		    
		  Case "CitT"                      'PF12431
		    'Similar to Trans_reg_C; these two are often treated as one "Response regulator" family
		    Return False 'all direct repeats
		    
		  Case "DeoR"                  'PF08220
		    'many TFBSs are direct repeats
		    Dim DeoRpal As String = "AgaR2,DeoR,FucR,GalR,GlmR,GlpR,MSMEG_3264,MSMEG_3606,PflR,UlaR,"  
		    If InStr(DeoRpal,TFname)>0 Then
		      Return True
		    Else
		      Return False
		    End 
		    
		    'Case "GntR/Others"            'PF00392
		    ''TFBS for (almost) all members are palindromic
		    'Return True
		    ''Dim GntRdirect As String = ""            '<-- fill this string with RegPrecise data
		    ''if instr(GntRdirect,TFname)>0 then
		    ''return false
		    ''else
		    ''return true
		    ''End 
		    
		  Case "GntR/MocR"            'PF00392
		    'TFBS for most members are not palindromic
		    Dim GntRpal As String = "BAV2320,BC3039,Bamb_6386,CBY_0654,CD2285,CLOBOL_00921,CsaI_1101,DVU_0030,EF0117,EutR,MII0059,PBPRB0322,PP0486,PTD2_03046,SMU640c,SO2282,SPOA0164,Tola_2572,Tola_2750,VSAC1_09283,VSAL_I1306,"
		    If InStr(GntRpal,TFname)>0 Then
		      Return True
		    Else
		      Return False
		    End 
		    
		  Case "LuxR"                      'PF00196
		    If TFname="MalT" Then 'The only exception with direct repeats
		      Return False
		    Else
		      Return True
		    End If
		    
		  Case "MerR"
		    
		    Dim MerRpal As String = "BldC,CarH,"  
		    If InStr(MerRpal,TFname)>0 Then
		      Return True
		    Else
		      Return False
		    End 
		    
		    
		  Case "OmpR"               'PF00486
		    
		    Dim OmpRpal As String = "CusR,CopR,CzcR,"  'Copper resistance regulators presumably recognise palindromes
		    If InStr(OmpRpal,TFname)>0 Then
		      Return True
		    Else
		      Return False
		    End 
		    
		  Else
		    Return True
		  End Select
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function PMID2DOI(PMID as string) As string
		  // Converts PubMed ID to DOI using NCBI PubMed pages
		  '  Simple requests: https://pubmed.ncbi.nlm.nih.gov/16179344, where 16179344 is the PMID
		  '  The resulting page has both the PMID and DOI within the same meta tag like this:
		  '  <meta name="keywords" content="pmid:16179344, doi:10.1074/jbc.M508693200,
		  
		  // Corresponding NCBI API works only for records that have PMC ID
		  '  The code to use it was tried first, but is commented out as too many PMIDs were not processed.
		  'example URL:
		  'https://www.ncbi.nlm.nih.gov/pmc/utils/idconv/v1.0/?tool=my_tool&email=my_email@example.com&ids=23193287&idtype=pmid&format=json
		  
		  Dim DOI As String
		  Dim URL As String = " https://pubmed.ncbi.nlm.nih.gov/"+PMID
		  
		  'curl -LH 'Accept:text/plain' -F format=json -F versions=no -F tool=SigmoID  -F email=nikolaichik@bsu.by -F ids=16204540 https://www.ncbi.nlm.nih.gov/pmc/utils/idconv/v1.0/
		  
		  
		  Dim cli As String
		  cli="curl -LH "+"'Accept: text/plain' "+URL
		  'Dim sh As Shell =  New Shell
		  'sh.TimeOut=-1
		  'sh.execute(cli)
		  'DOI=Trim(sh.result)
		  
		  usershell(cli)
		  DOI=shResult
		  
		  
		  'Socket doesn't work
		  
		  'Dim hts As New HTTPSecureSocket
		  'hts.Secure = True
		  'Dim res As String
		  'Dim outfile As folderitem
		  '
		  '
		  '
		  'hts.Yield=True  'allow background activities while waiting
		  'hts.SetRequestHeader("Content-Type:","text/plain")
		  
		  
		  'DOI=hts.Get(URL,0)  'adjust timeout?
		  
		  ''While hts.LastErrorCode=102
		  'While hts.IsConnected Or hts.SSLConnected
		  'app.DoEvents
		  'Wend
		  '
		  'If hts.HTTPStatusCode>=200 And hts.HTTPStatusCode<300 Then 'successful
		  'If DOI="" Then
		  'If hts.ErrorCode=-1 Then
		  'logowin.WriteToSTDOUT("NCBI server timeout (No response in one minute"+EndOfLine.UNIX)
		  'Else
		  'LogoWin.WriteToSTDOUT ("NCBI server error (empty response)"+EndOfLine)
		  'End If
		  '
		  'End If
		  'End If
		  '
		  'hts.close
		  'pmid:16179344, doi:
		  
		  Dim sep As String="pmid:"+PMID '+", doi:"   <-- there might be a PMCID between PMID and DOI
		  If doi.InStr(sep)>0 Then
		    'parsing this line:
		    '    "doi": "10.1128/AEM.71.10.6206-6215.2005"
		    DOI=NthField(DOI, sep,2)
		    DOI=NthField(DOI,", doi:",2)
		    DOI=NthField(DOI, ",",1)
		    
		    Return DOI
		    'End If
		  Else
		    LogoWin.WriteToSTDOUT ("NCBI ID Converter error"+EndOfLine.unix)
		    'hts.close
		    Return PMID       'Usually the failure is due to missing PMC identifier
		  End If
		  
		  
		  
		  
		  Exception err
		    ExceptionHandler(err,"Globals:PMID2DOI")
		    
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RemoveRedundantSeqs(inSeqs as string, genusSpecific as boolean) As string
		  // There are still empty seqs (NNN) = remove these first and before this method!!!
		  
		  // Sometimes there are too long seqs (over 2k) – these should probably be removed too.
		  
		  // Clustering according to homology should be performed
		  '  At the moment, we only filter seqs according to species names (leaving one representative for a species)
		  
		  ' Filtering according to species name doesn't help much if original search 
		  ' was done against Reference Proteins (as it has a single sequence per species in most cases),
		  ' so genus-based filtering is also required.
		  
		  
		  // Check if any filtering is actually required (don't do anything with less than 30 seqs)
		  
		  if countfields(inSeqs,">")<30 then
		    return inSeqs
		  end if
		  
		  
		  // write to the log
		  
		  if genusSpecific then
		    deNovoWin.rp.writeToWin(EndOfLine.UNIX+"Removing redundant seqs within genera... ")
		  else
		    deNovoWin.rp.writeToWin(EndOfLine.UNIX+"Removing redundant seqs within species... ")
		  end if
		  
		  // group seqs according to species names
		  
		  dim inArray(0) as string
		  dim SpeciesGrouped(0), SpeciesNames(0) as string
		  dim currentName,s as string
		  dim k,l,m,n,fields as integer
		  
		  inArray=Split(inSeqs,">")
		  
		  m=UBound(inArray)
		  for n=1 to m
		    fields=CountFields(inArray(n),"|")
		    s=NthField(inArray(n),"|",fields)
		    
		    if genusSpecific then
		      currentName=NthField(s," ",1)
		    else
		      currentName=NthField(s," ",1)+" "+NthField(s," ",2)
		      
		    end if
		    
		    k=UBound(SpeciesNames)
		    for l=1 to k
		      if currentName=SpeciesNames(l) then exit
		    next
		    if l>k then
		      'new species: append to both arrays
		      SpeciesGrouped.append inArray(n)
		      SpeciesNames.append currentName
		    else
		      'species already present
		      SpeciesGrouped(l)=SpeciesGrouped(l)+";;"+inArray(n)
		    end if
		  next
		  
		  
		  // Analyse species groups
		  dim seqNo as integer
		  dim names(-1), seqs(-1) as string
		  dim minL, maxL, midL, d, midDist as integer
		  
		  k=UBound(SpeciesGrouped)
		  for l=1 to k
		    seqNo=CountFields(SpeciesGrouped(l),";;")
		    if SeqNo>1 then
		      names=split(SpeciesGrouped(l),";;")
		      redim seqs(-1)
		      for n=0 to ubound(names)
		        seqs.Append(NthField(names(n),EndOfLine.unix,2))
		        names(n)=NthField(names(n),EndOfLine.unix,1)
		      next
		      
		      minL=1000000
		      maxL=0
		      for each seq as string in seqs
		        if len(seq)<minL then
		          minL=len(seq)
		        end if
		        if len(seq)>maxL then
		          maxL=len(seq)
		        end if
		      next
		      
		      
		      if minL=maxL then
		        'as all seqs have the same length, just take the first one
		        SpeciesGrouped(l)=names(0)+EndOfLine.UNIX+seqs(0)
		        
		      else
		        'take the sequence with the length closest to the medium for the group 
		        
		        midL=(maxL+minL)/2
		        midDist=maxL
		        for each seq as string in seqs
		          if abs(len(seq)-midL)<midDist then
		            midDist=abs(len(seq)-midL)
		            exit
		          end if
		        next
		        
		        for n=0 to ubound(seqs)
		          if abs(len(seqs(n))-midL)=midDist then
		            SpeciesGrouped(l)=names(n)+EndOfLine.UNIX+seqs(n)
		          end if
		        next
		        
		      end if
		      
		    end if
		    
		    
		  next
		  
		  
		  // Generate (filtered) fasta file to return
		  dim nr_fasta As string
		  for n=1 to ubound(SpeciesGrouped)
		    nr_fasta=nr_fasta+">"+SpeciesGrouped(n) +EndOfLine.UNIX
		  next 
		  
		  nr_fasta=replaceall(nr_fasta,EndOfLine.UNIX+EndOfLine.UNIX,EndOfLine.UNIX)
		  
		  
		  dim inNo, outNo as integer
		  inNo=CountFields(InSeqs,">")-1
		  outNo=CountFields(nr_fasta,">")-1
		  
		  deNovoWin.rp.writeToWin(str(inNo-outNo)+" out of "+str(inNo)+" removed.")
		  
		  return nr_fasta
		  
		  
		  
		  Exception err
		    ExceptionHandler(err,"DeNovoTFBSinference:RemoveRedundantSeqs")
		    
		    
		    
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setCDSseqs(instream As TextinputStream)
		  'read fasta file  input stream, iterate strings with multiple EndOfLine in seq entry, reformat sequences to single line and save as FASTA in CDSseqs field
		  dim rawCDS as String
		  rawCDS = instream.ReadAll
		  dim CDSstrings() As String = rawCDS.Split(EndOfLine.UNIX)
		  For Each line As String in CDSstrings
		    if instr(line, ">")>0 Then
		      If CDSseqs<>"" Then
		        CDSseqs=CDSseqs+EndOfLine.UNIX+line+EndOfLine.UNIX
		      Else
		        CDSseqs=CDSseqs+line+EndOfLine.UNIX
		      End
		    Else
		      CDSseqs=CDSseqs+line
		    end
		  Next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function UniProt2ncbi_ID(UniProtID as string) As string
		  'Currently unused
		  
		  'As UniProt IDs are unusable with NCBI, this method returns 
		  'an ID that can be found in GenPept.
		  
		  'aUniprot ID looks like A0A0B2TCH0_PECCA
		  
		  'Sample request:
		  'http://www.ebi.ac.uk/ebisearch/ws/rest/uniprot/entry/P53_HUMAN/xref/coding_release
		  
		  Const URLstart as string="https://www.ebi.ac.uk/ebisearch/ws/rest/uniprot/entry/"
		  Const URLend as string="/xref/coding_release" 'alternative: emblrelease_standard
		  Dim Separ1 as string="reference id="+chr(34)  
		  Dim Separ2 as string=chr(34)
		  dim ncbiID, theURL as string
		  
		  
		  dim hts as new HTTPSocket
		  dim res as string
		  dim outfile as folderitem
		  
		  
		  LogoWin.WriteToSTDOUT ("Contacting EBI for protein ID usable @NCBI... ")
		  'LogoWin.show
		  
		  hts.Yield=true  'allow background activities while waiting
		  hts.SetRequestHeader("Content-Type:","text/plain")
		  
		  theURL=URLstart+UniProtID+URLend
		  
		  res=hts.Get(theURL,60)  'adjust timeout?
		  
		  if hts.HTTPStatusCode>=200 AND hts.HTTPStatusCode<300 then 'successful
		    if Res="" then
		      if hts.ErrorCode=-1 then
		        logowin.WriteToSTDOUT("Server timeout (No response in one minute"+EndOfLine.UNIX)
		      else
		        LogoWin.WriteToSTDOUT ("Server error (empty response)"+EndOfLine)
		      end if
		    else
		      ncbiID=NthField(res,separ1,2)
		      ncbiID=NthField(ncbiID,separ2,1)
		      LogoWin.WriteToSTDOUT (ncbiID)
		      LogoWin.WriteToSTDOUT (EndOfLine)
		      
		      
		    end if
		  else
		    
		    dim httpErr as String = HTTPerror(hts.HTTPStatusCode, false)
		    LogoWin.WriteToSTDOUT (httpErr)
		    
		  end if
		  
		  hts.close
		  return ncbiID
		  
		  Exception err
		    ExceptionHandler(err,"SeqRetrieval:UniProt2ncbi_ID")
		    
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function UniProt2ncbi_ID_old(UniProtID as string) As string
		  'Currently unused
		  
		  'As UniProt IDs are unusable with NCBI, this method returns 
		  'an ID that can be found in GenPept.
		  
		  'aUniprot ID looks like A0A0B2TCH0_PECCA
		  
		  'Const URLstart as string="https://www.ebi.ac.uk/ebisearch/ws/rest/uniprot/entry/"
		  'Const URLend as string="/xref/coding_release" 
		  Dim Separ1 as string=" id="+chr(34)    'used to be "reference id="
		  Dim Separ2 as string=chr(34)
		  dim ncbiID, theURL as string
		  
		  
		  dim hts as new HTTPSocket
		  dim res as string
		  dim outfile as folderitem
		  
		  
		  LogoWin.WriteToSTDOUT ("Contacting EBI for protein ID usable @NCBI... ")
		  'LogoWin.show
		  
		  hts.Yield=true  'allow background activities while waiting
		  hts.SetRequestHeader("Content-Type:","text/plain")
		  hts.SetRequestHeader("Accept","text/plain")
		  
		  
		  'configure request
		  'hts.SetRequestHeader("Expect:","")
		  
		  Dim form As Dictionary
		  'create and populate the form object
		  form = New Dictionary
		  form.Value("from") = "ACC" 'Uniprot ID
		  form.Value("to") = "EMBL_ID" 'EMBL/GB/DDBJ ID
		  form.Value("query") = UniProtID
		  
		  form.Value("format") = "tab"   '?
		  
		  hts.SetFormData(form)
		  
		  theURL="https://www.uniprot.org/uploadlists"
		  
		  'res=hts.post(theURL,60)  'adjust timeout?
		  GenomeWin.EBIsocket.post(theURL) 
		  
		  'if hts.HTTPStatusCode>=200 AND hts.HTTPStatusCode<300 then 'successful
		  'if Res="" then
		  'if hts.ErrorCode=-1 then
		  'logowin.WriteToSTDOUT("Server timeout (No response in one minute"+EndOfLine.UNIX)
		  'else
		  'LogoWin.WriteToSTDOUT ("Server error (empty response)"+EndOfLine)
		  'end if
		  'else
		  'ncbiID=NthField(res,separ1,2)
		  'ncbiID=NthField(ncbiID,separ2,1)
		  'LogoWin.WriteToSTDOUT (ncbiID)
		  'LogoWin.WriteToSTDOUT (EndOfLine)
		  '
		  '
		  'end if
		  'else
		  '
		  'dim httpErr as String = HTTPerror(hts.HTTPStatusCode, false)
		  'LogoWin.WriteToSTDOUT (httpErr)
		  '
		  'end if
		  '
		  'hts.close
		  'return ncbiID
		  
		  Exception err
		    ExceptionHandler(err,"SeqRetrieval:UniProt2ncbi_ID")
		    
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function WebGetCRtags(SearchResRaw as string, CRpos as string,CRtagFilter as string) As string
		  // Add Critical Residues (CRs) according to Sahota and Stormo (2010; doi:10.1093/bioinformatics/btq501)
		  ' to hmmsearch output 
		  ' CRs should be in the format "2,3,7,9,11,13,14,21"
		  ' This method is similar to GetCRtags, but processes results returned by the EBI HMMER server,
		  ' which doesn't return the nice aligned table, so we have to parse the textual output.
		  
		  dim CRarray(0) as integer
		  dim TableArray(0) as string
		  dim AlignmentArray(0) as string
		  dim ResArray(0) as string
		  Dim ProtNames(0) as string
		  Dim FilteredArray(0) as string
		  'Dim CRtags as string
		  Dim CRtags(0) as string
		  dim Alignments, hitSeq, CRtag, aline, filteredResult as string
		  dim m,n,o,p,q as integer
		  dim QueryStart as integer
		  
		  dim hitSeparator as string = "================================================================================================================"
		  
		  
		  // Store CR positions
		  m=CountFields(CRpos,",")
		  for n=1 to m
		    CRarray.Append(Val(NthField(CRpos,",",n)))
		  next
		  
		  SearchResRaw=ReplaceAll(SearchResRaw,EndOfLine.unix+EndOfLine.unix,EndOfLine.unix)'remove empty lines
		  
		  // Parse the results
		  ResArray=SearchResRaw.Split(EndOfLine.UNIX) 'Split Search results into array
		  m=Ubound(ResArray)-1
		  for n=2 to m
		    aline=ResArray(n)
		    while left(aline,10)<>"=========="
		      n=n+1
		      if n>m-10 then exit
		      aline=ResArray(n)
		    wend
		    
		    // single result format looks like this (an empty second line is skipped for the very first hit):
		    ' ================================================================================================================
		    ' 
		    ' A0A0B2TCH0_PECCA 2    0.3    110.1    2.9e-29    554    Pectobacterium carotovorum    LuxR family transcriptional regulator
		    ' ----------------------------------------------------------------------------------------------------------------
		    ' Target-env-start    Target-env-end    Target-ali-start    Target-ali-end    Query-start    Query-end    E-value(cond.)
		    ' ----------------------------------------------------------------------------------------------------------------
		    ' 179    233    179    233    1    55    1.2e-31
		    ' QUERY  ifsqreneilywasmgktypeialildikistvkfhignvvkklgvlnakhairl
		    ' MATCH  ifsqreneilywasmgktypeialildikistvkfhignvvkklgvlnakhairl
		    ' PP     7****************************************************97
		    ' TARGET IFSQRENEILYWASMGKTYPEIALILDIKISTVKFHIGNVVKKLGVLNAKHAIRL
		    ' ----------------------------------------------------------------------------------------------------------------
		    ' ================================================================================================================
		    
		    // as there seems to be no way to specify proper cut-offs via the API, there will be 
		    '  multi-domain results that look like:
		    ' ================================================================================================================
		    '
		    ' U5E3D3_NOCAS 4    2.1    73.8    2.7e-18    1110697    Nocardia asteroides NBRC 15531    Uncharacterized protein
		    ' ----------------------------------------------------------------------------------------------------------------
		    ' Target-env-start    Target-env-end    Target-ali-start    Target-ali-end    Query-start    Query-end    E-value(cond.)
		    ' ----------------------------------------------------------------------------------------------------------------
		    ' 28    74    39    69    12    42    260
		    ' QUERY  hgvsatslsdiataagvtrgaiywhfknkae
		    ' MATCH   g   t l+d+  aag++   +y ++    +
		    ' PP     578899***********99999988876655
		    ' TARGET PGYRQTRLADLCQAAGLSTRQFYQEYDTLED
		    ' ----------------------------------------------------------------------------------------------------------------
		    ' Target-env-start    Target-env-end    Target-ali-start    Target-ali-end    Query-start    Query-end    E-value(cond.)
		    ' ----------------------------------------------------------------------------------------------------------------
		    ' 239    285    240    282    2    44    4.8e-09
		    ' QUERY  ldtalrvfsehgvsatslsdiataagvtrgaiywhfknkaeif
		    ' MATCH  l  a   f+ehg   ts++diata g+t ga+y hf+ k e++
		    ' PP     5667789********************************9986
		    ' TARGET LRAASDAFAEHGYHRTSMADIATAVGITSGALYRHFRTKQELL
		    ' ----------------------------------------------------------------------------------------------------------------
		    ' ================================================================================================================
		    
		    
		    o=ubound(CRarray)
		    CRtag=""
		    dim unsp as integer                      'holds correction for unspecific domain hits
		    if n+9>ubound(ResArray) then exit
		    dim tst as string=ResArray(n+5)
		    if instr(ResArray(n+5),"e-")=0 then      'spurious unspecific domain hit!
		      unsp=8
		      if n+17>ubound(ResArray) then exit
		      hitseq=NthField(ResArray(n+17)," ",2)
		      'need to adjust for Query-start!
		      QueryStart=Val(NthField(ResArray(n+13),chr(9),5))-1 'correction if starting not from pos.1
		    else                                    'proper hit
		      unsp=0
		      hitseq=NthField(ResArray(n+9)," ",2)   
		      'need to adjust for Query-start!
		      QueryStart=Val(NthField(ResArray(n+5),chr(9),5))-1 'correction if starting not from pos.1
		    end if
		    
		    
		    for p=1 to o
		      CRtag=CRtag+mid(hitseq,CRarray(p)-QueryStart,1)
		    next
		    if CRtag=CRtagFilter then
		      'move this hit to filtered array:
		      filteredArray.append(ResArray(n+1))
		      for q=2+unsp to 10+unsp
		        filteredArray.append(ResArray(n+q))
		      next
		      
		      
		      filteredArray.append(hitSeparator)
		    end if
		    'end if
		    n=n+10
		  next
		  
		  // Create filtered result string
		  filteredResult=ResArray(0)+EndOfLine.UNIX+"*************************"+EndOfLine.UNIX+"   Results that have the specified CR tag ("+CRtagFilter+")"+EndOfLine.UNIX+"*************************"+EndOfLine.UNIX
		  filteredResult=filteredResult+ResArray(1)+EndOfLine.UNIX
		  filteredResult=filteredResult+hitSeparator+EndOfLine.unix
		  n=ubound(FilteredArray)
		  for m=1 to n
		    filteredResult=filteredResult+FilteredArray(m)+EndOfLine.UNIX
		  next
		  
		  // Uncomment below to return the hits not matching CR too
		  
		  'filteredResult=filteredResult+EndOfLine.UNIX+"*************************"+EndOfLine.UNIX+"   Results below DO NOT have the specified CR tag"+EndOfLine.UNIX+"*************************"+EndOfLine.UNIX
		  '
		  'n=ubound(ResArray)
		  'for m=1 to n
		  'filteredResult=filteredResult+ResArray(m)+EndOfLine.UNIX
		  'next
		  
		  Return filteredResult
		  Exception err
		    ExceptionHandler(err,"Globals:WebGetCRtags")
		    
		    
		End Function
	#tag EndMethod


	#tag Note, Name = Configurable properties
		
		Some fixed values should probably be made user-configurable, including:
		
		- size of genomic fragment surrounding the TF (currently +- 20 kb)
		- inter-operon gap (operonGap variable in GetRegSeq method, currently 100 bp)
		- genome fragment size limit (LengthLimit variable in GetRegSeq method, currently 30000 bp)
		- RemoveRedundantSeqs fires if there are over 20 sequences. This should be configurable
		- sizes of the regulatory regions. Currently -400 +50 from the TSS. (GetRegSeq method) 
		- re-using the data from previous run
		- databases to use (primary and fallback)
		- number of CPU cores (threads) to use for MEME run
		- MEME motif widths (currently minw=16, maxw=23)
		
	#tag EndNote

	#tag Note, Name = Possible improvements
		1. Async sockets? Synchronous ones hang way too often. Alternatively, add reasonable (2-3-5 minutes) 
		   socket timeouts (configurable option) and use other ways to get the result (curl/wget? storing failed URLs and repeating retrieval of them in the end of current search or on the next run) 
		2. Threads for: 
		- phmmer searches
		- sequence retrieval
		- meme
		3. Configurable MEME options:
		- motif size (min, max)
		- palindromic
		- number of motifs? 
		4. The sequences from the query genome aren't used at the moment for running MEME. 
		   Add an option to add those (and make it default for cases with few seqs)
		5. TomTom integration!
		
		6. Check for repeated tags within a TF family (and display a warning/stop processing if any are found).
		7. log all socket errors (both EBI and NCBI servers)
		8. Check for sequence number after filtering and add some seqs back if there are less than mininum (10?)
		9. An option to run a search for a single TF (could be useful on its own and for re-run with adjusted parameters if the defaults change)
		10. A function to work with a folder with genome fragments (useful if standard search fails)
		11. A MEME E-value cut-off? (can improve run times) Alternatively, ignore hits with E-value significantly (x3?) lower that the top one
		12. when comparing motifs, look for CR tag similarity too?
		13. Require hit motif to be present in the query genome region!
		14. phmmer search vs local genome-specific DB. Combine fragments from this search with the ones from UniProt search (10+10?)
		15. Add other DBs for phmmer search: Ensembl Genomes (when there are too few filtered hits)
		
		bugs:
		[fixed] For LysR family ArgP, SftR, AIK14141, AIK14426 with a gap in CR tag region 
		(actually, at the last tag position: QSSQ-, QSSR-, PSSQ-, QPSM-) 
		are processed, although obviously should be left out.
		2. Short seq filter misses short seqs (check LK07_57640, ABR66_04785) .gb seqs saved but not fasta?
		3. CR tags with gaps at ends are missed (should be fixed, but recheck the results with wrong fasta files removed!)
		
	#tag EndNote


	#tag Property, Flags = &h0
		CDSseqs As string
	#tag EndProperty

	#tag Property, Flags = &h0
		CRtags(0) As string
	#tag EndProperty

	#tag Property, Flags = &h0
		DevInfo As string
	#tag EndProperty

	#tag Property, Flags = &h0
		DownstreamSize As Integer = 50
	#tag EndProperty

	#tag Property, Flags = &h0
		GBKfragFlanks As Integer = 20000
	#tag EndProperty

	#tag Property, Flags = &h0
		Genome_fragments As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		HmmSearchMatches(0) As string
	#tag EndProperty

	#tag Property, Flags = &h0
		hts2 As httpsocket
	#tag EndProperty

	#tag Property, Flags = &h0
		HTTPSError As string
	#tag EndProperty

	#tag Property, Flags = &h0
		LengthLimit As Integer = 30000
	#tag EndProperty

	#tag Property, Flags = &h0
		MEMEerr As string
	#tag EndProperty

	#tag Property, Flags = &h0
		MEMEmax As Integer = 30
	#tag EndProperty

	#tag Property, Flags = &h0
		MinORFSize As Integer = 150
	#tag EndProperty

	#tag Property, Flags = &h0
		MPICH As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h0
		operonGap As Integer = 100
	#tag EndProperty

	#tag Property, Flags = &h0
		p2p As Integer = 300
	#tag EndProperty

	#tag Property, Flags = &h0
		Proteins2process As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		ProtNames(0) As string
	#tag EndProperty

	#tag Property, Flags = &h0
		RPcodesCountMin As Integer = 30
	#tag EndProperty

	#tag Property, Flags = &h0
		shellResMax As Integer = 50
	#tag EndProperty

	#tag Property, Flags = &h0
		singleCodeTags As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		TTshellArray(-1) As TTshell
	#tag EndProperty

	#tag Property, Flags = &h0
		UpstreamSize As Integer = 400
	#tag EndProperty

	#tag Property, Flags = &h0
		WebContent As String
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="CDSseqs"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DevInfo"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
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
			Name="singleCodeTags"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
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
			Name="HTTPSError"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Proteins2process"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="WebContent"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DownstreamSize"
			Visible=false
			Group="Behavior"
			InitialValue="50"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="GBKfragFlanks"
			Visible=false
			Group="Behavior"
			InitialValue="20000"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LengthLimit"
			Visible=false
			Group="Behavior"
			InitialValue="3000"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="RPcodesCountMin"
			Visible=false
			Group="Behavior"
			InitialValue="30"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="shellResMax"
			Visible=false
			Group="Behavior"
			InitialValue="50"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="MinORFSize"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="UpstreamSize"
			Visible=false
			Group="Behavior"
			InitialValue="400"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="MEMEmax"
			Visible=false
			Group="Behavior"
			InitialValue="30"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="operonGap"
			Visible=false
			Group="Behavior"
			InitialValue="100"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="p2p"
			Visible=false
			Group="Behavior"
			InitialValue="300"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="MEMEerr"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MPICH"
			Visible=false
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
