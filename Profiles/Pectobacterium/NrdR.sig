VFSv   BlkS       @D      @�          �BlkEBlkS       @�              @8      fold    A�[ ��  A�[ ��  /                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         BlkEBlkS       @�      @�`     @�     ????   A�[ ��  A�[ ��  NrdR.fasta                                                                                                                                                                                                                      >f_nrdD1_Pca3-2
AAAAATTCAATATATAGTGTCTAT
>r_nrdD1_Pca3-2
ATAGACACTATATATTGAATTTTT
>f_nrdD2_Pca3-2 weak
ACACGACCCACATATAGTGCTTAT
>r_nrdD2_Pca3-2 weak
ATAAGCACTATATGTGGGTCGTGT
>f_nrdA_Pca3-2
AAAATATCTATATCTAGTATTTAT
>r_nrdA_Pca3-2
ATAAATACTAGATATAGATATTTT
>f_nrdH1_Pca3-2
AAAAATCATATATCTTGTGTGGTT
>r_nrdH1_Pca3-2
AACCACACAAGATATATGATTTTT
>f_nrdH2_Pca3-2 weak
AAAACACCCACATCTAGTATTCTT
>r_nrdH2_Pca3-2 weak
AAGAATACTAGATGTGGGTGTTTT
>f_nrdH1_Dda3937
TAAAACACAATATCTAGTATTCAT
>r_nrdH1_Dda3937
ATGAATACTAGATATTGTGTTTTA
>f_nrdH2_Dda3937
AAAACTTCTATATATTGCGTGGTT
>r_nrdH2_Dda3937
AACCACGCAATATATAGAAGTTTT
>f_nrdA_Dda3937
CCACCCCCTATATATAGTGTTTAC
>r_nrdA_Dda3937
GTAAACACTATATATAGGGGGTGG
>f_nrdD1_Dda3937
ATAGACACTATATATTGAATTCGC
>r_nrdD1_Dda3937BlkEBlkS      @�      @�`     
GCGAATTCAATATATAGTGTCTAT
>f_nrdD2_Dda3937
ATAAACACAATATGTAGGTTCTTG
>r_nrdD2_Dda3937
CAAGAACCTACATATTGTGTTTAT
>f_ECA1199 VIMSSId=605578 Pos=-129 Score=3.57936
CAATACTCACCATGTAGTAGCTTT
>r_ECA1199 VIMSSId=605578 Pos=-129 Score=3.57936
AAAGCTACTACATGGTGAGTATTG
>f_ECA1199 VIMSSId=605578 Pos=-98 Score=5.62973
AAAACACCTATATCTAGTATTTAT
>r_ECA1199 VIMSSId=605578 Pos=-98 Score=5.62973
ATAAATACTAGATATAGGTGTTTT
>f_ECA3335 VIMSSId=607739 Pos=-162 Score=4.35326
AAAAATCATATATCTTGTGTGGTT
>r_ECA3335 VIMSSId=607739 Pos=-162 Score=4.35326
AACCACACAAGATATATGATTTTT
>f_ECA3335 VIMSSId=607739 Pos=-131 Score=5.26303
TAAATATCTACATCTAGTATTCCT
>r_ECA3335 VIMSSId=607739 Pos=-131 Score=5.26303
AGGAATACTAGATGTAGATATTTA
>f_ECA0375 VIMSSId=604740 Pos=-132 Score=4.40099
GCAATTTCAATATATAGTGCCTAT
>r_ECA0375 VIMSSId=604740 Pos=-132 Score=4.40099
ATAGGCACTATATATTGAAATTGC
>f_ECA0375 VIMSSId=604740 Pos=-101 Score=5.53124
ACATTACCTACATATAGTGTTTAT
>r_ECA0375 VIMSSId=604740 Pos=-101 Score=5.53124
ATAAACACTATATGTAGGTAABlkEBlkS      @�              TGT
>f_nrdD1_PwaSCC3193
ACACGACCCATATATAGTGTTTAT
>r_nrdD1_PwaSCC3193
ATAAACACTATATATGGGTCGTGT
>f_nrdD2_PwaSCC3193
GCAATTTCAATATATAGTGCCTAT
>r_nrdD2_PwaSCC3193
ATAGGCACTATATATTGAAATTGC
>f_nrdH1_PwaSCC3193
TAAATACCTACATCTAGTATTCTT
>r_nrdH1_PwaSCC3193
AAGAATACTAGATGTAGGTATTTA
>f_nrdH2_PwaSCC3193
AAAAATCATATATCTTGTGTGGTT
>r_nrdH2_PwaSCC3193
AACCACACAAGATATATGATTTTT
>f_nrdA_PwaSCC3193
AAAATATCCATATCTAGTATTTAT
>r_nrdA_PwaSCC3193
ATAAATACTAGATATGGATATTTT
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            BlkEBlkS       @�      @�0     @��     ????   A�[ ��  A�[ ��  NrdR.options                                                                                                                                                                                                                    ////
// nhmmer options
////


// Trusted cutoff. Bit score per-sequence cutoff, set according to the lowest scores seen for true homologous sequences that were above the GA gathering thresholds, when gathering members of the alignment
#=GF TC 11 11


// Gathering threshold. Bit score per-sequence cutoff used in gathering the members of the alignment
#=GF GA 9.4 9.4


//Noise cutoff. Bit score per-sequence cutoff, set according to the highest scores seen for unrelated sequences
#=GF NC 9.4 9.4


// use the gathering threshold from the calibrated profile
nhmmer.--cut_ga


////
// HmmGen options
////


// the alignment length
HmmGen.-L 24


// the site is palindromic
HmmGen.-p


// don't pick up locus_tag from next locus
HmmGen.-BlkEBlkS      @�              n


// ignore sites inside ORFs (and risk missing some real ones!)
HmmGen.-i 


// feature key
HmmGen.-f protein_bind


// feature qualifier
HmmGen.-q bound_moiety#NrdR


// MASTgen p-value cutoff
mastGen.-V 1e-7


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         BlkEBlkS       @�              @�X     ????   A�[ ��  A�[ ��  NrdR.info                                                                                                                                                                                                                          NrdR negatively controls expression of genes for deoxyribonucleotide reductases. In pectobacteria, it seems to control three nrd operons with two sites in front of each.
   This profile was built starting with RegPrecise data for Pectobacterium atrosepticum and adding orthologous sites from P. carotovorum, P. wasabiae and D. dadantii. The final profile isn’t sufficiently specific; with current threshold it can miss 1-2 weaker sites (but should detect at least one per nrd operon) and may give 1-2 false positives.
                                                                                                                                                                                                                     BlkEBlkS       @�      @�     @��@    ????   A�[ �   A�[ �   meme.txt                                                                                                                                                                                                                        ********************************************************************************
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
f_nrdD1_Pca3-2  BlkEBlkS      @�      @�              1.0000     24  r_nrdD1_Pca3-2           1.0000     24  
f_nrdD2_Pca3-2           1.0000     24  r_nrdD2_Pca3-2           1.0000     24  
f_nrdA_Pca3-2            1.0000     24  r_nrdA_Pca3-2            1.0000     24  
f_nrdH1_Pca3-2           1.0000     24  r_nrdH1_Pca3-2           1.0000     24  
f_nrdH2_Pca3-2           1.0000     24  r_nrdH2_Pca3-2           1.0000     24  
f_nrdH1_Dda3937          1.0000     24  r_nrdH1_Dda3937          1.0000     24  
f_nrdH2_Dda3937          1.0000     24  r_nrdH2_Dda3937          1.0000     24  
f_nrdA_Dda3937           1.0000     24  r_nrdA_Dda3937           1.0000     24  
f_nrdD1_Dda3937          1.0000     24  r_nrdD1_Dda3937          1.0000     24  
f_nrdD2_Dda3937          1.0000     24  r_nrdD2_Dda3937          1.0000     24  
f_ECA1199                1.0000     24  r_ECA1199                1.0000     24  
f_ECA3335                1.0000     24  r_ECA3335                1.0000     24  
f_ECA0375                1.0000     BlkEBlkS      @�      @�     24  r_ECA0375                1.0000     24  
f_nrdD1_PwaSCC3193       1.0000     24  r_nrdD1_PwaSCC3193       1.0000     24  
f_nrdD2_PwaSCC3193       1.0000     24  r_nrdD2_PwaSCC3193       1.0000     24  
f_nrdH1_PwaSCC3193       1.0000     24  r_nrdH1_PwaSCC3193       1.0000     24  
f_nrdH2_PwaSCC3193       1.0000     24  r_nrdH2_PwaSCC3193       1.0000     24  
f_nrdA_PwaSCC3193        1.0000     24  r_nrdA_PwaSCC3193        1.0000     24  
********************************************************************************

********************************************************************************
COMMAND LINE SUMMARY
********************************************************************************
This information can also be useful in the event you wish to report a
problem with the MEME software.

command: meme -nmotifs 1 -dna -text -pal -revcomp /private/var/folders/1k/4vs0wmnd75371kbm6p5jbmxr0000gn/T/TemporaryItems/alignment.tmp 

model:  mod=         zoops    nmotifBlkEBlkS      @�      @�     s=         1    evt=           inf
object function=  E-value of product of p-values
width:  minw=            8    maxw=           24    minic=        0.00
width:  wg=             11    ws=              1    endgaps=       yes
nsites: minsites=        2    maxsites=       36    wnsites=       0.8
theta:  prob=            1    spmap=         uni    spfuzz=        0.5
global: substring=     yes    branching=      no    wbranch=        no
em:     prior=   dirichlet    b=            0.01    maxiter=        50
        distance=    1e-05
data:   n=             864    N=              36
strands: + -
sample: seed=            0    seqfrac=         1
Letter frequencies in dataset:
A 0.361 C 0.139 G 0.139 T 0.361 
Background letter frequencies (from dataset with add-one prior applied):
A 0.361 C 0.139 G 0.139 T 0.361 
********************************************************************************


********************************************************************************
MOTIF  1 MBlkEBlkS      @�      @�     EME	width =  24  sites =  36  llr = 457  E-value = 1.7e-144
********************************************************************************
--------------------------------------------------------------------------------
	Motif 1 Description
--------------------------------------------------------------------------------
Simplified        A  858662513a:a:6:6:241::31
pos.-specific     C  121214391:2::2:::::121:1
probability       G  1:121:::::2::2:192412121
matrix            T  13::142:6:6:a:a315266857

         bits    2.8                         
                 2.6                         
                 2.3        *        *       
                 2.0        *        *       
Relative         1.7        *        *       
Entropy          1.4        * * ** * *       
(18.3 bits)      1.1        * * ** * *       
                 0.9   *    * * ** * *    *  
                 0.6 * ** * * ****** * * ** *
                 0.3 ************************
                 0.0 --BlkEBlkS      @�      @�     ----------------------

Multilevel           AAAAACACTATATATAGTGTTTTT
consensus             T   TC A G  C T GA   A 
sequence                   T          A      
                                             
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 sites sorted by position p-value
--------------------------------------------------------------------------------
Sequence name            Strand  Start   P-value                      Site        
-------------            ------  ----- ---------            ------------------------
r_nrdD1_Pca3-2               +      1  1.79e-08          . ATAGACACTATATATTGAATTTTT           
f_nrdD1_Pca3-2               -      1  1.79e-08          . ATAGACACTATATATTGAATTTTT           
r_nrdD1_PwaSCC3193           -      1  3.38e-08          . ACACGACCCATATATAGTGTTTAT           
f_nrdD1_PwaSCC3193           +      1  3.38e-BlkEBlkS      @�      @�     08          . ACACGACCCATATATAGTGTTTAT           
r_nrdA_Dda3937               -      1  3.93e-08          . CCACCCCCTATATATAGTGTTTAC           
f_nrdA_Dda3937               +      1  3.93e-08          . CCACCCCCTATATATAGTGTTTAC           
r_nrdD2_Dda3937              +      1  1.34e-07          . CAAGAACCTACATATTGTGTTTAT           
f_nrdD2_Dda3937              -      1  1.34e-07          . CAAGAACCTACATATTGTGTTTAT           
r_nrdD2_Pca3-2               -      1  1.34e-07          . ACACGACCCACATATAGTGCTTAT           
f_nrdD2_Pca3-2               +      1  1.34e-07          . ACACGACCCACATATAGTGCTTAT           
r_nrdD1_Dda3937              +      1  3.37e-07          . GCGAATTCAATATATAGTGTCTAT           
f_nrdD1_Dda3937              -      1  3.37e-07          . GCGAATTCAATATATAGTGTCTAT           
r_nrdH2_Pca3-2               -      1  3.37e-07          . AAAACACCCACATCTAGTATTCTT           
f_nrdH2_Pca3-2               +      1  3.37e-07          . AAAACACCCACATCTAGTATTCTT    BlkEBlkS      @�      @�            
r_nrdA_Pca3-2                -      1  3.75e-07          . AAAATATCTATATCTAGTATTTAT           
f_nrdA_Pca3-2                +      1  3.75e-07          . AAAATATCTATATCTAGTATTTAT           
r_nrdH1_Dda3937              -      1  4.62e-07          . TAAAACACAATATCTAGTATTCAT           
f_nrdH1_Dda3937              +      1  4.62e-07          . TAAAACACAATATCTAGTATTCAT           
r_nrdH2_PwaSCC3193           +      1  5.65e-07          . AACCACACAAGATATATGATTTTT           
f_nrdH2_PwaSCC3193           -      1  5.65e-07          . AACCACACAAGATATATGATTTTT           
r_ECA3335                    +      1  5.65e-07          . AACCACACAAGATATATGATTTTT           
f_ECA3335                    -      1  5.65e-07          . AACCACACAAGATATATGATTTTT           
r_nrdH1_Pca3-2               +      1  5.65e-07          . AACCACACAAGATATATGATTTTT           
f_nrdH1_Pca3-2               -      1  5.65e-07          . AACCACACAAGATATATGATTTTT           
r_nrdA_PwaSCC3193            -    BlkEBlkS      	@�      @�       1  7.56e-07          . AAAATATCCATATCTAGTATTTAT           
f_nrdA_PwaSCC3193            +      1  7.56e-07          . AAAATATCCATATCTAGTATTTAT           
r_nrdH2_Dda3937              +      1  8.30e-07          . AACCACGCAATATATAGAAGTTTT           
f_nrdH2_Dda3937              -      1  8.30e-07          . AACCACGCAATATATAGAAGTTTT           
r_nrdD2_PwaSCC3193           -      1  9.99e-07          . GCAATTTCAATATATAGTGCCTAT           
f_nrdD2_PwaSCC3193           +      1  9.99e-07          . GCAATTTCAATATATAGTGCCTAT           
r_ECA0375                    -      1  9.99e-07          . GCAATTTCAATATATAGTGCCTAT           
f_ECA0375                    +      1  9.99e-07          . GCAATTTCAATATATAGTGCCTAT           
r_nrdH1_PwaSCC3193           -      1  3.47e-06          . TAAATACCTACATCTAGTATTCTT           
f_nrdH1_PwaSCC3193           +      1  3.47e-06          . TAAATACCTACATCTAGTATTCTT           
r_ECA1199                    -      1  2.76e-05          . CAATACTCACCATGTAGBlkEBlkS      
@�      @�     TAGCTTT           
f_ECA1199                    +      1  2.76e-05          . CAATACTCACCATGTAGTAGCTTT           
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 block diagrams
--------------------------------------------------------------------------------
SEQUENCE NAME            POSITION P-VALUE  MOTIF DIAGRAM
-------------            ----------------  -------------
r_nrdD1_Pca3-2                    1.8e-08  [+1]
f_nrdD1_Pca3-2                    1.8e-08  [-1]
r_nrdD1_PwaSCC3193                3.4e-08  [-1]
f_nrdD1_PwaSCC3193                3.4e-08  [+1]
r_nrdA_Dda3937                    3.9e-08  [-1]
f_nrdA_Dda3937                    3.9e-08  [+1]
r_nrdD2_Dda3937                   1.3e-07  [+1]
f_nrdD2_Dda3937                   1.3e-07  [-1]
r_nrdD2_Pca3-2                    1.3e-07  [-1]
f_nrdD2_Pca3-2                    1.3e-07  [+1]
r_nrdD1_Dda3937 BlkEBlkS      @�      @�                       3.4e-07  [+1]
f_nrdD1_Dda3937                   3.4e-07  [-1]
r_nrdH2_Pca3-2                    3.4e-07  [-1]
f_nrdH2_Pca3-2                    3.4e-07  [+1]
r_nrdA_Pca3-2                     3.8e-07  [-1]
f_nrdA_Pca3-2                     3.8e-07  [+1]
r_nrdH1_Dda3937                   4.6e-07  [-1]
f_nrdH1_Dda3937                   4.6e-07  [+1]
r_nrdH2_PwaSCC3193                5.6e-07  [+1]
f_nrdH2_PwaSCC3193                5.6e-07  [-1]
r_ECA3335                         5.6e-07  [+1]
f_ECA3335                         5.6e-07  [-1]
r_nrdH1_Pca3-2                    5.6e-07  [+1]
f_nrdH1_Pca3-2                    5.6e-07  [-1]
r_nrdA_PwaSCC3193                 7.6e-07  [-1]
f_nrdA_PwaSCC3193                 7.6e-07  [+1]
r_nrdH2_Dda3937                   8.3e-07  [+1]
f_nrdH2_Dda3937                   8.3e-07  [-1]
r_nrdD2_PwaSCC3193                  1e-06  [-1]
f_nrdD2_PwaSCC3193                  1e-06  [+1]
r_ECA0375                           1e-06  [-1]
BlkEBlkS      @�      @�     f_ECA0375                           1e-06  [+1]
r_nrdH1_PwaSCC3193                3.5e-06  [-1]
f_nrdH1_PwaSCC3193                3.5e-06  [+1]
r_ECA1199                         2.8e-05  [-1]
f_ECA1199                         2.8e-05  [+1]
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 in BLOCKS format
--------------------------------------------------------------------------------
BL   MOTIF 1 width=24 seqs=36
r_nrdD1_Pca3-2           (    1) ATAGACACTATATATTGAATTTTT  1 
f_nrdD1_Pca3-2           (    1) ATAGACACTATATATTGAATTTTT  1 
r_nrdD1_PwaSCC3193       (    1) ACACGACCCATATATAGTGTTTAT  1 
f_nrdD1_PwaSCC3193       (    1) ACACGACCCATATATAGTGTTTAT  1 
r_nrdA_Dda3937           (    1) CCACCCCCTATATATAGTGTTTAC  1 
f_nrdA_Dda3937           (    1) CCACCCCCTATATATAGTGTTTAC  1 
r_nrdD2_Dda3937          (    1) CAAGAACCTACATATTGTGTTTAT  1 
f_nrdD2_Dda3937   BlkEBlkS      @�      @�            (    1) CAAGAACCTACATATTGTGTTTAT  1 
r_nrdD2_Pca3-2           (    1) ACACGACCCACATATAGTGCTTAT  1 
f_nrdD2_Pca3-2           (    1) ACACGACCCACATATAGTGCTTAT  1 
r_nrdD1_Dda3937          (    1) GCGAATTCAATATATAGTGTCTAT  1 
f_nrdD1_Dda3937          (    1) GCGAATTCAATATATAGTGTCTAT  1 
r_nrdH2_Pca3-2           (    1) AAAACACCCACATCTAGTATTCTT  1 
f_nrdH2_Pca3-2           (    1) AAAACACCCACATCTAGTATTCTT  1 
r_nrdA_Pca3-2            (    1) AAAATATCTATATCTAGTATTTAT  1 
f_nrdA_Pca3-2            (    1) AAAATATCTATATCTAGTATTTAT  1 
r_nrdH1_Dda3937          (    1) TAAAACACAATATCTAGTATTCAT  1 
f_nrdH1_Dda3937          (    1) TAAAACACAATATCTAGTATTCAT  1 
r_nrdH2_PwaSCC3193       (    1) AACCACACAAGATATATGATTTTT  1 
f_nrdH2_PwaSCC3193       (    1) AACCACACAAGATATATGATTTTT  1 
r_ECA3335                (    1) AACCACACAAGATATATGATTTTT  1 
f_ECA3335                (    1) AACCACACAAGATATATGATTTTT  1 
r_nrdH1_Pca3-2           (    1) AACCACACAAGATATATGATTTTT  1 
f_nrdH1_Pca3-2    BlkEBlkS      @�      @�            (    1) AACCACACAAGATATATGATTTTT  1 
r_nrdA_PwaSCC3193        (    1) AAAATATCCATATCTAGTATTTAT  1 
f_nrdA_PwaSCC3193        (    1) AAAATATCCATATCTAGTATTTAT  1 
r_nrdH2_Dda3937          (    1) AACCACGCAATATATAGAAGTTTT  1 
f_nrdH2_Dda3937          (    1) AACCACGCAATATATAGAAGTTTT  1 
r_nrdD2_PwaSCC3193       (    1) GCAATTTCAATATATAGTGCCTAT  1 
f_nrdD2_PwaSCC3193       (    1) GCAATTTCAATATATAGTGCCTAT  1 
r_ECA0375                (    1) GCAATTTCAATATATAGTGCCTAT  1 
f_ECA0375                (    1) GCAATTTCAATATATAGTGCCTAT  1 
r_nrdH1_PwaSCC3193       (    1) TAAATACCTACATCTAGTATTCTT  1 
f_nrdH1_PwaSCC3193       (    1) TAAATACCTACATCTAGTATTCTT  1 
r_ECA1199                (    1) CAATACTCACCATGTAGTAGCTTT  1 
f_ECA1199                (    1) CAATACTCACCATGTAGTAGCTTT  1 
//

--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 position-specific scoring maBlkEBlkS      @�      @�     trix
--------------------------------------------------------------------------------
log-odds matrix: alength= 4 w= 24 n= 36 bayes= -664.386 E= 1.7e-144 
   106    -74    -33   -270 
    55     26  -1181    -24 
   111    -33    -33  -1181 
    76     48     26   -369 
    76    -33     -1   -138 
   -89    158  -1181     11 
    47     84   -233    -70 
  -211    272  -1181  -1181 
   -24    -33  -1181     69 
   143   -233  -1181  -1181 
 -1181     26     67     76 
   147  -1187  -1187  -1184 
 -1182  -1183  -1183    147 
    76     67     26  -1183 
 -1183  -1185   -233    143 
    69  -1185    -33    -24 
 -1183  -1185    272   -211 
   -70   -233     84     47 
    11  -1185    158    -89 
  -138     -1    -33     76 
  -369     26     48     76 
 -1183    -33    -33    111 
   -24  -1185     26     55 
  -270    -33    -74    106 
--------------------------------------------------------------------------------

-----------------------------------------------------------BlkEBlkS      @�      @�     ---------------------
	Motif 1 position-specific probability matrix
--------------------------------------------------------------------------------
letter-probability matrix: alength= 4 w= 24 nsites= 36 E= 1.7e-144 
 0.750000  0.083333  0.111111  0.055556 
 0.527778  0.166667  0.000000  0.305556 
 0.777778  0.111111  0.111111  0.000000 
 0.611111  0.194444  0.166667  0.027778 
 0.611111  0.111111  0.138889  0.138889 
 0.194444  0.416667  0.000000  0.388889 
 0.500000  0.250000  0.027778  0.222222 
 0.083333  0.916667  0.000000  0.000000 
 0.305556  0.111111  0.000000  0.583333 
 0.972222  0.027778  0.000000  0.000000 
 0.000000  0.166667  0.222222  0.611111 
 0.999998  0.000000  0.000000  0.000000 
 0.000000  0.000000  0.000000  0.999999 
 0.611110  0.222221  0.166666  0.000000 
 0.000000  0.000000  0.027777  0.972221 
 0.583332  0.000000  0.111110  0.305555 
 0.000000  0.000000  0.916666  0.083332 
 0.222221  0.027777  0.249999  0.499999 
 0.388888  0.000000  0.416666  0.1944BlkEBlkS      @�      @�     43 
 0.138888  0.138888  0.111110  0.611110 
 0.027777  0.166666  0.194443  0.611110 
 0.000000  0.111110  0.111110  0.777777 
 0.305555  0.000000  0.166666  0.527777 
 0.055555  0.111110  0.083332  0.749999 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 regular expression
--------------------------------------------------------------------------------
A[AT]AAA[CT][ACT]C[TA]A[TG]AT[AC]T[AT]G[TGA][GA]TTT[TA]T
--------------------------------------------------------------------------------




Time  0.32 secs.

********************************************************************************


********************************************************************************
SUMMARY OF MOTIFS
********************************************************************************

--------------------------------------------------------------------------------
	CombiBlkEBlkS      @�      @�     ned block diagrams: non-overlapping sites with p-value < 0.0001
--------------------------------------------------------------------------------
SEQUENCE NAME            COMBINED P-VALUE  MOTIF DIAGRAM
-------------            ----------------  -------------
f_nrdD1_Pca3-2                   3.58e-08  [+1(1.79e-08)]
r_nrdD1_Pca3-2                   3.58e-08  [+1(1.79e-08)]
f_nrdD2_Pca3-2                   2.68e-07  [+1(1.34e-07)]
r_nrdD2_Pca3-2                   2.68e-07  [+1(1.34e-07)]
f_nrdA_Pca3-2                    7.50e-07  [+1(3.75e-07)]
r_nrdA_Pca3-2                    7.50e-07  [+1(3.75e-07)]
f_nrdH1_Pca3-2                   1.13e-06  [+1(5.65e-07)]
r_nrdH1_Pca3-2                   1.13e-06  [+1(5.65e-07)]
f_nrdH2_Pca3-2                   6.74e-07  [+1(3.37e-07)]
r_nrdH2_Pca3-2                   6.74e-07  [+1(3.37e-07)]
f_nrdH1_Dda3937                  9.24e-07  [+1(4.62e-07)]
r_nrdH1_Dda3937                  9.24e-07  [+1(4.62e-07)]
f_nrdH2_Dda3937                  1.66BlkEBlkS      @�      @�     e-06  [+1(8.30e-07)]
r_nrdH2_Dda3937                  1.66e-06  [+1(8.30e-07)]
f_nrdA_Dda3937                   7.86e-08  [+1(3.93e-08)]
r_nrdA_Dda3937                   7.86e-08  [+1(3.93e-08)]
f_nrdD1_Dda3937                  6.74e-07  [+1(3.37e-07)]
r_nrdD1_Dda3937                  6.74e-07  [+1(3.37e-07)]
f_nrdD2_Dda3937                  2.68e-07  [+1(1.34e-07)]
r_nrdD2_Dda3937                  2.68e-07  [+1(1.34e-07)]
f_ECA1199                        5.52e-05  [+1(2.76e-05)]
r_ECA1199                        5.52e-05  [+1(2.76e-05)]
f_ECA3335                        1.13e-06  [+1(5.65e-07)]
r_ECA3335                        1.13e-06  [+1(5.65e-07)]
f_ECA0375                        2.00e-06  [+1(9.99e-07)]
r_ECA0375                        2.00e-06  [+1(9.99e-07)]
f_nrdD1_PwaSCC3193               6.77e-08  [+1(3.38e-08)]
r_nrdD1_PwaSCC3193               6.77e-08  [+1(3.38e-08)]
f_nrdD2_PwaSCC3193               2.00e-06  [+1(9.99e-07)]
r_nrdD2_PwaSCC3193               2.00e-06  BlkEBlkS      @�              [+1(9.99e-07)]
f_nrdH1_PwaSCC3193               6.93e-06  [+1(3.47e-06)]
r_nrdH1_PwaSCC3193               6.93e-06  [+1(3.47e-06)]
f_nrdH2_PwaSCC3193               1.13e-06  [+1(5.65e-07)]
r_nrdH2_PwaSCC3193               1.13e-06  [+1(5.65e-07)]
f_nrdA_PwaSCC3193                1.51e-06  [+1(7.56e-07)]
r_nrdA_PwaSCC3193                1.51e-06  [+1(7.56e-07)]
--------------------------------------------------------------------------------

********************************************************************************


********************************************************************************
Stopped because nmotifs = 1 reached.
********************************************************************************

CPU: Ptushka.local

********************************************************************************
                                                                                                                                                                   BlkEBlkS       @�      @�     @�     ????   A�[ �   A�[ �   NrdR.hmm                                                                                                                                                                                                                        HMMER3/f [3.1b1 | May 2013]
NAME  stock
LENG  24
MAXL  77
ALPH  DNA
RF    no
MM    no
CONS  yes
CS    no
MAP   yes
DATE  Wed Feb  3 19:35:12 2016
NSEQ  42
EFFN  42.000000
CKSUM 426516833
GA    9.40
TC    11.00
NC    9.40
STATS LOCAL MSV       -7.1434  0.77160
STATS LOCAL VITERBI   -7.3655  0.77160
STATS LOCAL FORWARD   -3.2286  0.77160
HMM          A        C        G        T   
            m->m     m->i     m->d     i->m     i->i     d->m     d->d
  COMPO   1.05391  1.89693  1.90182  1.04383
          1.38629  1.38629  1.38629  1.38629
          0.00454  6.09131  6.09131  1.46634  0.26236  0.00000        *
      1   0.38194  2.22156  2.23876  2.27856      1 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.004BlkEBlkS      @�      @�     54  6.09131  6.09131  1.46634  0.26236  1.09861  0.40547
      2   0.67931  1.80106  2.83959  1.31135      2 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00454  6.09131  6.09131  1.46634  0.26236  1.09861  0.40547
      3   0.29222  2.17126  2.07769  4.25856      3 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00454  6.09131  6.09131  1.46634  0.26236  1.09861  0.40547
      4   0.58458  1.70710  1.82154  2.30770      4 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00454  6.09131  6.09131  1.46634  0.26236  1.09861  0.40547
      5   0.61008  1.88369  2.04686  1.73999      5 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00454  6.09131  6.09131  1.46634  0.26236  1.09861  0.40547
      6   1.51330  0.96140  4.20429  0.96095      6 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00454  6.09131  6.09131  1.46634  0.26236  1.09861  0.40547
      7   0.77692  1.39855  2.87776  1.43984      BlkEBlkS      @�      @�     7 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00454  6.09131  6.09131  1.46634  0.26236  1.09861  0.40547
      8   2.54260  0.09094  5.97338  5.16405      8 C - - -
          1.38629  1.38629  1.38629  1.38629
          0.00454  6.09131  6.09131  1.46634  0.26236  1.09861  0.40547
      9   1.28925  2.31669  4.39645  0.48841      9 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00454  6.09131  6.09131  1.46634  0.26236  1.09861  0.40547
     10   0.05901  2.96918  6.03898  5.63453     10 A - - -
          1.38629  1.38629  1.38629  1.38629
          0.00454  6.09131  6.09131  1.46634  0.26236  1.09861  0.40547
     11   4.06283  1.41642  1.48313  0.66691     11 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00454  6.09131  6.09131  1.46634  0.26236  1.09861  0.40547
     12   0.00419  6.99144  6.14470  6.79300     12 A - - -
          1.38629  1.38629  1.38629  1.38629
          0.00454  6.09131  6.09131  1.46634  0.2623BlkEBlkS      @�      @�     6  1.09861  0.40547
     13   5.96869  5.70622  6.07133  0.00822     13 T - - -
          1.38629  1.38629  1.38629  1.38629
          0.00454  6.09131  6.09131  1.46634  0.26236  1.09861  0.40547
     14   0.68254  1.47824  1.41835  3.70828     14 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00454  6.09131  6.09131  1.46634  0.26236  1.09861  0.40547
     15   5.89566  5.51937  2.99730  0.05835     15 T - - -
          1.38629  1.38629  1.38629  1.38629
          0.00454  6.09131  6.09131  1.46634  0.26236  1.09861  0.40547
     16   0.51081  3.89394  2.30281  1.27422     16 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00454  6.09131  6.09131  1.46634  0.26236  1.09861  0.40547
     17   4.89107  5.59971  0.09299  2.55643     17 G - - -
          1.38629  1.38629  1.38629  1.38629
          0.00454  6.09131  6.09131  1.46634  0.26236  1.09861  0.40547
     18   1.45760  2.88385  1.39341  0.76990     18 t - - -
          1.38629  1.38629 BlkEBlkS      @�      @��      1.38629  1.38629
          0.00454  6.09131  6.09131  1.46634  0.26236  1.09861  0.40547
     19   0.99365  3.77883  0.95492  1.50469     19 g - - -
          1.38629  1.38629  1.38629  1.38629
          0.00454  6.09131  6.09131  1.46634  0.26236  1.09861  0.40547
     20   1.76485  2.05733  1.87470  0.60222     20 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00454  6.09131  6.09131  1.46634  0.26236  1.09861  0.40547
     21   2.35263  1.82934  1.70052  0.57666     21 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00454  6.09131  6.09131  1.46634  0.26236  1.09861  0.40547
     22   4.64450  2.05047  2.20286  0.28605     22 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00454  6.09131  6.09131  1.46634  0.26236  1.09861  0.40547
     23   1.32747  2.84714  1.79269  0.67269     23 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00454  6.09131  6.09131  1.46634  0.26236  1.09861  0.40547
     24   2.32428BlkEBlkS      @�                2.24496  2.21778  0.37489     24 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00227  6.08905        *  1.46634  0.26236  0.00000        *
//
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             BlkEBlkS      @�              BMap   #   0         0         0        0        0         0        0         0          0        $0        (0        ,0        00        40        80        <0        @0      	  D0      
  H0        L0        P0        T0        X0        \0        `0        d0        h0        l0        p0         t0        x0        |0        �0        �0        �0                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          BlkE