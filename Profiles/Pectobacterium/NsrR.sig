VFSv   BlkS       @D      @��          �BlkEBlkS       @�              @8      fold    A�V�J`  A�V�J`  /                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         BlkEBlkS       @�      @�`     @��     ????   A�V�J`  A�V�J`  NsrR.fasta                                                                                                                                                                                                                      >f_tehB_SCRI (score 16.3) and WPP163 (score 16.3)
AATGCATTTAAAATACATA
>r_tehB_SCRI (score 16.3) and WPP163 (score 16.3)
TATGTATTTTAAATGCATT
>f_OA04_23030 score 16.4
CATGTATTTAAAATGCATG
>r_OA04_23030 score 16.4
CATGCATTTTAAATACATG
>f_OA04_23360 score 17.1 norA-like (in WPP163 too)
ATTGCATTTAAAATGCATC
>r_OA04_23360 score 17.1 norA-like (in WPP163 too)
GATGCATTTTAAATGCAAT
>f_ECA3251(hmp) SCRI1043 score 9.4
GATTCATATAAAATACAAC
>r_ECA3251(hmp) SCRI1043 score 9.4
GTTGTATTTTATATGAATC
>f_ECA2662(hcp) SCRI1043 score 15.3 Hydroxylamine reductase
CAAGCATTTAAAATGCAAC
>r_ECA2662(hcp) SCRI1043 score 15.3 Hydroxylamine reductase
GTTGCATTTTAAATGCTTG
>f_ECA3606(dnrN, norA) SCRI1043,WPP163  score 17.1
GATGCATTTAAAATGCAAT
>r_ECA3606(dnrN, norA) BlkEBlkS      @�      @�`     SCRI1043,WPP163  score 17.1
ATTGCATTTTAAATGCATC
>f_ECA1875(nrfA) SCRI1043  score 10.2
ACAATATTTCAAATGCATC
>r_ECA1875(nrfA) SCRI1043  score 10.2
GATGCATTTGAAATATTGT
>f_ECA2415(ygbA) SCRI1043 score 16.3
ATTGTATTTAAAATGCATC
>r_ECA2415(ygbA) SCRI1043 score 16.3
GATGCATTTTAAATACAAT
>f_ytfE_Dda3937 score 17.0
GATGCATTTAAAATACATT
>r_ytfE_Dda3937 score 17.0
AATGTATTTTAAATGCATC
>f_hmp_Dda3937 score 17.7
GATGCATTTAAAATGCAAC
>r_hmp_Dda3937 score 17.7
GTTGCATTTTAAATGCATC
>f_tehB_Dda3937 score 12.4
GATGTATTTACAATACATA
>r_tehB_Dda3937 score 12.4
TATGTATTGTAAATACATC
>f_hcp_Dda3937 score 10.5
CAAGCATTATAAATACAAC
>r_hcp_Dda3937 score 10.5
GTTGTATTTATAATGCTTG
>f_norA-like_WPP163,SCRI1043 score 12.6
CATGCATTTACAATGCACA
>r_norA-like_WPP163,SCRI1043 score 12.6
TGTGCATTGTAAATGCATG
>f_hcp_WPP163 score 15.5
CAAGCATTTTAAATGCAAC
>r_hcp_WPP163 score 15.5
GTTGCATTTAAAATGCTTG
>f_norA-like2_WPP163 score 12.5
CATGCATTTAGAATACATG
>r_norA-like2_WPP163 score 12.5
CATGTATTCTAAATGCATG
>f_Pecwa_4116_WPP163 Score 1BlkEBlkS      @�              0 hydrophobe/amphiphile efflux
AACGCATTTTAAATGCCAC
>r_Pecwa_4116_WPP163 Score 10 hydrophobe/amphiphile efflux
GTGGCATTTAAAATGCGTT
>f_fhuE_3-2 score 12.3
TTTGTATTTTAAATGAATT
>r_fhuE_3-2 score 12.3
AATTCATTTAAAATACAAA
>f_gst_3-2 score 12.3
AACGCATTTTAAATGCCGC
>r_gst_3-2 score 12.3
GCGGCATTTAAAATGCGTT
>f_hmpX_Pcc21 score 12.6 Nitric oxide dioxygenase
GATGCATATAAAATACAAC
>r_hmpX_Pcc21 score 12.6 Nitric oxide dioxygenase
GTTGTATTTTATATGCATC
>f_nrfA_Pcc21 score 9.0
ACAATATTTTGAATGCATC
>r_nrfA_Pcc21 score 9.0
GATGCATTCAAAATATTGT                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 BlkEBlkS       @�      @�0     @��     ????   A�V�J`  A�V�J`  NsrR.options                                                                                                                                                                                                                    ////
// nhmmer options
////


// Trusted cutoff. Bit score per-sequence cutoff, set according to the lowest scores seen for true homologous sequences that were above the GA gathering thresholds, when gathering members of the alignment
#=GF TC 9.4 9.4


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
HmmGen.-L 19


// the site is palindromic
HmmGen.-p


// don't pick up locus_tag from next locus
HmmGenBlkEBlkS      @�              .-n


// ignore sites inside ORFs (and risk missing some real ones!)
HmmGen.-i 


// feature key
HmmGen.-f protein_bind


// feature qualifier
HmmGen.-q bound_moiety#NsrR


// MASTgen p-value cutoff
mastGen.-V 1e-6


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       BlkEBlkS       @�              @u      ????   A�V�J`  A�V�J`  NsrR.info                                                                                                                                                                                                                       NsrR is the regulator of nitrosative stress.

The profile was built starting with NsrR sites of Pectobacterium atrosepticum SCRI1043 obtained from RegPrecise and scanning the genomes of Pectobacterium strains 3-2, SCRI1043, and Wpp163 as well as D.dadantii 3937.

The final profile is built from 20 sites and their reverse complements.                                                                                                                                                                                                                                                                                                                                                                                                                 BlkEBlkS       @�      @�     @��    ????   A�V�J`  A�V�J`  meme.txt                                                                                                                                                                                                                        ********************************************************************************
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
f_tehB_SCRI     BlkEBlkS      @�      @�              1.0000     19  r_tehB_SCRI              1.0000     19  
f_OA04_23030             1.0000     19  r_OA04_23030             1.0000     19  
f_OA04_23360             1.0000     19  r_OA04_23360             1.0000     19  
f_ECA3251(hmp)           1.0000     19  r_ECA3251(hmp)           1.0000     19  
f_ECA2662(hcp)           1.0000     19  r_ECA2662(hcp)           1.0000     19  
f_ECA3606(dnrN,          1.0000     19  r_ECA3606(dnrN,          1.0000     19  
f_ECA1875(nrfA)          1.0000     19  r_ECA1875(nrfA)          1.0000     19  
f_ECA2415(ygbA)          1.0000     19  r_ECA2415(ygbA)          1.0000     19  
f_ytfE_Dda3937           1.0000     19  r_ytfE_Dda3937           1.0000     19  
f_hmp_Dda3937            1.0000     19  r_hmp_Dda3937            1.0000     19  
f_tehB_Dda3937           1.0000     19  r_tehB_Dda3937           1.0000     19  
f_hcp_Dda3937            1.0000     19  r_hcp_Dda3937            1.0000     19  
f_norA-like_WPP163,SCRI1 1.0000     BlkEBlkS      @�      @�     19  r_norA-like_WPP163,SCRI1 1.0000     19  
f_hcp_WPP163             1.0000     19  r_hcp_WPP163             1.0000     19  
f_norA-like2_WPP163      1.0000     19  r_norA-like2_WPP163      1.0000     19  
f_Pecwa_4116_WPP163      1.0000     19  r_Pecwa_4116_WPP163      1.0000     19  
f_fhuE_3-2               1.0000     19  r_fhuE_3-2               1.0000     19  
f_gst_3-2                1.0000     19  r_gst_3-2                1.0000     19  
f_hmpX_Pcc21             1.0000     19  r_hmpX_Pcc21             1.0000     19  
f_nrfA_Pcc21             1.0000     19  r_nrfA_Pcc21             1.0000     19  
********************************************************************************

********************************************************************************
COMMAND LINE SUMMARY
********************************************************************************
This information can also be useful in the event you wish to report a
problem with the MEME software.

command: memBlkEBlkS      @�      @�     e -nmotifs 1 -dna -text /private/var/folders/1k/4vs0wmnd75371kbm6p5jbmxr0000gn/T/TemporaryItems/alignment.tmp 

model:  mod=         zoops    nmotifs=         1    evt=           inf
object function=  E-value of product of p-values
width:  minw=            8    maxw=           19    minic=        0.00
width:  wg=             11    ws=              1    endgaps=       yes
nsites: minsites=        2    maxsites=       40    wnsites=       0.8
theta:  prob=            1    spmap=         uni    spfuzz=        0.5
global: substring=     yes    branching=      no    wbranch=        no
em:     prior=   dirichlet    b=            0.01    maxiter=        50
        distance=    1e-05
data:   n=             760    N=              40
strands: +
sample: seed=            0    seqfrac=         1
Letter frequencies in dataset:
A 0.366 C 0.134 G 0.134 T 0.366 
Background letter frequencies (from dataset with add-one prior applied):
A 0.365 C 0.135 G 0.135 T 0.365 
****************************BlkEBlkS      @�      @�     ****************************************************


********************************************************************************
MOTIF  1 MEME	width =  19  sites =  40  llr = 559  E-value = 3.8e-197
********************************************************************************
--------------------------------------------------------------------------------
	Motif 1 Description
--------------------------------------------------------------------------------
Simplified        A  3611:a:1:59aa:31831
pos.-specific     C  211:7:::1:1::::91:5
probability       G  5:19::::1:1:::7:112
matrix            T  13813:aa95:1:a:1163

         bits    2.9                    
                 2.6                    
                 2.3    *           *   
                 2.0    *           *   
Relative         1.7    *           *   
Entropy          1.4    ****     ****   
(20.1 bits)      1.2    *****   *****   
                 0.9    ****** ******   
                 0.6 * ******BlkEBlkS      @�      @�     * ******* *
                 0.3 *******************
                 0.0 -------------------

Multilevel           GATGCATTTAAAATGCATC
consensus            AT  T    T    A  AT
sequence             C                 G
                                        
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 sites sorted by position p-value
--------------------------------------------------------------------------------
Sequence name             Start   P-value                   Site      
-------------             ----- ---------            -------------------
r_hmp_Dda3937                 1  1.24e-10          . GTTGCATTTTAAATGCATC           
f_hmp_Dda3937                 1  1.24e-10          . GATGCATTTAAAATGCAAC           
r_ECA3606(dnrN,               1  1.17e-09          . ATTGCATTTTAAATGCATC           
f_ECA3606(dnrN,               1  1.17e-09          BlkEBlkS      @�      @�     . GATGCATTTAAAATGCAAT           
r_OA04_23360                  1  1.17e-09          . GATGCATTTTAAATGCAAT           
f_OA04_23360                  1  1.17e-09          . ATTGCATTTAAAATGCATC           
r_ytfE_Dda3937                1  4.85e-09          . AATGTATTTTAAATGCATC           
f_ytfE_Dda3937                1  4.85e-09          . GATGCATTTAAAATACATT           
r_OA04_23030                  1  6.34e-09          . CATGCATTTTAAATACATG           
f_OA04_23030                  1  6.34e-09          . CATGTATTTAAAATGCATG           
r_hcp_WPP163                  1  7.50e-09          . GTTGCATTTAAAATGCTTG           
f_hcp_WPP163                  1  7.50e-09          . CAAGCATTTTAAATGCAAC           
r_ECA2662(hcp)                1  7.50e-09          . GTTGCATTTTAAATGCTTG           
f_ECA2662(hcp)                1  7.50e-09          . CAAGCATTTAAAATGCAAC           
r_ECA2415(ygbA)               1  1.40e-08          . GATGCATTTTAAATACAAT           
f_ECA2415(ygbA)               1  1.BlkEBlkS      @�      @�     40e-08          . ATTGTATTTAAAATGCATC           
r_norA-like2_WPP163           1  5.60e-08          . CATGTATTCTAAATGCATG           
f_norA-like2_WPP163           1  5.60e-08          . CATGCATTTAGAATACATG           
r_hmpX_Pcc21                  1  7.13e-08          . GTTGTATTTTATATGCATC           
f_hmpX_Pcc21                  1  7.13e-08          . GATGCATATAAAATACAAC           
r_tehB_SCRI                   1  8.50e-08          . TATGTATTTTAAATGCATT           
f_tehB_SCRI                   1  8.50e-08          . AATGCATTTAAAATACATA           
r_Pecwa_4116_WPP163           1  9.75e-08          . GTGGCATTTAAAATGCGTT           
f_Pecwa_4116_WPP163           1  9.75e-08          . AACGCATTTTAAATGCCAC           
r_gst_3-2                     1  1.39e-07          . GCGGCATTTAAAATGCGTT           
f_gst_3-2                     1  1.39e-07          . AACGCATTTTAAATGCCGC           
r_norA-like_WPP163,SCRI1      1  4.22e-07          . TGTGCATTGTAAATGCATG           
f_norA-like_WPP163,BlkEBlkS      	@�      @�     SCRI1      1  4.22e-07          . CATGCATTTACAATGCACA           
r_tehB_Dda3937                1  6.00e-07          . TATGTATTGTAAATACATC           
f_tehB_Dda3937                1  6.00e-07          . GATGTATTTACAATACATA           
r_hcp_Dda3937                 1  1.37e-06          . GTTGTATTTATAATGCTTG           
f_hcp_Dda3937                 1  1.37e-06          . CAAGCATTATAAATACAAC           
r_ECA3251(hmp)                1  2.16e-06          . GTTGTATTTTATATGAATC           
f_ECA3251(hmp)                1  2.16e-06          . GATTCATATAAAATACAAC           
r_fhuE_3-2                    1  4.48e-06          . AATTCATTTAAAATACAAA           
f_fhuE_3-2                    1  4.48e-06          . TTTGTATTTTAAATGAATT           
r_nrfA_Pcc21                  1  1.24e-05          . GATGCATTCAAAATATTGT           
f_nrfA_Pcc21                  1  1.24e-05          . ACAATATTTTGAATGCATC           
r_ECA1875(nrfA)               1  1.30e-05          . GATGCATTTGAAATATTGT           
f_EBlkEBlkS      
@�      @�     CA1875(nrfA)               1  1.30e-05          . ACAATATTTCAAATGCATC           
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 block diagrams
--------------------------------------------------------------------------------
SEQUENCE NAME            POSITION P-VALUE  MOTIF DIAGRAM
-------------            ----------------  -------------
r_hmp_Dda3937                     1.2e-10  [+1]
f_hmp_Dda3937                     1.2e-10  [+1]
r_ECA3606(dnrN,                   1.2e-09  [+1]
f_ECA3606(dnrN,                   1.2e-09  [+1]
r_OA04_23360                      1.2e-09  [+1]
f_OA04_23360                      1.2e-09  [+1]
r_ytfE_Dda3937                    4.8e-09  [+1]
f_ytfE_Dda3937                    4.8e-09  [+1]
r_OA04_23030                      6.3e-09  [+1]
f_OA04_23030                      6.3e-09  [+1]
r_hcp_WPP163                      7.5e-09  [+1]
fBlkEBlkS      @�      @�     _hcp_WPP163                      7.5e-09  [+1]
r_ECA2662(hcp)                    7.5e-09  [+1]
f_ECA2662(hcp)                    7.5e-09  [+1]
r_ECA2415(ygbA)                   1.4e-08  [+1]
f_ECA2415(ygbA)                   1.4e-08  [+1]
r_norA-like2_WPP163               5.6e-08  [+1]
f_norA-like2_WPP163               5.6e-08  [+1]
r_hmpX_Pcc21                      7.1e-08  [+1]
f_hmpX_Pcc21                      7.1e-08  [+1]
r_tehB_SCRI                       8.5e-08  [+1]
f_tehB_SCRI                       8.5e-08  [+1]
r_Pecwa_4116_WPP163               9.7e-08  [+1]
f_Pecwa_4116_WPP163               9.7e-08  [+1]
r_gst_3-2                         1.4e-07  [+1]
f_gst_3-2                         1.4e-07  [+1]
r_norA-like_WPP163,SCRI1          4.2e-07  [+1]
f_norA-like_WPP163,SCRI1          4.2e-07  [+1]
r_tehB_Dda3937                      6e-07  [+1]
f_tehB_Dda3937                      6e-07  [+1]
r_hcp_Dda3937                     1.4e-06  [+1]
f_hcp_Dda3937                    BlkEBlkS      @�      @�      1.4e-06  [+1]
r_ECA3251(hmp)                    2.2e-06  [+1]
f_ECA3251(hmp)                    2.2e-06  [+1]
r_fhuE_3-2                        4.5e-06  [+1]
f_fhuE_3-2                        4.5e-06  [+1]
r_nrfA_Pcc21                      1.2e-05  [+1]
f_nrfA_Pcc21                      1.2e-05  [+1]
r_ECA1875(nrfA)                   1.3e-05  [+1]
f_ECA1875(nrfA)                   1.3e-05  [+1]
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 in BLOCKS format
--------------------------------------------------------------------------------
BL   MOTIF 1 width=19 seqs=40
r_hmp_Dda3937            (    1) GTTGCATTTTAAATGCATC  1 
f_hmp_Dda3937            (    1) GATGCATTTAAAATGCAAC  1 
r_ECA3606(dnrN,          (    1) ATTGCATTTTAAATGCATC  1 
f_ECA3606(dnrN,          (    1) GATGCATTTAAAATGCAAT  1 
r_OA04_23360             (    1) GATGCATTTTAAATGCAAT  1 
f_OA04_2BlkEBlkS      @�      @�     3360             (    1) ATTGCATTTAAAATGCATC  1 
r_ytfE_Dda3937           (    1) AATGTATTTTAAATGCATC  1 
f_ytfE_Dda3937           (    1) GATGCATTTAAAATACATT  1 
r_OA04_23030             (    1) CATGCATTTTAAATACATG  1 
f_OA04_23030             (    1) CATGTATTTAAAATGCATG  1 
r_hcp_WPP163             (    1) GTTGCATTTAAAATGCTTG  1 
f_hcp_WPP163             (    1) CAAGCATTTTAAATGCAAC  1 
r_ECA2662(hcp)           (    1) GTTGCATTTTAAATGCTTG  1 
f_ECA2662(hcp)           (    1) CAAGCATTTAAAATGCAAC  1 
r_ECA2415(ygbA)          (    1) GATGCATTTTAAATACAAT  1 
f_ECA2415(ygbA)          (    1) ATTGTATTTAAAATGCATC  1 
r_norA-like2_WPP163      (    1) CATGTATTCTAAATGCATG  1 
f_norA-like2_WPP163      (    1) CATGCATTTAGAATACATG  1 
r_hmpX_Pcc21             (    1) GTTGTATTTTATATGCATC  1 
f_hmpX_Pcc21             (    1) GATGCATATAAAATACAAC  1 
r_tehB_SCRI              (    1) TATGTATTTTAAATGCATT  1 
f_tehB_SCRI              (    1) AATGCATTTAAAATACATA  1 
r_Pecwa_4116_WPP163      (    1BlkEBlkS      @�      @�     ) GTGGCATTTAAAATGCGTT  1 
f_Pecwa_4116_WPP163      (    1) AACGCATTTTAAATGCCAC  1 
r_gst_3-2                (    1) GCGGCATTTAAAATGCGTT  1 
f_gst_3-2                (    1) AACGCATTTTAAATGCCGC  1 
r_norA-like_WPP163,SCRI1 (    1) TGTGCATTGTAAATGCATG  1 
f_norA-like_WPP163,SCRI1 (    1) CATGCATTTACAATGCACA  1 
r_tehB_Dda3937           (    1) TATGTATTGTAAATACATC  1 
f_tehB_Dda3937           (    1) GATGTATTTACAATACATA  1 
r_hcp_Dda3937            (    1) GTTGTATTTATAATGCTTG  1 
f_hcp_Dda3937            (    1) CAAGCATTATAAATACAAC  1 
r_ECA3251(hmp)           (    1) GTTGTATTTTATATGAATC  1 
f_ECA3251(hmp)           (    1) GATTCATATAAAATACAAC  1 
r_fhuE_3-2               (    1) AATTCATTTAAAATACAAA  1 
f_fhuE_3-2               (    1) TTTGTATTTTAAATGAATT  1 
r_nrfA_Pcc21             (    1) GATGCATTCAAAATATTGT  1 
f_nrfA_Pcc21             (    1) ACAATATTTTGAATGCATC  1 
r_ECA1875(nrfA)          (    1) GATGCATTTGAAATATTGT  1 
f_ECA1875(nrfA)          (    1) ACAATATTTCAAATGCATC  BlkEBlkS      @�      @�     1 
//

--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 position-specific scoring matrix
--------------------------------------------------------------------------------
log-odds matrix: alength= 4 w= 19 n= 40 bayes= 1.66297 E= 3.8e-197 
   -55     57    174   -187 
    78    -85   -243    -41 
  -155   -143   -143    109 
  -287  -1197    274   -287 
 -1197    232  -1197    -17 
   145  -1197  -1197  -1197 
 -1197  -1197  -1197    145 
  -287  -1197  -1197    138 
  -386   -143   -143    126 
    38   -243   -243     38 
   126   -143   -143   -386 
   138  -1197  -1197   -287 
   145  -1197  -1197  -1197 
 -1197  -1197  -1197    145 
   -17  -1197    232  -1197 
  -287    274  -1197   -287 
   109   -143   -143   -155 
   -41   -243    -85     78 
  -187    174     57    -55 
--------------------------------------------------------------------------------BlkEBlkS      @�      @�     

--------------------------------------------------------------------------------
	Motif 1 position-specific probability matrix
--------------------------------------------------------------------------------
letter-probability matrix: alength= 4 w= 19 nsites= 40 E= 3.8e-197 
 0.250000  0.200000  0.450000  0.100000 
 0.625000  0.075000  0.025000  0.275000 
 0.125000  0.050000  0.050000  0.775000 
 0.050000  0.000000  0.900000  0.050000 
 0.000000  0.675000  0.000000  0.325000 
 1.000000  0.000000  0.000000  0.000000 
 0.000000  0.000000  0.000000  1.000000 
 0.050000  0.000000  0.000000  0.950000 
 0.025000  0.050000  0.050000  0.875000 
 0.475000  0.025000  0.025000  0.475000 
 0.875000  0.050000  0.050000  0.025000 
 0.950000  0.000000  0.000000  0.050000 
 1.000000  0.000000  0.000000  0.000000 
 0.000000  0.000000  0.000000  1.000000 
 0.325000  0.000000  0.675000  0.000000 
 0.050000  0.900000  0.000000  0.050000 
 0.775000  0.050000  0.050000  0.125000 
 0.275000  0.0250BlkEBlkS      @�      @�     00  0.075000  0.625000 
 0.100000  0.450000  0.200000  0.250000 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 regular expression
--------------------------------------------------------------------------------
[GAC][AT]TG[CT]ATTT[AT]AAAT[GA]CA[TA][CTG]
--------------------------------------------------------------------------------




Time  0.09 secs.

********************************************************************************


********************************************************************************
SUMMARY OF MOTIFS
********************************************************************************

--------------------------------------------------------------------------------
	Combined block diagrams: non-overlapping sites with p-value < 0.0001
--------------------------------------------------------------------------------
SEQUENCE NAMEBlkEBlkS      @�      @�                 COMBINED P-VALUE  MOTIF DIAGRAM
-------------            ----------------  -------------
f_tehB_SCRI                      8.50e-08  [+1(8.50e-08)]
r_tehB_SCRI                      8.50e-08  [+1(8.50e-08)]
f_OA04_23030                     6.34e-09  [+1(6.34e-09)]
r_OA04_23030                     6.34e-09  [+1(6.34e-09)]
f_OA04_23360                     1.17e-09  [+1(1.17e-09)]
r_OA04_23360                     1.17e-09  [+1(1.17e-09)]
f_ECA3251(hmp)                   2.16e-06  [+1(2.16e-06)]
r_ECA3251(hmp)                   2.16e-06  [+1(2.16e-06)]
f_ECA2662(hcp)                   7.50e-09  [+1(7.50e-09)]
r_ECA2662(hcp)                   7.50e-09  [+1(7.50e-09)]
f_ECA3606(dnrN,                  1.17e-09  [+1(1.17e-09)]
r_ECA3606(dnrN,                  1.17e-09  [+1(1.17e-09)]
f_ECA1875(nrfA)                  1.30e-05  [+1(1.30e-05)]
r_ECA1875(nrfA)                  1.30e-05  [+1(1.30e-05)]
f_ECA2415(ygbA)                  1.40e-08  [+1(1.40e-08)]
r_ECA2415(ygbA)      BlkEBlkS      @�      @�                 1.40e-08  [+1(1.40e-08)]
f_ytfE_Dda3937                   4.85e-09  [+1(4.85e-09)]
r_ytfE_Dda3937                   4.85e-09  [+1(4.85e-09)]
f_hmp_Dda3937                    1.24e-10  [+1(1.24e-10)]
r_hmp_Dda3937                    1.24e-10  [+1(1.24e-10)]
f_tehB_Dda3937                   6.00e-07  [+1(6.00e-07)]
r_tehB_Dda3937                   6.00e-07  [+1(6.00e-07)]
f_hcp_Dda3937                    1.37e-06  [+1(1.37e-06)]
r_hcp_Dda3937                    1.37e-06  [+1(1.37e-06)]
f_norA-like_WPP163,SCRI1         4.22e-07  [+1(4.22e-07)]
r_norA-like_WPP163,SCRI1         4.22e-07  [+1(4.22e-07)]
f_hcp_WPP163                     7.50e-09  [+1(7.50e-09)]
r_hcp_WPP163                     7.50e-09  [+1(7.50e-09)]
f_norA-like2_WPP163              5.60e-08  [+1(5.60e-08)]
r_norA-like2_WPP163              5.60e-08  [+1(5.60e-08)]
f_Pecwa_4116_WPP163              9.75e-08  [+1(9.75e-08)]
r_Pecwa_4116_WPP163              9.75e-08  [+1(9.75e-08)]
f_fhuE_3-2                 BlkEBlkS      @�                    4.48e-06  [+1(4.48e-06)]
r_fhuE_3-2                       4.48e-06  [+1(4.48e-06)]
f_gst_3-2                        1.39e-07  [+1(1.39e-07)]
r_gst_3-2                        1.39e-07  [+1(1.39e-07)]
f_hmpX_Pcc21                     7.13e-08  [+1(7.13e-08)]
r_hmpX_Pcc21                     7.13e-08  [+1(7.13e-08)]
f_nrfA_Pcc21                     1.24e-05  [+1(1.24e-05)]
r_nrfA_Pcc21                     1.24e-05  [+1(1.24e-05)]
--------------------------------------------------------------------------------

********************************************************************************


********************************************************************************
Stopped because nmotifs = 1 reached.
********************************************************************************

CPU: Ptushka.local

********************************************************************************
                                                                                         BlkEBlkS       @�      @�     @�     ????   A�V�J`  A�V�J`  NsrR.hmm                                                                                                                                                                                                                        HMMER3/f [3.1b1 | May 2013]
NAME  stock
LENG  19
MAXL  71
ALPH  DNA
RF    no
MM    no
CONS  yes
CS    no
MAP   yes
DATE  Sun Jan 10 00:46:11 2016
NSEQ  40
EFFN  40.000000
CKSUM 2418196808
GA    9.00
TC    9.40
NC    8.70
STATS LOCAL MSV       -6.8311  0.76568
STATS LOCAL VITERBI   -6.7191  0.76568
STATS LOCAL FORWARD   -2.8522  0.76568
HMM          A        C        G        T   
            m->m     m->i     m->d     i->m     i->i     d->m     d->d
  COMPO   1.03430  1.94225  1.93998  1.02880
          1.38629  1.38629  1.38629  1.38629
          0.00475  6.04501  6.04501  1.46634  0.26236  0.00000        *
      1   1.39053  1.66008  0.84687  2.02359      1 g - - -
          1.38629  1.38629  1.38629  1.38629
          0.004BlkEBlkS      @�      @�     75  6.04501  6.04501  1.46634  0.26236  1.09861  0.40547
      2   0.59015  2.07356  2.76887  1.35757      2 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00475  6.04501  6.04501  1.46634  0.26236  1.09861  0.40547
      3   1.82322  2.51949  2.51366  0.39005      3 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00475  6.04501  6.04501  1.46634  0.26236  1.09861  0.40547
      4   2.40127  4.81536  0.17791  2.74463      4 g - - -
          1.38629  1.38629  1.38629  1.38629
          0.00475  6.04501  6.04501  1.46634  0.26236  1.09861  0.40547
      5   5.53131  0.43655  5.79946  1.05916      5 c - - -
          1.38629  1.38629  1.38629  1.38629
          0.00475  6.04501  6.04501  1.46634  0.26236  1.09861  0.40547
      6   0.00442  6.93429  6.09592  6.73854      6 A - - -
          1.38629  1.38629  1.38629  1.38629
          0.00475  6.04501  6.04501  1.46634  0.26236  1.09861  0.40547
      7   5.91731  5.64405  6.02153  0.00869      BlkEBlkS      @�      @�     7 T - - -
          1.38629  1.38629  1.38629  1.38629
          0.00475  6.04501  6.04501  1.46634  0.26236  1.09861  0.40547
      8   2.69569  5.27360  5.92106  0.07829      8 T - - -
          1.38629  1.38629  1.38629  1.38629
          0.00475  6.04501  6.04501  1.46634  0.26236  1.09861  0.40547
      9   2.98911  2.57255  2.58615  0.22562      9 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00475  6.04501  6.04501  1.46634  0.26236  1.09861  0.40547
     10   0.84284  2.70539  2.69388  0.83229     10 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00475  6.04501  6.04501  1.46634  0.26236  1.09861  0.40547
     11   0.23451  2.54632  2.59619  2.88031     11 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00475  6.04501  6.04501  1.46634  0.26236  1.09861  0.40547
     12   0.07663  5.69133  5.98412  2.69012     12 A - - -
          1.38629  1.38629  1.38629  1.38629
          0.00475  6.04501  6.04501  1.46634  0.2623BlkEBlkS      @�      @�     6  1.09861  0.40547
     13   0.00442  6.93429  6.09592  6.73854     13 A - - -
          1.38629  1.38629  1.38629  1.38629
          0.00475  6.04501  6.04501  1.46634  0.26236  1.09861  0.40547
     14   5.91731  5.64405  6.02153  0.00869     14 T - - -
          1.38629  1.38629  1.38629  1.38629
          0.00475  6.04501  6.04501  1.46634  0.26236  1.09861  0.40547
     15   1.09656  5.59717  0.41916  5.36615     15 g - - -
          1.38629  1.38629  1.38629  1.38629
          0.00475  6.04501  6.04501  1.46634  0.26236  1.09861  0.40547
     16   2.69956  0.17206  5.58298  2.44095     16 c - - -
          1.38629  1.38629  1.38629  1.38629
          0.00475  6.04501  6.04501  1.46634  0.26236  1.09861  0.40547
     17   0.39724  2.51888  2.51199  1.79476     17 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00475  6.04501  6.04501  1.46634  0.26236  1.09861  0.40547
     18   1.37506  2.77641  2.06243  0.58381     18 t - - -
          1.38629  1.38629 BlkEBlkS      @�               1.38629  1.38629
          0.00475  6.04501  6.04501  1.46634  0.26236  1.09861  0.40547
     19   2.04852  0.85807  1.64587  1.36944     19 c - - -
          1.38629  1.38629  1.38629  1.38629
          0.00238  6.04263        *  1.46634  0.26236  0.00000        *
//
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  BlkEBlkS      @�              BMap   "   0         0         0        0        0         0        0         0          0        $0        (0        ,0        00        40        80        <0        @0      	  D0      
  H0        L0        P0        T0        X0        \0        `0        d0        h0        l0        p0         t0        x0        |0        �0        �0                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      BlkE