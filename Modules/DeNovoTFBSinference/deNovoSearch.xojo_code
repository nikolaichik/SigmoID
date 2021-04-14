#tag Class
Protected Class deNovoSearch
Inherits Thread
	#tag Event
		Sub Run()
		  
		  While Me.isFinished <> True
		    'CheckEmail
		    dim cli, hmmSearchRes, CRtagPositions, table, currentHit as string
		    dim dataForMeme as string
		    dim sh as shell
		    'dim hmmPath, hmmName as string
		    Dim gene as String
		    Dim protname as String
		    dim CrTagsCodes as String
		    dim seqCount as String
		    Dim CrBaseTags(0) As String
		    Dim CrBaseECodes(0) as String
		    Dim CrBaseTags_rp15(0) As String
		    Dim CrBaseECodes_rp15(0) As String
		    Dim CrBaseTags_rp35(0) As String
		    Dim CrBaseECodes_rp35(0) As String
		    Dim CrBaseTags_rp55(0) As String
		    Dim CrBaseECodes_rp55(0) As String
		    Dim CrBaseTags_rp75(0) As String
		    Dim CrBaseECodes_rp75(0) As String
		    Dim CDSfile As folderitem
		    dim resFile as folderitem
		    dim resfile2 as folderitem
		    dim BaseLocation as FolderItem
		    dim instream as TextInputStream
		    dim outStream as TextOutputStream
		    dim theProtName as string
		    Redim DeNovoTFBSinference.TTshellArray(-1)
		    dim ttt,ttt2 as TTshell
		    dim phmmerSearchSeparator as string = "================================================================================================================"
		    dim hitCount,crIndex as integer
		    CDSseqs=""
		    
		    
		    
		    if me.RunTomTom then
		      
		      if TomTomPath<>"" then 
		        deNovoWin.GetTTlibString 'assemble motif library path for running TomTom later
		        deNovoWin.TTtimer.Enabled=True
		      else
		        
		        deNovoWin.rp.writeToWin("Please, provide full path to TomTom: Settings-TomTom field"+EndOfLine.UNIX)
		        
		        return 
		      end
		    End
		    
		    // Read Reference Proteomes accession codes into
		    // separate arrays for each of the four clustering percentages and the full protein DB
		    
		    'rp15
		    BaseLocation=Resources_f.Child("CRtagBase").Child(me.hmmName+"_rp15.crtag")
		    deNovoWin.rp.writeToWin("Loading crtag bases...")
		    If BaseLocation<>Nil Then
		      If BaseLocation.Exists Then
		        instream=BaseLocation.OpenAsTextFile
		      Else
		        deNovoWin.rp.writeToWin("The crtag base doesn't exist, check path: "+BaseLocation.NativePath)
		        isFinished = True
		        exit
		      End
		    Else
		      deNovoWin.rp.writeToWin("Path to the crtag base isn't valid")
		      isFinished = True
		      exit
		    End
		    While Not instream.EOF 
		      App.YieldToNextThread()
		      CrTagsCodes=instream.ReadLine
		      CrTagsCodes=ReplaceAll(CrTagsCodes,".1;",",")
		      CrBaseTags_rp15.append(Trim(NthField(CrTagsCodes," ",1)))
		      CrBaseECodes_rp15.Append(Trim(NthField(CrTagsCodes," ",2)))
		    Wend
		    instream.Close
		    
		    'rp35
		    BaseLocation=Resources_f.Child("CRtagBase").Child(me.hmmName+"_rp35.crtag")
		    
		    If BaseLocation<>Nil Then
		      If BaseLocation.Exists Then
		        instream=BaseLocation.OpenAsTextFile
		      Else
		        deNovoWin.rp.writeToWin("The crtag base doesn't exist, check path: "+BaseLocation.NativePath)
		        isFinished =True
		        Exit
		      End
		    Else
		      deNovoWin.rp.writeToWin("Path to the crtag base isn't valid")
		      isFinished= True
		      exit
		    End
		    While Not instream.EOF 
		      App.YieldToNextThread()
		      CrTagsCodes=instream.ReadLine
		      CrTagsCodes=ReplaceAll(CrTagsCodes,".1;",",")
		      CrBaseTags_rp35.append(Trim(NthField(CrTagsCodes," ",1)))
		      CrBaseECodes_rp35.Append(Trim(NthField(CrTagsCodes," ",2)))
		    Wend
		    instream.Close
		    
		    'rp55
		    BaseLocation=Resources_f.Child("CRtagBase").Child(me.hmmName+"_rp55.crtag")
		    
		    If BaseLocation<>Nil Then
		      If BaseLocation.Exists Then
		        instream=BaseLocation.OpenAsTextFile
		      Else
		        deNovoWin.rp.writeToWin("The crtag base doesn't exist, check path: "+BaseLocation.NativePath)
		        isFinished = True
		        Exit
		      End
		    Else
		      deNovoWin.rp.writeToWin("Path to the crtag base isn't valid")
		      isFinished = True
		      exit
		    End
		    While Not instream.EOF 
		      App.YieldToNextThread()
		      CrTagsCodes=instream.ReadLine
		      CrTagsCodes=ReplaceAll(CrTagsCodes,".1;",",")
		      CrBaseTags_rp55.append(Trim(NthField(CrTagsCodes," ",1)))
		      CrBaseECodes_rp55.Append(Trim(NthField(CrTagsCodes," ",2)))
		    Wend
		    instream.Close
		    
		    'rp75
		    BaseLocation=Resources_f.Child("CRtagBase").Child(me.hmmName+"_rp75.crtag")
		    
		    If BaseLocation<>Nil Then
		      If BaseLocation.Exists Then
		        instream=BaseLocation.OpenAsTextFile
		      Else
		        deNovoWin.rp.writeToWin("The crtag base doesn't exist, check path: "+BaseLocation.NativePath)
		        isFinished = True
		        Exit
		      End
		    Else
		      'MsgBox("Path to the crtag base isn't valid")
		    End
		    While Not instream.EOF 
		      App.YieldToNextThread()
		      CrTagsCodes=instream.ReadLine
		      CrTagsCodes=ReplaceAll(CrTagsCodes,".1;",",")
		      CrBaseTags_rp75.append(Trim(NthField(CrTagsCodes," ",1)))
		      CrBaseECodes_rp75.Append(Trim(NthField(CrTagsCodes," ",2)))
		    Wend
		    instream.Close
		    
		    'full
		    BaseLocation=Resources_f.Child("CRtagBase").Child(me.hmmName+".crtag")
		    
		    If BaseLocation<>Nil Then
		      If BaseLocation.Exists Then
		        instream=BaseLocation.OpenAsTextFile
		      Else
		        deNovoWin.rp.writeToWin("The crtag base doesn't exist, check path: "+BaseLocation.NativePath)
		        isFinished = True
		        Exit
		      End
		    Else
		      'MsgBox("Path to the crtag base isn't valid")
		    End
		    While Not instream.EOF 
		      App.YieldToNextThread()
		      CrTagsCodes=instream.ReadLine
		      CrTagsCodes=ReplaceAll(CrTagsCodes,".1;",",")
		      CrBaseTags.append(Trim(NthField(CrTagsCodes," ",1)))
		      CrBaseECodes.Append(Trim(NthField(CrTagsCodes," ",2)))
		    Wend
		    instream.Close
		    deNovoWin.rp.writeToWin("OK"+EndOfLine.UNIX)
		    
		    'create dictionary for optimal protein codes count determination
		    dim ECodesPool as New Dictionary
		    ECodesPool.Value("rp15")=CrBaseECodes_rp15
		    ECodesPool.Value("rp35")=CrBaseECodes_rp35
		    ECodesPool.Value("rp55")=CrBaseECodes_rp55
		    ECodesPool.Value("rp75")=CrBaseECodes_rp75
		    ECodesPool.Value("full PIR")=CrBaseECodes
		    dim CrBaseTagPool as New Dictionary
		    CrBaseTagPool.Value("rp15")=CrBaseTags_rp15
		    CrBaseTagPool.Value("rp35")=CrBaseTags_rp35
		    CrBaseTagPool.Value("rp55")=CrBaseTags_rp55
		    CrBaseTagPool.Value("rp75")=CrBaseTags_rp75
		    CrBaseTagPool.Value("full PIR")=CrBaseTags
		    //Run hmmsearch and screen the output for CR tags.
		    sh=New Shell
		    sh.mode=1
		    sh.TimeOut=-1
		    
		    'export protein sequences
		    'doesn't work LogoWin.show
		    CDSfile=OutF.Child("CDS.fasta")
		    if CDSfile<>nil then
		      if CDSfile.exists then
		        'Exctraction from local gbk file needs ExportProteins results, so produce dummy output file
		        dim CDSfileTemp as FolderItem = TemporaryFolder.Child("CDStemp.fasta")
		        if CDSfileTemp.Exists then CDSfileTemp.Remove
		        GenomeWin.ExportProteins(CDSfileTemp)
		        deNovoWin.rp.writeToWin("An existing CDS sequences file was found at "+CDSfile.shellpath+" and will be reused."+EndOfLine.UNIX)
		      else
		        deNovoWin.rp.writeToWin("Exporting CDS sequences...")
		        GenomeWin.ExportProteins(CDSfile)
		        deNovoWin.rp.writeToWin(" OK"+EndOfLine.UNIX)
		      end if
		      
		      'store the CDSs as a string for possible further use:
		      instream=CDSfile.OpenAsTextFile
		      
		      if instream<>nil then
		        CDSseqs=replaceall(trim(instream.ReadAll),EndOfLine.unix,"")
		        instream.close
		      end if
		    else
		      deNovoWin.rp.writeToWin("Can't create a file to store CDS sequences, have to abort search")
		      
		    end if
		    alignmentsFile=TemporaryFolder.Child("alignments.table")
		    if alignmentsFile<>nil then
		      if alignmentsFile.exists then
		        alignmentsFile.Delete
		      end if
		      deNovoWin.rp.writeToWin(EndofLine.unix+"Running hmmsearch...")
		      dim HmmSearchPath as string = replace(nhmmerPath,"nhmmer","hmmsearch")
		      
		      cli=HmmSearchPath+" --cut_ga --notextw -A "+alignmentsFile.ShellPath+" "+me.hmmPath+" "+CDSfile.ShellPath
		      
		      sh.execute ("bash --login -c "+chr(34)+cli+chr(34))
		      While sh.IsRunning=true
		        app.YieldToNextThread()
		      wend
		      If sh.errorCode=0 then
		        deNovoWin.rp.writeToWin(" OK"+EndofLine.unix)
		        
		        instream=alignmentsFile.OpenAsTextFile
		        
		        if instream<>nil then         'save hmmsearch results
		          table=trim(instream.ReadAll)
		          instream.close
		          hmmSearchRes=GetCRtags(sh.Result,Table,me.CRtagPositions)
		          'LogoWin.WriteToSTDOUT EndofLine.unix+hmmSearchRes
		          
		          'save HmmSearch results (with CR tags), just in case:
		          resFile=OutF.child("hmmsearch_result_withCRtags.txt")
		          if resFile<>Nil then
		            OutStream = TextOutputStream.Create(resFile)
		            if outStream<>Nil then
		              outstream.Writeline("HMM file used: "+me.hmmPath)
		              outstream.Writeline("CRtag positions used: " +me.CRtagPositions)
		              outstream.Writeline(EndOfLine.unix)
		              outstream.Write(hmmSearchRes)
		              outstream.close
		              
		            end if
		            
		          end if
		          
		        end if
		        
		        
		        
		      else
		        deNovoWin.rp.writeToWin(sh.Result+EndOfLine.UNIX)
		        
		      End If
		    else
		      deNovoWin.rp.writeToWin("Can't create temporary file, have to abort search."+EndofLine.unix)
		      return
		    end if
		    
		    // Run searches and filter out results without the CR tag
		    'names, hit seqs and CR tags are in these arrays:
		    ' me.Protnames()
		    ' HmmSearchMatches()
		    ' CRtags()
		    dim query, res, filteredRes As string
		    dim n as integer
		    deNovoWin.rp.writeToWin("Running online search and genome fragment retrieval.")
		    if ubound(me.Protnames)>10 then
		      deNovoWin.rp.writeToWin(" Relax and have a cup of coffee. Or two..."+EndofLine.unix)
		    else
		      deNovoWin.rp.writeToWin(".."+EndofLine.unix)
		    end if
		    dim id as integer
		    dim genome as cSeqObject=GenomeWin.Genome
		    me.CRTags=DeNovoTFBSinference.CRtags
		    me.Protnames=DeNovoTFBSinference.Protnames
		    dim match as String
		    dim localTFentries(0) as Integer
		    dim multiDomainProteins as New Dictionary
		    'check multiple DNA-binding domains presence (these protein IDs are repeated in hmmsearch output)
		    ' and mark them to be skipped in further processing
		    for n = 1 to UBound(me.ProtNames)
		      if multiDomainProteins.HasKey(me.ProtNames(n)) then
		        multiDomainProteins.Value(me.ProtNames(n)) = True
		      else
		        multiDomainProteins.Value(me.ProtNames(n)) = False
		      end
		    next
		    'for n=1 to ubound(me.CRTags)
		    'localTFentries.Append(-1)
		    'next
		    'id =0
		    'if genome <> nil then
		    'for each f as GBFeature in genome.Features
		    'App.YieldToNextThread()
		    ''if instr(f.FeatureText,"/gene="+protname)>0 then 'specify field to match
		    'for n=1 To ubound(me.CRTags)
		    'match = ""
		    'if CountFields(me.ProtNames(n),"_")>2 then
		    'gene = Nthfield(me.ProtNames(n),"_", CountFields(me.ProtNames(n),"_"))
		    'protname = Nthfield(me.ProtNames(n),"_"+gene,1)
		    'match = "/protein_id="+chr(34)+protname
		    'else
		    'if instr(Nthfield(me.ProtNames(n),"_", 1),".")>0 then
		    'match = "/protein_id="+chr(34)+Nthfield(me.ProtNames(n),"_", 1)
		    'else
		    'match = "/protein_id="+chr(34)+str(Me.Protnames(n))
		    'end
		    '
		    'end
		    '
		    'if instr(f.FeatureText,match)>0 then
		    'localTFentries(n)=id
		    'Continue for f
		    'end
		    'next
		    'id=id+1
		    'next
		    'end
		    For n=1 To ubound(me.CRTags)
		      app.YieldToNextThread()
		      if multiDomainProteins.Value(me.ProtNames(n)) = True then
		        deNovoWin.rp.writeToWin(Str(Me.Protnames(n))+" has multiple DNA-binding domains. Skipping it."+EndOfLine.unix+EndOfLine.unix)
		        Continue
		      end
		      res=""
		      try
		        if me.CRtags(n)="[indel within CR tag region]" then
		          deNovoWin.rp.writeToWin(Str(Me.Protnames(n))+" has an indel within CR tag region. Skipping it."+EndOfLine.unix+EndOfLine.unix)
		          Continue
		        Else
		          dim pName As Variant = me.ProtNames(n)
		          if localTFIndex.HasKey(pName) then
		            deNovoWin.TFfeature=localTFIndex.Value(me.ProtNames(n))
		          else
		            deNovoWin.TFfeature=-1
		          end
		          'if localTFentries(n)<>-1 then
		          'deNovoWin.TFfeature=localTFentries(n)
		          'else
		          'deNovoWin.TFfeature=-1
		          'end
		          'id =0
		          'if genome <> nil then
		          'protname=me.Protnames(n)
		          'gene=protname.Lastfield("_")
		          'if gene <> "" then
		          'protname=replace(protname,"_"+gene,"")
		          'end
		          'deNovoWin.TFfeature=-1
		          'for each f as GBFeature in genome.Features
		          'App.YieldToNextThread()
		          ''if instr(f.FeatureText,"/gene="+protname)>0 then 'specify field to match
		          'dim match as String = "/protein_id="+chr(34)+str(Me.Protnames(n))
		          'if instr(f.FeatureText,match)>0 then
		          'deNovoWin.TFfeature=id
		          'exit
		          'end
		          'id=id+1
		          'next
		          'end
		          //masked in new approach
		          'if RefProtBut.Value then
		          'me.MsgOutput=me.MsgOutput+EndofLine.unix+EndofLine.unix+"Searching Uniprot Reference Proteins with "+me.Protnames(n)+"...")
		          'else
		          'me.MsgOutput=me.MsgOutput+EndofLine.unix+EndofLine.unix+"Searching Uniprot (full) with "+me.Protnames(n)+"...")
		          'end if
		          
		          
		          theProtName=replaceall(me.Protnames(N),":","_") 'OS X precaution
		          '//'resFile=phmmer_results.child(me.Protnames(n)+".raw")
		          'resFile=phmmer_results.child(theProtName+".raw")
		          '
		          'if resFile<>Nil then
		          'if resfile.exists then
		          '//'load existing data
		          'me.MsgOutput=me.MsgOutput+EndOfLine.unix+"phmmer results file exists in the working directory and will be reused"+EndOfLine.unix)
		          '
		          'instream=resFile.OpenAsTextFile
		          'if instream<>nil then
		          'res=instream.ReadAll
		          'instream.close
		          'end if
		          '
		          'else
		          '//'run phmmer search vs primary DB
		          'if RefProtBut.Value then
		          'res=phmmerTextSearch(query, "uniprotrefprot")
		          '//'return 'debug
		          'else
		          'res=phmmerTextSearch(query, "uniprotkb")
		          '//'return 'debug
		          'end if
		          '
		          'if res<>"" then
		          '//'save raw phmmer results
		          'resFile=phmmer_results.child(theProtName+".raw")
		          'if resFile<>Nil then
		          'OutStream = TextOutputStream.Create(resFile)
		          'if outStream<>Nil then
		          'outstream.Write(res)
		          'outstream.close
		          '//'me.MsgOutput=me.MsgOutput+" Done.")
		          '
		          'end if
		          '
		          'end if
		          '
		          'end if
		          'end if
		          '
		          'end if
		          '
		          '// Filter phmmer results
		          'if res<>"" then
		          'FilteredRes=DefineEncoding(WebGetCRtags(Res,CRtagPositions,CRtags(n)),Encodings.ASCII)
		          'else
		          'logowin.WriteToSTDOUT(EndOfLine.UNIX+"phmmer search returned empty result!"+EndOfLine.UNIX)
		          'end if
		          '
		          '//' issue a warning if there's less than 10 or over 100 seqs.
		          'hitcount=CountFields(FilteredRes,phmmerSearchSeparator)-2
		          'if hitcount<0 then hitcount=0
		          '
		          'if hitcount<10 then
		          'me.MsgOutput=me.MsgOutput+" Warning! Too few ("+str(hitcount)+") filtered hits.")
		          'if FallBackCheck.value then
		          'me.MsgOutput=me.MsgOutput+EndOfLine.unix+"Running search vs full UniProt...")
		          '
		          'resFile=phmmer_results.child(me.Protnames(n)+".UniProt_raw")
		          'if resFile<>Nil then
		          'if resfile.exists then
		          '//'load existing data
		          'me.MsgOutput=me.MsgOutput+EndOfLine.unix+"phmmer results file exists in the working directory and will be reused"+EndOfLine.unix)
		          'instream=resFile.OpenAsTextFile
		          'if instream<>nil then
		          'res=instream.ReadAll
		          'instream.close
		          'end if
		          '
		          'else
		          '//'run phmmer search vs fallback DB
		          'res=phmmerTextSearch(query, "uniprotkb")
		          '
		          'if res<>"" then
		          '//'save raw phmmer results
		          'resFile=phmmer_results.child(theProtName+".UniProt_raw")
		          'if resFile<>Nil then
		          'OutStream = TextOutputStream.Create(resFile)
		          'if outStream<>Nil then
		          'outstream.Write(res)
		          'outstream.close
		          '
		          'end if
		          'end if
		          '
		          'end if
		          'end if
		          '
		          '
		          '// Filter phmmer results
		          'if res<>"" then
		          'FilteredRes=DefineEncoding(WebGetCRtags(Res,CRtagPositions,CRtags(n)),Encodings.ASCII)
		          '
		          'hitcount=CountFields(FilteredRes,phmmerSearchSeparator)-2
		          '
		          'me.MsgOutput=me.MsgOutput+" "+str(hitcount)+" filtered hits found.")
		          '
		          '
		          'else
		          'logowin.WriteToSTDOUT(EndOfLine.UNIX+"phmmer search returned empty result!")
		          'end if
		          'hitcount=CountFields(FilteredRes,phmmerSearchSeparator)-2
		          'end if
		          '
		          '
		          'end if
		          'end if
		          '
		          'if hitcount>100 then
		          'me.MsgOutput=me.MsgOutput+" Warning! Over 100 ("+str(hitcount)+") filtered hits.")
		          'if hitCount>300 then
		          'me.MsgOutput=me.MsgOutput+" Only the first 300 will be processed.")
		          'end if
		          'else
		          'me.MsgOutput=me.MsgOutput+str(hitcount)+" filtered hits.")
		          'end if
		          '
		          '
		          '//'save CR tag filtered phmmer results
		          'resFile=phmmer_results.child(theProtName+".filtered")
		          'if resFile<>Nil then
		          'OutStream = TextOutputStream.Create(resFile)
		          'if outStream<>Nil then
		          'outstream.Write(FilteredRes)
		          'outstream.close
		          'me.MsgOutput=me.MsgOutput+" Done.")
		          '
		          'end if
		          '
		          'end if
		          '
		          
		          
		          '
		          // Extract promoter regions from the target operon and its two neighbours
		          
		          'if res<>"" then
		          resfile=Fasta_files.child(theProtName+"_unfiltered.fasta")
		          if resFile<>Nil then
		            if resfile.exists then
		              //'load existing data
		              deNovoWin.rp.writeToWin("a fasta file presumably with genome fragments exists in the working directory and will be reused."+EndOfLine.unix)
		              instream=resFile.OpenAsTextFile
		              if instream<>nil then
		                res=instream.ReadAll
		                instream.close
		                DataForMeme=res
		              end if
		              'resfile2=Fasta_files.child(theProtName+".fasta")
		            else
		              
		              dim FragmentsForAhitF As folderitem
		              
		              FragmentsForAhitF=Genome_fragments.child(theProtName)
		              if NOT FragmentsForAhitF.exists then
		                FragmentsForAhitF.createAsFolder
		              end if
		              
		              if FragmentsForAhitF=Nil then
		                deNovoWin.rp.writeToWin("Can't create a folder "+FragmentsForAhitF.ShellPath+"to store genome fragments"+EndofLine.unix)
		                return
		              end if
		              
		              
		              
		              deNovoWin.rp.writeToWin("Extracting promoter fragments for the operon coding for "+theProtName+" and two neighbour operons."+EndOfLine.unix)
		              
		              
		              'add file existence check somewhere here (or within GetOrthoRegSeq) and reuse existing .gb files
		              
		              
		              //get the list with the right number of accession codes
		              Dim RPname as String = ""
		              Dim codesBase(-1) as String
		              Dim tagBase(-1) As String
		              
		              filteredRes=""
		              for each base as DictionaryEntry in CrBaseTagPool
		                tagBase = base.Value
		                crindex = tagBase.indexof(me.Crtags(n))
		                if crIndex > 0 then
		                  codesBase = ECodesPool.Value(base.Key)
		                  if CountFields(codesBase(crIndex),",")>=RPcodesCountMin  Or instr(base.Key,"full")>0 then
		                    filteredRes=codesBase(crIndex)
		                    RPname=base.Key
		                    exit
		                  end
		                end
		              next
		              
		              'crIndex=CrBaseTags_rp15.indexof(me.Crtags(n))
		              'Dim RPname As String = "rp15"
		              'If crIndex>0 Then
		              'filteredRes=CrBaseECodes_rp15(crindex)
		              'If CountFields(filteredRes,",")<RPcodesCountMin Then          '<-- threshold should be user configurable?
		              'crIndex=CrBaseTags_rp35.indexof(me.Crtags(n))
		              'filteredRes=CrBaseECodes_rp35(crindex)
		              'RPname="rp35"
		              'If CountFields(filteredRes,",")<RPcodesCountMin Then 
		              'crIndex=CrBaseTags_rp55.indexof(me.Crtags(n))
		              'filteredRes=CrBaseECodes_rp55(crindex)
		              'RPname="rp55"
		              'If CountFields(filteredRes,",")<RPcodesCountMin Then 
		              'crIndex=CrBaseTags_rp75.indexof(me.Crtags(n))
		              'filteredRes=CrBaseECodes_rp75(crindex)
		              'RPname="rp75"
		              'If CountFields(filteredRes,",")<RPcodesCountMin Then 
		              'crIndex=CrBaseTags.indexof(me.Crtags(n))
		              'filteredRes=CrBaseECodes(crindex)
		              'RPname="full PIR"
		              'End If
		              'End If
		              'End If
		              'End If
		              '
		              'Else
		              'crIndex=CrBaseTags_rp35.indexof(me.Crtags(n))
		              'If crIndex>0 Then
		              'filteredRes=CrBaseECodes_rp35(crindex)
		              'RPname="rp35"
		              'If CountFields(filteredRes,",")<RPcodesCountMin Then 
		              'crIndex=CrBaseTags_rp55.indexof(me.Crtags(n))
		              'filteredRes=CrBaseECodes_rp55(crindex)
		              'RPname="rp55"
		              'If CountFields(filteredRes,",")<RPcodesCountMin Then 
		              'crIndex=CrBaseTags_rp75.indexof(me.Crtags(n))
		              'filteredRes=CrBaseECodes_rp75(crindex)
		              'RPname="rp75"
		              'If CountFields(filteredRes,",")<RPcodesCountMin Then 
		              'crIndex=CrBaseTags.indexof(me.Crtags(n))
		              'filteredRes=CrBaseECodes(crindex)
		              'RPname="full PIR"
		              'End If
		              'End If
		              'End If
		              'Else
		              '
		              'crIndex=CrBaseTags_rp55.indexof(me.CRtags(n))
		              'If crIndex>0 Then
		              'filteredRes=CrBaseECodes_rp55(crindex)
		              'RPname="rp55"
		              'If CountFields(filteredRes,",")<RPcodesCountMin Then 
		              'crIndex=CrBaseTags_rp75.indexof(me.CRtags(n))
		              'filteredRes=CrBaseECodes_rp75(crindex)
		              'RPname="rp75"
		              'If CountFields(filteredRes,",")<RPcodesCountMin Then 
		              'crIndex=CrBaseTags.indexof(me.CRtags(n))
		              'filteredRes=CrBaseECodes(crindex)
		              'RPname="full PIR"
		              'End If
		              'End If
		              '
		              'Else
		              'crIndex=CrBaseTags_rp75.indexof(me.CRtags(n))
		              'If crIndex>0 Then
		              'filteredRes=CrBaseECodes_rp75(crindex)
		              'RPname="rp75"
		              'If CountFields(filteredRes,",")<RPcodesCountMin Then 
		              'crIndex=CrBaseTags.indexof(me.CRtags(n))
		              'If crIndex>0 Then
		              'filteredRes=CrBaseECodes(crindex)
		              'RPname="full PIR"
		              'End If
		              'End If
		              'End If
		              '
		              'End If
		              '
		              'End If
		              '
		              'End If
		              
		              If crIndex>0 Then
		                #If DebugBuild
		                  deNovoWin.rp.writeToWin(Str(CountFields(filteredRes,","))+" accessions from "+RPname+" to process... ")
		                #Else
		                  deNovoWin.rp.writeToWin(Str(CountFields(filteredRes,","))+" seqs to download..."+EndOfLine.unix)
		                #EndIf
		              Else
		                deNovoWin.rp.writeToWin("CRtag "+me.Crtags(n)+" was not found in the local bases (protein seq accession "+theProtName+")"+EndOfLine.unix)
		                Continue For n
		              End If
		              
		              
		              DataForMeme=GetOrthoRegSeq(FilteredRes, FragmentsForAhitF)
		            end if
		            
		            
		            
		            
		            
		            if dataForMeme<>"" then
		              
		              // Remove extra (repetitive/too close) seqs
		              ' leave one seq per species,
		              ' or one seq per genus if too many seqs
		              
		              ' Save unfiltered UPS fragments
		              resfile=Fasta_files.child(theProtName+"_unfiltered.fasta")
		              if resfile<>nil then
		                OutStream = TextOutputStream.Create(resFile)
		                if outStream<>Nil then
		                  outstream.Write(DataForMeme)
		                  outstream.close
		                  'me.MsgOutput=me.MsgOutput+" Done.")
		                  
		                end if
		                
		              else
		                deNovoWin.rp.writeToWin("Can't create a file to store superpromoters around the genes coding for "+me.Protnames(n)+"."+EndofLine.unix)
		              end if
		              
		              deNovoWin.rp.writeToWin("Done extracting genome fragments. ")
		              
		              // Save UPS fragments used for MEME run
		              
		              
		              
		              deNovoWin.rp.writeToWin(deNovoWin.CountSeqs(dataForMeme)+" fragments collected."+EndofLine.unix)
		              
		              
		              resfile2=Fasta_files.child(me.Protnames(n)+"_CDhit_filtered.fasta")
		              
		              if resfile2<>nil then
		                
		                If CountFields(DataForMeme,">")>MEMEmax Then 'too many seqs - reduce the number!
		                  
		                  'run cd-hit if present
		                  dim clustered as string
		                  'clustered=CDHitClustering(resFile,resFile2)
		                  clustered=deNovoWin.MeshClustering(resFile,resFile2)
		                  if clustered<>"" then 'empty string can be returned in case of an error
		                    DataForMeme=clustered
		                  end if
		                  
		                  If CountFields(DataForMeme,">")>MEMEmax Then 'Still too many seqs - remove redundant species
		                    DataForMeme=RemoveRedundantSeqs(DataForMeme,False)
		                    seqCount=str(deNovoWin.CountSeqs(dataForMeme))
		                    deNovoWin.rp.writeToWin(EndOfLine.Unix +seqCount+" fragments after removing redundant species.")
		                  End If
		                  
		                  If CountFields(DataForMeme,">")>MEMEmax Then 'Still too many seqs - remove redundant genera
		                    DataForMeme=RemoveRedundantSeqs(DataForMeme,true)
		                    seqCount=str(deNovoWin.CountSeqs(dataForMeme))
		                    deNovoWin.rp.writeToWin(Str(EndOfLine.Unix+seqCount+" fragments after removing redundant genera."))
		                  End If
		                  
		                  resfile2=Fasta_files.child(me.Protnames(n)+".fasta")
		                  OutStream = TextOutputStream.Create(resFile2)
		                  if outStream<>Nil then
		                    outstream.Write(DataForMeme)
		                    outstream.close
		                    'deNovoWin.rp.writeToWin(" Done.")
		                    
		                  end if
		                  
		                else 'countfields(DataForMeme,">")>30
		                  resfile2=resFile
		                  
		                end if 'countfields(DataForMeme,">")>30
		                
		              else 'resfile2<>nil
		                deNovoWin.rp.writeToWin("Can't create a file to store superpromoters around the genes coding for "+me.Protnames(n)+"."+EndofLine.unix)
		                
		              end if 'resfile2<>nil
		              
		            else
		              deNovoWin.rp.writeToWin(EndOfLine.unix+"No data to run meme for "+me.Protnames(n)+".")
		              
		            end if 'dataForMeme<>""
		            
		            
		            
		            
		            
		            // Run MEME in two modes
		            dim memeF,f1 as folderitem
		            
		            memeF=MEME_results.child(Me.Protnames(n))
		            
		            deNovoWin.rp.writeToWin(EndOfLine.UNIX)
		            
		            If memeF <> Nil Then
		              If memeF.Exists Then
		                deNovoWin.rp.writeToWin("MEME results folder exists, so MEME will not be run. Remove this folder ("+memeF.shellpath+") and re-run search procedure if you want to re-generate the  results"+EndOfLine.unix)
		                
		              else
		                memeF.createAsFolder
		                
		                dim opt as string
		                dim ErrCode as integer
		                
		                '-p option is set in DenovoTFBSinference.meme
		                
		                'if CPUcores>1 then
		                'opt=" -p " + str(CPUcores)  'for parallelised meme
		                ''opt=" -p 2"
		                'end if
		                
		                'doesn't work dim mWidth as string=me.HmmList.Cell(me.HmmList.ListIndex,5) 'motif widths are stored in the table (and can be changed here)
		                
		                opt=opt+" -dna -minw "+ Trim(NthField(mWidth,"-",1))
		                opt=opt+" -maxw "+ trim(nthfield(mWidth,"-",2))
		                
		                
		                '[-pal]            force palindromes (requires -dna)
		                if me.palindromic=True then
		                  ' me.HmmList.Cell(me.HmmList.ListIndex,4)="yes" then
		                  opt=opt+" -pal"
		                end if
		                
		                '[-revcomp]        allow sites on + or - DNA strands
		                'if GivenStrandBox.Value then
		                'else
		                opt=opt+" -revcomp"
		                'end if
		                
		                '[-nmotifs <nmotifs>]    maximum number of motifs to find
		                opt=opt+" -nmotifs 5"'+MotifNoPopup.Text
		                
		                
		                
		                'Run MEME in Zero or One per sequence' mode:
		                f1=memeF.child("Zoops")
		                FixPath4Windows(MEMEf)
		                
		                if resfile2<>Nil then
		                  if f1<>NIL then
		                    if f1.Exists then
		                      f1.Delete
		                    end if
		                    
		                    'LogoWin.show
		                    deNovoWin.rp.writeToWin("Running MEME in zoops mode...")
		                    
		                    ErrCode=MEME(resfile2, f1, opt+" -mod zoops")
		                    'sh=New Shell
		                    'sh.mode=0
		                    'sh.TimeOut=-1
		                    dim zclean, aclean as boolean 
		                    If ErrCode=0 then
		                      deNovoWin.rp.writeToWin(" done."+EndofLine.unix)
		                      
		                      'create TomTom thread
		                      ttt = new TTshell(f1.child("meme.txt"))
		                      zclean=true
		                    else
		                      deNovoWin.rp.writeToWin(" failed."+EndOfLine.unix)
		                      deNovoWin.rp.writeToWin(MEMEerr+EndOfLine.unix)
		                      zclean=False
		                    end if
		                    
		                    
		                    'Run MEME in Anr mode:
		                    f1=memeF.child("Anr")
		                    FixPath4Windows(f1)
		                    
		                    if f1<>NIL then
		                      if f1.Exists then
		                        f1.Delete
		                      end if
		                      
		                      'LogoWin.show
		                      deNovoWin.rp.writeToWin("Running MEME in anr mode...")
		                      
		                      ErrCode=MEME(resfile2, f1, opt+" -mod anr")
		                      If ErrCode=0 then
		                        deNovoWin.rp.writeToWin(" done."+EndofLine.unix)
		                        'create TomTom thread
		                        ttt2 = new TTshell(f1.child("meme.txt"))
		                        aclean=true
		                      else
		                        deNovoWin.rp.writeToWin(" failed."+EndofLine.unix)
		                        deNovoWin.rp.writeToWin(MEMEerr+EndOfLine.unix)
		                        aclean=false
		                      end if
		                      if me.RunChipMunk then
		                        dim errcodecm as Integer
		                        ErrCodeCM=ChIPmunk(resfile2, f1.child("ChIPmunk-result"))
		                        if errcodecm=0 then
		                          deNovoWin.rp.writeToWin(" done."+EndofLine.unix)
		                        end
		                      end
		                      
		                      if me.RunTomTom then 
		                        'launch TomTom threads
		                        if ttt<>NIL then
		                          TTshellArray.Append ttt
		                          TTshellArray(UBound(TTshellArray)).RunTomTom
		                          TTthreadsRunning=TTthreadsRunning+1
		                          ttt = new TTshell(f1.child("meme.txt")) 'remove reference to array element
		                        end if
		                        if ttt<>NIL then
		                          TTshellArray.Append ttt2
		                          TTshellArray(UBound(TTshellArray)).RunTomTom
		                          TTthreadsRunning=TTthreadsRunning+1
		                          ttt2 = new TTshell(f1.child("meme.txt"))
		                        end if
		                        
		                        
		                      end if
		                      
		                      deNovoWin.rp.writeToWin("Results written to "+outf.Shellpath+EndOfLine.Unix+EndOfLine.Unix)
		                      
		                      
		                    else
		                      deNovoWin.rp.writeToWin("Can't create MEME output folder!")
		                      'return -1
		                    end if
		                    
		                  else
		                    
		                  End If
		                  resfile2=new FolderItem
		                else
		                  deNovoWin.rp.writeToWin(EndofLine.unix+"Not running MEME (empty file)")
		                  
		                End If
		                
		              end if
		              
		              
		            else
		              deNovoWin.rp.writeToWin(EndOfLine.unix+"Can't create a folder to store MEME results for "+me.Protnames(n)+".")
		              
		            end if
		          else
		            deNovoWin.rp.writeToWin(EndOfLine.unix+"Can't create a folder to store genome fragments for "+me.Protnames(n)+".")
		          end if
		          'end if
		          
		          
		          
		          '
		          'else
		          'me.MsgOutput=me.MsgOutput+" phmmer search error!")
		          'end if
		        end if
		      catch OutOfBoundsException
		        deNovoWin.rp.writeToWin(EndofLine.unix+"OutOfBounds exception occured during "+me.CRtags(n)+" tag processing."+EndofLine.unix)
		      end try
		    next
		    
		    
		    'deNovoWin.rp.writeToWin("All searches completed."+EndofLine.unix)
		    '
		    'deNovoWin.rp.writeToWin(EndofLine.unix+"TomTomThreadArray size: "+str(Ubound(TTthreadArray))+EndofLine.unix))
		    '
		    '
		    if me.RunTomTom then 
		      deNovoWin.TTtimer.Mode = Timer.ModeMultiple
		      if deNovoWin.TTtimer.Enabled = False then
		        deNovoWin.TTtimer.Enabled = True
		      end
		      deNovoWin.rp.writeToWin(EndofLine.unix+" TomTom tasks are still running. Don't quit SigmoID or repeat de novo search until these threads are finished."+EndofLine.unix)
		      
		      While deNovoWin.TTtimer.Enabled = True
		        app.YieldToNextThread()
		      wend
		      deNovoWin.rp.writeToWin("Press 'Save log' button to proceed."+EndofLine.unix)
		    else 
		      deNovoWin.rp.writeToWin("Press 'Save log' button to proceed."+EndofLine.unix)
		    end if
		    
		    // Reutilise data from incomplete searches!
		    me.isFinished =True
		  wend
		  Exception err
		    
		    if err isa IOException then
		      deNovoWin.rp.writeToWin(EndOfLine.unix+"IOException has occurred.")
		      deNovoWin.rp.writeToWin(EndOfLine.unix+"ErrorNumber: "+str(err.ErrorNumber))
		      deNovoWin.rp.writeToWin(EndOfLine.unix+"Message: "+err.Message)
		      deNovoWin.rp.writeToWin(EndOfLine.unix+"Reason: "+err.Reason)
		    end if
		    ExceptionHandler(err, "deNovoWin:RunButton", true)
		    
		End Sub
	#tag EndEvent

	#tag Event
		Sub UserInterfaceUpdate(data() as Dictionary)
		  for each update as Dictionary in data
		    if update.HasKey("Message") then
		      deNovoWin.LoggingOutput.AppendText(update.Value("Message"))
		      if deNovoWin.mouseInWin=false and deNovoWin.LoggingOutput.Visible=True then
		        deNovoWin.LoggingOutput.ScrollPosition=deNovoWin.LoggingOutput.LineNumber(Len(deNovoWin.LoggingOutput.Text))
		      end
		    end
		  next
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub writeToWin(msg as string)
		  Me.AddUserInterfaceUpdate("Message":msg)
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		AlignmentsFile As folderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		CRtagPositions As string
	#tag EndProperty

	#tag Property, Flags = &h0
		CRTags(0) As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Fasta_Files As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		Genome_fragments As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		hmmlist As Listbox
	#tag EndProperty

	#tag Property, Flags = &h0
		hmmName As string
	#tag EndProperty

	#tag Property, Flags = &h0
		hmmPath As string
	#tag EndProperty

	#tag Property, Flags = &h0
		isFinished As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		MEME_results As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		mWidth As string
	#tag EndProperty

	#tag Property, Flags = &h0
		OutF As folderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		Palindromic As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Proteins2process As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		ProtNames(0) As string
	#tag EndProperty

	#tag Property, Flags = &h0
		RunChipMunk As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		RunTomTom As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		TomTomFinished As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		TTthreadsRunning As Integer = 0
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
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
			Name="Priority"
			Visible=true
			Group="Behavior"
			InitialValue="5"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="StackSize"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="CRtagPositions"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="hmmName"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="hmmPath"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="mWidth"
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
			Name="RunChipMunk"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="RunTomTom"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TomTomFinished"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TTthreadsRunning"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Palindromic"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="isFinished"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
