VFSv   BlkS       @D      @�           �BlkEBlkS       @�              @8      fold    A�^�5   A�^�5   /                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         BlkEBlkS       @�              @p      ????   A�^�5   A�^�5   NagQ.fasta                                                                                                                                                                                                                      >PA3757 VIMSSId=60206 Pos=-82 Score=5.32074
TGGCATTGACGTGGTATT
>PA3757 VIMSSId=60206 Pos=-71 Score=5.45379
TGGTATTCAAGTGGTATT
>PFL_1082 VIMSSId=871718 Pos=-86 Score=4.62439
TGGCGTTGACATGGTATC
>PFL_1082 VIMSSId=871718 Pos=-75 Score=5.51701
TGGTATCTAAGTGGTATT
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              BlkEBlkS       @�      @�`     @�p     ????   A�^�5   A�^�5   NagQ.options                                                                                                                                                                                                                    ////
// nhmmer options
////


// Trusted cutoff. Bit score per-sequence cutoff, set according to the lowest scores seen for true homologous sequences that were above the GA gathering thresholds, when gathering members of the alignment
#=GF TC 11.8 11.8


// Gathering threshold. Bit score per-sequence cutoff used in gathering the members of the alignment
#=GF GA 10 10


//Noise cutoff. Bit score per-sequence cutoff, set according to the highest scores seen for unrelated sequences
#=GF NC 6.3 6.3


// use the gathering threshold from the calibrated profile
nhmmer.--cut_ga


////
// HmmGen options
////


// the alignment length
HmmGen.-L 18


// don't pick up locus_tag from next locus
HmmGen.-n


// ignore sites inside ORFs (and BlkEBlkS      @�              risk missing some real ones!)
HmmGen.-i 


// feature key
HmmGen.-f protein_bind


// feature qualifier
HmmGen.-q bound_moiety#NagQ


// MASTgen p-value cutoff
mastGen.-V 


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  BlkEBlkS       @�              @o      ????   A�^�5   A�^�5   NagQ.info                                                                                                                                                                                                                          Transcription factor NagQ from the GntR protein family regulates the chitin and N-acetylglucosamine utilization genes. It controls just one operon is some Pseudomonadaceae.
   This profile was built from RegPrecise 3.0 data for Pseudomonadaceae.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        BlkEBlkS       @�      @�0     @��     ????   A�^�5@  A�^�5@  meme.txt                                                                                                                                                                                                                        ********************************************************************************
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
PA3757          BlkEBlkS      @�      @�              1.0000     18  PFL_1082                 1.0000     18  
********************************************************************************

********************************************************************************
COMMAND LINE SUMMARY
********************************************************************************
This information can also be useful in the event you wish to report a
problem with the MEME software.

command: meme -nmotifs 1 -dna -text -pal -revcomp /private/var/folders/1k/4vs0wmnd75371kbm6p5jbmxr0000gn/T/TemporaryItems/alignment.tmp 

model:  mod=         zoops    nmotifs=         1    evt=           inf
object function=  E-value of product of p-values
width:  minw=            8    maxw=           18    minic=        0.00
width:  wg=             11    ws=              1    endgaps=       yes
nsites: minsites=        2    maxsites=        2    wnsites=       0.8
theta:  prob=            1    spmap=         uni    spfuzz=        0.5
global: substringBlkEBlkS      @�      @�     =     yes    branching=      no    wbranch=        no
em:     prior=   dirichlet    b=            0.01    maxiter=        50
        distance=    1e-05
data:   n=              36    N=               2
strands: + -
sample: seed=            0    seqfrac=         1
Letter frequencies in dataset:
A 0.264 C 0.236 G 0.236 T 0.264 
Background letter frequencies (from dataset with add-one prior applied):
A 0.263 C 0.237 G 0.237 T 0.263 
********************************************************************************


********************************************************************************
MOTIF  1 MEME	width =   9  sites =   2  llr = 19  E-value = 2.3e+001
********************************************************************************
--------------------------------------------------------------------------------
	Motif 1 Description
--------------------------------------------------------------------------------
Simplified        A  :::75::5:
pos.-specific     C  ::a::2:5a
BlkEBlkS      @�      @�     probability       G  a5:2::a::
matrix            T  :5::57:::

         bits    2.1 * *   * *
                 1.9 * *   * *
                 1.7 * *   * *
                 1.5 * *   * *
Relative         1.2 * ** ** *
Entropy          1.0 **** ****
(13.5 bits)      0.8 *********
                 0.6 *********
                 0.4 *********
                 0.2 *********
                 0.0 ---------

Multilevel           GGCATTGAC
consensus             T GAC C 
sequence                      
                              
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 sites sorted by position p-value
--------------------------------------------------------------------------------
Sequence name            Strand  Start   P-value              Site 
-------------            ------  ----- ---------            ---------
PA3757                       +      2  BlkEBlkS      @�      @�     2.09e-05          T GGCATTGAC GTGGTATT  
PFL_1082                     -      2  6.69e-05   GATACCAT GTCAACGCC A         
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 block diagrams
--------------------------------------------------------------------------------
SEQUENCE NAME            POSITION P-VALUE  MOTIF DIAGRAM
-------------            ----------------  -------------
PA3757                            2.1e-05  1_[+1]_8
PFL_1082                          6.7e-05  1_[-1]_8
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 in BLOCKS format
--------------------------------------------------------------------------------
BL   MOTIF 1 width=9 seqs=2
PA3757                   (    2) GGCATTGAC  1 
PFL_1082                 (    2) GTCAACGBlkEBlkS      @�      @�     CC  1 
//

--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 position-specific scoring matrix
--------------------------------------------------------------------------------
log-odds matrix: alength= 4 w= 9 n= 20 bayes= 3.16993 E= 2.3e+001 
  -765   -765    207   -765 
  -765   -765    107     93 
  -765    207   -765   -765 
   151   -765      7   -765 
    93   -765   -765     93 
  -765      7   -765    151 
  -765   -765    207   -765 
    93    107   -765   -765 
  -765    207   -765   -765 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 position-specific probability matrix
--------------------------------------------------------------------------------
letter-probability matrix: alength= 4 w= 9 nsites= 2 E= 2.3e+001 
 0.000000  BlkEBlkS      @�      @�     0.000000  1.000000  0.000000 
 0.000000  0.000000  0.500000  0.500000 
 0.000000  1.000000  0.000000  0.000000 
 0.749998  0.000000  0.249998  0.000000 
 0.499999  0.000000  0.000000  0.500000 
 0.000000  0.249999  0.000000  0.749999 
 0.000000  0.000000  0.999999  0.000000 
 0.499999  0.499999  0.000000  0.000000 
 0.000000  0.999999  0.000000  0.000000 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 regular expression
--------------------------------------------------------------------------------
G[GT]C[AG][TA][TC]G[AC]C
--------------------------------------------------------------------------------




Time  0.01 secs.

********************************************************************************


********************************************************************************
SUMMARY OF MOTIFS
****************************************************BlkEBlkS      @�              ****************************

--------------------------------------------------------------------------------
	Combined block diagrams: non-overlapping sites with p-value < 0.0001
--------------------------------------------------------------------------------
SEQUENCE NAME            COMBINED P-VALUE  MOTIF DIAGRAM
-------------            ----------------  -------------
PA3757                           4.19e-04  1_[+1(2.09e-05)]_8
PFL_1082                         1.34e-03  1_[+1(6.69e-05)]_8
--------------------------------------------------------------------------------

********************************************************************************


********************************************************************************
Stopped because nmotifs = 1 reached.
********************************************************************************

CPU: Ptushka.local

********************************************************************************
                          BlkEBlkS       @�      @�     @��     ????   A�^�5@  A�^�5@  NagQ.hmm                                                                                                                                                                                                                        HMMER3/f [3.1b1 | May 2013]
NAME  stock
LENG  18
MAXL  82
ALPH  DNA
RF    no
MM    no
CONS  yes
CS    no
MAP   yes
DATE  Sat Feb 27 08:07:06 2016
NSEQ  4
EFFN  4.000000
CKSUM 1564268698
GA    10.00
TC    11.80
NC    6.30
STATS LOCAL MSV       -6.4137  0.78019
STATS LOCAL VITERBI   -7.1364  0.78019
STATS LOCAL FORWARD   -2.3104  0.78019
HMM          A        C        G        T   
            m->m     m->i     m->d     i->m     i->i     d->m     d->d
  COMPO   1.55115  2.03379  1.20488  1.02882
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  0.00000        *
      1   3.08173  2.76116  3.21166  0.16180      1 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.032BlkEBlkS      @�      @�     79  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
      2   2.99290  3.67523  0.11220  3.48524      2 g - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
      3   2.99290  3.67523  0.11220  3.48524      3 g - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
      4   2.47815  0.86341  2.61255  0.86505      4 c - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
      5   0.64726  2.55185  1.20694  2.30788      5 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
      6   3.08173  2.76116  3.21166  0.16180      6 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
      7   2.49247  1.33151  2.62700  0.54314      BlkEBlkS      @�      @�     7 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
      8   1.97007  1.48869  0.99925  1.32152      8 g - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
      9   0.09846  3.58835  3.37856  3.44116      9 A - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
     10   0.96034  0.92467  2.36905  2.06351     10 c - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
     11   1.43875  2.83050  0.46428  2.58756     11 g - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
     12   3.08173  2.76116  3.21166  0.16180     12 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.2623BlkEBlkS      @�      @�     6  1.09861  0.40547
     13   2.99290  3.67523  0.11220  3.48524     13 g - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
     14   2.99290  3.67523  0.11220  3.48524     14 g - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
     15   3.08173  2.76116  3.21166  0.16180     15 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
     16   0.09846  3.58835  3.37856  3.44116     16 A - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
     17   3.08173  2.76116  3.21166  0.16180     17 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
     18   2.48148  1.26926  2.61544  0.57589     18 t - - -
          1.38629  1.38629 BlkEBlkS      @�               1.38629  1.38629
          0.01653  4.11087        *  1.46634  0.26236  0.00000        *
//
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   BlkEBlkS      @�              BMap      0         0         0         0        0         0         0        0         0        $0        (0        ,0        00        40        80         <0        @0        D0        H0        L0                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              BlkE