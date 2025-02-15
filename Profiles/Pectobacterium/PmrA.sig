VFSv   BlkS       @D      @�          @BlkEBlkS       @�              @8      fold    A�V��   A�V��   /                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         BlkEBlkS       @�              @�8     ????   A�V��   A�V��   PmrA.fasta                                                                                                                                                                                                                      >qseB_21A_PwaSCC3193
CCTTAAGATTCTGTTAAGA
>arnB_21A_PwaSCC3193
AATTAAGGTTGGCTTAAGG
>grcA_21A_PwaSCC3193
TTTTAAAATTGATTTAAGT
>pmrC_21A
TCTTAAGGTTGTATTAATT
>wcaJ_21A
TTTTAAATTTTTCTTAAGT
>rfbN_21A
ATTTAATTTTTGATTAAAT
>sfuA1_21A_PwaSCC3193
TCTTAAGGTTAAATTAAGG
>pmrC_Dda3937
TCTTAAGGTTGATTTAATT
>wcaJ_PwaSCC3193
TTTTAAATTTTGTTTAAGT
>pmrC_PwaSCC3193
TCTTAAGGTTGCATTAATT
>sfuA2_21A_PwaSCC3193
CCTTAATTTAACCTTAAGA
>fimA2_3-2
ATTTAAGGTTCGTTTAAGA
>evr1_3-2
CTTTAAGATAAGATTAAAA
>evr2_3-2
TTTTAATCTTATCTTAAAG
>hicB_3-2
CCTTAAAGTTAAATTAAAC
>tssB_3-2
GCTTAAGGTTAATTTAATT
>sfuA1_3-2
TCTTAAGGTTAAATTAAGA
>sfuA2_3-2
TCTTAATTTAACCTTAAGA
>rmlA_3-2
TCTTAATATTAAATTTATT                                                                                         BlkEBlkS       @�      @�`     @��     ????   A�V��   A�V��   PmrA.options                                                                                                                                                                                                                    ////
// nhmmer options
////


// Trusted cutoff. Bit score per-sequence cutoff, set according to the lowest scores seen for true homologous sequences that were above the GA gathering thresholds, when gathering members of the alignment
#=GF TC 10.3 10.3


// Gathering threshold. Bit score per-sequence cutoff used in gathering the members of the alignment
#=GF GA 9.9 9.9


//Noise cutoff. Bit score per-sequence cutoff, set according to the highest scores seen for unrelated sequences
#=GF NC 9.6 9.6


// use the gathering threshold from the calibrated profile
nhmmer.--cut_ga


////
// HmmGen options
////


// the alignment length
HmmGen.-L 19


// ignore sites inside ORFs (and risk missing some real ones!)
HmmGen.-i 


// featureBlkEBlkS      @�               key
HmmGen.-f protein_bind


// feature qualifier
HmmGen.-q bound_moiety#PmrA


// MASTgen p-value cutoff
mastGen.-V 1e-6


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   BlkEBlkS       @�              @��     ????   A�V��   A�V��   PmrA.info                                                                                                                                                                                                                       PmrA (BasR) together with its cognate sensor kinase PmrB (BasS) controls modification of membrane structure and function and may control few stress-related genes.

This profile was built starting with E.coli BasR binding sites described in  Ogasawara et al. (doi: 10.1099/mic.0.057745-0) and iteratively adding sites from Pectobacterium and Dickeya strains. Although PmrA is present in Dickeya genomes, the regulon has diverged significantly, therefore only one site from D. dadantii is used in this profile.  The final profile is based on 19 sites and is recommended only for Pectobacterium strains.                                                                                                                                        BlkEBlkS       @�      @�0     @��    ????   A�V��   A�V��   meme.txt                                                                                                                                                                                                                        ********************************************************************************
MEME - Motif discovery tool
********************************************************************************
MEME version 4.10.1 (Release date: Wed Mar 25 11:40:43 2015 +1000)

For further information on how to interpret these results or to get
a copy of the MEME software please access http://meme-suite.org .

This file may be used as input to the MAST algorithm for searching
sequence databases for matches to groups of motifs.  MAST is available
for interactive use and downloading at http://meme-suite.org .
********************************************************************************


***********************************************************BlkEBlkS      @�      @�0     *********************
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
qseB_21A_PwaSCC3BlkEBlkS      @�      @�     193      1.0000     19  arnB_21A_PwaSCC3193      1.0000     19  
grcA_21A_PwaSCC3193      1.0000     19  pmrC_21A                 1.0000     19  
wcaJ_21A                 1.0000     19  rfbN_21A                 1.0000     19  
sfuA1_21A_PwaSCC3193     1.0000     19  pmrC_Dda3937             1.0000     19  
wcaJ_PwaSCC3193          1.0000     19  pmrC_PwaSCC3193          1.0000     19  
sfuA2_21A_PwaSCC3193     1.0000     19  fimA2_3-2                1.0000     19  
evr1_3-2                 1.0000     19  evr2_3-2                 1.0000     19  
hicB_3-2                 1.0000     19  tssB_3-2                 1.0000     19  
sfuA1_3-2                1.0000     19  sfuA2_3-2                1.0000     19  
rmlA_3-2                 1.0000     19  
********************************************************************************

********************************************************************************
COMMAND LINE SUMMARY
******************************************************BlkEBlkS      @�      @�     **************************
This information can also be useful in the event you wish to report a
problem with the MEME software.

command: meme -nmotifs 1 -dna -text /private/var/folders/1k/4vs0wmnd75371kbm6p5jbmxr0000gn/T/TemporaryItems/alignment.tmp 

model:  mod=         zoops    nmotifs=         1    evt=           inf
object function=  E-value of product of p-values
width:  minw=            8    maxw=           19    minic=        0.00
width:  wg=             11    ws=              1    endgaps=       yes
nsites: minsites=        2    maxsites=       19    wnsites=       0.8
theta:  prob=            1    spmap=         uni    spfuzz=        0.5
global: substring=     yes    branching=      no    wbranch=        no
em:     prior=   dirichlet    b=            0.01    maxiter=        50
        distance=    1e-05
data:   n=             361    N=              19
strands: +
sample: seed=            0    seqfrac=         1
Letter frequencies in dataset:
A 0.343 C 0.075 G 0.122 TBlkEBlkS      @�      @�      0.460 
Background letter frequencies (from dataset with add-one prior applied):
A 0.342 C 0.077 G 0.123 T 0.458 
********************************************************************************


********************************************************************************
MOTIF  1 MEME	width =  17  sites =  19  llr = 216  E-value = 5.6e-053
********************************************************************************
--------------------------------------------------------------------------------
	Motif 1 Description
--------------------------------------------------------------------------------
Simplified        A  1::aa22:2544::9a2
pos.-specific     C  6:::::1::123:::::
probability       G  :::::55::331::::5
matrix            T  4aa::33a8223aa1:3

         bits    3.7                  
                 3.3                  
                 3.0                  
                 2.6                  
Relative         2.2                  
Entropy          1.9        BlkEBlkS      @�      @�               
(16.4 bits)      1.5 *  **          * 
                 1.1 *****  *    **** 
                 0.7 ****** **   *****
                 0.4 *****************
                 0.0 -----------------

Multilevel           CTTAAGGTTAAATTAAG
consensus            T    TT  GGC    T
sequence                  AA   TT    A
                                      
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 sites sorted by position p-value
--------------------------------------------------------------------------------
Sequence name             Start   P-value                  Site     
-------------             ----- ---------            -----------------
sfuA1_3-2                     2  3.95e-09          T CTTAAGGTTAAATTAAG A         
sfuA1_21A_PwaSCC3193          2  3.95e-09          T CTTAAGGTTAAATTAAG G         
pmrC_PwaSCC3193               2  2.15e-BlkEBlkS      @�      @�     08          T CTTAAGGTTGCATTAAT T         
arnB_21A_PwaSCC3193           2  7.02e-08          A ATTAAGGTTGGCTTAAG G         
fimA2_3-2                     2  1.72e-07          A TTTAAGGTTCGTTTAAG A         
pmrC_Dda3937                  2  1.72e-07          T CTTAAGGTTGATTTAAT T         
pmrC_21A                      2  1.88e-07          T CTTAAGGTTGTATTAAT T         
tssB_3-2                      2  3.09e-07          G CTTAAGGTTAATTTAAT T         
sfuA2_3-2                     2  8.93e-07          T CTTAATTTAACCTTAAG A         
sfuA2_21A_PwaSCC3193          2  8.93e-07          C CTTAATTTAACCTTAAG A         
qseB_21A_PwaSCC3193           2  9.79e-07          C CTTAAGATTCTGTTAAG A         
hicB_3-2                      2  1.09e-06          C CTTAAAGTTAAATTAAA C         
grcA_21A_PwaSCC3193           2  1.18e-05          T TTTAAAATTGATTTAAG T         
evr1_3-2                      2  1.55e-05          C TTTAAGATAAGATTAAA A         
wcaJ_21A                      2  2.40e-05      BlkEBlkS      @�      @�         T TTTAAATTTTTCTTAAG T         
wcaJ_PwaSCC3193               2  3.00e-05          T TTTAAATTTTGTTTAAG T         
evr2_3-2                      2  3.39e-05          T TTTAATCTTATCTTAAA G         
rfbN_21A                      2  6.29e-05          A TTTAATTTTTGATTAAA T         
rmlA_3-2                      2  7.78e-05          T CTTAATATTAAATTTAT T         
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 block diagrams
--------------------------------------------------------------------------------
SEQUENCE NAME            POSITION P-VALUE  MOTIF DIAGRAM
-------------            ----------------  -------------
sfuA1_3-2                         3.9e-09  1_[+1]_1
sfuA1_21A_PwaSCC3193              3.9e-09  1_[+1]_1
pmrC_PwaSCC3193                   2.1e-08  1_[+1]_1
arnB_21A_PwaSCC3193                 7e-08  1_[+1]_1
fimA2_3-2                         1.7e-BlkEBlkS      @�      @�     07  1_[+1]_1
pmrC_Dda3937                      1.7e-07  1_[+1]_1
pmrC_21A                          1.9e-07  1_[+1]_1
tssB_3-2                          3.1e-07  1_[+1]_1
sfuA2_3-2                         8.9e-07  1_[+1]_1
sfuA2_21A_PwaSCC3193              8.9e-07  1_[+1]_1
qseB_21A_PwaSCC3193               9.8e-07  1_[+1]_1
hicB_3-2                          1.1e-06  1_[+1]_1
grcA_21A_PwaSCC3193               1.2e-05  1_[+1]_1
evr1_3-2                          1.5e-05  1_[+1]_1
wcaJ_21A                          2.4e-05  1_[+1]_1
wcaJ_PwaSCC3193                     3e-05  1_[+1]_1
evr2_3-2                          3.4e-05  1_[+1]_1
rfbN_21A                          6.3e-05  1_[+1]_1
rmlA_3-2                          7.8e-05  1_[+1]_1
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 in BLOCKS format
--------------------------------------------------------------BlkEBlkS      	@�      @�     ------------------
BL   MOTIF 1 width=17 seqs=19
sfuA1_3-2                (    2) CTTAAGGTTAAATTAAG  1 
sfuA1_21A_PwaSCC3193     (    2) CTTAAGGTTAAATTAAG  1 
pmrC_PwaSCC3193          (    2) CTTAAGGTTGCATTAAT  1 
arnB_21A_PwaSCC3193      (    2) ATTAAGGTTGGCTTAAG  1 
fimA2_3-2                (    2) TTTAAGGTTCGTTTAAG  1 
pmrC_Dda3937             (    2) CTTAAGGTTGATTTAAT  1 
pmrC_21A                 (    2) CTTAAGGTTGTATTAAT  1 
tssB_3-2                 (    2) CTTAAGGTTAATTTAAT  1 
sfuA2_3-2                (    2) CTTAATTTAACCTTAAG  1 
sfuA2_21A_PwaSCC3193     (    2) CTTAATTTAACCTTAAG  1 
qseB_21A_PwaSCC3193      (    2) CTTAAGATTCTGTTAAG  1 
hicB_3-2                 (    2) CTTAAAGTTAAATTAAA  1 
grcA_21A_PwaSCC3193      (    2) TTTAAAATTGATTTAAG  1 
evr1_3-2                 (    2) TTTAAGATAAGATTAAA  1 
wcaJ_21A                 (    2) TTTAAATTTTTCTTAAG  1 
wcaJ_PwaSCC3193          (    2) TTTAAATTTTGTTTAAG  1 
evr2_3-2                 (    2) TTTAATCTTATCTTAAA  1 
rfbN_21ABlkEBlkS      
@�      @�                      (    2) TTTAATTTTTGATTAAA  1 
rmlA_3-2                 (    2) CTTAATATTAAATTTAT  1 
//

--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 position-specific scoring matrix
--------------------------------------------------------------------------------
log-odds matrix: alength= 4 w= 17 n= 57 bayes= 3.25634 E= 5.6e-053 
  -270    292  -1089    -31 
 -1089  -1089  -1089    113 
 -1089  -1089  -1089    113 
   155  -1089  -1089  -1089 
   155  -1089  -1089  -1089 
   -70  -1089    209    -80 
   -70    -54    194    -80 
 -1089  -1089  -1089    113 
  -112  -1089  -1089     88 
    47     46    109   -153 
    11    104    109   -112 
    30    178   -123    -80 
 -1089  -1089  -1089    113 
 -1089  -1089  -1089    113 
   147  -1089  -1089   -311 
   155  -1089  -1089  -1089 
   -70  -1089    209    -80 
---------------------------------------BlkEBlkS      @�      @�     -----------------------------------------

--------------------------------------------------------------------------------
	Motif 1 position-specific probability matrix
--------------------------------------------------------------------------------
letter-probability matrix: alength= 4 w= 17 nsites= 19 E= 5.6e-053 
 0.052632  0.578947  0.000000  0.368421 
 0.000000  0.000000  0.000000  1.000000 
 0.000000  0.000000  0.000000  1.000000 
 1.000000  0.000000  0.000000  0.000000 
 1.000000  0.000000  0.000000  0.000000 
 0.210526  0.000000  0.526316  0.263158 
 0.210526  0.052632  0.473684  0.263158 
 0.000000  0.000000  0.000000  1.000000 
 0.157895  0.000000  0.000000  0.842105 
 0.473684  0.105263  0.263158  0.157895 
 0.368421  0.157895  0.263158  0.210526 
 0.421053  0.263158  0.052632  0.263158 
 0.000000  0.000000  0.000000  1.000000 
 0.000000  0.000000  0.000000  1.000000 
 0.947368  0.000000  0.000000  0.052632 
 1.000000  0.000000  0.000000  0.000000 
 0.210526  0.0000BlkEBlkS      @�      @�     00  0.526316  0.263158 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 regular expression
--------------------------------------------------------------------------------
[CT]TTAA[GTA][GTA]TT[AG][AGT][ACT]TTAA[GTA]
--------------------------------------------------------------------------------




Time  0.03 secs.

********************************************************************************


********************************************************************************
SUMMARY OF MOTIFS
********************************************************************************

--------------------------------------------------------------------------------
	Combined block diagrams: non-overlapping sites with p-value < 0.0001
--------------------------------------------------------------------------------
SEQUENCE NAME            COMBINED P-VALUE  MOTIF DIAGBlkEBlkS      @�      @�     RAM
-------------            ----------------  -------------
qseB_21A_PwaSCC3193              2.94e-06  1_[+1(9.79e-07)]_1
arnB_21A_PwaSCC3193              2.11e-07  1_[+1(7.02e-08)]_1
grcA_21A_PwaSCC3193              3.55e-05  1_[+1(1.18e-05)]_1
pmrC_21A                         5.64e-07  1_[+1(1.88e-07)]_1
wcaJ_21A                         7.21e-05  1_[+1(2.40e-05)]_1
rfbN_21A                         1.89e-04  1_[+1(6.29e-05)]_1
sfuA1_21A_PwaSCC3193             1.18e-08  1_[+1(3.95e-09)]_1
pmrC_Dda3937                     5.17e-07  1_[+1(1.72e-07)]_1
wcaJ_PwaSCC3193                  9.01e-05  1_[+1(3.00e-05)]_1
pmrC_PwaSCC3193                  6.44e-08  1_[+1(2.15e-08)]_1
sfuA2_21A_PwaSCC3193             2.68e-06  1_[+1(8.93e-07)]_1
fimA2_3-2                        5.17e-07  1_[+1(1.72e-07)]_1
evr1_3-2                         4.64e-05  1_[+1(1.55e-05)]_1
evr2_3-2                         1.02e-04  1_[+1(3.39e-05)]_1
hicB_3-2                         3.28e-06  1_[+1(1.09e-06)]_1
tBlkEBlkS      @�              ssB_3-2                         9.28e-07  1_[+1(3.09e-07)]_1
sfuA1_3-2                        1.18e-08  1_[+1(3.95e-09)]_1
sfuA2_3-2                        2.68e-06  1_[+1(8.93e-07)]_1
rmlA_3-2                         2.33e-04  1_[+1(7.78e-05)]_1
--------------------------------------------------------------------------------

********************************************************************************


********************************************************************************
Stopped because nmotifs = 1 reached.
********************************************************************************

CPU: Ptushka.local

********************************************************************************
                                                                                                                                                                                                                                                                                       BlkEBlkS       @�      @�     @�     ????   A�V��   A�V��   PmrA.hmm                                                                                                                                                                                                                        HMMER3/f [3.1b1 | May 2013]
NAME  stock
LENG  19
MAXL  74
ALPH  DNA
RF    no
MM    no
CONS  yes
CS    no
MAP   yes
DATE  Sun Jan 10 01:38:32 2016
NSEQ  19
EFFN  19.000000
CKSUM 1247730193
GA    9.90
TC    10.30
NC    9.60
STATS LOCAL MSV       -6.9952  0.76712
STATS LOCAL VITERBI   -7.0917  0.76712
STATS LOCAL FORWARD   -2.2984  0.76712
HMM          A        C        G        T   
            m->m     m->i     m->d     i->m     i->i     d->m     d->d
  COMPO   1.08528  2.36787  2.08239  0.81220
          1.38629  1.38629  1.38629  1.38629
          0.00948  5.35659  5.35659  1.46634  0.26236  0.00000        *
      1   1.65899  1.47029  2.31999  0.73078      1 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00BlkEBlkS      @�      @�     948  5.35659  5.35659  1.46634  0.26236  1.09861  0.40547
      2   2.49169  0.62564  3.79305  1.02226      2 c - - -
          1.38629  1.38629  1.38629  1.38629
          0.00948  5.35659  5.35659  1.46634  0.26236  1.09861  0.40547
      3   5.12417  4.70646  5.25250  0.02043      3 T - - -
          1.38629  1.38629  1.38629  1.38629
          0.00948  5.35659  5.35659  1.46634  0.26236  1.09861  0.40547
      4   5.12417  4.70646  5.25250  0.02043      4 T - - -
          1.38629  1.38629  1.38629  1.38629
          0.00948  5.35659  5.35659  1.46634  0.26236  1.09861  0.40547
      5   0.01003  6.02644  5.34767  5.87634      5 A - - -
          1.38629  1.38629  1.38629  1.38629
          0.00948  5.35659  5.35659  1.46634  0.26236  1.09861  0.40547
      6   0.01003  6.02644  5.34767  5.87634      6 A - - -
          1.38629  1.38629  1.38629  1.38629
          0.00948  5.35659  5.35659  1.46634  0.26236  1.09861  0.40547
      7   1.56034  3.11370  0.76065  1.27965     BlkEBlkS      @�      @�      7 g - - -
          1.38629  1.38629  1.38629  1.38629
          0.00948  5.35659  5.35659  1.46634  0.26236  1.09861  0.40547
      8   1.43225  2.29435  0.92759  1.32841      8 g - - -
          1.38629  1.38629  1.38629  1.38629
          0.00948  5.35659  5.35659  1.46634  0.26236  1.09861  0.40547
      9   5.12417  4.70646  5.25250  0.02043      9 T - - -
          1.38629  1.38629  1.38629  1.38629
          0.00948  5.35659  5.35659  1.46634  0.26236  1.09861  0.40547
     10   1.78501  4.13941  4.59904  0.21541     10 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00948  5.35659  5.35659  1.46634  0.26236  1.09861  0.40547
     11   0.84104  1.95965  1.42079  1.68036     11 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00948  5.35659  5.35659  1.46634  0.26236  1.09861  0.40547
     12   1.10918  1.76275  1.33548  1.44577     12 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00948  5.35659  5.35659  1.46634  0.262BlkEBlkS      @�      @�     36  1.09861  0.40547
     13   0.99562  1.31195  2.25146  1.36271     13 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00948  5.35659  5.35659  1.46634  0.26236  1.09861  0.40547
     14   5.12417  4.70646  5.25250  0.02043     14 T - - -
          1.38629  1.38629  1.38629  1.38629
          0.00948  5.35659  5.35659  1.46634  0.26236  1.09861  0.40547
     15   5.12417  4.70646  5.25250  0.02043     15 T - - -
          1.38629  1.38629  1.38629  1.38629
          0.00948  5.35659  5.35659  1.46634  0.26236  1.09861  0.40547
     16   0.09711  4.67382  5.02850  2.56840     16 A - - -
          1.38629  1.38629  1.38629  1.38629
          0.00948  5.35659  5.35659  1.46634  0.26236  1.09861  0.40547
     17   0.01003  6.02644  5.34767  5.87634     17 A - - -
          1.38629  1.38629  1.38629  1.38629
          0.00948  5.35659  5.35659  1.46634  0.26236  1.09861  0.40547
     18   1.48099  3.14867  0.72826  1.39865     18 g - - -
          1.38629  1.38629BlkEBlkS      @�                1.38629  1.38629
          0.00948  5.35659  5.35659  1.46634  0.26236  1.09861  0.40547
     19   1.19448  2.29912  1.68708  0.88738     19 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00475  5.35186        *  1.46634  0.26236  0.00000        *
//
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 BlkEBlkS      @�              BMap      0         0         0         0        0         0         0        0         0        $0        (0        ,0        00        40        80      	  <0      
  @0        D0        H0        L0        P0         T0        X0        \0        `0        d0                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      BlkE