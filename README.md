__SigmoID__ is all about transcription factor binding sites (TFBS) in bacterial genomes: find the known ones, infer the unknowns and view them all in genomic context. It is a GUI application written in Xojo with most data handling done with python.

Functions:
- de novo inference of transcription factor binding sites (__new in v.2__);
- 3D structure (DNA-protein contact) based application of known TFBS profiles to new genomes (__new in v.2__);
- integrated access to CollecTF, RegulonDB, CoryneRegNet and RegPrecise;
- visualise binding site alignments with sequence logo;
- extend, shorten and mask TFBS alignments;
- create calibrated hmm profiles with  from TFBS alignments;
- search bacterial genome sequences with calibrated (and uncalibrated) hmm profiles;
- annotate promoters and TFBSs in GenBank-formatted genome files;
- semi-automated whole-genome TFBS inference (__new in v.2__);
- view regulatory sites in genomic context with the integrated genome browser;
- view RNA-seq coverage data;
- verify and edit genome annotation via search and analysis tools integrated with the genome browser.

Sigmoid v.2 (currently in development) is strongly recommended for routine use. It is available as 64-bit application for OS X and Linux on the [Releases page](https://github.com/nikolaichik/SigmoID/releases).  Supported OS versions include OS X Yosemite 10.10 and up and several Linux distributions:
Linux Mint 16 or later
CentOS 7.0 or later
Ubuntu 14.04 LTS or later
Debian 6.0 or later
OpenSUSE 11.3 or later
Fedora 13 Desktop or later.
Other Linux distributions may work provided required libraries are installed.

Adding annotations to GenBank files and some other functions are implemented as python scripts, hence Python 3.x and matching version of BioPython are required. _de novo_ TFBS search requires full installation of the MEME Suite (meme-suite.org). 

Additional info and usage instructions are in the help file accessible from SigmoID.

A paper describing SigmoID v.1 was published:
Nikolaichik Y, Damienikan AU. (2016) SigmoID: a user-friendly tool for improving bacterial genome annotation through analysis of transcription control signals. PeerJ 4:e2056 https://doi.org/10.7717/peerj.2056

A short note and BIATA'20 talk describing SigmoID v.2 are available:

https://doi.org/10.18699/BGRS/SB-2020-046

https://www.youtube.com/watch?v=Alf9Hety9rE
