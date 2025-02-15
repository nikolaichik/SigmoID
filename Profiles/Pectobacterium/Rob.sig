VFSv   BlkS       @D      @�          �BlkEBlkS       @�              @8      fold    A�V���  A�V���  /                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         BlkEBlkS       @�      @�`     @�     ????   A�V���  A�V���  Rob.fasta                                                                                                                                                                                                                       >acnB_21A
ATAGCACAGTTGAATAAAAA
>acnB_Pwa
TTTGAATTGATTGTTAATTC
>+dps_21A (overlaps with Fur!)
ATCTCACATATTGATAAATA
>dps_Pwa
ATTACATATATTGATAAAAA
>+dps2_Pcc3-2 (overlaps with FNR!)
ATGTCATATATTGATAAATA
>OA04_07760 heavy metal response regulator
ATCATACAGATTGATAATAA
>GZ59_06920 heavy metal response regulator
TTGTCACTAAATGATAATGA
>sufA_Dda3937
ATAGCAAAAATTGATAATTT
>wcaJ_21A_Pwa
TTAAAATTAAATAATAATAA
>wcaJ_Dda3937
TTAAAATTAAATAATAATAA
>fumC_Pcc3-2
ATTACATTAATTGTTAATTT
>fumC_Dda3937
ATTAAACAGATTGTTAATTT
>fumC_Pwa
ATTACATTAATTGTTAATTT
>fumA_Pwa
ATGGCATTAATTAATAAATT
>ssuA_Pwa
ATATCAGATATTGATAAAAA
>wcaJ_Pcc3-2
GTTAAATTGATTGATAAAAA
>cutC_21A
ATAGAACAGATTAATAAAAC
>lipase_21A
ATTGAATTTATTGATAAAAA
>lipase_Pwa
ATTGAATTTATTGATAAAAA
>osmB_21A
BlkEBlkS      @�      @�`     ATAGCAATAATTGATAAATT
>osmB_Pcc3-2
ATAGCAATAATTGATAAATC
>acr_21A
ATTTCATTGAATGATAATAA
>EamA_21A
ATCATACAGATTGATAATAA
>Dda3937_02380 Fe(III) dicitrate BP
TTTACATTGAATGATAATAA
>sufA_21A
AATTAAGAGATTGATAATAA
>21A sid rec
ATAGCACTTTTTGATAAAAC
>ABC_21A
GATGCATAAATTAATAAAAT
>ABC2_21A
TATGAAATAAATAATAAAAA
>prtW_21A
TATTTATTAATTGATAATAA
>pflDC_21A (pflC should bind FeS)
TTCGAAATAATTAATAATAA
>frdAB_21A (FeS)
ACCGTATTTATTGATAAAAA
>frdAB_Pcc3-2 (FeS)
CGCGTATTTATTGATAAAAA
>maeN_21A
TTGTTACTAATTGATAAAAA
>mfs_Dda
TTTTAATTTTTTGATAAATA
>ansP_Dda
TTAGAAATGATTAATAAATA
>iutA repressor (aerobactin)
ATTGTATTTTTTGATAATAA
>ABC permease Dda
AATATAATAATTAATAATAA
>citW_Dda malate Na symporter 
TAATAATAAATTAATAAAAA
>cysT_Dda sulfate permease
TTCAAACAGATTAATAAATA
>W5S_1403_Pwa_Pcc3-2 Iron/colicin receptor
AATAAATTAAATGATAATTA
>OA04_30010_2Iron/colicin receptor
ATCTCATTTATTATTAAATA
>sapA_Pwa peptide transport permease
ATGTAAATAATTAATAAAAT
>aer_Pwa aerobactin receptor
ATTCAATTGAATGATAATAA
>frdA_Pwa fumarate BlkEBlkS      @�              reductase SU
ACCGTATTTATTGATAAAAA
>GZ59_35700
ATGGAATTTATTATTAATAA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              BlkEBlkS       @�      @�0     @�X     ????   A�V���  A�V���  Rob.options                                                                                                                                                                                                                     ////
// nhmmer options
////


// Trusted cutoff. Bit score per-sequence cutoff, set according to the lowest scores seen for true homologous sequences that were above the GA gathering thresholds, when gathering members of the alignment
#=GF TC 12 12


// Gathering threshold. Bit score per-sequence cutoff used in gathering the members of the alignment
#=GF GA 11 11


//Noise cutoff. Bit score per-sequence cutoff, set according to the highest scores seen for unrelated sequences
#=GF NC 10 10


// use the gathering threshold from the calibrated profile
nhmmer.--cut_ga


////
// HmmGen options
////


// the alignment length
HmmGen.-L 20


// don't pick up locus_tag from next locus
HmmGen.-n


// ignore sites inside ORFs (and risk mBlkEBlkS      @�              issing some real ones!)
HmmGen.-i 


// feature key
HmmGen.-f protein_bind


// feature qualifier
HmmGen.-q bound_moiety#Rob


// MASTgen p-value cutoff
mastGen.-V 2e-6


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     BlkEBlkS       @�      @�0     @��     ????   A�V���  A�V���  Rob.info                                                                                                                                                                                                                           The marA/soxS/rob regulon is well characterised in E. coli and includes about 50 genes related to toxic compound efflux and oxidative stress. All three regulators bind to very similar (if not the same) operator sequences. 
Pectobacteria seem to contain just one of these three genes, rob. 
   This profile was built starting with E. coli Rob binding sites and adding matching sites from Pectobacterium/Dickeya genomes located in front of the orthologues of E.coli Rob regulon members. E.coli sites were then removed and high scoring Pectobacterium/Dickeya sites were added. The final profile is built with 45 sites. 
   The default threshold set in this profile is conservative and should allow to detect about 20 targets in related BlkEBlkS      @�              genomes with this profile, while the real Rob regulon could well be much larger.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                BlkEBlkS       @�      @�     @��    ????   A�V���  A�V���  meme.txt                                                                                                                                                                                                                        ********************************************************************************
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
acnB_21A        BlkEBlkS      @�      @�              1.0000     20  acnB_Pwa                 1.0000     20  
+dps_21A                 1.0000     20  dps_Pwa                  1.0000     20  
+dps2_Pcc3-2             1.0000     20  OA04_07760               1.0000     20  
GZ59_06920               1.0000     20  sufA_Dda3937             1.0000     20  
wcaJ_21A_Pwa             1.0000     20  wcaJ_Dda3937             1.0000     20  
fumC_Pcc3-2              1.0000     20  fumC_Dda3937             1.0000     20  
fumC_Pwa                 1.0000     20  fumA_Pwa                 1.0000     20  
ssuA_Pwa                 1.0000     20  wcaJ_Pcc3-2              1.0000     20  
cutC_21A                 1.0000     20  lipase_21A               1.0000     20  
lipase_Pwa               1.0000     20  osmB_21A                 1.0000     20  
osmB_Pcc3-2              1.0000     20  acr_21A                  1.0000     20  
EamA_21A                 1.0000     20  Dda3937_02380            1.0000     20  
sufA_21A                 1.0000     BlkEBlkS      @�      @�     20  21A                      1.0000     20  
ABC_21A                  1.0000     20  ABC2_21A                 1.0000     20  
prtW_21A                 1.0000     20  pflDC_21A                1.0000     20  
frdAB_21A                1.0000     20  frdAB_Pcc3-2             1.0000     20  
maeN_21A                 1.0000     20  mfs_Dda                  1.0000     20  
ansP_Dda                 1.0000     20  iutA                     1.0000     20  
ABC                      1.0000     20  citW_Dda                 1.0000     20  
cysT_Dda                 1.0000     20  W5S_1403_Pwa_Pcc3-2      1.0000     20  
OA04_30010_2Iron/colicin 1.0000     20  sapA_Pwa                 1.0000     20  
aer_Pwa                  1.0000     20  frdA_Pwa                 1.0000     20  
GZ59_35700               1.0000     20  
********************************************************************************

********************************************************************************
COMMAND LINE SBlkEBlkS      @�      @�     UMMARY
********************************************************************************
This information can also be useful in the event you wish to report a
problem with the MEME software.

command: meme -nmotifs 1 -dna -text /private/var/folders/1k/4vs0wmnd75371kbm6p5jbmxr0000gn/T/TemporaryItems/alignment.tmp 

model:  mod=         zoops    nmotifs=         1    evt=           inf
object function=  E-value of product of p-values
width:  minw=            8    maxw=           20    minic=        0.00
width:  wg=             11    ws=              1    endgaps=       yes
nsites: minsites=        2    maxsites=       45    wnsites=       0.8
theta:  prob=            1    spmap=         uni    spfuzz=        0.5
global: substring=     yes    branching=      no    wbranch=        no
em:     prior=   dirichlet    b=            0.01    maxiter=        50
        distance=    1e-05
data:   n=             900    N=              45
strands: +
sample: seed=            0    seqfrac=      BlkEBlkS      @�      @�        1
Letter frequencies in dataset:
A 0.493 C 0.049 G 0.083 T 0.374 
Background letter frequencies (from dataset with add-one prior applied):
A 0.492 C 0.050 G 0.084 T 0.374 
********************************************************************************


********************************************************************************
MOTIF  1 MEME	width =  19  sites =  45  llr = 423  E-value = 4.9e-127
********************************************************************************
--------------------------------------------------------------------------------
	Motif 1 Description
--------------------------------------------------------------------------------
Simplified        A  2234a23492:39:aa667
pos.-specific     C  :2:4:2::::::::::::1
probability       G  :14::::3:::7:::::::
matrix            T  8432:67318a:1a::432

         bits    4.3                    
                 3.9                    
                 3.5                    
                 3.0           BlkEBlkS      @�      @�              
Relative         2.6                    
Entropy          2.2                    
(13.6 bits)      1.7            *       
                 1.3           ** *     
                 0.9    **    *** ***   
                 0.4 ****************  *
                 0.0 -------------------

Multilevel           TTGAATTAATTGATAAAAA
consensus             AAC CAT   A    TT 
sequence              CTT   G           
                                        
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 sites sorted by position p-value
--------------------------------------------------------------------------------
Sequence name             Start   P-value                   Site      
-------------             ----- ---------            -------------------
+dps_21A                      2  7.99e-08          A TCTCACATATTGATAAATA           
21A             BlkEBlkS      @�      @�                   2  1.47e-07          A TAGCACTTTTTGATAAAAC           
EamA_21A                      2  3.24e-07          A TCATACAGATTGATAATAA           
OA04_07760                    2  3.24e-07          A TCATACAGATTGATAATAA           
frdA_Pwa                      2  5.17e-07          A CCGTATTTATTGATAAAAA           
frdAB_21A                     2  5.17e-07          A CCGTATTTATTGATAAAAA           
acr_21A                       2  5.17e-07          A TTTCATTGAATGATAATAA           
lipase_Pwa                    2  5.17e-07          A TTGAATTTATTGATAAAAA           
lipase_21A                    2  5.17e-07          A TTGAATTTATTGATAAAAA           
osmB_Pcc3-2                   2  5.88e-07          A TAGCAATAATTGATAAATC           
Dda3937_02380                 2  6.70e-07          T TTACATTGAATGATAATAA           
acnB_Pwa                      2  7.64e-07          T TTGAATTGATTGTTAATTC           
wcaJ_Pcc3-2                   2  1.36e-06          G TTAAATTGATTGATAAAAA           
BlkEBlkS      @�      @�     +dps2_Pcc3-2                  2  1.55e-06          A TGTCATATATTGATAAATA           
maeN_21A                      2  1.79e-06          T TGTTACTAATTGATAAAAA           
dps_Pwa                       2  2.05e-06          A TTACATATATTGATAAAAA           
frdAB_Pcc3-2                  2  2.32e-06          C GCGTATTTATTGATAAAAA           
cutC_21A                      2  2.95e-06          A TAGAACAGATTAATAAAAC           
fumA_Pwa                      2  2.95e-06          A TGGCATTAATTAATAAATT           
osmB_21A                      2  3.34e-06          A TAGCAATAATTGATAAATT           
GZ59_06920                    2  3.34e-06          T TGTCACTAAATGATAATGA           
cysT_Dda                      2  7.04e-06          T TCAAACAGATTAATAAATA           
pflDC_21A                     2  8.91e-06          T TCGAAATAATTAATAATAA           
iutA                          2  1.01e-05          A TTGTATTTTTTGATAATAA           
sufA_Dda3937                  2  1.01e-05          A TAGCAAAAATTGATABlkEBlkS      	@�      @�     ATTT           
aer_Pwa                       2  1.25e-05          A TTCAATTGAATGATAATAA           
ssuA_Pwa                      2  1.25e-05          A TATCAGATATTGATAAAAA           
OA04_30010_2Iron/colicin      2  1.74e-05          A TCTCATTTATTATTAAATA           
fumC_Pwa                      2  2.17e-05          A TTACATTAATTGTTAATTT           
fumC_Pcc3-2                   2  2.17e-05          A TTACATTAATTGTTAATTT           
ansP_Dda                      2  2.95e-05          T TAGAAATGATTAATAAATA           
GZ59_35700                    2  3.26e-05          A TGGAATTTATTATTAATAA           
acnB_21A                      2  3.26e-05          A TAGCACAGTTGAATAAAAA           
fumC_Dda3937                  2  3.97e-05          A TTAAACAGATTGTTAATTT           
prtW_21A                      2  6.44e-05          T ATTTATTAATTGATAATAA           
ABC_21A                       2  6.44e-05          G ATGCATAAATTAATAAAAT           
mfs_Dda                       2  7.05e-05          TBlkEBlkS      
@�      @�      TTTAATTTTTTGATAAATA           
sufA_21A                      2  7.05e-05          A ATTAAGAGATTGATAATAA           
W5S_1403_Pwa_Pcc3-2           2  2.84e-04          A ATAAATTAAATGATAATTA           
sapA_Pwa                      2  3.51e-04          A TGTAAATAATTAATAAAAT           
wcaJ_Dda3937                  2  4.88e-04          T TAAAATTAAATAATAATAA           
wcaJ_21A_Pwa                  2  4.88e-04          T TAAAATTAAATAATAATAA           
ABC2_21A                      2  6.23e-04          T ATGAAATAAATAATAAAAA           
citW_Dda                      2  8.72e-04          T AATAATAAATTAATAAAAA           
ABC                           2  9.68e-04          A ATATAATAATTAATAATAA           
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 block diagrams
--------------------------------------------------------------------------------
SEQUENCE NAME       BlkEBlkS      @�      @�          POSITION P-VALUE  MOTIF DIAGRAM
-------------            ----------------  -------------
+dps_21A                            8e-08  1_[+1]
21A                               1.5e-07  1_[+1]
EamA_21A                          3.2e-07  1_[+1]
OA04_07760                        3.2e-07  1_[+1]
frdA_Pwa                          5.2e-07  1_[+1]
frdAB_21A                         5.2e-07  1_[+1]
acr_21A                           5.2e-07  1_[+1]
lipase_Pwa                        5.2e-07  1_[+1]
lipase_21A                        5.2e-07  1_[+1]
osmB_Pcc3-2                       5.9e-07  1_[+1]
Dda3937_02380                     6.7e-07  1_[+1]
acnB_Pwa                          7.6e-07  1_[+1]
wcaJ_Pcc3-2                       1.4e-06  1_[+1]
+dps2_Pcc3-2                      1.6e-06  1_[+1]
maeN_21A                          1.8e-06  1_[+1]
dps_Pwa                             2e-06  1_[+1]
frdAB_Pcc3-2                      2.3e-06  1_[+1]
cutC_21A                            3e-06  1_[+1BlkEBlkS      @�      @�     ]
fumA_Pwa                            3e-06  1_[+1]
osmB_21A                          3.3e-06  1_[+1]
GZ59_06920                        3.3e-06  1_[+1]
cysT_Dda                            7e-06  1_[+1]
pflDC_21A                         8.9e-06  1_[+1]
iutA                                1e-05  1_[+1]
sufA_Dda3937                        1e-05  1_[+1]
aer_Pwa                           1.2e-05  1_[+1]
ssuA_Pwa                          1.2e-05  1_[+1]
OA04_30010_2Iron/colicin          1.7e-05  1_[+1]
fumC_Pwa                          2.2e-05  1_[+1]
fumC_Pcc3-2                       2.2e-05  1_[+1]
ansP_Dda                          2.9e-05  1_[+1]
GZ59_35700                        3.3e-05  1_[+1]
acnB_21A                          3.3e-05  1_[+1]
fumC_Dda3937                        4e-05  1_[+1]
prtW_21A                          6.4e-05  1_[+1]
ABC_21A                           6.4e-05  1_[+1]
mfs_Dda                           7.1e-05  1_[+1]
sufA_21A                          7.1e-0BlkEBlkS      @�      @�     5  1_[+1]
W5S_1403_Pwa_Pcc3-2               0.00028  1_[+1]
sapA_Pwa                          0.00035  1_[+1]
wcaJ_Dda3937                      0.00049  1_[+1]
wcaJ_21A_Pwa                      0.00049  1_[+1]
ABC2_21A                          0.00062  1_[+1]
citW_Dda                          0.00087  1_[+1]
ABC                               0.00097  1_[+1]
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 in BLOCKS format
--------------------------------------------------------------------------------
BL   MOTIF 1 width=19 seqs=45
+dps_21A                 (    2) TCTCACATATTGATAAATA  1 
21A                      (    2) TAGCACTTTTTGATAAAAC  1 
EamA_21A                 (    2) TCATACAGATTGATAATAA  1 
OA04_07760               (    2) TCATACAGATTGATAATAA  1 
frdA_Pwa                 (    2) CCGTATTTATTGATAAAAA  1 
frdAB_21A                (    2) CCGTATTTATTGATBlkEBlkS      @�      @�     AAAAA  1 
acr_21A                  (    2) TTTCATTGAATGATAATAA  1 
lipase_Pwa               (    2) TTGAATTTATTGATAAAAA  1 
lipase_21A               (    2) TTGAATTTATTGATAAAAA  1 
osmB_Pcc3-2              (    2) TAGCAATAATTGATAAATC  1 
Dda3937_02380            (    2) TTACATTGAATGATAATAA  1 
acnB_Pwa                 (    2) TTGAATTGATTGTTAATTC  1 
wcaJ_Pcc3-2              (    2) TTAAATTGATTGATAAAAA  1 
+dps2_Pcc3-2             (    2) TGTCATATATTGATAAATA  1 
maeN_21A                 (    2) TGTTACTAATTGATAAAAA  1 
dps_Pwa                  (    2) TTACATATATTGATAAAAA  1 
frdAB_Pcc3-2             (    2) GCGTATTTATTGATAAAAA  1 
cutC_21A                 (    2) TAGAACAGATTAATAAAAC  1 
fumA_Pwa                 (    2) TGGCATTAATTAATAAATT  1 
osmB_21A                 (    2) TAGCAATAATTGATAAATT  1 
GZ59_06920               (    2) TGTCACTAAATGATAATGA  1 
cysT_Dda                 (    2) TCAAACAGATTAATAAATA  1 
pflDC_21A                (    2) TCGAAATAATTAATAATAA  1 
iutA         BlkEBlkS      @�      @�                 (    2) TTGTATTTTTTGATAATAA  1 
sufA_Dda3937             (    2) TAGCAAAAATTGATAATTT  1 
aer_Pwa                  (    2) TTCAATTGAATGATAATAA  1 
ssuA_Pwa                 (    2) TATCAGATATTGATAAAAA  1 
OA04_30010_2Iron/colicin (    2) TCTCATTTATTATTAAATA  1 
fumC_Pwa                 (    2) TTACATTAATTGTTAATTT  1 
fumC_Pcc3-2              (    2) TTACATTAATTGTTAATTT  1 
ansP_Dda                 (    2) TAGAAATGATTAATAAATA  1 
GZ59_35700               (    2) TGGAATTTATTATTAATAA  1 
acnB_21A                 (    2) TAGCACAGTTGAATAAAAA  1 
fumC_Dda3937             (    2) TTAAACAGATTGTTAATTT  1 
prtW_21A                 (    2) ATTTATTAATTGATAATAA  1 
ABC_21A                  (    2) ATGCATAAATTAATAAAAT  1 
mfs_Dda                  (    2) TTTAATTTTTTGATAAATA  1 
sufA_21A                 (    2) ATTAAGAGATTGATAATAA  1 
W5S_1403_Pwa_Pcc3-2      (    2) ATAAATTAAATGATAATTA  1 
sapA_Pwa                 (    2) TGTAAATAATTAATAAAAT  1 
wcaJ_Dda3937             (    2) TAABlkEBlkS      @�      @�     AATTAAATAATAATAA  1 
wcaJ_21A_Pwa             (    2) TAAAATTAAATAATAATAA  1 
ABC2_21A                 (    2) ATGAAATAAATAATAAAAA  1 
citW_Dda                 (    2) AATAATAAATTAATAAAAA  1 
ABC                      (    2) ATATAATAATTAATAATAA  1 
//

--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 position-specific scoring matrix
--------------------------------------------------------------------------------
log-odds matrix: alength= 4 w= 19 n= 90 bayes= 2.90507 E= 4.9e-127 
  -166    -16   -192    106 
  -101    201     67     18 
   -77   -116    233    -49 
   -22    292  -1214    -90 
   102  -1214  -1214  -1214 
  -147    216    -92     57 
   -66  -1214  -1214     88 
   -30  -1214    178    -27 
    89  -1214  -1214   -207 
  -147  -1214  -1214    114 
 -1214  -1214   -192    139 
   -56  -1214    299  -1214 
    82  -1214  -1214   -149 
 -1214  BlkEBlkS      @�      @�     -1214  -1214    142 
   102  -1214  -1214  -1214 
   102  -1214  -1214  -1214 
    17  -1214  -1214     25 
    39  -1214   -192    -17 
    57     84  -1214   -107 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 position-specific probability matrix
--------------------------------------------------------------------------------
letter-probability matrix: alength= 4 w= 19 nsites= 45 E= 4.9e-127 
 0.155556  0.044444  0.022222  0.777778 
 0.244444  0.200000  0.133333  0.422222 
 0.288889  0.022222  0.422222  0.266667 
 0.422222  0.377778  0.000000  0.200000 
 1.000000  0.000000  0.000000  0.000000 
 0.177778  0.222222  0.044444  0.555556 
 0.311111  0.000000  0.000000  0.688889 
 0.400000  0.000000  0.288889  0.311111 
 0.911111  0.000000  0.000000  0.088889 
 0.177778  0.000000  0.000000  0.822222 
 0.000000  0.000000  0.022222  0.977778 
 0.333333  0.0000BlkEBlkS      @�      @�     00  0.666667  0.000000 
 0.866667  0.000000  0.000000  0.133333 
 0.000000  0.000000  0.000000  1.000000 
 1.000000  0.000000  0.000000  0.000000 
 1.000000  0.000000  0.000000  0.000000 
 0.555556  0.000000  0.000000  0.444444 
 0.644444  0.000000  0.022222  0.333333 
 0.733333  0.088889  0.000000  0.177778 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 regular expression
--------------------------------------------------------------------------------
T[TAC][GAT][ACT]A[TC][TA][ATG]ATT[GA]ATAA[AT][AT]A
--------------------------------------------------------------------------------




Time  0.12 secs.

********************************************************************************


********************************************************************************
SUMMARY OF MOTIFS
*************************************************************************BlkEBlkS      @�      @�     *******

--------------------------------------------------------------------------------
	Combined block diagrams: non-overlapping sites with p-value < 0.0001
--------------------------------------------------------------------------------
SEQUENCE NAME            COMBINED P-VALUE  MOTIF DIAGRAM
-------------            ----------------  -------------
acnB_21A                         6.53e-05  1_[+1(3.26e-05)]
acnB_Pwa                         1.53e-06  1_[+1(7.64e-07)]
+dps_21A                         1.60e-07  1_[+1(7.99e-08)]
dps_Pwa                          4.09e-06  1_[+1(2.05e-06)]
+dps2_Pcc3-2                     3.10e-06  1_[+1(1.55e-06)]
OA04_07760                       6.48e-07  1_[+1(3.24e-07)]
GZ59_06920                       6.69e-06  1_[+1(3.34e-06)]
sufA_Dda3937                     2.01e-05  1_[+1(1.01e-05)]
wcaJ_21A_Pwa                     9.76e-04  20
wcaJ_Dda3937                     9.76e-04  20
fumC_Pcc3-2                      4.33e-05  1_[+1(2.17e-05)]
fumC_BlkEBlkS      @�      @�     Dda3937                     7.94e-05  1_[+1(3.97e-05)]
fumC_Pwa                         4.33e-05  1_[+1(2.17e-05)]
fumA_Pwa                         5.91e-06  1_[+1(2.95e-06)]
ssuA_Pwa                         2.50e-05  1_[+1(1.25e-05)]
wcaJ_Pcc3-2                      2.71e-06  1_[+1(1.36e-06)]
cutC_21A                         5.91e-06  1_[+1(2.95e-06)]
lipase_21A                       1.03e-06  1_[+1(5.17e-07)]
lipase_Pwa                       1.03e-06  1_[+1(5.17e-07)]
osmB_21A                         6.69e-06  1_[+1(3.34e-06)]
osmB_Pcc3-2                      1.18e-06  1_[+1(5.88e-07)]
acr_21A                          1.03e-06  1_[+1(5.17e-07)]
EamA_21A                         6.48e-07  1_[+1(3.24e-07)]
Dda3937_02380                    1.34e-06  1_[+1(6.70e-07)]
sufA_21A                         1.41e-04  1_[+1(7.05e-05)]
21A                              2.95e-07  1_[+1(1.47e-07)]
ABC_21A                          1.29e-04  1_[+1(6.44e-05)]
ABC2_21A                         1.25BlkEBlkS      @�      @�     e-03  20
prtW_21A                         1.29e-04  1_[+1(6.44e-05)]
pflDC_21A                        1.78e-05  1_[+1(8.91e-06)]
frdAB_21A                        1.03e-06  1_[+1(5.17e-07)]
frdAB_Pcc3-2                     4.63e-06  1_[+1(2.32e-06)]
maeN_21A                         3.57e-06  1_[+1(1.79e-06)]
mfs_Dda                          1.41e-04  1_[+1(7.05e-05)]
ansP_Dda                         5.90e-05  1_[+1(2.95e-05)]
iutA                             2.01e-05  1_[+1(1.01e-05)]
ABC                              1.93e-03  20
citW_Dda                         1.74e-03  20
cysT_Dda                         1.41e-05  1_[+1(7.04e-06)]
W5S_1403_Pwa_Pcc3-2              5.67e-04  20
OA04_30010_2Iron/colicin         3.49e-05  1_[+1(1.74e-05)]
sapA_Pwa                         7.01e-04  20
aer_Pwa                          2.50e-05  1_[+1(1.25e-05)]
frdA_Pwa                         1.03e-06  1_[+1(5.17e-07)]
GZ59_35700                       6.53e-05  1_[+1(3.26e-05)]
-------------------BlkEBlkS      @�              -------------------------------------------------------------

********************************************************************************


********************************************************************************
Stopped because nmotifs = 1 reached.
********************************************************************************

CPU: Ptushka.local

********************************************************************************
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 BlkEBlkS       @�      @�     @�B     ????   A�V���  A�V���  Rob.hmm                                                                                                                                                                                                                         HMMER3/f [3.1b1 | May 2013]
NAME  stock
LENG  20
MAXL  72
ALPH  DNA
RF    no
MM    no
CONS  yes
CS    no
MAP   yes
DATE  Sun Jan 10 08:53:50 2016
NSEQ  45
EFFN  45.000000
CKSUM 1156235116
GA    11.00
TC    12.00
NC    10.00
STATS LOCAL MSV       -6.7545  0.76307
STATS LOCAL VITERBI   -6.8574  0.76307
STATS LOCAL FORWARD   -2.6228  0.76307
HMM          A        C        G        T   
            m->m     m->i     m->d     i->m     i->i     d->m     d->d
  COMPO   0.73361  2.78447  2.34703  1.01497
          1.38629  1.38629  1.38629  1.38629
          0.00425  6.15698  6.15698  1.46634  0.26236  0.00000        *
      1   0.53037  2.76670  2.67595  1.27330      1 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.BlkEBlkS      @�      @��     00425  6.15698  6.15698  1.46634  0.26236  1.09861  0.40547
      2   1.82853  2.72629  2.79580  0.33852      2 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00425  6.15698  6.15698  1.46634  0.26236  1.09861  0.40547
      3   1.35534  1.57567  1.90678  0.95007      3 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00425  6.15698  6.15698  1.46634  0.26236  1.09861  0.40547
      4   1.34601  2.93934  0.85897  1.33474      4 g - - -
          1.38629  1.38629  1.38629  1.38629
          0.00425  6.15698  6.15698  1.46634  0.26236  1.09861  0.40547
      5   0.94803  0.94898  4.31781  1.55102      5 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00425  6.15698  6.15698  1.46634  0.26236  1.09861  0.40547
      6   0.00390  7.07185  6.21368  6.86971      6 A - - -
          1.38629  1.38629  1.38629  1.38629
          0.00425  6.15698  6.15698  1.46634  0.26236  1.09861  0.40547
      7   1.76737  1.38564  2.66090  0.67497   BlkEBlkS      @�      @�        7 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00425  6.15698  6.15698  1.46634  0.26236  1.09861  0.40547
      8   1.14466  5.31050  5.83573  0.39481      8 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00425  6.15698  6.15698  1.46634  0.26236  1.09861  0.40547
      9   1.00063  3.74411  1.19125  1.18792      9 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00425  6.15698  6.15698  1.46634  0.26236  1.09861  0.40547
     10   0.13559  5.68902  6.05760  2.11136     10 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00425  6.15698  6.15698  1.46634  0.26236  1.09861  0.40547
     11   1.68106  5.34990  5.93498  0.21514     11 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00425  6.15698  6.15698  1.46634  0.26236  1.09861  0.40547
     12   5.97331  5.60751  2.98941  0.05819     12 T - - -
          1.38629  1.38629  1.38629  1.38629
          0.00425  6.15698  6.15698  1.46634  0.2BlkEBlkS      @�      @�     6236  1.09861  0.40547
     13   1.11873  5.72665  0.40656  5.49462     13 g - - -
          1.38629  1.38629  1.38629  1.38629
          0.00425  6.15698  6.15698  1.46634  0.26236  1.09861  0.40547
     14   0.15131  5.66051  6.04302  2.00572     14 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00425  6.15698  6.15698  1.46634  0.26236  1.09861  0.40547
     15   6.04132  5.79428  6.14173  0.00760     15 T - - -
          1.38629  1.38629  1.38629  1.38629
          0.00425  6.15698  6.15698  1.46634  0.26236  1.09861  0.40547
     16   0.00390  7.07185  6.21368  6.86971     16 A - - -
          1.38629  1.38629  1.38629  1.38629
          0.00425  6.15698  6.15698  1.46634  0.26236  1.09861  0.40547
     17   0.00390  7.07185  6.21368  6.86971     17 A - - -
          1.38629  1.38629  1.38629  1.38629
          0.00425  6.15698  6.15698  1.46634  0.26236  1.09861  0.40547
     18   0.58646  5.34382  5.80979  0.83026     18 a - - -
          1.38629  1.386BlkEBlkS      @�              29  1.38629  1.38629
          0.00425  6.15698  6.15698  1.46634  0.26236  1.09861  0.40547
     19   0.46134  4.31366  3.04748  1.17539     19 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00425  6.15698  6.15698  1.46634  0.26236  1.09861  0.40547
     20   0.33985  2.28196  4.73102  1.73035     20 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00213  6.15486        *  1.46634  0.26236  0.00000        *
//
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              BlkEBlkS      @�              BMap   %   0         0         0        0        0         0        0         0         0         $0        (0        ,0        00        40        80        <0        @0        D0      	  H0      
  L0        P0        T0        X0        \0        `0        d0        h0        l0        p0        t0        x0        |0         �0        �0        �0        �0        �0                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  BlkE