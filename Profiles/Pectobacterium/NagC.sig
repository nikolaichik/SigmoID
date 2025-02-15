VFSv   BlkS       @D      @�          XBlkEBlkS       @�              @8      fold    A�Z��  A�Z��  /                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         BlkEBlkS       @�      @�`     @�@     ????   A�Z��  A�Z��  NagC.fasta                                                                                                                                                                                                                      >f_nagE_Pca3-2
TTTAATTTGTGTAGCGAATTATT
>r_nagE_Pca3-2
AATAATTCGCTACACAAATTAAA
>f_manX_Pca3-2
ATTTTTTCGATAAGTAAAATAAA
>r_manX_Pca3-2
TTTATTTTACTTATCGAAAAAAT
>f_nagB_Pat21A
GTTTTTTTTAATCTTGAAATAAG
>r_nagB_Pat21A
CTTATTTCAAGATTAAAAAAAAC
>f_nagE_Pat21A
TTTAATTTGTGTAGCGAATTATT
>r_nagE_Pat21A
AATAATTCGCTACACAAATTAAA
>f_manX_Pat21A
TTTATTTTACTTATCGAAAAAAT
>r_manX_Pat21A
ATTTTTTCGATAAGTAAAATAAA
>f_nagB_Dda3937
GTTTTTTTTAGTCTTAAAATAAG
>r_nagB_Dda3937
CTTATTTTAAGACTAAAAAAAAC
>f_nagE_Dda3937
ATTAATTTGCGTAACGAATTATT
>r_nagE_Dda3937
AATAATTCGTTACGCAAATTAAT
>f_manX_PwaSCC3193
TTTATTTTAGTTATCGAAAAAAT
>r_manX_PwaSCC3193
ATTTTTTCGATAACTAAAATAAA
>f_nagE_PwaSCC3193
AATAATTCGCTACACAAATTAAA
>r_nagE_PwaSCC3193
TTTAATTTGTGTAGCGAATTATT
>f_nagB_PwaSCCBlkEBlkS      @�              3193
CTTATTTCAAGATTAAAAAAAAC
>r_nagB_PwaSCC3193
GTTTTTTTTAATCTTGAAATAAG
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        BlkEBlkS       @�      @�0     @��     ????   A�Z��  A�Z��  NagC.options                                                                                                                                                                                                                    ////
// nhmmer options
////


// Trusted cutoff. Bit score per-sequence cutoff, set according to the lowest scores seen for true homologous sequences that were above the GA gathering thresholds, when gathering members of the alignment
#=GF TC 12.3 12.3


// Gathering threshold. Bit score per-sequence cutoff used in gathering the members of the alignment
#=GF GA 12 12


//Noise cutoff. Bit score per-sequence cutoff, set according to the highest scores seen for unrelated sequences
#=GF NC 11.8 11.8


// use the gathering threshold from the calibrated profile
nhmmer.--cut_ga


////
// HmmGen options
////


// the alignment length
HmmGen.-L 23


// the site is palindromic
HmmGen.-p


// don't pick up locus_tag from next locus
HmmGBlkEBlkS      @�              en.-n


// ignore sites inside ORFs (and risk missing some real ones!)
HmmGen.-i 


// feature key
HmmGen.-f protein_bind


// feature qualifier
HmmGen.-q bound_moiety#NagC


// MASTgen p-value cutoff
mastGen.-V 1e-7


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     BlkEBlkS       @�              @y�     ????   A�Z��  A�Z��  NagC.info                                                                                                                                                                                                                          NagC participates in regulating the phosphotransferase system to coordinate the biosynthesis of the amino sugars, D-glucosamine and N-acetylglucosamine with their catabolism.
NagC is similar to Mlc and these regulators have overlapping regulons.
   This profile was built starting with RegPrecise data for Pectobacterium atrosepticum and adding matching sites from P. carotovorum, P. wasabiae and D. dadantii.
                                                                                                                                                                                                                                                                                                                                   BlkEBlkS       @�      @�0     @��    ????   A�Z��  A�Z��  meme.txt                                                                                                                                                                                                                        ********************************************************************************
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
f_nagE_Pca3-2   BlkEBlkS      @�      @�              1.0000     23  r_nagE_Pca3-2            1.0000     23  
f_manX_Pca3-2            1.0000     23  r_manX_Pca3-2            1.0000     23  
f_nagB_Pat21A            1.0000     23  r_nagB_Pat21A            1.0000     23  
f_nagE_Pat21A            1.0000     23  r_nagE_Pat21A            1.0000     23  
f_manX_Pat21A            1.0000     23  r_manX_Pat21A            1.0000     23  
f_nagB_Dda3937           1.0000     23  r_nagB_Dda3937           1.0000     23  
f_nagE_Dda3937           1.0000     23  r_nagE_Dda3937           1.0000     23  
f_manX_PwaSCC3193        1.0000     23  r_manX_PwaSCC3193        1.0000     23  
f_nagE_PwaSCC3193        1.0000     23  r_nagE_PwaSCC3193        1.0000     23  
f_nagB_PwaSCC3193        1.0000     23  r_nagB_PwaSCC3193        1.0000     23  
********************************************************************************

********************************************************************************
COMMAND LINE SUMMARY
**************BlkEBlkS      @�      @�     ******************************************************************
This information can also be useful in the event you wish to report a
problem with the MEME software.

command: meme -nmotifs 1 -dna -text -pal -revcomp /private/var/folders/1k/4vs0wmnd75371kbm6p5jbmxr0000gn/T/TemporaryItems/alignment.tmp 

model:  mod=         zoops    nmotifs=         1    evt=           inf
object function=  E-value of product of p-values
width:  minw=            8    maxw=           23    minic=        0.00
width:  wg=             11    ws=              1    endgaps=       yes
nsites: minsites=        2    maxsites=       20    wnsites=       0.8
theta:  prob=            1    spmap=         uni    spfuzz=        0.5
global: substring=     yes    branching=      no    wbranch=        no
em:     prior=   dirichlet    b=            0.01    maxiter=        50
        distance=    1e-05
data:   n=             460    N=              20
strands: + -
sample: seed=            0    seqfrac=         1
BlkEBlkS      @�      @�     Letter frequencies in dataset:
A 0.411 C 0.089 G 0.089 T 0.411 
Background letter frequencies (from dataset with add-one prior applied):
A 0.409 C 0.091 G 0.091 T 0.409 
********************************************************************************


********************************************************************************
MOTIF  1 MEME	width =  21  sites =  20  llr = 243  E-value = 2.2e-057
********************************************************************************
--------------------------------------------------------------------------------
	Motif 1 Description
--------------------------------------------------------------------------------
Simplified        A  2:74:::35155215aa63a8
pos.-specific     C  ::::::5:3::4:5:::::::
probability       G  :::::::614::3:4::::::
matrix            T  8a36aa62255143:::47:2

         bits    3.5                      
                 3.1                      
                 2.8                      
                 2.4  BlkEBlkS      @�      @�                         
Relative         2.1                      
Entropy          1.7                      
(17.6 bits)      1.4  *  ***       ***  * 
                 1.0  *  ****     ****  * 
                 0.7 **  **** * * ****  **
                 0.3 *********************
                 0.0 ---------------------

Multilevel           TTATTTTGATTATCAAAATAA
consensus            A TA  CACGACGTG  TA  
sequence                     T            
                                          
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 sites sorted by position p-value
--------------------------------------------------------------------------------
Sequence name            Strand  Start   P-value                    Site       
-------------            ------  ----- ---------            ---------------------
r_nagE_PwaSCC3193            -      2  6.13e-08  BlkEBlkS      @�      @�             A ATAATTCGCTACACAAATTAA A         
f_nagE_PwaSCC3193            +      2  6.13e-08          A ATAATTCGCTACACAAATTAA A         
r_nagE_Dda3937               +      2  6.13e-08          A ATAATTCGTTACGCAAATTAA T         
f_nagE_Dda3937               -      2  6.13e-08          A ATAATTCGTTACGCAAATTAA T         
r_nagE_Pat21A                +      2  6.13e-08          A ATAATTCGCTACACAAATTAA A         
f_nagE_Pat21A                -      2  6.13e-08          A ATAATTCGCTACACAAATTAA A         
r_nagE_Pca3-2                +      2  6.13e-08          A ATAATTCGCTACACAAATTAA A         
f_nagE_Pca3-2                -      2  6.13e-08          A ATAATTCGCTACACAAATTAA A         
r_manX_Pat21A                -      2  2.89e-07          T TTATTTTACTTATCGAAAAAA T         
f_manX_Pat21A                +      2  2.89e-07          T TTATTTTACTTATCGAAAAAA T         
r_manX_Pca3-2                +      2  2.89e-07          T TTATTTTACTTATCGAAAAAA T         
f_manX_Pca3-2                BlkEBlkS      @�      @�     -      2  2.89e-07          T TTATTTTACTTATCGAAAAAA T         
r_manX_PwaSCC3193            -      2  1.92e-06          T TTATTTTAGTTATCGAAAAAA T         
f_manX_PwaSCC3193            +      2  1.92e-06          T TTATTTTAGTTATCGAAAAAA T         
r_nagB_Dda3937               -      2  4.19e-06          G TTTTTTTTAGTCTTAAAATAA G         
f_nagB_Dda3937               +      2  4.19e-06          G TTTTTTTTAGTCTTAAAATAA G         
r_nagB_PwaSCC3193            +      2  1.48e-05          G TTTTTTTTAATCTTGAAATAA G         
f_nagB_PwaSCC3193            -      2  1.48e-05          G TTTTTTTTAATCTTGAAATAA G         
r_nagB_Pat21A                -      2  1.48e-05          G TTTTTTTTAATCTTGAAATAA G         
f_nagB_Pat21A                +      2  1.48e-05          G TTTTTTTTAATCTTGAAATAA G         
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 block diagrams
------BlkEBlkS      @�      @�     --------------------------------------------------------------------------
SEQUENCE NAME            POSITION P-VALUE  MOTIF DIAGRAM
-------------            ----------------  -------------
r_nagE_PwaSCC3193                 6.1e-08  1_[-1]_1
f_nagE_PwaSCC3193                 6.1e-08  1_[+1]_1
r_nagE_Dda3937                    6.1e-08  1_[+1]_1
f_nagE_Dda3937                    6.1e-08  1_[-1]_1
r_nagE_Pat21A                     6.1e-08  1_[+1]_1
f_nagE_Pat21A                     6.1e-08  1_[-1]_1
r_nagE_Pca3-2                     6.1e-08  1_[+1]_1
f_nagE_Pca3-2                     6.1e-08  1_[-1]_1
r_manX_Pat21A                     2.9e-07  1_[-1]_1
f_manX_Pat21A                     2.9e-07  1_[+1]_1
r_manX_Pca3-2                     2.9e-07  1_[+1]_1
f_manX_Pca3-2                     2.9e-07  1_[-1]_1
r_manX_PwaSCC3193                 1.9e-06  1_[-1]_1
f_manX_PwaSCC3193                 1.9e-06  1_[+1]_1
r_nagB_Dda3937                    4.2e-06  1_[-1]_1
f_nagB_Dda3937         BlkEBlkS      	@�      @�                4.2e-06  1_[+1]_1
r_nagB_PwaSCC3193                 1.5e-05  1_[+1]_1
f_nagB_PwaSCC3193                 1.5e-05  1_[-1]_1
r_nagB_Pat21A                     1.5e-05  1_[-1]_1
f_nagB_Pat21A                     1.5e-05  1_[+1]_1
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 in BLOCKS format
--------------------------------------------------------------------------------
BL   MOTIF 1 width=21 seqs=20
r_nagE_PwaSCC3193        (    2) ATAATTCGCTACACAAATTAA  1 
f_nagE_PwaSCC3193        (    2) ATAATTCGCTACACAAATTAA  1 
r_nagE_Dda3937           (    2) ATAATTCGTTACGCAAATTAA  1 
f_nagE_Dda3937           (    2) ATAATTCGTTACGCAAATTAA  1 
r_nagE_Pat21A            (    2) ATAATTCGCTACACAAATTAA  1 
f_nagE_Pat21A            (    2) ATAATTCGCTACACAAATTAA  1 
r_nagE_Pca3-2            (    2) ATAATTCGCTACACAAATTAA  1 
f_nagE_Pca3-2            (    2) ATAATTCGCBlkEBlkS      
@�      @�     TACACAAATTAA  1 
r_manX_Pat21A            (    2) TTATTTTACTTATCGAAAAAA  1 
f_manX_Pat21A            (    2) TTATTTTACTTATCGAAAAAA  1 
r_manX_Pca3-2            (    2) TTATTTTACTTATCGAAAAAA  1 
f_manX_Pca3-2            (    2) TTATTTTACTTATCGAAAAAA  1 
r_manX_PwaSCC3193        (    2) TTATTTTAGTTATCGAAAAAA  1 
f_manX_PwaSCC3193        (    2) TTATTTTAGTTATCGAAAAAA  1 
r_nagB_Dda3937           (    2) TTTTTTTTAGTCTTAAAATAA  1 
f_nagB_Dda3937           (    2) TTTTTTTTAGTCTTAAAATAA  1 
r_nagB_PwaSCC3193        (    2) TTTTTTTTAATCTTGAAATAA  1 
f_nagB_PwaSCC3193        (    2) TTTTTTTTAATCTTGAAATAA  1 
r_nagB_Pat21A            (    2) TTTTTTTTAATCTTGAAATAA  1 
f_nagB_Pat21A            (    2) TTTTTTTTAATCTTGAAATAA  1 
//

--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 position-specific scoring matrix
----------------------------------------------------------BlkEBlkS      @�      @�     ----------------------
log-odds matrix: alength= 4 w= 21 n= 60 bayes= 3.28011 E= 2.2e-057 
  -103  -1097  -1097     97 
 -1097  -1097  -1097    129 
    77  -1097  -1097    -45 
    -3  -1097  -1097     55 
 -1097  -1097  -1097    129 
 -1097  -1097  -1097    129 
 -1097    231  -1097     43 
   -45  -1097    260   -145 
    14    173    -86   -103 
  -203  -1102    214     29 
    29  -1102  -1098     29 
    29    214  -1098   -203 
  -103    -86    173     14 
  -145    260  -1100    -45 
    43  -1100    231  -1097 
   129  -1100  -1100  -1097 
   129  -1100  -1100  -1097 
    55  -1100  -1100     -3 
   -45  -1100  -1100     77 
   129  -1100  -1100  -1097 
    97  -1100  -1100   -103 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 position-specific probability matrix
--------------------------------------------------------------------------------
leBlkEBlkS      @�      @�     tter-probability matrix: alength= 4 w= 21 nsites= 20 E= 2.2e-057 
 0.200000  0.000000  0.000000  0.800000 
 0.000000  0.000000  0.000000  1.000000 
 0.700000  0.000000  0.000000  0.300000 
 0.400000  0.000000  0.000000  0.600000 
 0.000000  0.000000  0.000000  1.000000 
 0.000000  0.000000  0.000000  1.000000 
 0.000000  0.450000  0.000000  0.550000 
 0.300000  0.000000  0.550000  0.150000 
 0.450000  0.300000  0.050000  0.200000 
 0.099999  0.000000  0.399998  0.499999 
 0.499999  0.000000  0.000000  0.500000 
 0.500000  0.399999  0.000000  0.100000 
 0.199999  0.049999  0.299999  0.449999 
 0.149999  0.549999  0.000000  0.299999 
 0.549999  0.000000  0.449999  0.000000 
 0.999999  0.000000  0.000000  0.000000 
 0.999999  0.000000  0.000000  0.000000 
 0.599999  0.000000  0.000000  0.399999 
 0.299999  0.000000  0.000000  0.699999 
 0.999999  0.000000  0.000000  0.000000 
 0.799999  0.000000  0.000000  0.199999 
-----------------------------------------------------------------BlkEBlkS      @�      @�     ---------------

--------------------------------------------------------------------------------
	Motif 1 regular expression
--------------------------------------------------------------------------------
[TA]T[AT][TA]TT[TC][GA][ACT][TG][TA][AC][TG][CT][AG]AA[AT][TA]AA
--------------------------------------------------------------------------------




Time  0.11 secs.

********************************************************************************


********************************************************************************
SUMMARY OF MOTIFS
********************************************************************************

--------------------------------------------------------------------------------
	Combined block diagrams: non-overlapping sites with p-value < 0.0001
--------------------------------------------------------------------------------
SEQUENCE NAME            COMBINED P-VALUE  MOTIF DIAGRAM
-------------            ----------------  -------------
f_nagE_BlkEBlkS      @�      @�     Pca3-2                    3.68e-07  1_[+1(6.13e-08)]_1
r_nagE_Pca3-2                    3.68e-07  1_[+1(6.13e-08)]_1
f_manX_Pca3-2                    1.73e-06  1_[+1(2.89e-07)]_1
r_manX_Pca3-2                    1.73e-06  1_[+1(2.89e-07)]_1
f_nagB_Pat21A                    8.86e-05  1_[+1(1.48e-05)]_1
r_nagB_Pat21A                    8.86e-05  1_[+1(1.48e-05)]_1
f_nagE_Pat21A                    3.68e-07  1_[+1(6.13e-08)]_1
r_nagE_Pat21A                    3.68e-07  1_[+1(6.13e-08)]_1
f_manX_Pat21A                    1.73e-06  1_[+1(2.89e-07)]_1
r_manX_Pat21A                    1.73e-06  1_[+1(2.89e-07)]_1
f_nagB_Dda3937                   2.51e-05  1_[+1(4.19e-06)]_1
r_nagB_Dda3937                   2.51e-05  1_[+1(4.19e-06)]_1
f_nagE_Dda3937                   3.68e-07  1_[+1(6.13e-08)]_1
r_nagE_Dda3937                   3.68e-07  1_[+1(6.13e-08)]_1
f_manX_PwaSCC3193                1.15e-05  1_[+1(1.92e-06)]_1
r_manX_PwaSCC3193                1.15e-05  1_[+1(1.92e-06)]_1
f_nagE_BlkEBlkS      @�              PwaSCC3193                3.68e-07  1_[+1(6.13e-08)]_1
r_nagE_PwaSCC3193                3.68e-07  1_[+1(6.13e-08)]_1
f_nagB_PwaSCC3193                8.86e-05  1_[+1(1.48e-05)]_1
r_nagB_PwaSCC3193                8.86e-05  1_[+1(1.48e-05)]_1
--------------------------------------------------------------------------------

********************************************************************************


********************************************************************************
Stopped because nmotifs = 1 reached.
********************************************************************************

CPU: Ptushka.local

********************************************************************************
                                                                                                                                                                                                                                                                                             BlkEBlkS       @�      @�     @�U     ????   A�Z��  A�Z��  NagC.hmm                                                                                                                                                                                                                        HMMER3/f [3.1b1 | May 2013]
NAME  stock
LENG  23
MAXL  79
ALPH  DNA
RF    no
MM    no
CONS  yes
CS    no
MAP   yes
DATE  Wed Feb  3 14:30:37 2016
NSEQ  20
EFFN  20.000000
CKSUM 2844667710
GA    12.00
TC    12.30
NC    11.80
STATS LOCAL MSV       -6.8712  0.76025
STATS LOCAL VITERBI   -7.3645  0.76025
STATS LOCAL FORWARD   -2.2481  0.76025
HMM          A        C        G        T   
            m->m     m->i     m->d     i->m     i->i     d->m     d->d
  COMPO   0.92262  2.28500  2.28832  0.91801
          1.38629  1.38629  1.38629  1.38629
          0.00905  5.40268  5.40268  1.46634  0.26236  0.00000        *
      1   1.04566  1.71870  1.70302  1.24790      1 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.BlkEBlkS      @�      @�     00905  5.40268  5.40268  1.46634  0.26236  1.09861  0.40547
      2   1.63539  4.17637  4.61503  0.24863      2 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00905  5.40268  5.40268  1.46634  0.26236  1.09861  0.40547
      3   5.18007  4.77052  5.30682  0.01925      3 T - - -
          1.38629  1.38629  1.38629  1.38629
          0.00905  5.40268  5.40268  1.46634  0.26236  1.09861  0.40547
      4   0.40501  4.15309  4.45649  1.18512      4 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00905  5.40268  5.40268  1.46634  0.26236  1.09861  0.40547
      5   0.97560  4.02614  4.33245  0.52415      5 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00905  5.40268  5.40268  1.46634  0.26236  1.09861  0.40547
      6   5.18007  4.77052  5.30682  0.01925      6 T - - -
          1.38629  1.38629  1.38629  1.38629
          0.00905  5.40268  5.40268  1.46634  0.26236  1.09861  0.40547
      7   5.18007  4.77052  5.30682  0.01925   BlkEBlkS      @�      @�        7 T - - -
          1.38629  1.38629  1.38629  1.38629
          0.00905  5.40268  5.40268  1.46634  0.26236  1.09861  0.40547
      8   4.65078  0.81156  4.88085  0.61861      8 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00905  5.40268  5.40268  1.46634  0.26236  1.09861  0.40547
      9   1.26430  3.30932  0.67473  1.76184      9 g - - -
          1.38629  1.38629  1.38629  1.38629
          0.00905  5.40268  5.40268  1.46634  0.26236  1.09861  0.40547
     10   0.86848  1.31933  2.34138  1.52831     10 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00905  5.40268  5.40268  1.46634  0.26236  1.09861  0.40547
     11   1.94531  3.08939  0.96280  0.84465     11 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00905  5.40268  5.40268  1.46634  0.26236  1.09861  0.40547
     12   0.72976  4.02030  4.30361  0.72051     12 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00905  5.40268  5.40268  1.46634  0.2BlkEBlkS      @�      @�     6236  1.09861  0.40547
     13   0.82161  0.95121  3.44315  1.95167     13 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00905  5.40268  5.40268  1.46634  0.26236  1.09861  0.40547
     14   1.56454  2.36024  1.30867  0.85275     14 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00905  5.40268  5.40268  1.46634  0.26236  1.09861  0.40547
     15   1.73388  0.72170  3.43121  1.18702     15 c - - -
          1.38629  1.38629  1.38629  1.38629
          0.00905  5.40268  5.40268  1.46634  0.26236  1.09861  0.40547
     16   0.64404  4.99414  0.77736  4.77538     16 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00905  5.40268  5.40268  1.46634  0.26236  1.09861  0.40547
     17   0.00946  6.09180  5.39984  5.93846     17 A - - -
          1.38629  1.38629  1.38629  1.38629
          0.00905  5.40268  5.40268  1.46634  0.26236  1.09861  0.40547
     18   0.00946  6.09180  5.39984  5.93846     18 A - - -
          1.38629  1.386BlkEBlkS      @�              29  1.38629  1.38629
          0.00905  5.40268  5.40268  1.46634  0.26236  1.09861  0.40547
     19   0.53016  4.07303  4.35928  0.96318     19 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00905  5.40268  5.40268  1.46634  0.26236  1.09861  0.40547
     20   1.19978  4.06612  4.40956  0.40132     20 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00905  5.40268  5.40268  1.46634  0.26236  1.09861  0.40547
     21   0.00946  6.09180  5.39984  5.93846     21 A - - -
          1.38629  1.38629  1.38629  1.38629
          0.00905  5.40268  5.40268  1.46634  0.26236  1.09861  0.40547
     22   0.24916  4.34293  4.68976  1.61770     22 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00905  5.40268  5.40268  1.46634  0.26236  1.09861  0.40547
     23   1.27568  1.71865  1.70319  1.02346     23 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00454  5.39816        *  1.46634  0.26236  0.00000        *
//
           BlkEBlkS      @�              BMap      0         0         0        0         0        0         0         0         0        $0        (0        ,0        00        40        80        <0      	  @0      
  D0        H0        L0        P0        T0        X0         \0        `0        d0        h0        l0                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              BlkE