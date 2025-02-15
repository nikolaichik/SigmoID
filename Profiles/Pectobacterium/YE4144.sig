VFSv   BlkS       @D      @�          XBlkEBlkS       @�              @8      fold    A�c�W   A�c�W   /                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         BlkEBlkS       @�              @v`     ????   A�c�W   A�c�W   YE4144.fasta                                                                                                                                                                                                                    >ECA3309(PF01810) Score=9.8 Pos=N93 [Erwinia carotovora subsp. atroseptica SCRI1043]
TTTTGTACCCATTACAATAATCATTTTGTGTATCTGTAACCATTT
>OA04_39980
GTTTGTACCCATTACAATAATCATTTTGTGTATCTGTAACCATTT
>Spro_0075(PF01810) Score=9.2 Pos=N99 [Serratia proteamaculans 568]
AACTGTATCCATGANNNNNNNNNNNNNNNNNTTCTGTCACCATCT
>W5S_1076
ATTTGTACCCATTACAATAACCATTTTGTGTATCTGTAACCATTT                                                                                                                                                                                                                                                                                                                                                                                          BlkEBlkS       @�      @�`     @�     ????   A�c�W   A�c�W   YE4144.options                                                                                                                                                                                                                  ////
// nhmmer options
////


// Trusted cutoff. Bit score per-sequence cutoff, set according to the lowest scores seen for true homologous sequences that were above the GA gathering thresholds, when gathering members of the alignment
#=GF TC 45 45


// Gathering threshold. Bit score per-sequence cutoff used in gathering the members of the alignment
#=GF GA 25 25


//Noise cutoff. Bit score per-sequence cutoff, set according to the highest scores seen for unrelated sequences
#=GF NC 13 13


// use the gathering threshold from the calibrated profile
nhmmer.--cut_ga


////
// HmmGen options
////


// the alignment length
HmmGen.-L 45


// don't pick up locus_tag from next locus
HmmGen.-n


// feature key
HmmGen.-f protein_bind

BlkEBlkS      @�              
// feature qualifier
HmmGen.-q bound_moiety#YE4144


// MASTgen p-value cutoff
mastGen.-V 1e-9


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              BlkEBlkS       @�              @m      ????   A�c�W   A�c�W   YE4144.info                                                                                                                                                                                                                        YE4144 from the GntR/MocR family is described in RegPrecise 4.0 as putative transcriptional regulator of a single ORF coding for LysE family transporter.
   This profile is built from four sequences including two from RegPrecise.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        BlkEBlkS       @�      @�0     @Ǣ�    ????   A�c�W   A�c�W   meme.txt                                                                                                                                                                                                                        ********************************************************************************
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
ECA3309(PF01810)BlkEBlkS      @�      @�              1.0000     45  OA04_39980               1.0000     45  
Spro_0075(PF01810)       1.0000     45  W5S_1076                 1.0000     45  
********************************************************************************

********************************************************************************
COMMAND LINE SUMMARY
********************************************************************************
This information can also be useful in the event you wish to report a
problem with the MEME software.

command: meme -nmotifs 1 -dna -text -pal -revcomp /private/var/folders/1k/4vs0wmnd75371kbm6p5jbmxr0000gn/T/TemporaryItems/alignment.tmp 

model:  mod=         zoops    nmotifs=         1    evt=           inf
object function=  E-value of product of p-values
width:  minw=            8    maxw=           45    minic=        0.00
width:  wg=             11    ws=              1    endgaps=       yes
nsites: minsites=        2    maxsites=        4    wnsites=       0.8
theta: BlkEBlkS      @�      @�      prob=            1    spmap=         uni    spfuzz=        0.5
global: substring=     yes    branching=      no    wbranch=        no
em:     prior=   dirichlet    b=            0.01    maxiter=        50
        distance=    1e-05
data:   n=             180    N=               4
strands: + -
sample: seed=            0    seqfrac=         1
Letter frequencies in dataset:
A 0.340 C 0.160 G 0.160 T 0.340 
Background letter frequencies (from dataset with add-one prior applied):
A 0.338 C 0.162 G 0.162 T 0.338 
********************************************************************************


********************************************************************************
MOTIF  1 MEME	width =  40  sites =   3  llr = 114  E-value = 8.9e-003
********************************************************************************
--------------------------------------------------------------------------------
	Motif 1 Description
-------------------------------------------------------------BlkEBlkS      @�      @�     -------------------
Simplified        A  ::::55:555:a:a55aa5:53::5::::a5::::5a:5a
pos.-specific     C  :::::5a5::::a:5:::25:::::::::::5:::::a5:
probability       G  :5a:::::5:::::::::::52:::5:a::::5a5:::::
matrix            T  a5:a5::::5a::::5::35:5aa55a:a:555:55::::

         bits    2.6   *   *     *              *     *   *  
                 2.4   *   *     *              *     *   *  
                 2.1   *   *     *              *     *   *  
                 1.8   *   *     *              *     *   *  
Relative         1.6 * **  *   ****  **    **  ****   *  ** *
Entropy          1.3 * **  *   ****  **    **  ****   *  ** *
(54.8 bits)      1.1 **** **** ***** ** ** ** ***** **** ****
                 0.8 **** **** ***** ** ** ** ***** **** ****
                 0.5 ****************** ** ******************
                 0.3 ****************************************
                 0.0 ----------------------------------------

Multilevel           TGGTAACAAATACAAAAAABlkEBlkS      @�      @�     CATTTAGTGTAACGGGAACAA
consensus             T  TC CGT    CT  TTGA  TT    TTT TT  C 
sequence                                                     
                                                             
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 sites sorted by position p-value
--------------------------------------------------------------------------------
Sequence name            Strand  Start   P-value                              Site                
-------------            ------  ----- ---------            ----------------------------------------
W5S_1076                     +      3  9.26e-18         AT TTGTACCCATTACAATAACCATTTTGTGTATCTGTAACCA TTT       
OA04_39980                   +      3  9.26e-18         GT TTGTACCCATTACAATAATCATTTTGTGTATCTGTAACCA TTT       
ECA3309(PF01810)             +      3  9.26e-18         TT TTGTACCCATTACAATABlkEBlkS      @�      @�     ATCATTTTGTGTATCTGTAACCA TTT       
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 block diagrams
--------------------------------------------------------------------------------
SEQUENCE NAME            POSITION P-VALUE  MOTIF DIAGRAM
-------------            ----------------  -------------
W5S_1076                          9.3e-18  2_[+1]_3
OA04_39980                        9.3e-18  2_[+1]_3
ECA3309(PF01810)                  9.3e-18  2_[+1]_3
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 in BLOCKS format
--------------------------------------------------------------------------------
BL   MOTIF 1 width=40 seqs=3
W5S_1076                 (    3) TTGTACCCATTACAATAACCATTTTGTGTATCTGTAACCA  1 
OA04_39980               (    3) TTGTACCCABlkEBlkS      @�      @�     TTACAATAATCATTTTGTGTATCTGTAACCA  1 
ECA3309(PF01810)         (    3) TTGTACCCATTACAATAATCATTTTGTGTATCTGTAACCA  1 
//

--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 position-specific scoring matrix
--------------------------------------------------------------------------------
log-odds matrix: alength= 4 w= 40 n= 24 bayes= 3.30875 E= 8.9e-003 
  -823   -823   -823    156 
  -823   -823    163     56 
  -823   -823    262   -823 
  -823   -823   -823    156 
    56   -823   -823     56 
    56    163   -823   -823 
  -823    262   -823   -823 
    56    163   -823   -823 
    56   -823    163   -823 
    56   -823   -823     56 
  -823   -823   -823    156 
   156   -823   -823   -823 
  -823    262   -823   -823 
   156   -823   -823   -823 
    56    163   -823   -823 
    56   -823   -823     56 
   156   -823   -823   -823 
   156   -823   -823   -823BlkEBlkS      @�      @�      
    56      4   -823     -2 
  -824    163   -824     56 
    56   -823    163   -823 
    -2   -824      4     56 
  -823   -824   -824    156 
  -823   -824   -824    156 
    56   -824   -824     56 
  -823   -824    163     56 
  -823   -824   -824    156 
  -823   -824    262   -823 
  -823   -824   -824    156 
   156   -824   -824   -823 
    56   -824   -824     56 
  -823    163   -824     56 
  -823   -824    163     56 
  -823   -824    262   -823 
  -823   -824    163     56 
    56   -824   -824     56 
   156   -824   -824   -823 
  -823    262   -824   -823 
    56    163   -824   -823 
   156   -824   -824   -823 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 position-specific probability matrix
--------------------------------------------------------------------------------
letter-probability matrix: alength= 4 w= 40 nsites= 3 E= 8.9e-BlkEBlkS      	@�      @�     003 
 0.000000  0.000000  0.000000  1.000000 
 0.000000  0.000000  0.500000  0.500000 
 0.000000  0.000000  1.000000  0.000000 
 0.000000  0.000000  0.000000  1.000000 
 0.500000  0.000000  0.000000  0.500000 
 0.500000  0.500000  0.000000  0.000000 
 0.000000  1.000000  0.000000  0.000000 
 0.500000  0.500000  0.000000  0.000000 
 0.500000  0.000000  0.500000  0.000000 
 0.500000  0.000000  0.000000  0.500000 
 0.000000  0.000000  0.000000  1.000000 
 1.000000  0.000000  0.000000  0.000000 
 0.000000  1.000000  0.000000  0.000000 
 1.000000  0.000000  0.000000  0.000000 
 0.500000  0.500000  0.000000  0.000000 
 0.500000  0.000000  0.000000  0.500000 
 1.000000  0.000000  0.000000  0.000000 
 1.000000  0.000000  0.000000  0.000000 
 0.500000  0.166667  0.000000  0.333333 
 0.000000  0.499999  0.000000  0.499999 
 0.500000  0.000000  0.500000  0.000000 
 0.333332  0.000000  0.166666  0.499999 
 0.000000  0.000000  0.000000  0.999999 
 0.000000  0.000000  0.000000  0.999999 
 0.BlkEBlkS      
@�      @�     499999  0.000000  0.000000  0.499999 
 0.000000  0.000000  0.499999  0.499999 
 0.000000  0.000000  0.000000  0.999999 
 0.000000  0.000000  0.999999  0.000000 
 0.000000  0.000000  0.000000  0.999999 
 0.999999  0.000000  0.000000  0.000000 
 0.499999  0.000000  0.000000  0.499999 
 0.000000  0.499999  0.000000  0.499999 
 0.000000  0.000000  0.499999  0.499999 
 0.000000  0.000000  0.999999  0.000000 
 0.000000  0.000000  0.499999  0.499999 
 0.499999  0.000000  0.000000  0.499999 
 0.999999  0.000000  0.000000  0.000000 
 0.000000  0.999999  0.000000  0.000000 
 0.499999  0.499999  0.000000  0.000000 
 0.999999  0.000000  0.000000  0.000000 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 regular expression
--------------------------------------------------------------------------------
T[GT]GT[AT][AC]C[AC][AG][AT]TACA[AC][AT]AA[AT][CT][AG][TA]TT[AT][GTBlkEBlkS      @�      @�     ]TGTA[AT][CT][GT]G[GT][AT]AC[AC]A
--------------------------------------------------------------------------------




Time  0.04 secs.

********************************************************************************


********************************************************************************
SUMMARY OF MOTIFS
********************************************************************************

--------------------------------------------------------------------------------
	Combined block diagrams: non-overlapping sites with p-value < 0.0001
--------------------------------------------------------------------------------
SEQUENCE NAME            COMBINED P-VALUE  MOTIF DIAGRAM
-------------            ----------------  -------------
ECA3309(PF01810)                 1.11e-16  2_[+1(9.26e-18)]_3
OA04_39980                       1.11e-16  2_[+1(9.26e-18)]_3
Spro_0075(PF01810)               1.70e-02  45
W5S_1076                         1.11e-16  2_[+1(9.26e-18)]_3
-------------BlkEBlkS      @�              -------------------------------------------------------------------

********************************************************************************


********************************************************************************
Stopped because nmotifs = 1 reached.
********************************************************************************

CPU: Ptushka.local

********************************************************************************
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           BlkEBlkS       @�      @�     @��     ????   A�c�W   A�c�W   YE4144.hmm                                                                                                                                                                                                                      HMMER3/f [3.1b1 | May 2013]
NAME  stock
LENG  45
MAXL  120
ALPH  DNA
RF    no
MM    no
CONS  yes
CS    no
MAP   yes
DATE  Sat Mar 26 20:34:01 2016
NSEQ  4
EFFN  4.000000
CKSUM 1483215237
GA    25.00
TC    45.00
NC    13.00
STATS LOCAL MSV       -8.0931  0.73843
STATS LOCAL VITERBI   -8.6627  0.73843
STATS LOCAL FORWARD   -3.1551  0.73843
HMM          A        C        G        T   
            m->m     m->i     m->d     i->m     i->i     d->m     d->d
  COMPO   1.35978  1.46953  1.82051  1.04609
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  0.00000        *
      1   1.02507  2.05684  1.38279  1.33753      1 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.0BlkEBlkS      @�      @�     3279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
      2   1.33670  2.22547  2.30401  0.63598      2 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
      3   2.48335  1.28079  2.61741  0.56964      3 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
      4   3.08173  2.76116  3.21166  0.16180      4 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
      5   2.99290  3.67523  0.11220  3.48524      5 g - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
      6   3.08173  2.76116  3.21166  0.16180      6 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
      7   0.09846  3.58835  3.37856  3.44116    BlkEBlkS      @�      @�       7 A - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
      8   2.60438  0.55701  2.74793  1.24109      8 c - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
      9   3.26153  0.14464  3.42672  2.75134      9 c - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
     10   3.26153  0.14464  3.42672  2.75134     10 c - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
     11   0.09846  3.58835  3.37856  3.44116     11 A - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
     12   3.08173  2.76116  3.21166  0.16180     12 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26BlkEBlkS      @�      @�     236  1.09861  0.40547
     13   2.18944  2.24497  1.34945  0.64873     13 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
     14   0.09846  3.58835  3.37856  3.44116     14 A - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
     15   1.86225  0.65559  1.93771  1.70645     15 c - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
     16   0.72384  1.84725  1.80049  1.64910     16 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
     17   0.72384  1.84725  1.80049  1.64910     17 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
     18   1.78852  1.84111  1.86555  0.65520     18 t - - -
          1.38629  1.3862BlkEBlkS      @�      @�     9  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
     19   0.72384  1.84725  1.80049  1.64910     19 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
     20   0.72384  1.84725  1.80049  1.64910     20 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
     21   1.75151  1.33006  1.83299  0.91107     21 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
     22   1.86225  0.65559  1.93771  1.70645     22 c - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
     23   0.72384  1.84725  1.80049  1.64910     23 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
     24   1.788BlkEBlkS      @�      @�     52  1.84111  1.86555  0.65520     24 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
     25   1.78852  1.84111  1.86555  0.65520     25 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
     26   1.78852  1.84111  1.86555  0.65520     26 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
     27   1.78852  1.84111  1.86555  0.65520     27 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
     28   1.88613  2.15598  0.52296  1.96763     28 g - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
     29   1.78852  1.84111  1.86555  0.65520     29 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279BlkEBlkS      @�      @�       4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
     30   1.88613  2.15598  0.52296  1.96763     30 g - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
     31   1.78852  1.84111  1.86555  0.65520     31 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
     32   0.67405  2.24623  2.28731  1.26223     32 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
     33   3.08173  2.76116  3.21166  0.16180     33 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
     34   3.26153  0.14464  3.42672  2.75134     34 c - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
     35   3.08173  2.76116  3.21166  0.16180     35 BlkEBlkS      @�      @�     t - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
     36   2.99290  3.67523  0.11220  3.48524     36 g - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
     37   3.08173  2.76116  3.21166  0.16180     37 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
     38   0.65589  1.33272  2.37339  2.08670     38 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
     39   0.09846  3.58835  3.37856  3.44116     39 A - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
     40   3.26153  0.14464  3.42672  2.75134     40 c - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236 BlkEBlkS      @�               1.09861  0.40547
     41   3.26153  0.14464  3.42672  2.75134     41 c - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
     42   0.09846  3.58835  3.37856  3.44116     42 A - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
     43   3.08173  2.76116  3.21166  0.16180     43 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
     44   2.48335  1.28079  2.61741  0.56964     44 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
     45   3.08173  2.76116  3.21166  0.16180     45 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.01653  4.11087        *  1.46634  0.26236  0.00000        *
//
                                                                                      BlkEBlkS      @�              BMap      0         0         0         0        0         0         0        0         0        $0        (0        ,0        00        40        80      	  <0      
  @0        D0        H0         L0        P0        T0        X0        \0        `0        d0        h0        l0                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              BlkE