#tag Class
Protected Class RunPipelineThread
Inherits Thread
	#tag Event
		Sub Run()
		  'a fix for wrong log pane height on mac:
		  
		  
		  CheckEmail
		  
		  dim cli, hmmSearchRes, CRtagPositions, table, currentHit as string
		  dim dataForMeme as string
		  dim sh as shell
		  'dim hmmPath, hmmName as string
		  Dim gene as String
		  Dim protname as String
		  dim CrTagsCodes as String
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
		  
		  
		  deNovoWin.OutputTimer.Mode = Timer.ModeMultiple
		  deNovoWin.OutputTimer.Enabled = True
		  
		  
		  if me.RunTomTom then
		    'if RunTomTomBox.Value then
		    if TomTomPath<>"" then 
		      deNovoWin.GetTTlibString 'assemble motif library path for running TomTom later
		    else
		      
		      Me.MsgOutput=Me.MsgOutput+("Please, provide full path to TomTom: Settings-TomTom field")+EndOfLine.UNIX
		      
		      return 
		    end
		  End
		  
		  // Read Reference Proteomes accession codes into
		  // separate arrays for each of the four clustering percentages and the full protein DB
		  
		  'rp15
		  BaseLocation=Resources_f.Child("CRtagBase").Child(me.hmmName+"_rp15.crtag")
		  
		  If BaseLocation<>Nil Then
		    If BaseLocation.Exists Then
		      instream=BaseLocation.OpenAsTextFile
		    Else
		      'MsgBox("The crtag base doesn't exist, check path: "+BaseLocation.NativePath)
		      Exit
		    End
		  Else
		    'MsgBox("Path to the crtag base isn't valid")
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
		      'MsgBox("The crtag base doesn't exist, check path: "+BaseLocation.NativePath)
		      Exit
		    End
		  Else
		    'MsgBox("Path to the crtag base isn't valid")
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
		      me.MsgOutput=me.MsgOutput+"The crtag base doesn't exist, check path: "+BaseLocation.NativePath
		      Exit
		    End
		  Else
		    'MsgBox("Path to the crtag base isn't valid")
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
		      'MsgBox("The crtag base doesn't exist, check path: "+BaseLocation.NativePath)
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
		      'MsgBox("The crtag base doesn't exist, check path: "+BaseLocation.NativePath)
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
		  
		  
		  //Run hmmsearch and screen the output for CR tags.
		  sh=New Shell
		  sh.mode=0
		  sh.TimeOut=-1
		  
		  'export protein sequences
		  'doesn't work LogoWin.show
		  CDSfile=OutF.Child("CDS.fasta")
		  if CDSfile<>nil then
		    if CDSfile.exists then
		      'doesn't workt me.MsgOutput=me.MsgOutput+EndofLine.unix+EndofLine.unix+"An existing CDS sequences file was found at "+CDSfile.shellpath+" and will be reused.")
		      me.MsgOutput=me.MsgOutput+"An existing CDS sequences file was found at "+CDSfile.shellpath+" and will be reused."+EndOfLine.UNIX
		    else
		      'doesn't work me.MsgOutput=me.MsgOutput+EndOfLine.unix+EndOfLine.unix+"Exporting CDS sequences...")
		      
		      me.MsgOutput=me.MsgOutput+"Exporting CDS sequences..."
		      
		      GenomeWin.ExportProteins(CDSfile)
		      'doesn't work me.MsgOutput=me.MsgOutput+" OK")
		      me.MsgOutput=me.MsgOutput+" OK"+EndOfLine.UNIX
		    end if
		    
		    'store the CDSs as a string for possible further use:
		    instream=CDSfile.OpenAsTextFile
		    
		    if instream<>nil then
		      CDSseqs=replaceall(trim(instream.ReadAll),EndOfLine.unix,"")
		      instream.close
		    end if
		  else
		    'doesn't work msgbox "Can't create a file to store CDS sequences, have to abort search"
		    
		  end if
		  alignmentsFile=TemporaryFolder.Child("alignments.table")
		  if alignmentsFile<>nil then
		    if alignmentsFile.exists then
		      alignmentsFile.Delete
		    end if
		    ' doesn't work me.MsgOutput=me.MsgOutput+EndofLine.unix+"Running hmmsearch...")
		    me.MsgOutput=me.MsgOutput+EndofLine.unix+"Running hmmsearch..."
		    dim HmmSearchPath as string = replace(nhmmerPath,"nhmmer","hmmsearch")
		    
		    cli=HmmSearchPath+" --cut_ga --notextw -A "+alignmentsFile.ShellPath+" "+me.hmmPath+" "+CDSfile.ShellPath
		    
		    sh.execute ("bash --login -c "+chr(34)+cli+chr(34))
		    If sh.errorCode=0 then
		      'doesn't work me.MsgOutput=me.MsgOutput+" OK"+EndofLine.unix)
		      me.MsgOutput=me.MsgOutput+" OK"+EndofLine.unix
		      
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
		      me.MsgOutput=me.MsgOutput+sh.Result
		      
		    End If
		  else
		    'doesn't work me.MsgOutput=me.MsgOutput+EndofLine.unix+"Can't create temporary file, have to abort search.")
		    me.MsgOutput=me.MsgOutput+"Can't create temporary file, have to abort search."+EndofLine.unix
		    return
		  end if
		  
		  // Run searches and filter out results without the CR tag
		  'names, hit seqs and CR tags are in these arrays:
		  ' me.Protnames()
		  ' HmmSearchMatches()
		  ' CRtags()
		  dim query, res, filteredRes As string
		  dim n as integer
		  
		  'doesn't work me.MsgOutput=me.MsgOutput+EndofLine.unix+"Running online search and genome fragment retrieval.")
		  me.MsgOutput=me.MsgOutput+"Running online search and genome fragment retrieval."+EndofLine.unix
		  if ubound(me.Protnames)>10 then
		    me.MsgOutput=me.MsgOutput+" Relax and have a cup of coffee. Or two..."+EndofLine.unix
		  else
		    me.MsgOutput=me.MsgOutput+".."
		  end if
		  dim id as integer
		  dim genome as cSeqObject=GenomeWin.Genome
		  me.CRTags=DeNovoTFBSinference.CRtags
		  me.Protnames=DeNovoTFBSinference.Protnames
		  
		  For n=1 To ubound(me.Protnames)
		    app.YieldToNextThread()
		    res=""
		    
		    if me.CRtags(n)="[indel within CR tag region]" then
		      me.MsgOutput=me.MsgOutput+me.Protnames(n)+" has an indel within CR tag region. Skipping it."+EndofLine.unix
		    else
		      id =0
		      if genome <> nil then
		        protname=me.Protnames(n)
		        gene=protname.Lastfield("_")
		        if gene <> "" then
		          protname=replace(protname,"_"+gene,"")
		        end
		        for each f as GBFeature in genome.Features
		          App.YieldToNextThread()
		          if instr(f.FeatureText,protname)>0 then
		            deNovoWin.TFfeature=id
		            exit
		          end
		          id=id+1
		        next
		      end
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
		          me.MsgOutput=me.MsgOutput+"a fasta file presumably with genome fragments exists in the working directory and will be reused."+EndOfLine.unix
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
		            me.MsgOutput=me.MsgOutput+ "Can't create a folder "+FragmentsForAhitF.ShellPath+"to store genome fragments"+EndofLine.unix
		            return
		          end if
		          
		          
		          
		          me.MsgOutput=me.MsgOutput+"Extracting promoter fragments for the operon coding for "+theProtName+" and two neighbour operons."+EndOfLine.unix
		          
		          
		          'add file existence check somewhere here (or within GetOrthoRegSeq) and reuse existing .gb files
		          
		          
		          //get the list with the right number of accession codes
		          crIndex=CrBaseTags_rp15.indexof(me.Crtags(n))
		          Dim RPname As String = "rp15"
		          If crIndex>0 Then
		            filteredRes=CrBaseECodes_rp15(crindex)
		            If CountFields(filteredRes,",")<20 Then          '<-- threshold should be user configurable?
		              crIndex=CrBaseTags_rp35.indexof(me.Crtags(n))
		              filteredRes=CrBaseECodes_rp35(crindex)
		              RPname="rp35"
		              If CountFields(filteredRes,",")<20 Then 
		                crIndex=CrBaseTags_rp55.indexof(me.Crtags(n))
		                filteredRes=CrBaseECodes_rp55(crindex)
		                RPname="rp55"
		                If CountFields(filteredRes,",")<20 Then 
		                  crIndex=CrBaseTags_rp75.indexof(me.Crtags(n))
		                  filteredRes=CrBaseECodes_rp75(crindex)
		                  RPname="rp75"
		                  If CountFields(filteredRes,",")<20 Then 
		                    crIndex=CrBaseTags.indexof(me.Crtags(n))
		                    filteredRes=CrBaseECodes(crindex)
		                    RPname="full PIR"
		                  End If
		                End If
		              End If
		            End If
		            
		          Else
		            crIndex=CrBaseTags_rp35.indexof(me.Crtags(n))
		            If crIndex>0 Then
		              filteredRes=CrBaseECodes_rp35(crindex)
		              RPname="rp35"
		              If CountFields(filteredRes,",")<20 Then 
		                crIndex=CrBaseTags_rp55.indexof(me.Crtags(n))
		                filteredRes=CrBaseECodes_rp55(crindex)
		                RPname="rp55"
		                If CountFields(filteredRes,",")<20 Then 
		                  crIndex=CrBaseTags_rp75.indexof(me.Crtags(n))
		                  filteredRes=CrBaseECodes_rp75(crindex)
		                  RPname="rp75"
		                  If CountFields(filteredRes,",")<20 Then 
		                    crIndex=CrBaseTags.indexof(me.Crtags(n))
		                    filteredRes=CrBaseECodes(crindex)
		                    RPname="full PIR"
		                  End If
		                End If
		              End If
		            Else
		              
		              crIndex=CrBaseTags_rp55.indexof(me.CRtags(n))
		              If crIndex>0 Then
		                filteredRes=CrBaseECodes_rp55(crindex)
		                RPname="rp55"
		                If CountFields(filteredRes,",")<20 Then 
		                  crIndex=CrBaseTags_rp75.indexof(me.CRtags(n))
		                  filteredRes=CrBaseECodes_rp75(crindex)
		                  RPname="rp75"
		                  If CountFields(filteredRes,",")<20 Then 
		                    crIndex=CrBaseTags.indexof(me.CRtags(n))
		                    filteredRes=CrBaseECodes(crindex)
		                    RPname="full PIR"
		                  End If
		                End If
		                
		              Else
		                crIndex=CrBaseTags_rp75.indexof(me.CRtags(n))
		                If crIndex>0 Then
		                  filteredRes=CrBaseECodes_rp75(crindex)
		                  RPname="rp75"
		                  If CountFields(filteredRes,",")<20 Then 
		                    crIndex=CrBaseTags.indexof(me.CRtags(n))
		                    If crIndex>0 Then
		                      filteredRes=CrBaseECodes(crindex)
		                      RPname="full PIR"
		                    End If
		                  End If
		                End If
		                
		              End If
		              
		            End If
		            
		          End If
		          
		          If crIndex>0 Then
		            #If DebugBuild
		              me.MsgOutput=me.MsgOutput+Str(CountFields(filteredRes,","))+" accessions from "+RPname+" to process... "+EndofLine.unix
		            #Else
		              me.MsgOutput=me.MsgOutput+Str(CountFields(filteredRes,","))+" seqs to download..."+EndOfLine.unix
		            #EndIf
		          Else
		            me.MsgOutput=me.MsgOutput+"CRtag "+me.Crtags(n)+" was not found in the local bases (protein seq accession "+theProtName+")"+EndOfLine.unix
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
		            me.MsgOutput=me.MsgOutput+"Can't create a file to store superpromoters around the genes coding for "+me.Protnames(n)+"."+EndofLine.unix
		            
		            
		            
		          end if
		          
		          
		          
		          
		          me.MsgOutput=me.MsgOutput+" Done extracting genome fragments."+EndOfLine.unix
		          
		          // Save UPS fragments used for MEME run
		          
		          
		          
		          
		          
		          
		          me.MsgOutput=me.MsgOutput+deNovoWin.CountSeqs(dataForMeme)+" genome fragments extracted."+EndofLine.unix
		          
		          
		          resfile2=Fasta_files.child(me.Protnames(n)+"_CDhit_filtered.fasta")
		          
		          if resfile2<>nil then
		            
		            if countfields(DataForMeme,">")>30 then 'too many seqs - reduce the number!
		              
		              'run cd-hit if present
		              dim clustered as string
		              'clustered=CDHitClustering(resFile,resFile2)
		              clustered=deNovoWin.MeshClustering(resFile,resFile2)
		              if clustered<>"" then 'empty string can be returned in case of an error
		                DataForMeme=clustered
		              end if
		              
		              'use genus and then species filtering anyway, as cd-hit filtering is far from perfect
		              DataForMeme=RemoveRedundantSeqs(DataForMeme,false)
		              'LogoWin.WriteToSTDOUT(EndOfLine.Unix + CountSeqs(dataForMeme)+" fragments after removing redundant species.")
		              
		              DataForMeme=RemoveRedundantSeqs(DataForMeme,true)
		              'LogoWin.WriteToSTDOUT(EndOfLine.Unix + CountSeqs(dataForMeme)+" fragments after removing redundant genera.")
		              
		              resfile2=Fasta_files.child(me.Protnames(n)+".fasta")
		              OutStream = TextOutputStream.Create(resFile2)
		              if outStream<>Nil then
		                outstream.Write(DataForMeme)
		                outstream.close
		                'me.MsgOutput=me.MsgOutput+" Done.")
		                
		              end if
		              
		            else 'countfields(DataForMeme,">")>30
		              resfile2=resFile
		              
		            end if 'countfields(DataForMeme,">")>30
		            
		          else 'resfile2<>nil
		            me.MsgOutput=me.MsgOutput+"Can't create a file to store superpromoters around the genes coding for "+me.Protnames(n)+"."+EndofLine.unix
		            
		          end if 'resfile2<>nil
		          
		        else
		          me.MsgOutput=me.MsgOutput+EndOfLine.unix+"No data to run meme for "+me.Protnames(n)+"."
		          
		        end if 'dataForMeme<>""
		        
		        
		        
		        
		        
		        // Run MEME in two modes
		        dim memeF,f1 as folderitem
		        
		        memeF=MEME_results.child(me.Protnames(n))
		        
		        If memeF <> Nil Then
		          If memeF.Exists Then
		            me.MsgOutput=me.MsgOutput+"MEME results folder exists, so MEME will not be run. Remove this folder ("+memeF.shellpath+") and re-run this procedure if you want to re-generate the  results"+EndOfLine.unix
		            
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
		                me.MsgOutput=me.MsgOutput+"Running MEME in zoops mode..."
		                
		                ErrCode=MEME(resfile2, f1, opt+" -mod zoops")
		                'sh=New Shell
		                'sh.mode=0
		                'sh.TimeOut=-1
		                dim zclean, aclean as boolean 
		                If ErrCode=0 then
		                  me.MsgOutput=me.MsgOutput+" done."+EndofLine.unix
		                  
		                  'create TomTom thread
		                  ttt = new TTshell(f1.child("meme.txt"))
		                  zclean=true
		                else
		                  me.MsgOutput=me.MsgOutput+" failed."+EndofLine.unix
		                  zclean=false
		                end if
		                
		                
		                'Run MEME in Anr mode:
		                f1=memeF.child("Anr")
		                FixPath4Windows(f1)
		                
		                if f1<>NIL then
		                  if f1.Exists then
		                    f1.Delete
		                  end if
		                  
		                  'LogoWin.show
		                  me.MsgOutput=me.MsgOutput+"Running MEME in anr mode..."
		                  
		                  ErrCode=MEME(resfile2, f1, opt+" -mod anr")
		                  If ErrCode=0 then
		                    
		                    me.MsgOutput=me.MsgOutput+" done."+EndofLine.unix
		                    'create TomTom thread
		                    ttt2 = new TTshell(f1.child("meme.txt"))
		                    aclean=true
		                  else
		                    me.MsgOutput=me.MsgOutput+" failed."+EndofLine.unix
		                    aclean=false
		                  end if
		                  if me.RunChipMunk then
		                    dim errcodecm as Integer
		                    ErrCodeCM=ChIPmunk(resfile2, f1.child("ChIPmunk-result"))
		                    if errcodecm=0 then
		                      me.MsgOutput=me.MsgOutput+" done."+EndofLine.unix
		                    end
		                  end
		                  
		                  if me.RunTomTom then 
		                    'launch TomTom threads
		                    if ttt<>NIL then
		                      TTshellArray.Append ttt
		                      TTshellArray(UBound(TTshellArray)).RunTomTom
		                      ttt = new TTshell(f1.child("meme.txt")) 'remove reference to array element
		                    end if
		                    if ttt<>NIL then
		                      TTshellArray.Append ttt2
		                      TTshellArray(UBound(TTshellArray)).RunTomTom
		                      ttt2 = new TTshell(f1.child("meme.txt"))
		                    end if
		                    
		                    
		                  end if
		                  
		                  me.MsgOutput=me.MsgOutput+EndofLine+"Results written to "+outf.Shellpath
		                  
		                  
		                else
		                  me.MsgOutput=me.MsgOutput+"Can't create MEME output folder!"
		                  'return -1
		                end if
		                
		              else
		                
		              End If
		              resfile2=new FolderItem
		            else
		              me.MsgOutput=me.MsgOutput+EndofLine.unix+"Not running MEME (empty file)"
		              
		            End If
		            
		          end if
		          
		          
		        else
		          me.MsgOutput=me.MsgOutput+EndOfLine.unix+"Can't create a folder to store MEME results for "+me.Protnames(n)+"."
		          
		        end if
		      else
		        me.MsgOutput=me.MsgOutput+EndOfLine.unix+"Can't create a folder to store genome fragments for "+me.Protnames(n)+"."
		      end if
		      'end if
		      
		      
		      
		      '
		      'else
		      'me.MsgOutput=me.MsgOutput+" phmmer search error!")
		      'end if
		    end if
		  next
		  
		  resFile=OutF.child("Search.log")
		  if resFile<>Nil then
		    OutStream = TextOutputStream.Create(resFile)
		    if outStream<>Nil then
		      outstream.Write(me.MsgOutput)
		      outstream.close
		      
		    end if
		    
		  end if
		  
		  me.MsgOutput=me.MsgOutput+"All searches completed."+EndofLine.unix
		  '
		  'me.MsgOutput=me.MsgOutput+EndofLine.unix+"TomTomThreadArray size: "+str(Ubound(TTthreadArray))+EndofLine.unix)
		  '
		  '
		  if me.RunTomTom then 
		    dim tc as integer
		    for n=0 to UBound(TTshellArray)
		      if TTshellArray(n).finished=false then
		        tc=tc+1
		      end if
		    next
		    
		    if tc>0 then
		      TTthreadsRunning=tc
		      me.MsgOutput=me.MsgOutput+EndofLine.unix+str(TC)+" TomTom tasks are still running. Don't quit SigmoID or repeat de novo search until these threads are finished."+EndofLine.unix
		      deNovoWin.TTtimer.Enabled=true
		    end if
		    While deNovoWin.TTtimer.Enabled = True
		      app.YieldToNextThread()
		    wend
		  end if
		  
		  // Reutilise data from incomplete searches!
		  
		  
		  
		  Exception err
		    
		    if err isa IOException then
		      me.MsgOutput=me.MsgOutput+EndOfLine.unix+"IOException has occurred."
		      me.MsgOutput=me.MsgOutput+EndOfLine.unix+"ErrorNumber: "+str(err.ErrorNumber)
		      me.MsgOutput=me.MsgOutput+EndOfLine.unix+"Message: "+err.Message
		      me.MsgOutput=me.MsgOutput+EndOfLine.unix+"Reason: "+err.Reason
		    end if
		    ExceptionHandler(err,"deNovoWin:RunButton")
		End Sub
	#tag EndEvent


	#tag Property, Flags = &h0
		alignmentsFile As folderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		CRtagPositions As string
	#tag EndProperty

	#tag Property, Flags = &h0
		CRTags(0) As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Fasta_files As folderItem
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
		MEME_results As folderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		MsgOutput As string
	#tag EndProperty

	#tag Property, Flags = &h0
		mWidth As string
	#tag EndProperty

	#tag Property, Flags = &h0
		OutF As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		palindromic As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Proteins2process As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		ProtNames(0) As string
	#tag EndProperty

	#tag Property, Flags = &h0
		RunChipMunk As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		RunTomTom As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		TomTomFinished As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		TTthreadsRunning As Integer
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
			Name="hmmPath"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
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
			Name="RunTomTom"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="RunChipMunk"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TTthreadsRunning"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="MsgOutput"
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
			Name="mWidth"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="palindromic"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
