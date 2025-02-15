VFSv   BlkS       @D      @�          @BlkEBlkS       @�              @8      fold    A�[�   A�[�   /                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         BlkEBlkS       @�      @�`     @�      ????   A�[�   A�[�   SdaR.fasta                                                                                                                                                                                                                      >f_gudX_Pca3-2_Pwa 3972498:3972517 (-) SdaR Score=8.5 E-value=21.0
TGCTGTGCTATTGCCCAATG
>r_gudX_Pca3-2_Pwa 3972498:3972517 (-) SdaR Score=8.5 E-value=21.0
CATTGGGCAATAGCACAGCA
>f_sdaR_Pat_Pwa_PatSCRI1043 ECA3300 VIMSSId=607704 Pos=-80 Score=4.29729
CTTTGTTAATTTGCACAATG
>r_sdaR_Pat_Pwa_PatSCRI1043 ECA3300 VIMSSId=607704 Pos=-80 Score=4.29729
CATTGTGCAAATTAACAAAG
>f_gudX_PatSCRI1043 ECA3576 VIMSSId=607998 Pos=-358 Score=4.10233
TGCTGGGCTATTGCCCAATG
>r_gudX_PatSCRI1043 ECA3576 VIMSSId=607998 Pos=-358 Score=4.10233
CATTGGGCAATAGCCCAGCA
>f_gudP_PatSCRI1043 ECA3577 VIMSSId=607999 Pos=-440 Score=4.15729
CATTATGCAATTGACCTAAG
>r_gudP_PatSCRI1043 ECA3577 VIMSSId=607999 Pos=-440 Score=4.15729
CTTAGGTCAATTGCATAATG
>f_garD_PatSCRI1043 ECA3BlkEBlkS      @�              578 VIMSSId=608000 Pos=-316 Score=4.55689
GTTGGTGCACTTGCCCTATA
>r_garD_PatSCRI1043 ECA3578 VIMSSId=608000 Pos=-316 Score=4.55689
TATAGGGCAAGTGCACCAAC
>f_garD_Dda3937
TGTCGGTCAATTGCATAATG
>r_garD_Dda3937
CATTATGCAATTGACCGACA
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                BlkEBlkS       @�      @�0     @��     ????   A�[�   A�[�   SdaR.options                                                                                                                                                                                                                    ////
// nhmmer options
////


// Trusted cutoff. Bit score per-sequence cutoff, set according to the lowest scores seen for true homologous sequences that were above the GA gathering thresholds, when gathering members of the alignment
#=GF TC 11 11


// Gathering threshold. Bit score per-sequence cutoff used in gathering the members of the alignment
#=GF GA 11 11


//Noise cutoff. Bit score per-sequence cutoff, set according to the highest scores seen for unrelated sequences
#=GF NC 11 11


// use the gathering threshold from the calibrated profile
nhmmer.--cut_ga


////
// HmmGen options
////


// the alignment length
HmmGen.-L 20


// the site is palindromic
HmmGen.-p


// don't pick up locus_tag from next locus
HmmGen.-n


BlkEBlkS      @�              // ignore sites inside ORFs (and risk missing some real ones!)
HmmGen.-i 


// feature key
HmmGen.-f protein_bind


// feature qualifier
HmmGen.-q bound_moiety#SdaR


// MASTgen p-value cutoff
mastGen.-V 1e-7


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             BlkEBlkS       @�              @�8     ????   A�[�   A�[�   SdaR.info                                                                                                                                                                                                                          SdaR (CdaR) family of transcription factors comprises regulators of sugar diacid (galactarate, glucarate) and glycerate utilization genes in Gammaproteobacteria.
   This profile was built starting with RegPrecise data for Pectobacterium atrosepticum and adding orthologous sites from P. carotovorum, P. wasabiae and D. dadantii. The profile may be insufficiently specific, as it finds 1-2 unrelated (and non-conserved) genes. The SdaR regulon is apparently divergent in D. dadantii, therefore this profile isn’t sensitive enough for this species.                                                                                                                                                                                         BlkEBlkS       @�      @�0     @ȶ     ????   A�[�@  A�[�@  meme.txt                                                                                                                                                                                                                        ********************************************************************************
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
f_gudX_Pca3-2_PwBlkEBlkS      @�      @�     a        1.0000     20  r_gudX_Pca3-2_Pwa        1.0000     20  
f_sdaR_Pat_Pwa_PatSCRI10 1.0000     20  r_sdaR_Pat_Pwa_PatSCRI10 1.0000     20  
f_gudX_PatSCRI1043       1.0000     20  r_gudX_PatSCRI1043       1.0000     20  
f_gudP_PatSCRI1043       1.0000     20  r_gudP_PatSCRI1043       1.0000     20  
f_garD_PatSCRI1043       1.0000     20  r_garD_PatSCRI1043       1.0000     20  
f_garD_Dda3937           1.0000     20  r_garD_Dda3937           1.0000     20  
********************************************************************************

********************************************************************************
COMMAND LINE SUMMARY
********************************************************************************
This information can also be useful in the event you wish to report a
problem with the MEME software.

command: meme -nmotifs 1 -dna -text -pal -revcomp /private/var/folders/1k/4vs0wmnd75371kbm6p5jbmxr0000gn/T/TemporaryItems/alignment.tmp 

model:  mod=    BlkEBlkS      @�      @�          zoops    nmotifs=         1    evt=           inf
object function=  E-value of product of p-values
width:  minw=            8    maxw=           20    minic=        0.00
width:  wg=             11    ws=              1    endgaps=       yes
nsites: minsites=        2    maxsites=       12    wnsites=       0.8
theta:  prob=            1    spmap=         uni    spfuzz=        0.5
global: substring=     yes    branching=      no    wbranch=        no
em:     prior=   dirichlet    b=            0.01    maxiter=        50
        distance=    1e-05
data:   n=             240    N=              12
strands: + -
sample: seed=            0    seqfrac=         1
Letter frequencies in dataset:
A 0.283 C 0.217 G 0.217 T 0.283 
Background letter frequencies (from dataset with add-one prior applied):
A 0.283 C 0.217 G 0.217 T 0.283 
********************************************************************************


***********************************************************************BlkEBlkS      @�      @�     *********
MOTIF  1 MEME	width =  20  sites =  12  llr = 178  E-value = 2.2e-042
********************************************************************************
--------------------------------------------------------------------------------
	Motif 1 Description
--------------------------------------------------------------------------------
Simplified        A  :5:22::18812:25:7823
pos.-specific     C  6:21:::9:1:::7581:21
probability       G  13:1858:::1:9:::12:6
matrix            T  3387:53:21881::22:5:

         bits    2.2                     
                 2.0                     
                 1.8        *    *       
                 1.5     *  *    *  *    
Relative         1.3   * * **    ** * *  
Entropy          1.1   * ************ *  
(21.4 bits)      0.9 * * ************ * *
                 0.7 * * ************ * *
                 0.4 ********************
                 0.2 ********************
                 0.0 --------------------

Multilevel      BlkEBlkS      @�      @�          CATTGGGCAATTGCACAATG
consensus            TG   TT      AC   AA
sequence              T                C 
                                         
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 sites sorted by position p-value
--------------------------------------------------------------------------------
Sequence name            Strand  Start   P-value                    Site      
-------------            ------  ----- ---------            --------------------
r_gudX_PatSCRI1043           -      1  5.36e-09          . TGCTGGGCTATTGCCCAATG           
f_gudX_PatSCRI1043           +      1  5.36e-09          . TGCTGGGCTATTGCCCAATG           
r_gudX_Pca3-2_Pwa            -      1  7.59e-09          . TGCTGTGCTATTGCCCAATG           
f_gudX_Pca3-2_Pwa            +      1  7.59e-09          . TGCTGTGCTATTGCCCAATG           
r_gudP_PatSCRI1043           +BlkEBlkS      @�      @�           1  2.52e-08          . CTTAGGTCAATTGCATAATG           
f_gudP_PatSCRI1043           -      1  2.52e-08          . CTTAGGTCAATTGCATAATG           
r_garD_Dda3937               -      1  7.61e-08          . TGTCGGTCAATTGCATAATG           
f_garD_Dda3937               +      1  7.61e-08          . TGTCGGTCAATTGCATAATG           
r_sdaR_Pat_Pwa_PatSCRI10     -      1  1.84e-07          . CTTTGTTAATTTGCACAATG           
f_sdaR_Pat_Pwa_PatSCRI10     +      1  1.84e-07          . CTTTGTTAATTTGCACAATG           
r_garD_PatSCRI1043           -      1  6.03e-07          . GTTGGTGCACTTGCCCTATA           
f_garD_PatSCRI1043           +      1  6.03e-07          . GTTGGTGCACTTGCCCTATA           
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 block diagrams
--------------------------------------------------------------------------------
SEQUENCE NAME            PBlkEBlkS      @�      @�     OSITION P-VALUE  MOTIF DIAGRAM
-------------            ----------------  -------------
r_gudX_PatSCRI1043                5.4e-09  [-1]
f_gudX_PatSCRI1043                5.4e-09  [+1]
r_gudX_Pca3-2_Pwa                 7.6e-09  [-1]
f_gudX_Pca3-2_Pwa                 7.6e-09  [+1]
r_gudP_PatSCRI1043                2.5e-08  [+1]
f_gudP_PatSCRI1043                2.5e-08  [-1]
r_garD_Dda3937                    7.6e-08  [-1]
f_garD_Dda3937                    7.6e-08  [+1]
r_sdaR_Pat_Pwa_PatSCRI10          1.8e-07  [-1]
f_sdaR_Pat_Pwa_PatSCRI10          1.8e-07  [+1]
r_garD_PatSCRI1043                  6e-07  [-1]
f_garD_PatSCRI1043                  6e-07  [+1]
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 in BLOCKS format
--------------------------------------------------------------------------------
BL   MOTIF 1 width=20 seqs=12
r_gudX_PatSCRI1043       (  BlkEBlkS      @�      @�       1) TGCTGGGCTATTGCCCAATG  1 
f_gudX_PatSCRI1043       (    1) TGCTGGGCTATTGCCCAATG  1 
r_gudX_Pca3-2_Pwa        (    1) TGCTGTGCTATTGCCCAATG  1 
f_gudX_Pca3-2_Pwa        (    1) TGCTGTGCTATTGCCCAATG  1 
r_gudP_PatSCRI1043       (    1) CTTAGGTCAATTGCATAATG  1 
f_gudP_PatSCRI1043       (    1) CTTAGGTCAATTGCATAATG  1 
r_garD_Dda3937           (    1) TGTCGGTCAATTGCATAATG  1 
f_garD_Dda3937           (    1) TGTCGGTCAATTGCATAATG  1 
r_sdaR_Pat_Pwa_PatSCRI10 (    1) CTTTGTTAATTTGCACAATG  1 
f_sdaR_Pat_Pwa_PatSCRI10 (    1) CTTTGTTAATTTGCACAATG  1 
r_garD_PatSCRI1043       (    1) GTTGGTGCACTTGCCCTATA  1 
f_garD_PatSCRI1043       (    1) GTTGGTGCACTTGCCCTATA  1 
//

--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 position-specific scoring matrix
--------------------------------------------------------------------------------
log-odds matrix: alength= 4 w= 20 BlkEBlkS      	@�      @�     n= 12 bayes= 1 E= 2.2e-042 
 -1023    142   -138     24 
    82  -1023     20    -18 
 -1023    -38  -1023    156 
   -76   -138   -138    124 
   -76  -1023    194  -1023 
 -1023  -1023    120     82 
 -1023  -1023    179    -18 
  -176    208  -1023  -1023 
   156  -1023  -1023    -76 
   156   -138  -1024   -176 
  -176  -1023   -138    156 
   -76  -1024  -1024    156 
 -1024  -1024    208   -176 
   -18    179  -1024  -1024 
    82    120  -1024  -1024 
 -1024    194  -1024    -76 
   124   -138   -138    -76 
   156  -1024    -38  -1024 
   -18     20  -1024     82 
    24   -138    142  -1024 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 position-specific probability matrix
--------------------------------------------------------------------------------
letter-probability matrix: alength= 4 w= 20 nsites= 12 E= 2.2e-042 
 0.000000  0.583333  0.083BlkEBlkS      
@�      @�     333  0.333333 
 0.500000  0.000000  0.250000  0.250000 
 0.000000  0.166667  0.000000  0.833333 
 0.166667  0.083333  0.083333  0.666667 
 0.166667  0.000000  0.833333  0.000000 
 0.000000  0.000000  0.500000  0.500000 
 0.000000  0.000000  0.750000  0.250000 
 0.083333  0.916667  0.000000  0.000000 
 0.833333  0.000000  0.000000  0.166667 
 0.833332  0.083332  0.000000  0.083332 
 0.083333  0.000000  0.083333  0.833333 
 0.166666  0.000000  0.000000  0.833332 
 0.000000  0.000000  0.916666  0.083332 
 0.249999  0.749999  0.000000  0.000000 
 0.499999  0.499999  0.000000  0.000000 
 0.000000  0.833332  0.000000  0.166666 
 0.666666  0.083332  0.083332  0.166666 
 0.833332  0.000000  0.166666  0.000000 
 0.249999  0.249999  0.000000  0.499999 
 0.333332  0.083332  0.583332  0.000000 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 regular expression
-------BlkEBlkS      @�      @�     -------------------------------------------------------------------------
[CT][AGT]TTG[GT][GT]CAATTG[CA][AC]CAA[TAC][GA]
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
f_gudX_Pca3-2_Pwa                1.52e-08  [+1(7.59e-09)]
r_gudX_Pca3-2_Pwa                1.52e-08  [+1(7.59e-09)]
f_sdaR_Pat_Pwa_PatSCRI10         3.67e-07 BlkEBlkS      @�      @�      [+1(1.84e-07)]
r_sdaR_Pat_Pwa_PatSCRI10         3.67e-07  [+1(1.84e-07)]
f_gudX_PatSCRI1043               1.07e-08  [+1(5.36e-09)]
r_gudX_PatSCRI1043               1.07e-08  [+1(5.36e-09)]
f_gudP_PatSCRI1043               5.04e-08  [+1(2.52e-08)]
r_gudP_PatSCRI1043               5.04e-08  [+1(2.52e-08)]
f_garD_PatSCRI1043               1.21e-06  [+1(6.03e-07)]
r_garD_PatSCRI1043               1.21e-06  [+1(6.03e-07)]
f_garD_Dda3937                   1.52e-07  [+1(7.61e-08)]
r_garD_Dda3937                   1.52e-07  [+1(7.61e-08)]
--------------------------------------------------------------------------------

********************************************************************************


********************************************************************************
Stopped because nmotifs = 1 reached.
********************************************************************************

CPU: Ptushka.local

*********************************************************************BlkEBlkS      @�              ***********
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    BlkEBlkS       @�      @�     @�A     ????   A�[�@  A�[�@  SdaR.hmm                                                                                                                                                                                                                        HMMER3/f [3.1b1 | May 2013]
NAME  stock
LENG  20
MAXL  78
ALPH  DNA
RF    no
MM    no
CONS  yes
CS    no
MAP   yes
DATE  Thu Feb  4 08:40:58 2016
NSEQ  12
EFFN  12.000000
CKSUM 952729145
GA    11.00
TC    11.00
NC    11.00
STATS LOCAL MSV       -7.2374  0.78831
STATS LOCAL VITERBI   -7.2285  0.78831
STATS LOCAL FORWARD   -2.6449  0.78831
HMM          A        C        G        T   
            m->m     m->i     m->d     i->m     i->i     d->m     d->d
  COMPO   1.30254  1.48147  1.48506  1.29329
          1.38629  1.38629  1.38629  1.38629
          0.01418  4.95583  4.95583  1.46634  0.26236  0.00000        *
      1   2.87855  0.70397  2.06911  1.13051      1 c - - -
          1.38629  1.38629  1.38629  1.38629
          0.0BlkEBlkS      @�      @�     1418  4.95583  4.95583  1.46634  0.26236  1.09861  0.40547
      2   0.87313  2.61544  1.44748  1.29441      2 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.01418  4.95583  4.95583  1.46634  0.26236  1.09861  0.40547
      3   4.01899  1.77230  4.22206  0.22637      3 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.01418  4.95583  4.95583  1.46634  0.26236  1.09861  0.40547
      4   1.60229  2.04042  1.93250  0.64663      4 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.01418  4.95583  4.95583  1.46634  0.26236  1.09861  0.40547
      5   1.86417  4.16477  0.21088  3.93368      5 g - - -
          1.38629  1.38629  1.38629  1.38629
          0.01418  4.95583  4.95583  1.46634  0.26236  1.09861  0.40547
      6   3.31454  3.35312  0.80293  0.73260      6 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.01418  4.95583  4.95583  1.46634  0.26236  1.09861  0.40547
      7   3.31293  3.66864  0.34710  1.46384    BlkEBlkS      @�      @�       7 g - - -
          1.38629  1.38629  1.38629  1.38629
          0.01418  4.95583  4.95583  1.46634  0.26236  1.09861  0.40547
      8   2.27384  0.15027  4.44723  3.69287      8 c - - -
          1.38629  1.38629  1.38629  1.38629
          0.01418  4.95583  4.95583  1.46634  0.26236  1.09861  0.40547
      9   0.23484  3.65688  3.91316  1.81088      9 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.01418  4.95583  4.95583  1.46634  0.26236  1.09861  0.40547
     10   0.37786  2.02190  3.13570  1.97474     10 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.01418  4.95583  4.95583  1.46634  0.26236  1.09861  0.40547
     11   1.99277  2.81367  2.02084  0.39876     11 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.01418  4.95583  4.95583  1.46634  0.26236  1.09861  0.40547
     12   1.84773  3.49849  3.84704  0.23469     12 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.01418  4.95583  4.95583  1.46634  0.26BlkEBlkS      @�      @�     236  1.09861  0.40547
     13   3.31675  4.01331  0.16268  2.34556     13 g - - -
          1.38629  1.38629  1.38629  1.38629
          0.01418  4.95583  4.95583  1.46634  0.26236  1.09861  0.40547
     14   1.40232  0.34755  4.07857  3.48588     14 c - - -
          1.38629  1.38629  1.38629  1.38629
          0.01418  4.95583  4.95583  1.46634  0.26236  1.09861  0.40547
     15   0.72155  0.78493  3.81044  3.33227     15 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.01418  4.95583  4.95583  1.46634  0.26236  1.09861  0.40547
     16   4.19149  0.22123  4.42132  1.76421     16 c - - -
          1.38629  1.38629  1.38629  1.38629
          0.01418  4.95583  4.95583  1.46634  0.26236  1.09861  0.40547
     17   0.66902  1.95173  2.01840  1.54696     17 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.01418  4.95583  4.95583  1.46634  0.26236  1.09861  0.40547
     18   0.20081  4.50159  1.84959  4.30198     18 a - - -
          1.38629  1.3862BlkEBlkS      @�              9  1.38629  1.38629
          0.01418  4.95583  4.95583  1.46634  0.26236  1.09861  0.40547
     19   1.33388  1.46195  2.74527  0.81978     19 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.01418  4.95583  4.95583  1.46634  0.26236  1.09861  0.40547
     20   1.25848  2.19813  0.60598  2.82405     20 g - - -
          1.38629  1.38629  1.38629  1.38629
          0.00712  4.94876        *  1.46634  0.26236  0.00000        *
//
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               BlkEBlkS      @�              BMap      0         0         0        0         0        0         0         0         0        $0        (0        ,0        00        40        80        <0      	  @0      
  D0        H0        L0        P0         T0        X0        \0        `0        d0                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      BlkE