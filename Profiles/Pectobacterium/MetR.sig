VFSv   BlkS       @D      @�          �BlkEBlkS       @�              @8      fold    A�V�   A�V�   /                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         BlkEBlkS       @�      @�`     @��     ????   A�V�   A�V�   MetR.fasta                                                                                                                                                                                                                      >f_ECA4244(metF) 10.8 Score=4.8 Pos=-156 [Erwinia carotovora subsp. atroseptica SCRI1043]
ATCATGAACTTTTTTCATTTA
>r_ECA4244(metF) 10.8 Score=4.8 Pos=-156 [Erwinia carotovora subsp. atroseptica SCRI1043]
TAAATGAAAAAAGTTCATGAT
>f_ECA0181(metE metR) 3-2 Score=4.7 Pos=-106 [Erwinia carotovora subsp. atroseptica SCRI1043]
ATCATGAGAGTCCTTCACAGT
>r_ECA0181(metE metR) Score=4.7 Pos=-106 [Erwinia carotovora subsp. atroseptica SCRI1043]
ACTGTGAAGGACTCTCATGAT
>f_ECA3992(metA) Score=4.9 Pos=-112 [Erwinia carotovora subsp. atroseptica SCRI1043]
CTCGTGAAACATTTTCACCTT
>r_ECA3992(metA) Score=4.9 Pos=-112 [Erwinia carotovora subsp. atroseptica SCRI1043]
AAGGTGAAAATGTTTCACGAG
>f_ECA3125(PF08908) Score=4.4 Pos=-181 [Erwinia carotovora subsp. atroBlkEBlkS      @�      @�`     septica SCRI1043]
ATCATGAATATAATTCATCTT
>r_ECA3125(PF08908) Score=4.4 Pos=-181 [Erwinia carotovora subsp. atroseptica SCRI1043]
AAGATGAATTATATTCATGAT
>f_ECA1113(metE2) Score=4.4 Pos=-202 [Erwinia carotovora subsp. atroseptica SCRI1043]
TACATGAATTTTATTCACGTG
>r_ECA1113(metE2) Score=4.4 Pos=-202 [Erwinia carotovora subsp. atroseptica SCRI1043]
CACGTGAATAAAATTCATGTA
>f_ECA0180(metR) Score=3.8 Pos=-173 [Erwinia carotovora subsp. atroseptica SCRI1043]
TTCCTGCGCTTTTTTCAGTTC
>r_ECA0180(metR) Score=3.8 Pos=-173 [Erwinia carotovora subsp. atroseptica SCRI1043]
GAACTGAAAAAAGCGCAGGAA
>f_ECA3987(metH) Score=4.7 Pos=-98 [Erwinia carotovora subsp. atroseptica SCRI1043]
TACCTGAAAAAGTCTCATGCT
>r_ECA3987(metH) Score=4.7 Pos=-98 [Erwinia carotovora subsp. atroseptica SCRI1043]
AGCATGAGACTTTTTCAGGTA
>f_metC_SCRI1043 11.8
TACCTGAAATATTTTCACCTA
>r_metC_SCRI1043 11.8
TAGGTGAAAATATTTCAGGTA
>f_metA_PwaSCC3193 9.5
ACAGTGAAACATTTTCACCTT
>r_metA_PwaSCC3193 9.5
AAGGTGAAAATGTTTCACTGT
>f_metH_Pcc3-2 8.1
AGCBlkEBlkS      @�              ATGAGACTTTTTCAGATC
>r_metH_Pcc3-2 8.1
GATCTGAAAAAGTCTCATGCT
>f_metE2_Pcc3-2
CACGTGAACTTTCTTCATGTT
>r_metE2_Pcc3-2
AACATGAAGAAAGTTCACGTG
>f_metE2_2_Pcc3-2
ATCATGAAGATGGCTCATGTC
>r_metE2_2_Pcc3-2
GACATGAGCCATCTTCATGAT
>f_OA04_21030 ABC transporter substrate binding protein (?)
AAATTGAAATTATTTCATAAG
>r_OA04_21030 ABC transporter substrate binding protein (?)
CTTATGAAATAATTTCAATTT
>f_OA04_01940 AA transporter convergent with metR 8.0
TGACTGAAATTCATTCAGCTA
>r_OA04_01940 AA transporter convergent with metR 8.0
TAGCTGAATGAATTTCAGTCA
>f_metF_PwaSCC3193
ATCATGAATTTTTTTCATTTA
>r_metF_PwaSCC3193
TAAATGAAAAAAATTCATGAT
>f_metE2_PwaSCC3193
AACATGAATTTTTTTCACGTG
>r_metE2_PwaSCC3193
CACGTGAAAAAAATTCATGTT
>f_metE_PwaSCC3193
AGCATGAGACTTTTTCAGGTC
>r_metE_PwaSCC3193
GACCTGAAAAAGTCTCATGCT                                                                                                                                                                                                                     BlkEBlkS       @�      @�0     @�     ????   A�V�   A�V�   MetR.options                                                                                                                                                                                                                    ////
// nhmmer options
////


// Trusted cutoff. Bit score per-sequence cutoff, set according to the lowest scores seen for true homologous sequences that were above the GA gathering thresholds, when gathering members of the alignment
#=GF TC 9.1 9.1


// Gathering threshold. Bit score per-sequence cutoff used in gathering the members of the alignment
#=GF GA 9.0 9.0


//Noise cutoff. Bit score per-sequence cutoff, set according to the highest scores seen for unrelated sequences
#=GF NC 8.7 8.7


// use the gathering threshold from the calibrated profile
nhmmer.--cut_ga


////
// HmmGen options
////


// the alignment length
HmmGen.-L 21


// the site is palindromic
HmmGen.-p


// ignore sites inside ORFs (and risk missing somBlkEBlkS      @�              e real ones!)
HmmGen.-i 


// feature key
HmmGen.-f protein_bind


// feature qualifier
HmmGen.-q bound_moiety#MetR


// MASTgen p-value cutoff
mastGen.-V 7e-6


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              BlkEBlkS       @�              @z@     ????   A�V�   A�V�   MetR.info                                                                                                                                                                                                                       MetR is the regulator of methionine metabolism responsive to homocysteine.

hmm profile made of 15 Pectobacterium atrosepticum SCRI1043 MetR binding sites present in regPrecise version 3.2 was used to search genomes of Pectobacterium strains. 

The final profile is built from 18 nonredundant sequences from Pectobacterium atrosepticum SCRI 1043, P. carotovorum 3-2 and P. wasabiae SCC3193 and their reverse complements.                                                                                                                                                                                                                                                                                                                            BlkEBlkS       @�      @�     @Ҙ@    ????   A�V�   A�V�   meme.txt                                                                                                                                                                                                                        ********************************************************************************
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
f_ECA4244(metF) BlkEBlkS      @�      @�              1.0000     21  r_ECA4244(metF)          1.0000     21  
f_ECA0181(metE           1.0000     21  r_ECA0181(metE           1.0000     21  
f_ECA3992(metA)          1.0000     21  r_ECA3992(metA)          1.0000     21  
f_ECA3125(PF08908)       1.0000     21  r_ECA3125(PF08908)       1.0000     21  
f_ECA1113(metE2)         1.0000     21  r_ECA1113(metE2)         1.0000     21  
f_ECA0180(metR)          1.0000     21  r_ECA0180(metR)          1.0000     21  
f_ECA3987(metH)          1.0000     21  r_ECA3987(metH)          1.0000     21  
f_metC_SCRI1043          1.0000     21  r_metC_SCRI1043          1.0000     21  
f_metA_PwaSCC3193        1.0000     21  r_metA_PwaSCC3193        1.0000     21  
f_metH_Pcc3-2            1.0000     21  r_metH_Pcc3-2            1.0000     21  
f_metE2_Pcc3-2           1.0000     21  r_metE2_Pcc3-2           1.0000     21  
f_metE2_2_Pcc3-2         1.0000     21  r_metE2_2_Pcc3-2         1.0000     21  
f_OA04_21030             1.0000     BlkEBlkS      @�      @�     21  r_OA04_21030             1.0000     21  
f_OA04_01940             1.0000     21  r_OA04_01940             1.0000     21  
f_metF_PwaSCC3193        1.0000     21  r_metF_PwaSCC3193        1.0000     21  
f_metE2_PwaSCC3193       1.0000     21  r_metE2_PwaSCC3193       1.0000     21  
f_metE_PwaSCC3193        1.0000     21  r_metE_PwaSCC3193        1.0000     21  
********************************************************************************

********************************************************************************
COMMAND LINE SUMMARY
********************************************************************************
This information can also be useful in the event you wish to report a
problem with the MEME software.

command: meme -nmotifs 1 -dna -text /private/var/folders/1k/4vs0wmnd75371kbm6p5jbmxr0000gn/T/TemporaryItems/alignment.tmp 

model:  mod=         zoops    nmotifs=         1    evt=           inf
object function=  E-value of product of p-values
width:  minBlkEBlkS      @�      @�     w=            8    maxw=           21    minic=        0.00
width:  wg=             11    ws=              1    endgaps=       yes
nsites: minsites=        2    maxsites=       34    wnsites=       0.8
theta:  prob=            1    spmap=         uni    spfuzz=        0.5
global: substring=     yes    branching=      no    wbranch=        no
em:     prior=   dirichlet    b=            0.01    maxiter=        50
        distance=    1e-05
data:   n=             714    N=              34
strands: +
sample: seed=            0    seqfrac=         1
Letter frequencies in dataset:
A 0.340 C 0.160 G 0.160 T 0.340 
Background letter frequencies (from dataset with add-one prior applied):
A 0.340 C 0.160 G 0.160 T 0.340 
********************************************************************************


********************************************************************************
MOTIF  1 MEME	width =  19  sites =  34  llr = 404  E-value = 4.9e-118
*************************************BlkEBlkS      @�      @�     *******************************************
--------------------------------------------------------------------------------
	Motif 1 Description
--------------------------------------------------------------------------------
Simplified        A  625::a864532:::a:12
pos.-specific     C  162::::12:112:a:311
probability       G  113:a:211:21::::261
matrix            T  21:a:::235468a::526

         bits    2.6     *         *    
                 2.4     *         *    
                 2.1     *         *    
                 1.8     *         *    
Relative         1.6    **         **   
Entropy          1.3    ***       ***   
(17.1 bits)      1.1    ****     ****   
                 0.8  * ****     **** * 
                 0.5  ******  *  ****** 
                 0.3 ******** * ********
                 0.0 -------------------

Multilevel           ACATGAAAAATTTTCATGT
consensus            T G    TTTAA    C A
sequence               C             G  
                         BlkEBlkS      @�      @�                    
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 sites sorted by position p-value
--------------------------------------------------------------------------------
Sequence name             Start   P-value                   Site      
-------------             ----- ---------            -------------------
r_metE2_PwaSCC3193            2  1.68e-08          C ACGTGAAAAAAATTCATGT T         
f_metE2_PwaSCC3193            2  1.68e-08          A ACATGAATTTTTTTCACGT G         
r_metC_SCRI1043               2  3.29e-08          T AGGTGAAAATATTTCAGGT A         
f_metC_SCRI1043               2  3.29e-08          T ACCTGAAATATTTTCACCT A         
r_metE_PwaSCC3193             2  4.85e-08          G ACCTGAAAAAGTCTCATGC T         
f_metE_PwaSCC3193             2  4.85e-08          A GCATGAGACTTTTTCAGGT C         
r_ECA3987(metH)               2  4.85e-08 BlkEBlkS      @�      @�              A GCATGAGACTTTTTCAGGT A         
f_ECA3987(metH)               2  4.85e-08          T ACCTGAAAAAGTCTCATGC T         
r_metE2_Pcc3-2                2  8.62e-08          A ACATGAAGAAAGTTCACGT G         
f_metE2_Pcc3-2                2  8.62e-08          C ACGTGAACTTTCTTCATGT T         
r_ECA3992(metA)               2  8.62e-08          A AGGTGAAAATGTTTCACGA G         
f_ECA3992(metA)               2  8.62e-08          C TCGTGAAACATTTTCACCT T         
r_ECA1113(metE2)              2  1.01e-07          C ACGTGAATAAAATTCATGT A         
f_ECA1113(metE2)              2  1.01e-07          T ACATGAATTTTATTCACGT G         
r_metE2_2_Pcc3-2              2  8.64e-07          G ACATGAGCCATCTTCATGA T         
f_metE2_2_Pcc3-2              2  8.64e-07          A TCATGAAGATGGCTCATGT C         
r_ECA4244(metF)               2  1.22e-06          T AAATGAAAAAAGTTCATGA T         
f_ECA4244(metF)               2  1.22e-06          A TCATGAACTTTTTTCATTT A         
r_metF_PwaSCC3193         BlkEBlkS      @�      @�         2  1.50e-06          T AAATGAAAAAAATTCATGA T         
f_metF_PwaSCC3193             2  1.50e-06          A TCATGAATTTTTTTCATTT A         
r_metH_Pcc3-2                 2  1.83e-06          G ATCTGAAAAAGTCTCATGC T         
f_metH_Pcc3-2                 2  1.83e-06          A GCATGAGACTTTTTCAGAT C         
r_metA_PwaSCC3193             2  2.25e-06          A AGGTGAAAATGTTTCACTG T         
f_metA_PwaSCC3193             2  2.25e-06          A CAGTGAAACATTTTCACCT T         
r_ECA3125(PF08908)            2  2.25e-06          A AGATGAATTATATTCATGA T         
f_ECA3125(PF08908)            2  2.25e-06          A TCATGAATATAATTCATCT T         
r_OA04_01940                  2  9.11e-06          T AGCTGAATGAATTTCAGTC A         
f_OA04_01940                  2  9.11e-06          T GACTGAAATTCATTCAGCT A         
r_ECA0180(metR)               2  1.90e-05          G AACTGAAAAAAGCGCAGGA A         
f_ECA0180(metR)               2  1.90e-05          T TCCTGCGCTTTTTTCAGTT C         
r_ECA0181(BlkEBlkS      	@�      @�     metE                2  2.93e-05          A CTGTGAAGGACTCTCATGA T         
f_ECA0181(metE                2  2.93e-05          A TCATGAGAGTCCTTCACAG T         
r_OA04_21030                  2  3.71e-05          C TTATGAAATAATTTCAATT T         
f_OA04_21030                  2  3.71e-05          A AATTGAAATTATTTCATAA G         
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 block diagrams
--------------------------------------------------------------------------------
SEQUENCE NAME            POSITION P-VALUE  MOTIF DIAGRAM
-------------            ----------------  -------------
r_metE2_PwaSCC3193                1.7e-08  1_[+1]_1
f_metE2_PwaSCC3193                1.7e-08  1_[+1]_1
r_metC_SCRI1043                   3.3e-08  1_[+1]_1
f_metC_SCRI1043                   3.3e-08  1_[+1]_1
r_metE_PwaSCC3193                 4.9e-08  1_[+1]_1
f_metE_PwaSCC3193       BlkEBlkS      
@�      @�               4.9e-08  1_[+1]_1
r_ECA3987(metH)                   4.9e-08  1_[+1]_1
f_ECA3987(metH)                   4.9e-08  1_[+1]_1
r_metE2_Pcc3-2                    8.6e-08  1_[+1]_1
f_metE2_Pcc3-2                    8.6e-08  1_[+1]_1
r_ECA3992(metA)                   8.6e-08  1_[+1]_1
f_ECA3992(metA)                   8.6e-08  1_[+1]_1
r_ECA1113(metE2)                    1e-07  1_[+1]_1
f_ECA1113(metE2)                    1e-07  1_[+1]_1
r_metE2_2_Pcc3-2                  8.6e-07  1_[+1]_1
f_metE2_2_Pcc3-2                  8.6e-07  1_[+1]_1
r_ECA4244(metF)                   1.2e-06  1_[+1]_1
f_ECA4244(metF)                   1.2e-06  1_[+1]_1
r_metF_PwaSCC3193                 1.5e-06  1_[+1]_1
f_metF_PwaSCC3193                 1.5e-06  1_[+1]_1
r_metH_Pcc3-2                     1.8e-06  1_[+1]_1
f_metH_Pcc3-2                     1.8e-06  1_[+1]_1
r_metA_PwaSCC3193                 2.3e-06  1_[+1]_1
f_metA_PwaSCC3193                 2.3e-06  1_[+1]_1
r_ECA3125(PF08908)          BlkEBlkS      @�      @�           2.3e-06  1_[+1]_1
f_ECA3125(PF08908)                2.3e-06  1_[+1]_1
r_OA04_01940                      9.1e-06  1_[+1]_1
f_OA04_01940                      9.1e-06  1_[+1]_1
r_ECA0180(metR)                   1.9e-05  1_[+1]_1
f_ECA0180(metR)                   1.9e-05  1_[+1]_1
r_ECA0181(metE                    2.9e-05  1_[+1]_1
f_ECA0181(metE                    2.9e-05  1_[+1]_1
r_OA04_21030                      3.7e-05  1_[+1]_1
f_OA04_21030                      3.7e-05  1_[+1]_1
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 in BLOCKS format
--------------------------------------------------------------------------------
BL   MOTIF 1 width=19 seqs=34
r_metE2_PwaSCC3193       (    2) ACGTGAAAAAAATTCATGT  1 
f_metE2_PwaSCC3193       (    2) ACATGAATTTTTTTCACGT  1 
r_metC_SCRI1043          (    2) AGGTGAAAATATTTCAGGT  1 
f_metC_SCRI1043          (   BlkEBlkS      @�      @�      2) ACCTGAAATATTTTCACCT  1 
r_metE_PwaSCC3193        (    2) ACCTGAAAAAGTCTCATGC  1 
f_metE_PwaSCC3193        (    2) GCATGAGACTTTTTCAGGT  1 
r_ECA3987(metH)          (    2) GCATGAGACTTTTTCAGGT  1 
f_ECA3987(metH)          (    2) ACCTGAAAAAGTCTCATGC  1 
r_metE2_Pcc3-2           (    2) ACATGAAGAAAGTTCACGT  1 
f_metE2_Pcc3-2           (    2) ACGTGAACTTTCTTCATGT  1 
r_ECA3992(metA)          (    2) AGGTGAAAATGTTTCACGA  1 
f_ECA3992(metA)          (    2) TCGTGAAACATTTTCACCT  1 
r_ECA1113(metE2)         (    2) ACGTGAATAAAATTCATGT  1 
f_ECA1113(metE2)         (    2) ACATGAATTTTATTCACGT  1 
r_metE2_2_Pcc3-2         (    2) ACATGAGCCATCTTCATGA  1 
f_metE2_2_Pcc3-2         (    2) TCATGAAGATGGCTCATGT  1 
r_ECA4244(metF)          (    2) AAATGAAAAAAGTTCATGA  1 
f_ECA4244(metF)          (    2) TCATGAACTTTTTTCATTT  1 
r_metF_PwaSCC3193        (    2) AAATGAAAAAAATTCATGA  1 
f_metF_PwaSCC3193        (    2) TCATGAATTTTTTTCATTT  1 
r_metH_Pcc3-2            (    2) ATCTGAAAAAGTCTCATGCBlkEBlkS      @�      @�       1 
f_metH_Pcc3-2            (    2) GCATGAGACTTTTTCAGAT  1 
r_metA_PwaSCC3193        (    2) AGGTGAAAATGTTTCACTG  1 
f_metA_PwaSCC3193        (    2) CAGTGAAACATTTTCACCT  1 
r_ECA3125(PF08908)       (    2) AGATGAATTATATTCATGA  1 
f_ECA3125(PF08908)       (    2) TCATGAATATAATTCATCT  1 
r_OA04_01940             (    2) AGCTGAATGAATTTCAGTC  1 
f_OA04_01940             (    2) GACTGAAATTCATTCAGCT  1 
r_ECA0180(metR)          (    2) AACTGAAAAAAGCGCAGGA  1 
f_ECA0180(metR)          (    2) TCCTGCGCTTTTTTCAGTT  1 
r_ECA0181(metE           (    2) CTGTGAAGGACTCTCATGA  1 
f_ECA0181(metE           (    2) TCATGAGAGTCCTTCACAG  1 
r_OA04_21030             (    2) TTATGAAATAATTTCAATT  1 
f_OA04_21030             (    2) AATTGAAATTATTTCATAA  1 
//

--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 position-specific scoring matrix
-------------------------------------BlkEBlkS      @�      @�     -------------------------------------------
log-odds matrix: alength= 4 w= 19 n= 102 bayes= 3.47805 E= 4.9e-118 
    79   -144    -44    -53 
   -95    188    -12   -194 
    47     55     72   -353 
 -1173  -1173  -1173    156 
 -1173  -1173    264  -1173 
   151   -244  -1173  -1173 
   128  -1173     14  -1173 
    79    -44    -86    -72 
    28     14    -86     -7 
    56  -1173  -1173     56 
    -7    -86     14     28 
   -72    -86    -44     79 
 -1173     14  -1173    128 
 -1173  -1173   -244    151 
 -1173    264  -1173  -1173 
   156  -1173  -1173  -1173 
  -353     72     55     47 
  -194    -12    188    -95 
   -53    -44   -144     79 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 position-specific probability matrix
--------------------------------------------------------------------------------
letter-probability matrix: alength= 4 BlkEBlkS      @�      @�     w= 19 nsites= 34 E= 4.9e-118 
 0.588235  0.058824  0.117647  0.235294 
 0.176471  0.588235  0.147059  0.088235 
 0.470588  0.235294  0.264706  0.029412 
 0.000000  0.000000  0.000000  1.000000 
 0.000000  0.000000  1.000000  0.000000 
 0.970588  0.029412  0.000000  0.000000 
 0.823529  0.000000  0.176471  0.000000 
 0.588235  0.117647  0.088235  0.205882 
 0.411765  0.176471  0.088235  0.323529 
 0.500000  0.000000  0.000000  0.500000 
 0.323529  0.088235  0.176471  0.411765 
 0.205882  0.088235  0.117647  0.588235 
 0.000000  0.176471  0.000000  0.823529 
 0.000000  0.000000  0.029412  0.970588 
 0.000000  1.000000  0.000000  0.000000 
 1.000000  0.000000  0.000000  0.000000 
 0.029412  0.264706  0.235294  0.470588 
 0.088235  0.147059  0.588235  0.176471 
 0.235294  0.117647  0.058824  0.588235 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 regular expBlkEBlkS      @�      @�     ression
--------------------------------------------------------------------------------
[AT]C[AGC]TGAA[AT][AT][AT][TA][TA]TTCA[TCG]G[TA]
--------------------------------------------------------------------------------




Time  0.08 secs.

********************************************************************************


********************************************************************************
SUMMARY OF MOTIFS
********************************************************************************

--------------------------------------------------------------------------------
	Combined block diagrams: non-overlapping sites with p-value < 0.0001
--------------------------------------------------------------------------------
SEQUENCE NAME            COMBINED P-VALUE  MOTIF DIAGRAM
-------------            ----------------  -------------
f_ECA4244(metF)                  3.67e-06  1_[+1(1.22e-06)]_1
r_ECA4244(metF)                  3.67e-06  1_[+1(1.22e-06)]_1
f_ECA0181(metE   BlkEBlkS      @�      @�                     8.79e-05  1_[+1(2.93e-05)]_1
r_ECA0181(metE                   8.79e-05  1_[+1(2.93e-05)]_1
f_ECA3992(metA)                  2.59e-07  1_[+1(8.62e-08)]_1
r_ECA3992(metA)                  2.59e-07  1_[+1(8.62e-08)]_1
f_ECA3125(PF08908)               6.76e-06  1_[+1(2.25e-06)]_1
r_ECA3125(PF08908)               6.76e-06  1_[+1(2.25e-06)]_1
f_ECA1113(metE2)                 3.04e-07  1_[+1(1.01e-07)]_1
r_ECA1113(metE2)                 3.04e-07  1_[+1(1.01e-07)]_1
f_ECA0180(metR)                  5.70e-05  1_[+1(1.90e-05)]_1
r_ECA0180(metR)                  5.70e-05  1_[+1(1.90e-05)]_1
f_ECA3987(metH)                  1.46e-07  1_[+1(4.85e-08)]_1
r_ECA3987(metH)                  1.46e-07  1_[+1(4.85e-08)]_1
f_metC_SCRI1043                  9.88e-08  1_[+1(3.29e-08)]_1
r_metC_SCRI1043                  9.88e-08  1_[+1(3.29e-08)]_1
f_metA_PwaSCC3193                6.76e-06  1_[+1(2.25e-06)]_1
r_metA_PwaSCC3193                6.76e-06  1_[+1(2.25e-06)]_1
f_metH_Pcc3-2    BlkEBlkS      @�      @�                     5.50e-06  1_[+1(1.83e-06)]_1
r_metH_Pcc3-2                    5.50e-06  1_[+1(1.83e-06)]_1
f_metE2_Pcc3-2                   2.59e-07  1_[+1(8.62e-08)]_1
r_metE2_Pcc3-2                   2.59e-07  1_[+1(8.62e-08)]_1
f_metE2_2_Pcc3-2                 2.59e-06  1_[+1(8.64e-07)]_1
r_metE2_2_Pcc3-2                 2.59e-06  1_[+1(8.64e-07)]_1
f_OA04_21030                     1.11e-04  1_[+1(3.71e-05)]_1
r_OA04_21030                     1.11e-04  1_[+1(3.71e-05)]_1
f_OA04_01940                     2.73e-05  1_[+1(9.11e-06)]_1
r_OA04_01940                     2.73e-05  1_[+1(9.11e-06)]_1
f_metF_PwaSCC3193                4.50e-06  1_[+1(1.50e-06)]_1
r_metF_PwaSCC3193                4.50e-06  1_[+1(1.50e-06)]_1
f_metE2_PwaSCC3193               5.03e-08  1_[+1(1.68e-08)]_1
r_metE2_PwaSCC3193               5.03e-08  1_[+1(1.68e-08)]_1
f_metE_PwaSCC3193                1.46e-07  1_[+1(4.85e-08)]_1
r_metE_PwaSCC3193                1.46e-07  1_[+1(4.85e-08)]_1
-----------------BlkEBlkS      @�              ---------------------------------------------------------------

********************************************************************************


********************************************************************************
Stopped because nmotifs = 1 reached.
********************************************************************************

CPU: Ptushka.local

********************************************************************************
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               BlkEBlkS       @�      @�     @��     ????   A�V�@  A�V�@  MetR.hmm                                                                                                                                                                                                                        HMMER3/f [3.1b1 | May 2013]
NAME  stock
LENG  21
MAXL  74
ALPH  DNA
RF    no
MM    no
CONS  yes
CS    no
MAP   yes
DATE  Sat Jan  9 21:29:21 2016
NSEQ  34
EFFN  34.000000
CKSUM 2848360282
GA    9.00
TC    9.10
NC    8.70
STATS LOCAL MSV       -6.9426  0.77945
STATS LOCAL VITERBI   -7.4301  0.77945
STATS LOCAL FORWARD   -2.1078  0.77945
HMM          A        C        G        T   
            m->m     m->i     m->d     i->m     i->i     d->m     d->d
  COMPO   1.11543  1.76873  1.76108  1.10921
          1.38629  1.38629  1.38629  1.38629
          0.00554  5.89164  5.89164  1.46634  0.26236  0.00000        *
      1   0.84586  1.90614  1.83888  1.33498      1 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.005BlkEBlkS      @�      @�     54  5.89164  5.89164  1.46634  0.26236  1.09861  0.40547
      2   0.68132  2.35482  2.00000  1.33254      2 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00554  5.89164  5.89164  1.46634  0.26236  1.09861  0.40547
      3   1.57467  0.67881  1.91469  1.97819      3 c - - -
          1.38629  1.38629  1.38629  1.38629
          0.00554  5.89164  5.89164  1.46634  0.26236  1.09861  0.40547
      4   0.89051  1.31202  1.41308  2.56544      4 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00554  5.89164  5.89164  1.46634  0.26236  1.09861  0.40547
      5   5.74595  5.43762  5.85551  0.01046      5 T - - -
          1.38629  1.38629  1.38629  1.38629
          0.00554  5.89164  5.89164  1.46634  0.26236  1.09861  0.40547
      6   5.64305  6.61640  0.00657  6.39385      6 G - - -
          1.38629  1.38629  1.38629  1.38629
          0.00554  5.89164  5.89164  1.46634  0.26236  1.09861  0.40547
      7   0.06801  2.84724  5.80350  5.35442      BlkEBlkS      @�      @�     7 A - - -
          1.38629  1.38629  1.38629  1.38629
          0.00554  5.89164  5.89164  1.46634  0.26236  1.09861  0.40547
      8   0.24497  6.43250  1.54300  6.25181      8 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00554  5.89164  5.89164  1.46634  0.26236  1.09861  0.40547
      9   0.61506  1.89960  2.11442  1.66570      9 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00554  5.89164  5.89164  1.46634  0.26236  1.09861  0.40547
     10   0.99796  1.71695  2.01722  1.14340     10 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00554  5.89164  5.89164  1.46634  0.26236  1.09861  0.40547
     11   0.70774  4.88928  5.31705  0.70358     11 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00554  5.89164  5.89164  1.46634  0.26236  1.09861  0.40547
     12   1.15983  2.03048  1.70682  0.98418     12 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00554  5.89164  5.89164  1.46634  0.2623BlkEBlkS      @�      @�     6  1.09861  0.40547
     13   1.69331  2.12731  1.88883  0.60571     13 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00554  5.89164  5.89164  1.46634  0.26236  1.09861  0.40547
     14   5.35116  1.52355  5.61213  0.25661     14 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00554  5.89164  5.89164  1.46634  0.26236  1.09861  0.40547
     15   5.64200  5.24177  2.88231  0.06704     15 T - - -
          1.38629  1.38629  1.38629  1.38629
          0.00554  5.89164  5.89164  1.46634  0.26236  1.09861  0.40547
     16   5.65680  0.01217  5.81481  5.18083     16 C - - -
          1.38629  1.38629  1.38629  1.38629
          0.00554  5.89164  5.89164  1.46634  0.26236  1.09861  0.40547
     17   0.00527  6.74219  5.93337  6.55574     17 A - - -
          1.38629  1.38629  1.38629  1.38629
          0.00554  5.89164  5.89164  1.46634  0.26236  1.09861  0.40547
     18   2.63610  1.42146  1.30547  0.87718     18 t - - -
          1.38629  1.38629 BlkEBlkS      @�               1.38629  1.38629
          0.00554  5.89164  5.89164  1.46634  0.26236  1.09861  0.40547
     19   2.02317  1.94246  0.66221  1.56684     19 g - - -
          1.38629  1.38629  1.38629  1.38629
          0.00554  5.89164  5.89164  1.46634  0.26236  1.09861  0.40547
     20   1.35247  2.01256  2.34019  0.67052     20 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00554  5.89164  5.89164  1.46634  0.26236  1.09861  0.40547
     21   1.35481  1.85024  1.89435  0.83382     21 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00277  5.88888        *  1.46634  0.26236  0.00000        *
//
                                                                                                                                                                                                                                                                                                                                                                                BlkEBlkS      @�              BMap   !   0         0         0        0        0         0        0         0          0        $0        (0        ,0        00        40        80        <0        @0      	  D0      
  H0        L0        P0        T0        X0        \0        `0        d0        h0        l0         p0        t0        x0        |0        �0                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  BlkE