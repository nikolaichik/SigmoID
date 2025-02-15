VFSv   BlkS       @D      @�          �BlkEBlkS       @�              @8      fold    A�V���  A�V���  /                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         BlkEBlkS       @�      @�`     @�,     ????   A�V���  A�V���  RpoN.fasta                                                                                                                                                                                                                      >nifF(nifA_upstream)_3937
CCAAAACTGGCACGGGATTCGCACTAACAG
>nifU(nifA)_3937
CTGTGACTGGCATCACATTTGCTCTGACTC
>nifE(nifA)_3937
TCAGCGCTGGCCTGCGTTTTGCACCGTCCG
>nifU(nifA)_SCRI
TTGTGAATGGCATCACATTTGCTTGTTTTG
>nifF(nifA)_21A
CCAAATTTGGCATGATATTCGCATCTCACT
>nifF(nifA)_SCRI
CCAAATTTGGCATGATATTCGCACCTCACT
>nifE(nifA)_JG10-08
TAATTTATGGCCTGTGAATTGCACAAAAAG
>hcp(VasH)_21A_SCRI
TATGAATTGGCATACGAATTGCTATACAGA
>occQ(NtrC)_21A
TAAAACGTGGCCCGACTATTGCTTAGCTTT
>hcp2(VasH)_21A
TAAAAATTGGCATGGGGATTGCTATACAGA
>glmZ(GlrR)_21A
TTGATGTTGGCATGATACGTGCATTTTAAT
>aapJ(NtrC)_21A
AGAAAACTGGCATTTTATTTGCTTTGCTCT
>nifJ(NifA)_21A(_SCRI1043)
CTCGACATGGCACAGGCTGTGCTACTGACT
>hrpL(HrpS)_21A_SCRI1043
TTTGGGCTGGCATAAGGCTTGCTCTTCCGT
>norV(NorR)_21A_SCRI1043
TAAAAACTGGCBlkEBlkS      @�      @�`     ACGCTTCCTGCAATCTTTA
>glnK(NtrC)_21A_SCRI1043
TCATTTATGGCACACCGTTTGCTTTAATCA
>EV46_02020(NtrC)_Pat21A_JG10-08_operon_with_transglutaminase_and_peptidase_
TCCAAAATGGCGCATTTTATGCATTGTCCT
>pspG(PspF)_Pat21A_JG10-08
CGCATCTTGGCACGATTCTTGTTATAGCTT
>hydN(HyfR)_21A
TATAAATTGGCACGTTTTATGTATACCTGA
>potA(NtrC)_21A_Pca3-2
TCGTATCCGGCATGGTTTATGCATCCTTAT
>GZ59_01430 NtrC+
TATAATCTGGCGTAATAATTGCAGACCCTT
>rtcB(RtcR)_Pca3-2
AGAAAACTGGCACGCCTTTCGCTATATCTA
>hyfA_Pca3-2
TAAAAACTGGCATGAATTATGCCTGTAGTG
>hydN_Pca3-2 low score (5.3)
TATGATTTGGCGCGTTTTGTGCATGTTTGG
>Dda3937_RS18100 decarboxylase NtrC+ score 6.4
TTATAGCTGGCACGCTAGTTGCAATGACAA
>Dda3937_RS15110 P-II-2 NtrC+ score 9.9
ACATTTATGGCACACGATTTGCTTTAAGTG
>gltI_Dda3737 NtrC+ score 9.6
TCATTTTTGGCACACTACTTGCTACTCATT
>nac_Dda3737 NtrC+ score 9.1
AATGATCTGGCGCGCTTCTTGCTACTAGTT
>hisJ_Dda3737 NtrC+ score 8.1
TTCTTTATGGCATAAAATTTGCTGTGTTTT
>Dda3937_RS06285 NtrC+ ABC transporter permease score 6.7
GCTGTGCTGGCATGACCCTTGCTTGTATAG
>glnC(NtrC)_21A
AAAAAGTTGGBlkEBlkS      @�              CACACTTTTAGCTTTAGTCT
>hisJ(NtrC)_21A
TTCATTGTGGCATGAATACTGCTTATGAAA
>GZ59_35090(NtrC)_21A
TGGAATCTGGCATGCTCCTTGCTTAGTATC
>pspA(PspF)_21A
TAAAAGTTGGCATGCTTATTGATATATCTA
>GZ59_04100(NtrC)_21A
TCCAAAATGGCGCATTTTATGCATTGTCCT
>gltI(NtrC)_21A
TTATTTATGGCACGGTATTTGCCTCTTATT                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     BlkEBlkS       @�      @�0     @�8     ????   A�V���  A�V���  RpoN.options                                                                                                                                                                                                                    ////
// nhmmer options
////


// Trusted cutoff. Bit score per-sequence cutoff, set according to the lowest scores seen for true homologous sequences that were above the GA gathering thresholds, when gathering members of the alignment
#=GF TC 8.6 8.6


// Gathering threshold. Bit score per-sequence cutoff used in gathering the members of the alignment
#=GF GA 8.2 8.2


//Noise cutoff. Bit score per-sequence cutoff, set according to the highest scores seen for unrelated sequences
#=GF NC 7.9 7.9


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
HmmGen.-q bound_moiety#RpoN alternative sigma factor


// MASTgen p-value cutoff
mastGen.-V 3e-6


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         BlkEBlkS       @�              @y�     ????   A�V���  A�V���  RpoN.info                                                                                                                                                                                                                       Primary hmm profile built on the basis of the RpoN(sigma54)-dependent E.coli promoters. This profile was used to search various Pectobacterium genomes. The promoters located in front of at least two ortologous genes from different species were used to make the final profile. Only the promoters with a bEBP binding site upsrteam are used in this profile. The final profile is build from 36 unique sequences. 
                                                                                                                                                                                                                                                                                                                                       BlkEBlkS       @�      @�     @Ӯ@    ????   A�V���  A�V���  meme.txt                                                                                                                                                                                                                        ********************************************************************************
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
nifF(nifA_upstreBlkEBlkS      @�      @�     am)_3937 1.0000     30  nifU(nifA)_3937          1.0000     30  
nifE(nifA)_3937          1.0000     30  nifU(nifA)_SCRI          1.0000     30  
nifF(nifA)_21A           1.0000     30  nifF(nifA)_SCRI          1.0000     30  
nifE(nifA)_JG10-08       1.0000     30  hcp(VasH)_21A_SCRI       1.0000     30  
occQ(NtrC)_21A           1.0000     30  hcp2(VasH)_21A           1.0000     30  
glmZ(GlrR)_21A           1.0000     30  aapJ(NtrC)_21A           1.0000     30  
nifJ(NifA)_21A(_SCRI1043 1.0000     30  hrpL(HrpS)_21A_SCRI1043  1.0000     30  
norV(NorR)_21A_SCRI1043  1.0000     30  glnK(NtrC)_21A_SCRI1043  1.0000     30  
EV46_02020(NtrC)_Pat21A_ 1.0000     30  pspG(PspF)_Pat21A_JG10-0 1.0000     30  
hydN(HyfR)_21A           1.0000     30  potA(NtrC)_21A_Pca3-2    1.0000     30  
GZ59_01430               1.0000     30  rtcB(RtcR)_Pca3-2        1.0000     30  
hyfA_Pca3-2              1.0000     30  hydN_Pca3-2              1.0000     30  
Dda3937_RS18100          1.0000     BlkEBlkS      @�      @�     30  Dda3937_RS15110          1.0000     30  
gltI_Dda3737             1.0000     30  nac_Dda3737              1.0000     30  
hisJ_Dda3737             1.0000     30  Dda3937_RS06285          1.0000     30  
glnC(NtrC)_21A           1.0000     30  hisJ(NtrC)_21A           1.0000     30  
GZ59_35090(NtrC)_21A     1.0000     30  pspA(PspF)_21A           1.0000     30  
GZ59_04100(NtrC)_21A     1.0000     30  gltI(NtrC)_21A           1.0000     30  
********************************************************************************

********************************************************************************
COMMAND LINE SUMMARY
********************************************************************************
This information can also be useful in the event you wish to report a
problem with the MEME software.

command: meme -nmotifs 1 -dna -text /private/var/folders/1k/4vs0wmnd75371kbm6p5jbmxr0000gn/T/TemporaryItems/alignment.tmp 

model:  mod=         zoops    nmotifs=         1  BlkEBlkS      @�      @�       evt=           inf
object function=  E-value of product of p-values
width:  minw=            8    maxw=           30    minic=        0.00
width:  wg=             11    ws=              1    endgaps=       yes
nsites: minsites=        2    maxsites=       36    wnsites=       0.8
theta:  prob=            1    spmap=         uni    spfuzz=        0.5
global: substring=     yes    branching=      no    wbranch=        no
em:     prior=   dirichlet    b=            0.01    maxiter=        50
        distance=    1e-05
data:   n=            1080    N=              36
strands: +
sample: seed=            0    seqfrac=         1
Letter frequencies in dataset:
A 0.238 C 0.204 G 0.203 T 0.356 
Background letter frequencies (from dataset with add-one prior applied):
A 0.238 C 0.204 G 0.203 T 0.355 
********************************************************************************


********************************************************************************
MOTIF  1 MEME	width =  23 BlkEBlkS      @�      @�      sites =  36  llr = 498  E-value = 1.0e-132
********************************************************************************
--------------------------------------------------------------------------------
	Motif 1 Description
--------------------------------------------------------------------------------
Simplified        A  1355633::::8:341421:::4
pos.-specific     C  232::14:::a151321211:91
probability       G  :112121:aa:1:6121:1:a::
matrix            T  7323343a::::5:254679:16

         bits    2.3         ***         *  
                 2.1         ***         *  
                 1.8         ***         ** 
                 1.6         ***         ** 
Relative         1.4        ****         ** 
Entropy          1.2        *****        ** 
(19.9 bits)      0.9        *******     *** 
                 0.7        *******     *** 
                 0.5 *  **  *******    *****
                 0.2 ***** *****************
                 0.0 -----------------------

MultileBlkEBlkS      @�      @�     vel           TAAAATCTGGCATGATATTTGCT
consensus             C TTAT     CACGTC    A
sequence              T    A                
                                            
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 sites sorted by position p-value
--------------------------------------------------------------------------------
Sequence name             Start   P-value                     Site        
-------------             ----- ---------            -----------------------
norV(NorR)_21A_SCRI1043       1  6.67e-10          . TAAAAACTGGCACGCTTCCTGCA ATCTTTA   
nifF(nifA_upstream)_3937      1  2.44e-09          . CCAAAACTGGCACGGGATTCGCA CTAACAG   
nifF(nifA)_SCRI               1  4.04e-09          . CCAAATTTGGCATGATATTCGCA CCTCACT   
nifF(nifA)_21A                1  4.04e-09          . CCAAATTTGGCATGATATTCGCA TCTCACT   
GZ59_35090(NtrC)_21A         BlkEBlkS      @�      @�      1  1.01e-08          . TGGAATCTGGCATGCTCCTTGCT TAGTATC   
gltI_Dda3737                  1  1.17e-08          . TCATTTTTGGCACACTACTTGCT ACTCATT   
hcp2(VasH)_21A                1  1.17e-08          . TAAAAATTGGCATGGGGATTGCT ATACAGA   
Dda3937_RS18100               1  1.55e-08          . TTATAGCTGGCACGCTAGTTGCA ATGACAA   
rtcB(RtcR)_Pca3-2             1  1.78e-08          . AGAAAACTGGCACGCCTTTCGCT ATATCTA   
GZ59_01430                    1  2.65e-08          . TATAATCTGGCGTAATAATTGCA GACCCTT   
hcp(VasH)_21A_SCRI            1  3.41e-08          . TATGAATTGGCATACGAATTGCT ATACAGA   
Dda3937_RS15110               1  4.36e-08          . ACATTTATGGCACACGATTTGCT TTAAGTG   
hyfA_Pca3-2                   1  4.92e-08          . TAAAAACTGGCATGAATTATGCC TGTAGTG   
nac_Dda3737                   1  7.80e-08          . AATGATCTGGCGCGCTTCTTGCT ACTAGTT   
glnK(NtrC)_21A_SCRI1043       1  7.80e-08          . TCATTTATGGCACACCGTTTGCT TTAATCA   
pspA(PspF)_21A                1  1.20e-07          . BlkEBlkS      @�      @�     TAAAAGTTGGCATGCTTATTGAT ATATCTA   
gltI(NtrC)_21A                1  1.48e-07          . TTATTTATGGCACGGTATTTGCC TCTTATT   
glmZ(GlrR)_21A                1  1.48e-07          . TTGATGTTGGCATGATACGTGCA TTTTAAT   
GZ59_04100(NtrC)_21A          1  2.00e-07          . TCCAAAATGGCGCATTTTATGCA TTGTCCT   
glnC(NtrC)_21A                1  2.00e-07          . AAAAAGTTGGCACACTTTTAGCT TTAGTCT   
EV46_02020(NtrC)_Pat21A_      1  2.00e-07          . TCCAAAATGGCGCATTTTATGCA TTGTCCT   
occQ(NtrC)_21A                1  2.42e-07          . TAAAACGTGGCCCGACTATTGCT TAGCTTT   
nifE(nifA)_3937               1  3.21e-07          . TCAGCGCTGGCCTGCGTTTTGCA CCGTCCG   
aapJ(NtrC)_21A                1  3.84e-07          . AGAAAACTGGCATTTTATTTGCT TTGCTCT   
hisJ_Dda3737                  1  4.19e-07          . TTCTTTATGGCATAAAATTTGCT GTGTTTT   
nifE(nifA)_JG10-08            1  4.58e-07          . TAATTTATGGCCTGTGAATTGCA CAAAAAG   
hydN_Pca3-2                   1  5.90e-07          . TATGATTTGGCGCGTTTTGTGCA BlkEBlkS      	@�      @�     TGTTTGG   
potA(NtrC)_21A_Pca3-2         1  7.54e-07          . TCGTATCCGGCATGGTTTATGCA TCCTTAT   
hydN(HyfR)_21A                1  8.16e-07          . TATAAATTGGCACGTTTTATGTA TACCTGA   
hrpL(HrpS)_21A_SCRI1043       1  8.83e-07          . TTTGGGCTGGCATAAGGCTTGCT CTTCCGT   
nifU(nifA)_SCRI               1  1.20e-06          . TTGTGAATGGCATCACATTTGCT TGTTTTG   
nifU(nifA)_3937               1  1.39e-06          . CTGTGACTGGCATCACATTTGCT CTGACTC   
Dda3937_RS06285               1  1.49e-06          . GCTGTGCTGGCATGACCCTTGCT TGTATAG   
pspG(PspF)_Pat21A_JG10-0      1  2.57e-06          . CGCATCTTGGCACGATTCTTGTT ATAGCTT   
hisJ(NtrC)_21A                1  2.74e-06          . TTCATTGTGGCATGAATACTGCT TATGAAA   
nifJ(NifA)_21A(_SCRI1043      1  2.93e-06          . CTCGACATGGCACAGGCTGTGCT ACTGACT   
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 block diagrams
--BlkEBlkS      
@�      @�     ------------------------------------------------------------------------------
SEQUENCE NAME            POSITION P-VALUE  MOTIF DIAGRAM
-------------            ----------------  -------------
norV(NorR)_21A_SCRI1043           6.7e-10  [+1]_7
nifF(nifA_upstream)_3937          2.4e-09  [+1]_7
nifF(nifA)_SCRI                     4e-09  [+1]_7
nifF(nifA)_21A                      4e-09  [+1]_7
GZ59_35090(NtrC)_21A                1e-08  [+1]_7
gltI_Dda3737                      1.2e-08  [+1]_7
hcp2(VasH)_21A                    1.2e-08  [+1]_7
Dda3937_RS18100                   1.6e-08  [+1]_7
rtcB(RtcR)_Pca3-2                 1.8e-08  [+1]_7
GZ59_01430                        2.6e-08  [+1]_7
hcp(VasH)_21A_SCRI                3.4e-08  [+1]_7
Dda3937_RS15110                   4.4e-08  [+1]_7
hyfA_Pca3-2                       4.9e-08  [+1]_7
nac_Dda3737                       7.8e-08  [+1]_7
glnK(NtrC)_21A_SCRI1043           7.8e-08  [+1]_7
pspA(PspF)_21A                    1.2e-07  [+1]_7BlkEBlkS      @�      @�     
gltI(NtrC)_21A                    1.5e-07  [+1]_7
glmZ(GlrR)_21A                    1.5e-07  [+1]_7
GZ59_04100(NtrC)_21A                2e-07  [+1]_7
glnC(NtrC)_21A                      2e-07  [+1]_7
EV46_02020(NtrC)_Pat21A_            2e-07  [+1]_7
occQ(NtrC)_21A                    2.4e-07  [+1]_7
nifE(nifA)_3937                   3.2e-07  [+1]_7
aapJ(NtrC)_21A                    3.8e-07  [+1]_7
hisJ_Dda3737                      4.2e-07  [+1]_7
nifE(nifA)_JG10-08                4.6e-07  [+1]_7
hydN_Pca3-2                       5.9e-07  [+1]_7
potA(NtrC)_21A_Pca3-2             7.5e-07  [+1]_7
hydN(HyfR)_21A                    8.2e-07  [+1]_7
hrpL(HrpS)_21A_SCRI1043           8.8e-07  [+1]_7
nifU(nifA)_SCRI                   1.2e-06  [+1]_7
nifU(nifA)_3937                   1.4e-06  [+1]_7
Dda3937_RS06285                   1.5e-06  [+1]_7
pspG(PspF)_Pat21A_JG10-0          2.6e-06  [+1]_7
hisJ(NtrC)_21A                    2.7e-06  [+1]_7
nifJ(NifA)_21A(_SCRI1043          2.9e-06BlkEBlkS      @�      @�       [+1]_7
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 in BLOCKS format
--------------------------------------------------------------------------------
BL   MOTIF 1 width=23 seqs=36
norV(NorR)_21A_SCRI1043  (    1) TAAAAACTGGCACGCTTCCTGCA  1 
nifF(nifA_upstream)_3937 (    1) CCAAAACTGGCACGGGATTCGCA  1 
nifF(nifA)_SCRI          (    1) CCAAATTTGGCATGATATTCGCA  1 
nifF(nifA)_21A           (    1) CCAAATTTGGCATGATATTCGCA  1 
GZ59_35090(NtrC)_21A     (    1) TGGAATCTGGCATGCTCCTTGCT  1 
gltI_Dda3737             (    1) TCATTTTTGGCACACTACTTGCT  1 
hcp2(VasH)_21A           (    1) TAAAAATTGGCATGGGGATTGCT  1 
Dda3937_RS18100          (    1) TTATAGCTGGCACGCTAGTTGCA  1 
rtcB(RtcR)_Pca3-2        (    1) AGAAAACTGGCACGCCTTTCGCT  1 
GZ59_01430               (    1) TATAATCTGGCGTAATAATTGCA  1 
hcp(VasH)_21A_SCRI       (    1) TATGAATTGGCATACGAATTGCT  1 
Dda3937_RS15BlkEBlkS      @�      @�     110          (    1) ACATTTATGGCACACGATTTGCT  1 
hyfA_Pca3-2              (    1) TAAAAACTGGCATGAATTATGCC  1 
nac_Dda3737              (    1) AATGATCTGGCGCGCTTCTTGCT  1 
glnK(NtrC)_21A_SCRI1043  (    1) TCATTTATGGCACACCGTTTGCT  1 
pspA(PspF)_21A           (    1) TAAAAGTTGGCATGCTTATTGAT  1 
gltI(NtrC)_21A           (    1) TTATTTATGGCACGGTATTTGCC  1 
glmZ(GlrR)_21A           (    1) TTGATGTTGGCATGATACGTGCA  1 
GZ59_04100(NtrC)_21A     (    1) TCCAAAATGGCGCATTTTATGCA  1 
glnC(NtrC)_21A           (    1) AAAAAGTTGGCACACTTTTAGCT  1 
EV46_02020(NtrC)_Pat21A_ (    1) TCCAAAATGGCGCATTTTATGCA  1 
occQ(NtrC)_21A           (    1) TAAAACGTGGCCCGACTATTGCT  1 
nifE(nifA)_3937          (    1) TCAGCGCTGGCCTGCGTTTTGCA  1 
aapJ(NtrC)_21A           (    1) AGAAAACTGGCATTTTATTTGCT  1 
hisJ_Dda3737             (    1) TTCTTTATGGCATAAAATTTGCT  1 
nifE(nifA)_JG10-08       (    1) TAATTTATGGCCTGTGAATTGCA  1 
hydN_Pca3-2              (    1) TATGATTTGGCGCGTTTTGTGCA  1 
potA(NtrC)_21A_Pca3-2    (  BlkEBlkS      @�      @�       1) TCGTATCCGGCATGGTTTATGCA  1 
hydN(HyfR)_21A           (    1) TATAAATTGGCACGTTTTATGTA  1 
hrpL(HrpS)_21A_SCRI1043  (    1) TTTGGGCTGGCATAAGGCTTGCT  1 
nifU(nifA)_SCRI          (    1) TTGTGAATGGCATCACATTTGCT  1 
nifU(nifA)_3937          (    1) CTGTGACTGGCATCACATTTGCT  1 
Dda3937_RS06285          (    1) GCTGTGCTGGCATGACCCTTGCT  1 
pspG(PspF)_Pat21A_JG10-0 (    1) CGCATCTTGGCACGATTCTTGTT  1 
hisJ(NtrC)_21A           (    1) TTCATTGTGGCATGAATACTGCT  1 
nifJ(NifA)_21A(_SCRI1043 (    1) CTCGACATGGCACAGGCTGTGCT  1 
//

--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 position-specific scoring matrix
--------------------------------------------------------------------------------
log-odds matrix: alength= 4 w= 23 n= 288 bayes= 2.95986 E= 1.0e-132 
   -78    -29   -287     91 
    49     58    -87    -51 
   107    -29    -55    -87 
   115  -1181     -6    -BlkEBlkS      @�      @�     35 
   136   -287   -128    -35 
    49   -129     -6     13 
     7     93   -187    -22 
 -1181   -287  -1181    145 
 -1181  -1181    230  -1181 
 -1181  -1181    230  -1181 
 -1181    229  -1181  -1181 
   171   -129    -55  -1181 
 -1181    121  -1181     57 
    36   -187    159   -367 
    60     71    -55   -109 
  -151    -29     13     57 
    81   -129   -128     23 
   -29     12   -287     65 
   -78   -187   -128    102 
  -310    -88  -1181    128 
 -1181  -1181    230  -1181 
  -310    217  -1181   -267 
    71   -187  -1181     65 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 position-specific probability matrix
--------------------------------------------------------------------------------
letter-probability matrix: alength= 4 w= 23 nsites= 36 E= 1.0e-132 
 0.138889  0.166667  0.027778  0.666667 
 0.333333  0.305556  0.111111  0.25000BlkEBlkS      @�      @�     0 
 0.500000  0.166667  0.138889  0.194444 
 0.527778  0.000000  0.194444  0.277778 
 0.611111  0.027778  0.083333  0.277778 
 0.333333  0.083333  0.194444  0.388889 
 0.250000  0.388889  0.055556  0.305556 
 0.000000  0.027778  0.000000  0.972222 
 0.000000  0.000000  1.000000  0.000000 
 0.000000  0.000000  1.000000  0.000000 
 0.000000  1.000000  0.000000  0.000000 
 0.777778  0.083333  0.138889  0.000000 
 0.000000  0.472222  0.000000  0.527778 
 0.305556  0.055556  0.611111  0.027778 
 0.361111  0.333333  0.138889  0.166667 
 0.083333  0.166667  0.222222  0.527778 
 0.416667  0.083333  0.083333  0.416667 
 0.194444  0.222222  0.027778  0.555556 
 0.138889  0.055556  0.083333  0.722222 
 0.027778  0.111111  0.000000  0.861111 
 0.000000  0.000000  1.000000  0.000000 
 0.027778  0.916667  0.000000  0.055556 
 0.388889  0.055556  0.000000  0.555556 
--------------------------------------------------------------------------------

----------------------------------------------BlkEBlkS      @�      @�     ----------------------------------
	Motif 1 regular expression
--------------------------------------------------------------------------------
T[ACT]A[AT][AT][TA][CTA]TGGCA[TC][GA][AC][TG][AT][TC]TTGC[TA]
--------------------------------------------------------------------------------




Time  0.16 secs.

********************************************************************************


********************************************************************************
SUMMARY OF MOTIFS
********************************************************************************

--------------------------------------------------------------------------------
	Combined block diagrams: non-overlapping sites with p-value < 0.0001
--------------------------------------------------------------------------------
SEQUENCE NAME            COMBINED P-VALUE  MOTIF DIAGRAM
-------------            ----------------  -------------
nifF(nifA_upstream)_3937         1.95e-08  [+1(2.44e-09)]_7
nifU(nifA)_39BlkEBlkS      @�      @�     37                  1.11e-05  [+1(1.39e-06)]_7
nifE(nifA)_3937                  2.56e-06  [+1(3.21e-07)]_7
nifU(nifA)_SCRI                  9.58e-06  [+1(1.20e-06)]_7
nifF(nifA)_21A                   3.23e-08  [+1(4.04e-09)]_7
nifF(nifA)_SCRI                  3.23e-08  [+1(4.04e-09)]_7
nifE(nifA)_JG10-08               3.66e-06  [+1(4.58e-07)]_7
hcp(VasH)_21A_SCRI               2.73e-07  [+1(3.41e-08)]_7
occQ(NtrC)_21A                   1.94e-06  [+1(2.42e-07)]_7
hcp2(VasH)_21A                   9.38e-08  [+1(1.17e-08)]_7
glmZ(GlrR)_21A                   1.18e-06  [+1(1.48e-07)]_7
aapJ(NtrC)_21A                   3.07e-06  [+1(3.84e-07)]_7
nifJ(NifA)_21A(_SCRI1043         2.34e-05  [+1(2.93e-06)]_7
hrpL(HrpS)_21A_SCRI1043          7.07e-06  [+1(8.83e-07)]_7
norV(NorR)_21A_SCRI1043          5.33e-09  [+1(6.67e-10)]_7
glnK(NtrC)_21A_SCRI1043          6.24e-07  [+1(7.80e-08)]_7
EV46_02020(NtrC)_Pat21A_         1.60e-06  [+1(2.00e-07)]_7
pspG(PspF)_Pat21A_JG10-0         2.06e-05  [+BlkEBlkS      @�      @�     1(2.57e-06)]_7
hydN(HyfR)_21A                   6.53e-06  [+1(8.16e-07)]_7
potA(NtrC)_21A_Pca3-2            6.03e-06  [+1(7.54e-07)]_7
GZ59_01430                       2.12e-07  [+1(2.65e-08)]_7
rtcB(RtcR)_Pca3-2                1.42e-07  [+1(1.78e-08)]_7
hyfA_Pca3-2                      3.93e-07  [+1(4.92e-08)]_7
hydN_Pca3-2                      4.72e-06  [+1(5.90e-07)]_7
Dda3937_RS18100                  1.24e-07  [+1(1.55e-08)]_7
Dda3937_RS15110                  3.49e-07  [+1(4.36e-08)]_7
gltI_Dda3737                     9.38e-08  [+1(1.17e-08)]_7
nac_Dda3737                      6.24e-07  [+1(7.80e-08)]_7
hisJ_Dda3737                     3.35e-06  [+1(4.19e-07)]_7
Dda3937_RS06285                  1.19e-05  [+1(1.49e-06)]_7
glnC(NtrC)_21A                   1.60e-06  [+1(2.00e-07)]_7
hisJ(NtrC)_21A                   2.20e-05  [+1(2.74e-06)]_7
GZ59_35090(NtrC)_21A             8.12e-08  [+1(1.01e-08)]_7
pspA(PspF)_21A                   9.62e-07  [+1(1.20e-07)]_7
GZ59_04100(NtrC)_BlkEBlkS      @�              21A             1.60e-06  [+1(2.00e-07)]_7
gltI(NtrC)_21A                   1.18e-06  [+1(1.48e-07)]_7
--------------------------------------------------------------------------------

********************************************************************************


********************************************************************************
Stopped because nmotifs = 1 reached.
********************************************************************************

CPU: Ptushka.local

********************************************************************************
                                                                                                                                                                                                                                                                                                                                                                                                                                       BlkEBlkS       @�      @�     @�)     ????   A�V���  A�V���  RpoN.hmm                                                                                                                                                                                                                        HMMER3/f [3.1b1 | May 2013]
NAME  stock
LENG  30
MAXL  85
ALPH  DNA
RF    no
MM    no
CONS  yes
CS    no
MAP   yes
DATE  Sun Jan 10 08:59:42 2016
NSEQ  36
EFFN  36.000000
CKSUM 1517599998
GA    8.20
TC    8.60
NC    7.90
STATS LOCAL MSV       -7.8692  0.76888
STATS LOCAL VITERBI   -7.8583  0.76888
STATS LOCAL FORWARD   -2.9248  0.76888
HMM          A        C        G        T   
            m->m     m->i     m->d     i->m     i->i     d->m     d->d
  COMPO   1.46802  1.56380  1.52845  1.06884
          1.38629  1.38629  1.38629  1.38629
          0.00525  5.94542  5.94542  1.46634  0.26236  0.00000        *
      1   1.87588  1.74245  2.77475  0.49541      1 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.005BlkEBlkS      @�      @�     25  5.94542  5.94542  1.46634  0.26236  1.09861  0.40547
      2   1.13501  1.25941  2.03068  1.33365      2 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00525  5.94542  5.94542  1.46634  0.26236  1.09861  0.40547
      3   0.80961  1.72462  1.79991  1.55395      3 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00525  5.94542  5.94542  1.46634  0.26236  1.09861  0.40547
      4   0.73034  3.53751  1.56023  1.27625      4 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00525  5.94542  5.94542  1.46634  0.26236  1.09861  0.40547
      5   0.58926  2.78333  2.20217  1.29877      5 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00525  5.94542  5.94542  1.46634  0.26236  1.09861  0.40547
      6   1.16926  2.18034  1.53542  1.01879      6 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00525  5.94542  5.94542  1.46634  0.26236  1.09861  0.40547
      7   1.43164  0.95685  2.43104  1.24120      BlkEBlkS      @�      @�     7 c - - -
          1.38629  1.38629  1.38629  1.38629
          0.00525  5.94542  5.94542  1.46634  0.26236  1.09861  0.40547
      8   5.48264  2.99496  5.74218  0.05912      8 T - - -
          1.38629  1.38629  1.38629  1.38629
          0.00525  5.94542  5.94542  1.46634  0.26236  1.09861  0.40547
      9   5.71942  6.69493  0.00609  6.47060      9 G - - -
          1.38629  1.38629  1.38629  1.38629
          0.00525  5.94542  5.94542  1.46634  0.26236  1.09861  0.40547
     10   5.71942  6.69493  0.00609  6.47060     10 G - - -
          1.38629  1.38629  1.38629  1.38629
          0.00525  5.94542  5.94542  1.46634  0.26236  1.09861  0.40547
     11   5.71633  0.01143  5.87264  5.24755     11 C - - -
          1.38629  1.38629  1.38629  1.38629
          0.00525  5.94542  5.94542  1.46634  0.26236  1.09861  0.40547
     12   0.28968  2.30352  2.00798  4.05545     12 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00525  5.94542  5.94542  1.46634  0.2623BlkEBlkS      @�      @�     6  1.09861  0.40547
     13   5.39737  0.79558  5.65946  0.61495     13 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00525  5.94542  5.94542  1.46634  0.26236  1.09861  0.40547
     14   1.32003  2.68820  0.48078  3.06681     14 g - - -
          1.38629  1.38629  1.38629  1.38629
          0.00525  5.94542  5.94542  1.46634  0.26236  1.09861  0.40547
     15   1.04085  1.19084  1.82711  1.70374     15 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00525  5.94542  5.94542  1.46634  0.26236  1.09861  0.40547
     16   2.16146  1.70938  1.51076  0.72748     16 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00525  5.94542  5.94542  1.46634  0.26236  1.09861  0.40547
     17   0.99876  2.16939  2.30418  0.87329     17 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00525  5.94542  5.94542  1.46634  0.26236  1.09861  0.40547
     18   1.59015  1.52511  2.84586  0.65311     18 t - - -
          1.38629  1.38629 BlkEBlkS      @�      @��      1.38629  1.38629
          0.00525  5.94542  5.94542  1.46634  0.26236  1.09861  0.40547
     19   1.80820  2.50860  2.25252  0.43150     19 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00525  5.94542  5.94542  1.46634  0.26236  1.09861  0.40547
     20   3.28739  2.25948  5.33186  0.15852     20 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00525  5.94542  5.94542  1.46634  0.26236  1.09861  0.40547
     21   5.71942  6.69493  0.00609  6.47060     21 G - - -
          1.38629  1.38629  1.38629  1.38629
          0.00525  5.94542  5.94542  1.46634  0.26236  1.09861  0.40547
     22   3.37719  0.11352  5.64625  2.66441     22 c - - -
          1.38629  1.38629  1.38629  1.38629
          0.00525  5.94542  5.94542  1.46634  0.26236  1.09861  0.40547
     23   0.99279  2.64298  4.22044  0.60951     23 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00525  5.94542  5.94542  1.46634  0.26236  1.09861  0.40547
     24   1.32979BlkEBlkS      @�      @�       1.72441  2.51696  0.74132     24 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00525  5.94542  5.94542  1.46634  0.26236  1.09861  0.40547
     25   1.67520  1.49863  1.97471  0.79742     25 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00525  5.94542  5.94542  1.46634  0.26236  1.09861  0.40547
     26   1.32734  1.98500  1.37863  1.06272     26 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00525  5.94542  5.94542  1.46634  0.26236  1.09861  0.40547
     27   1.37155  1.37806  1.93156  1.05183     27 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00525  5.94542  5.94542  1.46634  0.26236  1.09861  0.40547
     28   1.27704  1.21728  2.26486  1.13550     28 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00525  5.94542  5.94542  1.46634  0.26236  1.09861  0.40547
     29   1.51311  1.42334  1.90638  0.94097     29 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00525  BlkEBlkS      @�              5.94542  5.94542  1.46634  0.26236  1.09861  0.40547
     30   1.41024  2.46482  1.45914  0.82450     30 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00263  5.94280        *  1.46634  0.26236  0.00000        *
//
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       BlkEBlkS      @�              BMap   $   0         0         0        0        0         0        0         0          0        $0        (0        ,0        00        40        80        <0        @0      	  D0      
  H0        L0        P0        T0        X0        \0        `0        d0        h0        l0        p0         t0        x0        |0        �0        �0        �0        �0                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              BlkE