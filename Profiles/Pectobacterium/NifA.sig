VFSv   BlkS       @D      @�          �BlkEBlkS       @�              @8      fold    A�V��@  A�V��@  /                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         BlkEBlkS       @�      @�`     @�h     ????   A�V��@  A�V��@  NifA.fasta                                                                                                                                                                                                                      >f_nifE_Pat21A 12.6
TTGTTACAAAGGCGACAA
>r_nifE_Pat21A 12.6
TTGTCGCCTTTGTAACAA
>f_nifL_SCRI1043
ATGTCAGGTTCGCAACAA
>r_nifL_SCRI1043
TTGTTGCGAACCTGACAT
>f_nifH_SCRI1043
CTGTCGGGCTGCCAACAA
>r_nifH_SCRI1043
TTGTTGGCAGCCCGACAG
>f_nifE_SCRI1043
TTGTCACAAAGGCGACAA
>r_nifE_SCRI1043
TTGTCGCCTTTGTGACAA
>f_nifB_JG10-08 8.9
CTGCTGCAATCCTGACAA
>r_nifB_JG10-08 8.9
TTGTCAGGATTGCAGCAG
>f_nifB_SCRI1043 9.0
CTGCTGCAATCCTGACAA
>r_nifB_SCRI1043 9.0
TTGTCAGGATTGCAGCAG
>f_nifU_JG10-08 8.8
ATGTCGTCTGTACGACAA
>r_nifU_JG10-08 8.8
TTGTCGTACAGACGACAT
>f_nifU_SCRI1043
ATGTCGTCTGTACGACAA
>r_nifU_SCRI1043
TTGTCGTACAGACGACAT
>f_nifH_JG10-08 11.7
TTGTTGGCAGCCCGACAG
>r_nifH_JG10-08 11.7
CTGTCGGGCTGCCAACAA
>f_rnfA_SCRI1043 11.4
TTGTCGAAAACCCAACAA
>r_rnfA_SCRI1BlkEBlkS      @�              043 11.4
TTGTTGGGTTTTCGACAA
>f_nifB_Dda3937 10.1
ATGCCACAATCCCGACAA
>r_nifB_Dda3937 10.1
TTGTCGGGATTGTGGCAT
>f_nifH_Dda3937 11.5
TTGTTAGCAGGCCGACAG
>r_nifH_Dda3937 11.5
CTGTCGGCCTGCTAACAA
>f_nifL_Dda3937 11.6
ATGTCGGCTTTTCGACAA
>r_nifL_Dda3937 11.6
TTGTCGAAAAGCCGACAT
>f_nifU_Dda3937 9.5
TTGTCAGAGAGGTGACAT
>r_nifU_Dda3937 9.5
ATGTCACCTCTCTGACAA
>f_hrpS_Dda3937 12.3
TTGTCAGGATGGCAACAG
>r_hrpS_Dda3937 12.3
CTGTTGCCATCCTGACAA
>f_pelE_Dda 13.2
TTGTCATCATCGTGACAA
>r_pelE_Dda 13.2
TTGTCACGATGATGACAA
>f_GZ59_19190
TTGTTAGCTTGCTGACAA
>r_GZ59_19190
TTGTCAGCAAGCTAACAA
>f_ECA2642 13.3
TTGTCAGCAAGCTAACAA
>r_ECA2642 13.3
TTGTTAGCTTGCTGACAA
                                                                                                                                                                                                                                                                                                                                                                      BlkEBlkS       @�      @�0     @��     ????   A�V��@  A�V��@  NifA.options                                                                                                                                                                                                                    ////
// nhmmer options
////


// Trusted cutoff. Bit score per-sequence cutoff, set according to the lowest scores seen for true homologous sequences that were above the GA gathering thresholds, when gathering members of the alignment
#=GF TC 6.5 6.5


// Gathering threshold. Bit score per-sequence cutoff used in gathering the members of the alignment
#=GF GA 6.4 6.4


//Noise cutoff. Bit score per-sequence cutoff, set according to the highest scores seen for unrelated sequences
#=GF NC 6.3 6.3


// use the gathering threshold from the calibrated profile
nhmmer.--cut_ga


////
// HmmGen options
////


// the alignment length
HmmGen.-L 18


// the site is palindromic
HmmGen.-p


// don't pick up locus_tag from next locus
HmmGenBlkEBlkS      @�              .-n


// ignore sites inside ORFs (and risk missing some real ones!)
HmmGen.-i 


// feature key
HmmGen.-f protein_bind


// feature qualifier
HmmGen.-q bound_moiety#NifA


// MASTgen p-value cutoff
mastGen.-V 3e-6


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       BlkEBlkS       @�              @��     ????   A�V��@  A�V��@  NifA.info                                                                                                                                                                                                                       Transcription factor NifA from the Fis family is a master regulator of nitrogen fixation in nitrogen-fixing Proteobacteria. NifA is an enhancer-binding protein (EBP) required for transcription initiation by RpoN-containing RNA polymerase.

The profile was built starting with NifA sites from Rhizobiales obtained from RegPrecise (http://regprecise.lbl.gov/RegPrecise/regulog.jsp?regulog_id=1127) and scanning the genomes of Pectobacterium and Dickeya strains in which the nifA gene is present. Low scoring sites were retained if located near (in front of) RpoN-dependent promoter. 

The final profile is built from 18 sites and their reverse complements. 


                                                                              BlkEBlkS       @�      @�0     @��@    ????   A�V��@  A�V��@  meme.txt                                                                                                                                                                                                                        ********************************************************************************
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
f_nifE_Pat21A   BlkEBlkS      @�      @�              1.0000     18  r_nifE_Pat21A            1.0000     18  
f_nifL_SCRI1043          1.0000     18  r_nifL_SCRI1043          1.0000     18  
f_nifH_SCRI1043          1.0000     18  r_nifH_SCRI1043          1.0000     18  
f_nifE_SCRI1043          1.0000     18  r_nifE_SCRI1043          1.0000     18  
f_nifB_JG10-08           1.0000     18  r_nifB_JG10-08           1.0000     18  
f_nifB_SCRI1043          1.0000     18  r_nifB_SCRI1043          1.0000     18  
f_nifU_JG10-08           1.0000     18  r_nifU_JG10-08           1.0000     18  
f_nifU_SCRI1043          1.0000     18  r_nifU_SCRI1043          1.0000     18  
f_nifH_JG10-08           1.0000     18  r_nifH_JG10-08           1.0000     18  
f_rnfA_SCRI1043          1.0000     18  r_rnfA_SCRI1043          1.0000     18  
f_nifB_Dda3937           1.0000     18  r_nifB_Dda3937           1.0000     18  
f_nifH_Dda3937           1.0000     18  r_nifH_Dda3937           1.0000     18  
f_nifL_Dda3937           1.0000     BlkEBlkS      @�      @�     18  r_nifL_Dda3937           1.0000     18  
f_nifU_Dda3937           1.0000     18  r_nifU_Dda3937           1.0000     18  
f_hrpS_Dda3937           1.0000     18  r_hrpS_Dda3937           1.0000     18  
f_pelE_Dda               1.0000     18  r_pelE_Dda               1.0000     18  
f_GZ59_19190             1.0000     18  r_GZ59_19190             1.0000     18  
f_ECA2642                1.0000     18  r_ECA2642                1.0000     18  
********************************************************************************

********************************************************************************
COMMAND LINE SUMMARY
********************************************************************************
This information can also be useful in the event you wish to report a
problem with the MEME software.

command: meme -nmotifs 1 -dna -text -pal -revcomp /private/var/folders/1k/4vs0wmnd75371kbm6p5jbmxr0000gn/T/TemporaryItems/alignment.tmp 

model:  mod=         zoops    nmotifBlkEBlkS      @�      @�     s=         1    evt=           inf
object function=  E-value of product of p-values
width:  minw=            8    maxw=           18    minic=        0.00
width:  wg=             11    ws=              1    endgaps=       yes
nsites: minsites=        2    maxsites=       36    wnsites=       0.8
theta:  prob=            1    spmap=         uni    spfuzz=        0.5
global: substring=     yes    branching=      no    wbranch=        no
em:     prior=   dirichlet    b=            0.01    maxiter=        50
        distance=    1e-05
data:   n=             648    N=              36
strands: + -
sample: seed=            0    seqfrac=         1
Letter frequencies in dataset:
A 0.267 C 0.233 G 0.233 T 0.267 
Background letter frequencies (from dataset with add-one prior applied):
A 0.267 C 0.233 G 0.233 T 0.267 
********************************************************************************


********************************************************************************
MOTIF  1 MBlkEBlkS      @�      @�     EME	width =  18  sites =  36  llr = 484  E-value = 1.1e-167
********************************************************************************
--------------------------------------------------------------------------------
	Motif 1 Description
--------------------------------------------------------------------------------
Simplified        A  2::::41363:1:39:a7
pos.-specific     C  2::17:341:356::a::
probability       G  ::a::653:143:71::2
matrix            T  7a:93:1:36314::::2

         bits    2.1   *            *  
                 1.9  **            ** 
                 1.7  **            ** 
                 1.5  ***          *** 
Relative         1.3  ***          *** 
Entropy          1.1  *****      ***** 
(19.4 bits)      0.8  *****      ***** 
                 0.6 ******      ******
                 0.4 ******************
                 0.2 ******************
                 0.0 ------------------

Multilevel           TTGTCGGCATGCCGACAA
consensus                TBlkEBlkS      @�      @�     ACATACGTA    
sequence                    G  T       
                                       
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 sites sorted by position p-value
--------------------------------------------------------------------------------
Sequence name            Strand  Start   P-value                   Site     
-------------            ------  ----- ---------            ------------------
r_ECA2642                    +      1  1.23e-08          . TTGTTAGCTTGCTGACAA           
f_ECA2642                    -      1  1.23e-08          . TTGTTAGCTTGCTGACAA           
r_GZ59_19190                 -      1  1.23e-08          . TTGTTAGCTTGCTGACAA           
f_GZ59_19190                 +      1  1.23e-08          . TTGTTAGCTTGCTGACAA           
r_nifE_SCRI1043              -      1  2.09e-08          . TTGTCACAAAGGCGACAA           
f_nifE_SCRIBlkEBlkS      @�      @�     1043              +      1  2.09e-08          . TTGTCACAAAGGCGACAA           
r_pelE_Dda                   -      1  3.89e-08          . TTGTCATCATCGTGACAA           
f_pelE_Dda                   +      1  3.89e-08          . TTGTCATCATCGTGACAA           
r_hrpS_Dda3937               +      1  6.84e-08          . CTGTTGCCATCCTGACAA           
f_hrpS_Dda3937               -      1  6.84e-08          . CTGTTGCCATCCTGACAA           
r_nifE_Pat21A                -      1  8.81e-08          . TTGTTACAAAGGCGACAA           
f_nifE_Pat21A                +      1  8.81e-08          . TTGTTACAAAGGCGACAA           
r_nifH_Dda3937               -      1  9.95e-08          . TTGTTAGCAGGCCGACAG           
f_nifH_Dda3937               +      1  9.95e-08          . TTGTTAGCAGGCCGACAG           
r_nifH_JG10-08               -      1  1.13e-07          . TTGTTGGCAGCCCGACAG           
f_nifH_JG10-08               +      1  1.13e-07          . TTGTTGGCAGCCCGACAG           
r_nifH_SCRI1043         BlkEBlkS      @�      @�          +      1  1.13e-07          . TTGTTGGCAGCCCGACAG           
f_nifH_SCRI1043              -      1  1.13e-07          . TTGTTGGCAGCCCGACAG           
r_nifL_SCRI1043              -      1  3.42e-07          . ATGTCAGGTTCGCAACAA           
f_nifL_SCRI1043              +      1  3.42e-07          . ATGTCAGGTTCGCAACAA           
r_nifL_Dda3937               +      1  4.14e-07          . TTGTCGAAAAGCCGACAT           
f_nifL_Dda3937               -      1  4.14e-07          . TTGTCGAAAAGCCGACAT           
r_rnfA_SCRI1043              -      1  4.54e-07          . TTGTCGAAAACCCAACAA           
f_rnfA_SCRI1043              +      1  4.54e-07          . TTGTCGAAAACCCAACAA           
r_nifB_Dda3937               -      1  7.06e-07          . ATGCCACAATCCCGACAA           
f_nifB_Dda3937               +      1  7.06e-07          . ATGCCACAATCCCGACAA           
r_nifB_SCRI1043              -      1  1.41e-06          . CTGCTGCAATCCTGACAA           
f_nifB_SCRI1043              +      1BlkEBlkS      	@�      @�       1.41e-06          . CTGCTGCAATCCTGACAA           
r_nifB_JG10-08               -      1  1.41e-06          . CTGCTGCAATCCTGACAA           
f_nifB_JG10-08               +      1  1.41e-06          . CTGCTGCAATCCTGACAA           
r_nifU_Dda3937               +      1  1.84e-06          . ATGTCACCTCTCTGACAA           
f_nifU_Dda3937               -      1  1.84e-06          . ATGTCACCTCTCTGACAA           
r_nifU_SCRI1043              -      1  1.84e-06          . ATGTCGTCTGTACGACAA           
f_nifU_SCRI1043              +      1  1.84e-06          . ATGTCGTCTGTACGACAA           
r_nifU_JG10-08               -      1  1.84e-06          . ATGTCGTCTGTACGACAA           
f_nifU_JG10-08               +      1  1.84e-06          . ATGTCGTCTGTACGACAA           
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 block diagrams
-----------------------------------------BlkEBlkS      
@�      @�     ---------------------------------------
SEQUENCE NAME            POSITION P-VALUE  MOTIF DIAGRAM
-------------            ----------------  -------------
r_ECA2642                         1.2e-08  [+1]
f_ECA2642                         1.2e-08  [-1]
r_GZ59_19190                      1.2e-08  [-1]
f_GZ59_19190                      1.2e-08  [+1]
r_nifE_SCRI1043                   2.1e-08  [-1]
f_nifE_SCRI1043                   2.1e-08  [+1]
r_pelE_Dda                        3.9e-08  [-1]
f_pelE_Dda                        3.9e-08  [+1]
r_hrpS_Dda3937                    6.8e-08  [+1]
f_hrpS_Dda3937                    6.8e-08  [-1]
r_nifE_Pat21A                     8.8e-08  [-1]
f_nifE_Pat21A                     8.8e-08  [+1]
r_nifH_Dda3937                      1e-07  [-1]
f_nifH_Dda3937                      1e-07  [+1]
r_nifH_JG10-08                    1.1e-07  [-1]
f_nifH_JG10-08                    1.1e-07  [+1]
r_nifH_SCRI1043                   1.1e-07  [+1]
f_nifH_SCRI1043       BlkEBlkS      @�      @�                 1.1e-07  [-1]
r_nifL_SCRI1043                   3.4e-07  [-1]
f_nifL_SCRI1043                   3.4e-07  [+1]
r_nifL_Dda3937                    4.1e-07  [+1]
f_nifL_Dda3937                    4.1e-07  [-1]
r_rnfA_SCRI1043                   4.5e-07  [-1]
f_rnfA_SCRI1043                   4.5e-07  [+1]
r_nifB_Dda3937                    7.1e-07  [-1]
f_nifB_Dda3937                    7.1e-07  [+1]
r_nifB_SCRI1043                   1.4e-06  [-1]
f_nifB_SCRI1043                   1.4e-06  [+1]
r_nifB_JG10-08                    1.4e-06  [-1]
f_nifB_JG10-08                    1.4e-06  [+1]
r_nifU_Dda3937                    1.8e-06  [+1]
f_nifU_Dda3937                    1.8e-06  [-1]
r_nifU_SCRI1043                   1.8e-06  [-1]
f_nifU_SCRI1043                   1.8e-06  [+1]
r_nifU_JG10-08                    1.8e-06  [-1]
f_nifU_JG10-08                    1.8e-06  [+1]
--------------------------------------------------------------------------------

--------------------BlkEBlkS      @�      @�     ------------------------------------------------------------
	Motif 1 in BLOCKS format
--------------------------------------------------------------------------------
BL   MOTIF 1 width=18 seqs=36
r_ECA2642                (    1) TTGTTAGCTTGCTGACAA  1 
f_ECA2642                (    1) TTGTTAGCTTGCTGACAA  1 
r_GZ59_19190             (    1) TTGTTAGCTTGCTGACAA  1 
f_GZ59_19190             (    1) TTGTTAGCTTGCTGACAA  1 
r_nifE_SCRI1043          (    1) TTGTCACAAAGGCGACAA  1 
f_nifE_SCRI1043          (    1) TTGTCACAAAGGCGACAA  1 
r_pelE_Dda               (    1) TTGTCATCATCGTGACAA  1 
f_pelE_Dda               (    1) TTGTCATCATCGTGACAA  1 
r_hrpS_Dda3937           (    1) CTGTTGCCATCCTGACAA  1 
f_hrpS_Dda3937           (    1) CTGTTGCCATCCTGACAA  1 
r_nifE_Pat21A            (    1) TTGTTACAAAGGCGACAA  1 
f_nifE_Pat21A            (    1) TTGTTACAAAGGCGACAA  1 
r_nifH_Dda3937           (    1) TTGTTAGCAGGCCGACAG  1 
f_nifH_Dda3937           (    1) TTGTTAGCAGGCCGACAG  1 
r_nifH_JG1BlkEBlkS      @�      @�     0-08           (    1) TTGTTGGCAGCCCGACAG  1 
f_nifH_JG10-08           (    1) TTGTTGGCAGCCCGACAG  1 
r_nifH_SCRI1043          (    1) TTGTTGGCAGCCCGACAG  1 
f_nifH_SCRI1043          (    1) TTGTTGGCAGCCCGACAG  1 
r_nifL_SCRI1043          (    1) ATGTCAGGTTCGCAACAA  1 
f_nifL_SCRI1043          (    1) ATGTCAGGTTCGCAACAA  1 
r_nifL_Dda3937           (    1) TTGTCGAAAAGCCGACAT  1 
f_nifL_Dda3937           (    1) TTGTCGAAAAGCCGACAT  1 
r_rnfA_SCRI1043          (    1) TTGTCGAAAACCCAACAA  1 
f_rnfA_SCRI1043          (    1) TTGTCGAAAACCCAACAA  1 
r_nifB_Dda3937           (    1) ATGCCACAATCCCGACAA  1 
f_nifB_Dda3937           (    1) ATGCCACAATCCCGACAA  1 
r_nifB_SCRI1043          (    1) CTGCTGCAATCCTGACAA  1 
f_nifB_SCRI1043          (    1) CTGCTGCAATCCTGACAA  1 
r_nifB_JG10-08           (    1) CTGCTGCAATCCTGACAA  1 
f_nifB_JG10-08           (    1) CTGCTGCAATCCTGACAA  1 
r_nifU_Dda3937           (    1) ATGTCACCTCTCTGACAA  1 
f_nifU_Dda3937           (    1) ATGTCACCTCTCTGACABlkEBlkS      @�      @�     A  1 
r_nifU_SCRI1043          (    1) ATGTCGTCTGTACGACAA  1 
f_nifU_SCRI1043          (    1) ATGTCGTCTGTACGACAA  1 
r_nifU_JG10-08           (    1) ATGTCGTCTGTACGACAA  1 
f_nifU_JG10-08           (    1) ATGTCGTCTGTACGACAA  1 
//

--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 position-specific scoring matrix
--------------------------------------------------------------------------------
log-odds matrix: alength= 4 w= 18 n= 36 bayes= -664.386 E= 1.1e-167 
   -68    -48  -1181    132 
 -1181  -1181  -1181    191 
 -1181  -1181    210  -1181 
 -1181   -148  -1181    178 
 -1181    157  -1181     20 
    74  -1181    125  -1181 
  -226     39    110    -94 
     6     93     25  -1181 
   106    -75   -307      6 
     6   -307    -75    106 
 -1183     25     93      6 
   -94    110     39   -226 
 -1183    125  -1184     74 
    20  -1184    157  -118BlkEBlkS      @�      @�     3 
   178  -1184   -148  -1183 
 -1183    210  -1184  -1183 
   191  -1184  -1184  -1183 
   132  -1184    -48    -68 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 position-specific probability matrix
--------------------------------------------------------------------------------
letter-probability matrix: alength= 4 w= 18 nsites= 36 E= 1.1e-167 
 0.166667  0.166667  0.000000  0.666667 
 0.000000  0.000000  0.000000  1.000000 
 0.000000  0.000000  1.000000  0.000000 
 0.000000  0.083333  0.000000  0.916667 
 0.000000  0.694444  0.000000  0.305556 
 0.444444  0.000000  0.555556  0.000000 
 0.055556  0.305556  0.500000  0.138889 
 0.277778  0.444444  0.277778  0.000000 
 0.555554  0.138887  0.027776  0.277776 
 0.277777  0.027777  0.138888  0.555555 
 0.000000  0.277777  0.444443  0.277777 
 0.138888  0.499999  0.305555  0.055555 
 0.000000  0.555555  0.BlkEBlkS      @�      @�     000000  0.444443 
 0.305555  0.000000  0.694443  0.000000 
 0.916666  0.000000  0.083332  0.000000 
 0.000000  0.999999  0.000000  0.000000 
 0.999999  0.000000  0.000000  0.000000 
 0.666666  0.000000  0.166666  0.166666 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 regular expression
--------------------------------------------------------------------------------
TTGT[CT][GA][GC][CAG][AT][TA][GCT][CG][CT][GA]ACAA
--------------------------------------------------------------------------------




Time  0.18 secs.

********************************************************************************


********************************************************************************
SUMMARY OF MOTIFS
********************************************************************************

-------------------------------------------------------------------------------BlkEBlkS      @�      @�     -
	Combined block diagrams: non-overlapping sites with p-value < 0.0001
--------------------------------------------------------------------------------
SEQUENCE NAME            COMBINED P-VALUE  MOTIF DIAGRAM
-------------            ----------------  -------------
f_nifE_Pat21A                    1.76e-07  [+1(8.81e-08)]
r_nifE_Pat21A                    1.76e-07  [+1(8.81e-08)]
f_nifL_SCRI1043                  6.84e-07  [+1(3.42e-07)]
r_nifL_SCRI1043                  6.84e-07  [+1(3.42e-07)]
f_nifH_SCRI1043                  2.27e-07  [+1(1.13e-07)]
r_nifH_SCRI1043                  2.27e-07  [+1(1.13e-07)]
f_nifE_SCRI1043                  4.19e-08  [+1(2.09e-08)]
r_nifE_SCRI1043                  4.19e-08  [+1(2.09e-08)]
f_nifB_JG10-08                   2.81e-06  [+1(1.41e-06)]
r_nifB_JG10-08                   2.81e-06  [+1(1.41e-06)]
f_nifB_SCRI1043                  2.81e-06  [+1(1.41e-06)]
r_nifB_SCRI1043                  2.81e-06  [+1(1.41e-06)]
f_nifU_JG10-08               BlkEBlkS      @�      @�         3.68e-06  [+1(1.84e-06)]
r_nifU_JG10-08                   3.68e-06  [+1(1.84e-06)]
f_nifU_SCRI1043                  3.68e-06  [+1(1.84e-06)]
r_nifU_SCRI1043                  3.68e-06  [+1(1.84e-06)]
f_nifH_JG10-08                   2.27e-07  [+1(1.13e-07)]
r_nifH_JG10-08                   2.27e-07  [+1(1.13e-07)]
f_rnfA_SCRI1043                  9.09e-07  [+1(4.54e-07)]
r_rnfA_SCRI1043                  9.09e-07  [+1(4.54e-07)]
f_nifB_Dda3937                   1.41e-06  [+1(7.06e-07)]
r_nifB_Dda3937                   1.41e-06  [+1(7.06e-07)]
f_nifH_Dda3937                   1.99e-07  [+1(9.95e-08)]
r_nifH_Dda3937                   1.99e-07  [+1(9.95e-08)]
f_nifL_Dda3937                   8.28e-07  [+1(4.14e-07)]
r_nifL_Dda3937                   8.28e-07  [+1(4.14e-07)]
f_nifU_Dda3937                   3.68e-06  [+1(1.84e-06)]
r_nifU_Dda3937                   3.68e-06  [+1(1.84e-06)]
f_hrpS_Dda3937                   1.37e-07  [+1(6.84e-08)]
r_hrpS_Dda3937                   1.BlkEBlkS      @�              37e-07  [+1(6.84e-08)]
f_pelE_Dda                       7.78e-08  [+1(3.89e-08)]
r_pelE_Dda                       7.78e-08  [+1(3.89e-08)]
f_GZ59_19190                     2.46e-08  [+1(1.23e-08)]
r_GZ59_19190                     2.46e-08  [+1(1.23e-08)]
f_ECA2642                        2.46e-08  [+1(1.23e-08)]
r_ECA2642                        2.46e-08  [+1(1.23e-08)]
--------------------------------------------------------------------------------

********************************************************************************


********************************************************************************
Stopped because nmotifs = 1 reached.
********************************************************************************

CPU: Ptushka.local

********************************************************************************
                                                                                                                                                           BlkEBlkS       @�      @�     @��     ????   A�V��@  A�V��@  NifA.hmm                                                                                                                                                                                                                        HMMER3/f [3.1b1 | May 2013]
NAME  stock
LENG  18
MAXL  70
ALPH  DNA
RF    no
MM    no
CONS  yes
CS    no
MAP   yes
DATE  Sat Jan  9 23:59:46 2016
NSEQ  36
EFFN  36.000000
CKSUM 526994256
GA    6.40
TC    6.50
NC    6.30
STATS LOCAL MSV       -6.4338  0.77592
STATS LOCAL VITERBI   -6.5354  0.77592
STATS LOCAL FORWARD   -2.5567  0.77592
HMM          A        C        G        T   
            m->m     m->i     m->d     i->m     i->i     d->m     d->d
  COMPO   1.33382  1.45341  1.44649  1.31914
          1.38629  1.38629  1.38629  1.38629
          0.00525  5.94542  5.94542  1.46634  0.26236  0.00000        *
      1   1.66769  1.72495  4.13874  0.48257      1 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.0052BlkEBlkS      @�      @�     5  5.94542  5.94542  1.46634  0.26236  1.09861  0.40547
      2   5.80626  5.51010  5.91394  0.00980      2 T - - -
          1.38629  1.38629  1.38629  1.38629
          0.00525  5.94542  5.94542  1.46634  0.26236  1.09861  0.40547
      3   5.71942  6.69493  0.00609  6.47060      3 G - - -
          1.38629  1.38629  1.38629  1.38629
          0.00525  5.94542  5.94542  1.46634  0.26236  1.09861  0.40547
      4   5.44787  2.21635  5.71139  0.12400      4 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00525  5.94542  5.94542  1.46634  0.26236  1.09861  0.40547
      5   5.42473  0.36322  5.69177  1.21473      5 c - - -
          1.38629  1.38629  1.38629  1.38629
          0.00525  5.94542  5.94542  1.46634  0.26236  1.09861  0.40547
      6   0.86433  5.69092  0.56025  5.46654      6 g - - -
          1.38629  1.38629  1.38629  1.38629
          0.00525  5.94542  5.94542  1.46634  0.26236  1.09861  0.40547
      7   2.43297  1.23272  0.77892  1.82125      7BlkEBlkS      @�      @�      g - - -
          1.38629  1.38629  1.38629  1.38629
          0.00525  5.94542  5.94542  1.46634  0.26236  1.09861  0.40547
      8   1.21706  0.93254  1.27357  3.48944      8 c - - -
          1.38629  1.38629  1.38629  1.38629
          0.00525  5.94542  5.94542  1.46634  0.26236  1.09861  0.40547
      9   0.67665  1.89817  2.71018  1.28984      9 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00525  5.94542  5.94542  1.46634  0.26236  1.09861  0.40547
     10   1.30798  2.72092  1.88758  0.66869     10 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00525  5.94542  5.94542  1.46634  0.26236  1.09861  0.40547
     11   3.77782  1.27455  0.92599  1.19922     11 g - - -
          1.38629  1.38629  1.38629  1.38629
          0.00525  5.94542  5.94542  1.46634  0.26236  1.09861  0.40547
     12   1.84391  0.78986  1.22040  2.37749     12 c - - -
          1.38629  1.38629  1.38629  1.38629
          0.00525  5.94542  5.94542  1.46634  0.26236BlkEBlkS      @�      @�       1.09861  0.40547
     13   5.40489  0.58214  5.66863  0.83621     13 c - - -
          1.38629  1.38629  1.38629  1.38629
          0.00525  5.94542  5.94542  1.46634  0.26236  1.09861  0.40547
     14   1.26237  5.36630  0.34750  5.13348     14 g - - -
          1.38629  1.38629  1.38629  1.38629
          0.00525  5.94542  5.94542  1.46634  0.26236  1.09861  0.40547
     15   0.11128  6.64150  2.27831  6.46981     15 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00525  5.94542  5.94542  1.46634  0.26236  1.09861  0.40547
     16   5.71633  0.01143  5.87264  5.24755     16 C - - -
          1.38629  1.38629  1.38629  1.38629
          0.00525  5.94542  5.94542  1.46634  0.26236  1.09861  0.40547
     17   0.00495  6.81007  5.99055  6.62029     17 A - - -
          1.38629  1.38629  1.38629  1.38629
          0.00525  5.94542  5.94542  1.46634  0.26236  1.09861  0.40547
     18   0.51309  3.65135  1.72309  1.62514     18 a - - -
          1.38629  1.38629  BlkEBlkS      @�              1.38629  1.38629
          0.00263  5.94280        *  1.46634  0.26236  0.00000        *
//
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    BlkEBlkS      @�              BMap       0         0         0        0         0        0         0         0         0        $0        (0        ,0        00        40        80        <0      	  @0      
  D0        H0        L0        P0        T0        X0        \0        `0        d0        h0         l0        p0        t0        x0        |0                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              BlkE