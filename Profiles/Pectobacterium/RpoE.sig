VFSv   BlkS       @D      @�          BlkEBlkS       @�              @8      fold    A�V�R�  A�V�R�  /                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         BlkEBlkS       @�      @�`     @�     ????   A�V�R�  A�V�R�  RpoE.fasta                                                                                                                                                                                                                      >degP_3-2
GAACCTTGTTGGTCCATATTTATCTCATAC
>degP_21A (protease Do)
GAACATTGTTGGTTCATATTTATCTCATAC
>degP_Wpp163
GAACCTTGTTGGTTCATATTTATCTCATAC
>exbB_3-2
CAACTTCGTAGAATGACTCGCGTCACAAAA
>exbB_SCC3193
CAACTTCGTAGAATGACTCGTGTCACAAAA
>exbB_PC1
CAACTTTGTAGAATGACTCGTGTCACAAAA
>fadL_3-2+wpp+PC1 long chain fatty acid outer membrane transport protein
CAACTTATACTTTGGCAACTGGTCTGATTT
>fadL_21a
CAACTTATACTTTGCCAACTGGTCTGATTT
>exbB_21a
CAACTTCGTAGAATGACTCGTGTCACAAAA
>smpA_scri
CAACTTTTTTACCTTCCTGGGGTCATACAA
>greA_scri
GAACTCTGGGGTAAAATACGTATCAAAATG
>fkpA_scri
AAACTTCTGGTAGTAAAAACGGTCGCAGTA
>ProteaseDo_PC1
GAACATTGTTGGTCCATATTTATCTCATAC
>fkpA_PC1
AAACTTCTGGTAGTAAAAACGGTCGCAGTA
>rseA_scri
GAACCCTGAGAATTTAATGTTGTCAGAGGA
>rpoE_scri
GAACTTTATTGAATGTBlkEBlkS      @�      @�`     CTTGGTTCTAATGA
>rpoE_Pbr_CFIA1001
GAACTTTATTGGATGTCTTGGTTCTAATGA
>ompX_scri
GAATTTATTTTTAATCTAACTGTCACAATA
>ompX_Pcc21
GAATTTATTTTTAATCTAATTGTCACAATA
>micA_3-2
GAACTTTTCCTTTTTATGCGAGTCTGACTT
>greA_3-2 (within the "attenuator"!)
GAACTCTGGGGTAAAATACGTATCAAAATG
>fkpA_3-2
GAAACTTCTGGTAGTAAAAACGGTCGCAGT
>rpoE_3-2
GAACTTTATTGAATGTCTTGGTTCTAATTA
>rpoH_scri1043
GAACTTGCGAGCGAAATCACAGTCTGAATA
>rpoH_21a
GAACTTGCGAGCGAAATCACAGTCTGAATA
>rpoH_PC1
GAACTTGCGAGCGAAATCACAGTCTGAATA
>rpoH_PCC21
GAACTTGCGAGCGAAATCACAGTCTGAGTA
>rpoH_PwaWPP163
GAACTTGCGAGCGAAATCACAGTCTGAATA
>rybB_3-2
GAACTTTTTCTTTGCCCTAAAGTCTGAATA
>rybB_CFIA1001
GAACTTTTTCTTTGCCCTACAGTCTGAATA
>rybB_JG10-08
GAACTTTTTCTTTGGTCCACAGTCTGAATA
>rybB_PC1
GAACTTTTTCTTTTCCCTAAAGTCTGAATA
>rybB_21a
GAACTTTTTCTTTGGTCCACAGTCTGAATA
>nlpD_3-2
GAACTTGTTGATATTGTTAGCATCTAATCA
>nlpD_PC1
GAACTTGTTGATATTGTTAGCCTCTAATCA
>nlpD_Pbr_CFIA1001
GAACTTGTTGATATTGTTAGCATCTAATCA
>nlpD_21A
GAACGTGTTGATATTGTTAGCATCTAATCA
>smpA_SCC3193+3-2+PC1
CAACTTTTTTACCTTCCTGAGGTCBlkEBlkS      @�              ATACAA
>hrpK_3-2+PC1  ??? (clearly not the HrpL-dep. promoter!)
GAAATTTTTTGTAATCATTTCGTCTGATTA
>tsx_Wpp163 nucleotide specific porin
CAACATCGTTATGTGATTAAAGTCACATTA
>tsx_PC1
CAACTCCATTATGTGACAAAAATCACATTA
>tsx_PCC21
TAACATCATTATGTGATTAAAATCACATTA
>tsx_3-2
TAACACCATTATGTGATTAAAATCACATTA
>tsx_JG10-08 (also receptor for T6 phage)
CAACACCATTATGTGATTAAAATCACATAA
>OA04_26190 (3-2) TonB-dependent receptor
AAACTCATTTTTTATCAAATATTCTGAATG
>outB_3937 ????
CAACTTTTTTTTGCGACCAGGCTCAAAATT
>slyB/pcp_3-2 ????
CAATTTAAGCGCACTATTATATTCTGAAAA
>slyB_3937 ????
GAACTTTATAACGCGTTTATTATCAATTTA
>surA_3937 (ppi) ????
GAACTCTGGCGGCAAT-AAACGTCTAATGA
>fkpA_3937
AAACTTAATGAGTTTATTTGAATCAGATTC
>greA_3937
GAACTCTGGGGTAAAATGCGTATCAAAATG
>micA_3937
AAACTTTTCTTACCGGTACCGGTCATAACA
>outB_3937
CAACTTTTTTTTGCGACCAGGCTCAAAATT
>rpoH_3937
GAACTTGTGCAGCCAATCACACTCTAACCA
>smpA_3937
CAACTTTTTCGAATTCCCGCGGTCTTACAG
>deoR_3937 ???
GAACTTTTTTCCAAAGGTAAAGTCTGAATT
>degQ_3937
GAACTTTACACACAGCCCCGGGTCTGAGTC


                     BlkEBlkS       @�      @�0     @�8     ????   A�V�R�  A�V�R�  RpoE.options                                                                                                                                                                                                                    ////
// nhmmer options
////


// Trusted cutoff. Bit score per-sequence cutoff, set according to the lowest scores seen for true homologous sequences that were above the GA gathering thresholds, when gathering members of the alignment
#=GF TC 6.0 6.0


// Gathering threshold. Bit score per-sequence cutoff used in gathering the members of the alignment
#=GF GA 6.0 6.0


//Noise cutoff. Bit score per-sequence cutoff, set according to the highest scores seen for unrelated sequences
#=GF NC 5.7 5.7


// use the gathering threshold from the calibrated profile
nhmmer.--cut_ga


////
// HmmGen options
////


// the alignment length
HmmGen.-L 30


// don't pick up locus_tag from next locus
HmmGen.-n


// ignore sites inside ORFs (and BlkEBlkS      @�              risk missing some real ones!)
HmmGen.-i 


// feature key
HmmGen.-f promoter


// feature qualifier
HmmGen.-q bound_moiety#RpoE alternative sigma factor


// MASTgen p-value cutoff
mastGen.-V 5e-6


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         BlkEBlkS       @�              @w�     ????   A�V�R�  A�V�R�  RpoE.info                                                                                                                                                                                                                       Primary hmm profile on the basis of the known E.coli RpoE-dependent promoters. This profile was used to search various Pectobacterium genomes, as well as Dickeya dadantii 3937 genome. Meaningful hits were manually selected to build the profile from. The final profile is built from 57 unique sequences from 9 genomes.
No experimental evidence exists for any of these promoters.
                                                                                                                                                                                                                                                                                                                                                                      BlkEBlkS       @�      @�     @ڄ�    ????   A�V�R�  A�V�R�  meme.txt                                                                                                                                                                                                                        ********************************************************************************
MEME - Motif discovery tool
********************************************************************************
MEME version 4.10.1 (Release date: Wed Mar 25 11:40:43 2015 +1000)

For further information on how to interpret these results or to get
a copy of the MEME software please access http://meme-suite.org .

This file may be used as input to the MAST algorithm for searching
sequence databases for matches to groups of motifs.  MAST is available
for interactive use and downloading at http://meme-suite.org .
********************************************************************************


***********************************************************BlkEBlkS      @�      @�     *********************
REFERENCE
********************************************************************************
If you use this program in your research, please cite:

Timothy L. Bailey and Charles Elkan,
"Fitting a mixture model by expectation maximization to discover
motifs in biopolymers", Proceedings of the Second International
Conference on Intelligent Systems for Molecular Biology, pp. 28-36,
AAAI Press, Menlo Park, California, 1994.
********************************************************************************


********************************************************************************
TRAINING SET
********************************************************************************
DATAFILE= /private/var/folders/1k/4vs0wmnd75371kbm6p5jbmxr0000gn/T/TemporaryItems/alignment.tmp
ALPHABET= ACGT
Sequence name            Weight Length  Sequence name            Weight Length  
-------------            ------ ------  -------------            ------ ------  
degP_3-2        BlkEBlkS      @�      @�              1.0000     30  degP_21A                 1.0000     30  
degP_Wpp163              1.0000     30  exbB_3-2                 1.0000     30  
exbB_SCC3193             1.0000     30  exbB_PC1                 1.0000     30  
fadL_3-2+wpp+PC1         1.0000     30  fadL_21a                 1.0000     30  
exbB_21a                 1.0000     30  smpA_scri                1.0000     30  
greA_scri                1.0000     30  fkpA_scri                1.0000     30  
ProteaseDo_PC1           1.0000     30  fkpA_PC1                 1.0000     30  
rseA_scri                1.0000     30  rpoE_scri                1.0000     30  
rpoE_Pbr_CFIA1001        1.0000     30  ompX_scri                1.0000     30  
ompX_Pcc21               1.0000     30  micA_3-2                 1.0000     30  
greA_3-2                 1.0000     30  fkpA_3-2                 1.0000     30  
rpoE_3-2                 1.0000     30  rpoH_scri1043            1.0000     30  
rpoH_21a                 1.0000     BlkEBlkS      @�      @�     30  rpoH_PC1                 1.0000     30  
rpoH_PCC21               1.0000     30  rpoH_PwaWPP163           1.0000     30  
rybB_3-2                 1.0000     30  rybB_CFIA1001            1.0000     30  
rybB_JG10-08             1.0000     30  rybB_PC1                 1.0000     30  
rybB_21a                 1.0000     30  nlpD_3-2                 1.0000     30  
nlpD_PC1                 1.0000     30  nlpD_Pbr_CFIA1001        1.0000     30  
nlpD_21A                 1.0000     30  smpA_SCC3193+3-2+PC1     1.0000     30  
hrpK_3-2+PC1             1.0000     30  tsx_Wpp163               1.0000     30  
tsx_PC1                  1.0000     30  tsx_PCC21                1.0000     30  
tsx_3-2                  1.0000     30  tsx_JG10-08              1.0000     30  
OA04_26190               1.0000     30  outB_3937                1.0000     30  
slyB/pcp_3-2             1.0000     30  slyB_3937                1.0000     30  
surA_3937                1.0000     30  fkpA_3937       BlkEBlkS      @�      @�              1.0000     30  
greA_3937                1.0000     30  micA_3937                1.0000     30  
rpoH_3937                1.0000     30  smpA_3937                1.0000     30  
deoR_3937                1.0000     30  degQ_3937                1.0000     30  
********************************************************************************

********************************************************************************
COMMAND LINE SUMMARY
********************************************************************************
This information can also be useful in the event you wish to report a
problem with the MEME software.

command: meme -nmotifs 1 -dna -text /private/var/folders/1k/4vs0wmnd75371kbm6p5jbmxr0000gn/T/TemporaryItems/alignment.tmp 

model:  mod=         zoops    nmotifs=         1    evt=           inf
object function=  E-value of product of p-values
width:  minw=            8    maxw=           30    minic=        0.00
width:  wg=             11    ws=        BlkEBlkS      @�      @�           1    endgaps=       yes
nsites: minsites=        2    maxsites=       56    wnsites=       0.8
theta:  prob=            1    spmap=         uni    spfuzz=        0.5
global: substring=     yes    branching=      no    wbranch=        no
em:     prior=   dirichlet    b=            0.01    maxiter=        50
        distance=    1e-05
data:   n=            1680    N=              56
strands: +
sample: seed=            0    seqfrac=         1
Letter frequencies in dataset:
A 0.317 C 0.186 G 0.163 T 0.335 
Background letter frequencies (from dataset with add-one prior applied):
A 0.317 C 0.186 G 0.163 T 0.334 
********************************************************************************


********************************************************************************
MOTIF  1 MEME	width =  30  sites =  55  llr = 717  E-value = 7.0e-240
********************************************************************************
---------------------------------------------------------BlkEBlkS      @�      @�     -----------------------
	Motif 1 Description
--------------------------------------------------------------------------------
Simplified        A  1aa:1:1212324325135243::43a427
pos.-specific     C  3::9122112:21112322311:a:3:111
probability       G  6:::::2322413131::1326:::4:111
matrix            T  :::1885574353531552231a:61:461

         bits    2.6                               
                 2.4                        *      
                 2.1                        *      
                 1.8    *                   *      
Relative         1.6  ***                  **  *   
Entropy          1.3  ***                  **  *   
(18.8 bits)      1.0 **** *                **  *   
                 0.8 ******               ***  *   
                 0.5 ******  *            ******  *
                 0.3 ********* *   ****** ****** **
                 0.0 ------------------------------

Multilevel           GAACTTTTTTGTATGATTAGAGTCTGAATA
consensus            C      GGCABlkEBlkS      @�      @�     ATATCCACCTA  AC TA 
sequence                    A AT G A  C TG    A    
                              G                    
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 sites sorted by position p-value
--------------------------------------------------------------------------------
Sequence name             Start   P-value                         Site           
-------------             ----- ---------            ------------------------------
rybB_CFIA1001                 1  1.73e-10          . GAACTTTTTCTTTGCCCTACAGTCTGAATA           
rybB_PC1                      1  2.59e-10          . GAACTTTTTCTTTTCCCTAAAGTCTGAATA           
rybB_21a                      1  4.66e-10          . GAACTTTTTCTTTGGTCCACAGTCTGAATA           
rybB_JG10-08                  1  4.66e-10          . GAACTTTTTCTTTGGTCCACAGTCTGAATA           
exbB_PC1                      1  5.6BlkEBlkS      @�      @�     3e-10          . CAACTTTGTAGAATGACTCGTGTCACAAAA           
rpoH_PwaWPP163                1  8.15e-10          . GAACTTGCGAGCGAAATCACAGTCTGAATA           
rpoH_PC1                      1  8.15e-10          . GAACTTGCGAGCGAAATCACAGTCTGAATA           
rpoH_21a                      1  8.15e-10          . GAACTTGCGAGCGAAATCACAGTCTGAATA           
rpoH_scri1043                 1  8.15e-10          . GAACTTGCGAGCGAAATCACAGTCTGAATA           
rybB_3-2                      1  9.77e-10          . GAACTTTTTCTTTGCCCTAAAGTCTGAATA           
exbB_21a                      1  1.39e-09          . CAACTTCGTAGAATGACTCGTGTCACAAAA           
exbB_SCC3193                  1  1.39e-09          . CAACTTCGTAGAATGACTCGTGTCACAAAA           
exbB_3-2                      1  1.65e-09          . CAACTTCGTAGAATGACTCGCGTCACAAAA           
rpoH_PCC21                    1  3.23e-09          . GAACTTGCGAGCGAAATCACAGTCTGAGTA           
tsx_Wpp163                    1  1.11e-08          . CAACATCGTTATGTGATTAAAGTCABlkEBlkS      	@�      @�     CATTA           
nlpD_Pbr_CFIA1001             1  3.83e-08          . GAACTTGTTGATATTGTTAGCATCTAATCA           
nlpD_3-2                      1  3.83e-08          . GAACTTGTTGATATTGTTAGCATCTAATCA           
rpoE_3-2                      1  6.37e-08          . GAACTTTATTGAATGTCTTGGTTCTAATTA           
tsx_PC1                       1  1.03e-07          . CAACTCCATTATGTGACAAAAATCACATTA           
greA_3-2                      1  1.03e-07          . GAACTCTGGGGTAAAATACGTATCAAAATG           
greA_scri                     1  1.03e-07          . GAACTCTGGGGTAAAATACGTATCAAAATG           
nlpD_PC1                      1  1.47e-07          . GAACTTGTTGATATTGTTAGCCTCTAATCA           
outB_3937                     1  1.64e-07          . CAACTTTTTTTTGCGACCAGGCTCAAAATT           
rpoE_Pbr_CFIA1001             1  2.05e-07          . GAACTTTATTGGATGTCTTGGTTCTAATGA           
rpoE_scri                     1  2.84e-07          . GAACTTTATTGAATGTCTTGGTTCTAATGA           
greA_3937                BlkEBlkS      
@�      @�          1  4.78e-07          . GAACTCTGGGGTAAAATGCGTATCAAAATG           
micA_3-2                      1  4.78e-07          . GAACTTTTCCTTTTTATGCGAGTCTGACTT           
ompX_scri                     1  4.78e-07          . GAATTTATTTTTAATCTAACTGTCACAATA           
smpA_scri                     1  7.80e-07          . CAACTTTTTTACCTTCCTGGGGTCATACAA           
smpA_3937                     1  8.58e-07          . CAACTTTTTCGAATTCCCGCGGTCTTACAG           
nlpD_21A                      1  1.03e-06          . GAACGTGTTGATATTGTTAGCATCTAATCA           
ompX_Pcc21                    1  1.03e-06          . GAATTTATTTTTAATCTAATTGTCACAATA           
tsx_JG10-08                   1  1.24e-06          . CAACACCATTATGTGATTAAAATCACATAA           
hrpK_3-2+PC1                  1  1.36e-06          . GAAATTTTTTGTAATCATTTCGTCTGATTA           
degQ_3937                     1  1.48e-06          . GAACTTTACACACAGCCCCGGGTCTGAGTC           
degP_21A                      1  1.48e-06          . GAACATTGTTGGTTBlkEBlkS      @�      @�     CATATTTATCTCATAC           
rpoH_3937                     1  1.62e-06          . GAACTTGTGCAGCCAATCACACTCTAACCA           
degP_Wpp163                   1  1.62e-06          . GAACCTTGTTGGTTCATATTTATCTCATAC           
fkpA_PC1                      1  1.77e-06          . AAACTTCTGGTAGTAAAAACGGTCGCAGTA           
fkpA_scri                     1  1.77e-06          . AAACTTCTGGTAGTAAAAACGGTCGCAGTA           
surA_3937                     1  1.93e-06          . GAACTCTGGCGGCAAT-AAACGTCTAATGA           
tsx_PCC21                     1  2.10e-06          . TAACATCATTATGTGATTAAAATCACATTA           
deoR_3937                     1  2.48e-06          . GAACTTTTTTCCAAAGGTAAAGTCTGAATT           
smpA_SCC3193+3-2+PC1          1  2.48e-06          . CAACTTTTTTACCTTCCTGAGGTCATACAA           
ProteaseDo_PC1                1  2.70e-06          . GAACATTGTTGGTCCATATTTATCTCATAC           
degP_3-2                      1  2.93e-06          . GAACCTTGTTGGTCCATATTTATCTCATAC           
fkpA_3937     BlkEBlkS      @�      @�                     1  3.72e-06          . AAACTTAATGAGTTTATTTGAATCAGATTC           
tsx_3-2                       1  5.07e-06          . TAACACCATTATGTGATTAAAATCACATTA           
fadL_3-2+wpp+PC1              1  6.34e-06          . CAACTTATACTTTGGCAACTGGTCTGATTT           
micA_3937                     1  1.19e-05          . AAACTTTTCTTACCGGTACCGGTCATAACA           
slyB_3937                     1  1.19e-05          . GAACTTTATAACGCGTTTATTATCAATTTA           
slyB/pcp_3-2                  1  1.27e-05          . CAATTTAAGCGCACTATTATATTCTGAAAA           
fadL_21a                      1  1.27e-05          . CAACTTATACTTTGCCAACTGGTCTGATTT           
OA04_26190                    1  3.20e-05          . AAACTCATTTTTTATCAAATATTCTGAATG           
rseA_scri                     1  3.59e-05          . GAACCCTGAGAATTTAATGTTGTCAGAGGA           
--------------------------------------------------------------------------------

---------------------------------------------------------------------BlkEBlkS      @�      @�     -----------
	Motif 1 block diagrams
--------------------------------------------------------------------------------
SEQUENCE NAME            POSITION P-VALUE  MOTIF DIAGRAM
-------------            ----------------  -------------
rybB_CFIA1001                     1.7e-10  [+1]
rybB_PC1                          2.6e-10  [+1]
rybB_21a                          4.7e-10  [+1]
rybB_JG10-08                      4.7e-10  [+1]
exbB_PC1                          5.6e-10  [+1]
rpoH_PwaWPP163                    8.2e-10  [+1]
rpoH_PC1                          8.2e-10  [+1]
rpoH_21a                          8.2e-10  [+1]
rpoH_scri1043                     8.2e-10  [+1]
rybB_3-2                          9.8e-10  [+1]
exbB_21a                          1.4e-09  [+1]
exbB_SCC3193                      1.4e-09  [+1]
exbB_3-2                          1.7e-09  [+1]
rpoH_PCC21                        3.2e-09  [+1]
tsx_Wpp163                        1.1e-08  [+1]
nlpD_Pbr_CFIA1001                 3.8e-08BlkEBlkS      @�      @�       [+1]
nlpD_3-2                          3.8e-08  [+1]
rpoE_3-2                          6.4e-08  [+1]
tsx_PC1                             1e-07  [+1]
greA_3-2                            1e-07  [+1]
greA_scri                           1e-07  [+1]
nlpD_PC1                          1.5e-07  [+1]
outB_3937                         1.6e-07  [+1]
rpoE_Pbr_CFIA1001                 2.1e-07  [+1]
rpoE_scri                         2.8e-07  [+1]
greA_3937                         4.8e-07  [+1]
micA_3-2                          4.8e-07  [+1]
ompX_scri                         4.8e-07  [+1]
smpA_scri                         7.8e-07  [+1]
smpA_3937                         8.6e-07  [+1]
nlpD_21A                            1e-06  [+1]
ompX_Pcc21                          1e-06  [+1]
tsx_JG10-08                       1.2e-06  [+1]
hrpK_3-2+PC1                      1.4e-06  [+1]
degQ_3937                         1.5e-06  [+1]
degP_21A                          1.5e-06  [+1]
rpoH_3937                BlkEBlkS      @�      @�              1.6e-06  [+1]
degP_Wpp163                       1.6e-06  [+1]
fkpA_PC1                          1.8e-06  [+1]
fkpA_scri                         1.8e-06  [+1]
surA_3937                         1.9e-06  [+1]
tsx_PCC21                         2.1e-06  [+1]
deoR_3937                         2.5e-06  [+1]
smpA_SCC3193+3-2+PC1              2.5e-06  [+1]
ProteaseDo_PC1                    2.7e-06  [+1]
degP_3-2                          2.9e-06  [+1]
fkpA_3937                         3.7e-06  [+1]
tsx_3-2                           5.1e-06  [+1]
fadL_3-2+wpp+PC1                  6.3e-06  [+1]
micA_3937                         1.2e-05  [+1]
slyB_3937                         1.2e-05  [+1]
slyB/pcp_3-2                      1.3e-05  [+1]
fadL_21a                          1.3e-05  [+1]
OA04_26190                        3.2e-05  [+1]
rseA_scri                         3.6e-05  [+1]
--------------------------------------------------------------------------------

-----------------------BlkEBlkS      @�      @�     ---------------------------------------------------------
	Motif 1 in BLOCKS format
--------------------------------------------------------------------------------
BL   MOTIF 1 width=30 seqs=55
rybB_CFIA1001            (    1) GAACTTTTTCTTTGCCCTACAGTCTGAATA  1 
rybB_PC1                 (    1) GAACTTTTTCTTTTCCCTAAAGTCTGAATA  1 
rybB_21a                 (    1) GAACTTTTTCTTTGGTCCACAGTCTGAATA  1 
rybB_JG10-08             (    1) GAACTTTTTCTTTGGTCCACAGTCTGAATA  1 
exbB_PC1                 (    1) CAACTTTGTAGAATGACTCGTGTCACAAAA  1 
rpoH_PwaWPP163           (    1) GAACTTGCGAGCGAAATCACAGTCTGAATA  1 
rpoH_PC1                 (    1) GAACTTGCGAGCGAAATCACAGTCTGAATA  1 
rpoH_21a                 (    1) GAACTTGCGAGCGAAATCACAGTCTGAATA  1 
rpoH_scri1043            (    1) GAACTTGCGAGCGAAATCACAGTCTGAATA  1 
rybB_3-2                 (    1) GAACTTTTTCTTTGCCCTAAAGTCTGAATA  1 
exbB_21a                 (    1) CAACTTCGTAGAATGACTCGTGTCACAAAA  1 
exbB_SCC3193             (    1) CAACTTCGTAGAATGABlkEBlkS      @�      @�     CTCGTGTCACAAAA  1 
exbB_3-2                 (    1) CAACTTCGTAGAATGACTCGCGTCACAAAA  1 
rpoH_PCC21               (    1) GAACTTGCGAGCGAAATCACAGTCTGAGTA  1 
tsx_Wpp163               (    1) CAACATCGTTATGTGATTAAAGTCACATTA  1 
nlpD_Pbr_CFIA1001        (    1) GAACTTGTTGATATTGTTAGCATCTAATCA  1 
nlpD_3-2                 (    1) GAACTTGTTGATATTGTTAGCATCTAATCA  1 
rpoE_3-2                 (    1) GAACTTTATTGAATGTCTTGGTTCTAATTA  1 
tsx_PC1                  (    1) CAACTCCATTATGTGACAAAAATCACATTA  1 
greA_3-2                 (    1) GAACTCTGGGGTAAAATACGTATCAAAATG  1 
greA_scri                (    1) GAACTCTGGGGTAAAATACGTATCAAAATG  1 
nlpD_PC1                 (    1) GAACTTGTTGATATTGTTAGCCTCTAATCA  1 
outB_3937                (    1) CAACTTTTTTTTGCGACCAGGCTCAAAATT  1 
rpoE_Pbr_CFIA1001        (    1) GAACTTTATTGGATGTCTTGGTTCTAATGA  1 
rpoE_scri                (    1) GAACTTTATTGAATGTCTTGGTTCTAATGA  1 
greA_3937                (    1) GAACTCTGGGGTAAAATGCGTATCAAAATG  1 
micA_3-2             BlkEBlkS      @�      @�         (    1) GAACTTTTCCTTTTTATGCGAGTCTGACTT  1 
ompX_scri                (    1) GAATTTATTTTTAATCTAACTGTCACAATA  1 
smpA_scri                (    1) CAACTTTTTTACCTTCCTGGGGTCATACAA  1 
smpA_3937                (    1) CAACTTTTTCGAATTCCCGCGGTCTTACAG  1 
nlpD_21A                 (    1) GAACGTGTTGATATTGTTAGCATCTAATCA  1 
ompX_Pcc21               (    1) GAATTTATTTTTAATCTAATTGTCACAATA  1 
tsx_JG10-08              (    1) CAACACCATTATGTGATTAAAATCACATAA  1 
hrpK_3-2+PC1             (    1) GAAATTTTTTGTAATCATTTCGTCTGATTA  1 
degQ_3937                (    1) GAACTTTACACACAGCCCCGGGTCTGAGTC  1 
degP_21A                 (    1) GAACATTGTTGGTTCATATTTATCTCATAC  1 
rpoH_3937                (    1) GAACTTGTGCAGCCAATCACACTCTAACCA  1 
degP_Wpp163              (    1) GAACCTTGTTGGTTCATATTTATCTCATAC  1 
fkpA_PC1                 (    1) AAACTTCTGGTAGTAAAAACGGTCGCAGTA  1 
fkpA_scri                (    1) AAACTTCTGGTAGTAAAAACGGTCGCAGTA  1 
surA_3937                (    1) GAACTCTGGCGGCAATXAAACGTCTAATBlkEBlkS      @�      @�     GA  1 
tsx_PCC21                (    1) TAACATCATTATGTGATTAAAATCACATTA  1 
deoR_3937                (    1) GAACTTTTTTCCAAAGGTAAAGTCTGAATT  1 
smpA_SCC3193+3-2+PC1     (    1) CAACTTTTTTACCTTCCTGAGGTCATACAA  1 
ProteaseDo_PC1           (    1) GAACATTGTTGGTCCATATTTATCTCATAC  1 
degP_3-2                 (    1) GAACCTTGTTGGTCCATATTTATCTCATAC  1 
fkpA_3937                (    1) AAACTTAATGAGTTTATTTGAATCAGATTC  1 
tsx_3-2                  (    1) TAACACCATTATGTGATTAAAATCACATTA  1 
fadL_3-2+wpp+PC1         (    1) CAACTTATACTTTGGCAACTGGTCTGATTT  1 
micA_3937                (    1) AAACTTTTCTTACCGGTACCGGTCATAACA  1 
slyB_3937                (    1) GAACTTTATAACGCGTTTATTATCAATTTA  1 
slyB/pcp_3-2             (    1) CAATTTAAGCGCACTATTATATTCTGAAAA  1 
fadL_21a                 (    1) CAACTTATACTTTGCCAACTGGTCTGATTT  1 
OA04_26190               (    1) AAACTCATTTTTTATCAAATATTCTGAATG  1 
rseA_scri                (    1) GAACCCTGAGAATTTAATGTTGTCAGAGGA  1 
//

-----------------------------BlkEBlkS      @�      @�     ---------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 position-specific scoring matrix
--------------------------------------------------------------------------------
log-odds matrix: alength= 4 w= 30 n= 56 bayes= 1.78427 E= 7.0e-240 
  -180     45    192   -320 
   166  -1243  -1243  -1243 
   166  -1243  -1243  -1243 
  -412    232  -1243   -262 
  -154   -177   -316    129 
 -1243    -18  -1243    132 
  -131     -3     16     61 
   -66   -103     64     44 
  -254   -177     54     97 
   -66     23     30     19 
   -22   -235    136    -29 
   -54     -3    -16     44 
    20    -77     64    -29 
   -22    -55    -58     55 
   -42    -35    108    -29 
    74     35    -58   -139 
  -125     83   -294     62 
   -12     10   -216     50 
    78     23   -116   -103 
   -80     45    108    -62 
    27    -55     54    -39 
   -12   -177    179   -188 
 -1243  -1243  -1243    158 
BlkEBlkS      @�      @�      -1243    243  -1243  -1243 
    27  -1243   -216     80 
   -31     73    116   -220 
   163  -1243  -1243   -420 
    40   -103    -84     26 
   -42    -77   -116     80 
   116    -77    -84   -188 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 position-specific probability matrix
--------------------------------------------------------------------------------
letter-probability matrix: alength= 4 w= 30 nsites= 55 E= 7.0e-240 
 0.090909  0.254545  0.618182  0.036364 
 1.000000  0.000000  0.000000  0.000000 
 1.000000  0.000000  0.000000  0.000000 
 0.018182  0.927273  0.000000  0.054545 
 0.109091  0.054545  0.018182  0.818182 
 0.000000  0.163636  0.000000  0.836364 
 0.127273  0.181818  0.181818  0.509091 
 0.200000  0.090909  0.254545  0.454545 
 0.054545  0.054545  0.236364  0.654545 
 0.200000  0.218182  0.200000  0.381818 
 0.272727  0.036364  BlkEBlkS      @�      @�     0.418182  0.272727 
 0.218182  0.181818  0.145455  0.454545 
 0.363636  0.109091  0.254545  0.272727 
 0.272727  0.127273  0.109091  0.490909 
 0.236364  0.145455  0.345455  0.272727 
 0.527273  0.236364  0.109091  0.127273 
 0.133030  0.330655  0.021143  0.515172 
 0.290909  0.200000  0.036364  0.472727 
 0.545455  0.218182  0.072727  0.163636 
 0.181818  0.254545  0.345455  0.218182 
 0.381818  0.127273  0.236364  0.254545 
 0.290909  0.054545  0.563636  0.090909 
 0.000000  0.000000  0.000000  1.000000 
 0.000000  1.000000  0.000000  0.000000 
 0.381818  0.000000  0.036364  0.581818 
 0.254545  0.309091  0.363636  0.072727 
 0.981818  0.000000  0.000000  0.018182 
 0.418182  0.090909  0.090909  0.400000 
 0.236364  0.109091  0.072727  0.581818 
 0.709091  0.109091  0.090909  0.090909 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 regular expression
--BlkEBlkS      @�      @�     ------------------------------------------------------------------------------
[GC]AACTTT[TGA][TG][TCAG][GAT][TA][ATG][TA][GTA][AC][TC][TAC][AC][GCT][ATG][GA]TC[TA][GCA]A[AT][TA]A
--------------------------------------------------------------------------------




Time  0.33 secs.

********************************************************************************


********************************************************************************
SUMMARY OF MOTIFS
********************************************************************************

--------------------------------------------------------------------------------
	Combined block diagrams: non-overlapping sites with p-value < 0.0001
--------------------------------------------------------------------------------
SEQUENCE NAME            COMBINED P-VALUE  MOTIF DIAGRAM
-------------            ----------------  -------------
degP_3-2                         2.93e-06  [+1(2.93e-06)]
degP_21A                         1.48e-06BlkEBlkS      @�      @�       [+1(1.48e-06)]
degP_Wpp163                      1.62e-06  [+1(1.62e-06)]
exbB_3-2                         1.65e-09  [+1(1.65e-09)]
exbB_SCC3193                     1.39e-09  [+1(1.39e-09)]
exbB_PC1                         5.63e-10  [+1(5.63e-10)]
fadL_3-2+wpp+PC1                 6.34e-06  [+1(6.34e-06)]
fadL_21a                         1.27e-05  [+1(1.27e-05)]
exbB_21a                         1.39e-09  [+1(1.39e-09)]
smpA_scri                        7.80e-07  [+1(7.80e-07)]
greA_scri                        1.03e-07  [+1(1.03e-07)]
fkpA_scri                        1.77e-06  [+1(1.77e-06)]
ProteaseDo_PC1                   2.70e-06  [+1(2.70e-06)]
fkpA_PC1                         1.77e-06  [+1(1.77e-06)]
rseA_scri                        3.59e-05  [+1(3.59e-05)]
rpoE_scri                        2.84e-07  [+1(2.84e-07)]
rpoE_Pbr_CFIA1001                2.05e-07  [+1(2.05e-07)]
ompX_scri                        4.78e-07  [+1(4.78e-07)]
ompX_Pcc21                       1.03e-06  [+1(BlkEBlkS      @�      @��     1.03e-06)]
micA_3-2                         4.78e-07  [+1(4.78e-07)]
greA_3-2                         1.03e-07  [+1(1.03e-07)]
fkpA_3-2                         2.80e-01  30
rpoE_3-2                         6.37e-08  [+1(6.37e-08)]
rpoH_scri1043                    8.15e-10  [+1(8.15e-10)]
rpoH_21a                         8.15e-10  [+1(8.15e-10)]
rpoH_PC1                         8.15e-10  [+1(8.15e-10)]
rpoH_PCC21                       3.23e-09  [+1(3.23e-09)]
rpoH_PwaWPP163                   8.15e-10  [+1(8.15e-10)]
rybB_3-2                         9.77e-10  [+1(9.77e-10)]
rybB_CFIA1001                    1.73e-10  [+1(1.73e-10)]
rybB_JG10-08                     4.66e-10  [+1(4.66e-10)]
rybB_PC1                         2.59e-10  [+1(2.59e-10)]
rybB_21a                         4.66e-10  [+1(4.66e-10)]
nlpD_3-2                         3.83e-08  [+1(3.83e-08)]
nlpD_PC1                         1.47e-07  [+1(1.47e-07)]
nlpD_Pbr_CFIA1001                3.83e-08  [+1(3.83e-08)]
nlpD_21BlkEBlkS      @�      @�     A                         1.03e-06  [+1(1.03e-06)]
smpA_SCC3193+3-2+PC1             2.48e-06  [+1(2.48e-06)]
hrpK_3-2+PC1                     1.36e-06  [+1(1.36e-06)]
tsx_Wpp163                       1.11e-08  [+1(1.11e-08)]
tsx_PC1                          1.03e-07  [+1(1.03e-07)]
tsx_PCC21                        2.10e-06  [+1(2.10e-06)]
tsx_3-2                          5.07e-06  [+1(5.07e-06)]
tsx_JG10-08                      1.24e-06  [+1(1.24e-06)]
OA04_26190                       3.20e-05  [+1(3.20e-05)]
outB_3937                        1.64e-07  [+1(1.64e-07)]
slyB/pcp_3-2                     1.27e-05  [+1(1.27e-05)]
slyB_3937                        1.19e-05  [+1(1.19e-05)]
surA_3937                        1.93e-06  [+1(1.93e-06)]
fkpA_3937                        3.72e-06  [+1(3.72e-06)]
greA_3937                        4.78e-07  [+1(4.78e-07)]
micA_3937                        1.19e-05  [+1(1.19e-05)]
rpoH_3937                        1.62e-06  [+1(1.62e-06)]
smpA_3937    BlkEBlkS      @�                                  8.58e-07  [+1(8.58e-07)]
deoR_3937                        2.48e-06  [+1(2.48e-06)]
degQ_3937                        1.48e-06  [+1(1.48e-06)]
--------------------------------------------------------------------------------

********************************************************************************


********************************************************************************
Stopped because nmotifs = 1 reached.
********************************************************************************

CPU: Ptushka.local

********************************************************************************
                                                                                                                                                                                                                                                                                                                                                                             BlkEBlkS       @�      @�     @�)     ????   A�V�R�  A�V�R�  RpoE.hmm                                                                                                                                                                                                                        HMMER3/f [3.1b1 | May 2013]
NAME  stock
LENG  30
MAXL  83
ALPH  DNA
RF    no
MM    no
CONS  yes
CS    no
MAP   yes
DATE  Sun Jan 10 08:45:11 2016
NSEQ  57
EFFN  57.000000
CKSUM 1543713232
GA    6.00
TC    6.00
NC    5.70
STATS LOCAL MSV       -8.0391  0.77848
STATS LOCAL VITERBI   -8.1012  0.77848
STATS LOCAL FORWARD   -2.1315  0.77848
HMM          A        C        G        T   
            m->m     m->i     m->d     i->m     i->i     d->m     d->d
  COMPO   1.16198  1.66019  1.75749  1.12530
          1.38629  1.38629  1.38629  1.38629
          0.00338  6.38351  6.38351  1.46634  0.26236  0.00000        *
      1   2.23875  1.50143  0.47746  2.99097      1 g - - -
          1.38629  1.38629  1.38629  1.38629
          0.003BlkEBlkS      @�      @�     38  6.38351  6.38351  1.46634  0.26236  1.09861  0.40547
      2   0.00303  7.34412  6.45001  7.13009      2 A - - -
          1.38629  1.38629  1.38629  1.38629
          0.00338  6.38351  6.38351  1.46634  0.26236  1.09861  0.40547
      3   0.00303  7.34412  6.45001  7.13009      3 A - - -
          1.38629  1.38629  1.38629  1.38629
          0.00338  6.38351  6.38351  1.46634  0.26236  1.09861  0.40547
      4   2.35985  0.16596  6.03491  2.88073      4 c - - -
          1.38629  1.38629  1.38629  1.38629
          0.00338  6.38351  6.38351  1.46634  0.26236  1.09861  0.40547
      5   2.22486  1.96627  3.26632  0.33716      5 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00338  6.38351  6.38351  1.46634  0.26236  1.09861  0.40547
      6   5.91284  1.82320  6.18264  0.18186      6 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00338  6.38351  6.38351  1.46634  0.26236  1.09861  0.40547
      7   1.99634  1.81369  1.81443  0.61955      BlkEBlkS      @�      @�     7 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00338  6.38351  6.38351  1.46634  0.26236  1.09861  0.40547
      8   1.61525  1.87685  1.50164  0.85491      8 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00338  6.38351  6.38351  1.46634  0.26236  1.09861  0.40547
      9   2.54046  2.54470  1.52797  0.46889      9 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00338  6.38351  6.38351  1.46634  0.26236  1.09861  0.40547
     10   1.72610  1.62883  1.32366  1.02247     10 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00338  6.38351  6.38351  1.46634  0.26236  1.09861  0.40547
     11   1.34199  2.73828  0.88365  1.34430     11 g - - -
          1.38629  1.38629  1.38629  1.38629
          0.00338  6.38351  6.38351  1.46634  0.26236  1.09861  0.40547
     12   1.55693  1.71782  1.92860  0.76699     12 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00338  6.38351  6.38351  1.46634  0.2623BlkEBlkS      @�      @�     6  1.09861  0.40547
     13   0.95544  2.06122  1.42410  1.39701     13 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00338  6.38351  6.38351  1.46634  0.26236  1.09861  0.40547
     14   1.37142  1.86636  1.77279  0.86344     14 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00338  6.38351  6.38351  1.46634  0.26236  1.09861  0.40547
     15   1.49087  2.02376  1.18162  1.09099     15 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00338  6.38351  6.38351  1.46634  0.26236  1.09861  0.40547
     16   0.64442  1.51884  2.08480  2.02698     16 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.02123  6.38351  3.94669  1.46634  0.26236  1.09861  0.40547
     17   1.51764  1.27874  3.08683  0.78365     17 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00344  6.36572  6.36572  1.46634  0.26236  0.16116  1.90484
     18   1.07211  1.66797  2.84593  0.88915     18 t - - -
          1.38629  1.38629 BlkEBlkS      @�      @�      1.38629  1.38629
          0.00338  6.38351  6.38351  1.46634  0.26236  1.09861  0.40547
     19   0.60965  1.59427  2.37281  1.83142     19 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00338  6.38351  6.38351  1.46634  0.26236  1.09861  0.40547
     20   1.42601  1.50745  1.17407  1.47336     20 g - - -
          1.38629  1.38629  1.38629  1.38629
          0.00338  6.38351  6.38351  1.46634  0.26236  1.09861  0.40547
     21   1.14207  1.63868  1.39669  1.43050     21 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00338  6.38351  6.38351  1.46634  0.26236  1.09861  0.40547
     22   1.32511  2.60394  0.57137  2.34870     22 g - - -
          1.38629  1.38629  1.38629  1.38629
          0.00338  6.38351  6.38351  1.46634  0.26236  1.09861  0.40547
     23   6.22321  5.90034  2.57350  0.08446     23 T - - -
          1.38629  1.38629  1.38629  1.38629
          0.00338  6.38351  6.38351  1.46634  0.26236  1.09861  0.40547
     24   5.92915BlkEBlkS      @�      @�       0.08853  6.19987  2.52530     24 C - - -
          1.38629  1.38629  1.38629  1.38629
          0.00338  6.38351  6.38351  1.46634  0.26236  1.09861  0.40547
     25   1.04958  2.40992  2.83699  0.69017     25 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00338  6.38351  6.38351  1.46634  0.26236  1.09861  0.40547
     26   1.37556  1.34297  0.94336  2.33392     26 g - - -
          1.38629  1.38629  1.38629  1.38629
          0.00338  6.38351  6.38351  1.46634  0.26236  1.09861  0.40547
     27   0.12085  2.51642  6.03947  3.48335     27 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00338  6.38351  6.38351  1.46634  0.26236  1.09861  0.40547
     28   0.87000  2.24251  2.17325  1.01874     28 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00338  6.38351  6.38351  1.46634  0.26236  1.09861  0.40547
     29   1.55249  2.13759  1.85626  0.66536     29 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00338  BlkEBlkS      @�              6.38351  6.38351  1.46634  0.26236  1.09861  0.40547
     30   0.53625  2.14687  2.28544  1.62718     30 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00169  6.38182        *  1.46634  0.26236  0.00000        *
//
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       BlkEBlkS      @�              BMap   +   0         0         0        0        0         0        0         0          0        $0        (0        ,0        00        40        80        <0        @0      	  D0      
  H0        L0        P0        T0        X0        \0        `0        d0        h0        l0        p0        t0        x0        |0        �0        �0        �0        �0         �0        �0        �0        �0        �0        �0        �0                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          BlkE