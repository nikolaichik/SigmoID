SigmoID
=======

This is a simple GUI written in Xojo to ease annotation of sigma-factor and transcription factor binding sites in bacterial genome sequences.
Functions:
- visualise binding site alignments with sequence logo;
- integrated access to RegPrecise and RegulonDB
- extend, shorten and mask alignments;
- create hmm profiles from alignments;
- search bacterial genome sequences with calibrated (and uncalibrated) hmm profiles;
- annotate promoters and transcription factor binding sites in GenBank-formatted genomes;
- view regulatory sites in genomic context with the integrated genome browser;
- view RNA-seq coverage data;
- verify annotation via the integrated database search.

This version includes over 80 calibrated profiles optimised for (i) soft rot enterobacterial phytopathogens (Pectobacterium spp. and Dickeya spp.) and (ii) Pseudomonas spp.

The actual searches are done by nhmmer or mast which are included or could be configured to run from default installations on the user system.

Adding annotations to GenBank files and some other functions are implemented as python scripts, hence BioPython (version 1.64 and up) is required as well as 32-bit version of Python 2.7.x.

At the moment SigmoID is known to work on OS X (10.8 and up), 64-bit and 32-bit Linux distributions (Ubuntu 14.04 is tested for 64-bit and 12.04 for 32-bit) and Windows (from Vista to Windows 10). Other Linux distributions may work provided Xojo requirements are met. 32-bit SigmoID version runs on 64-bit Linux distributions provided 32-bit libraries are installed; web browser related features require loading 32-bit WebKit 1 libraries (see SigmoID.sh). 64-bit Linux version is compiled with beta version of Xojo compiler and may be less stable. An important limitation of this version is its inability to open standard SigmoID profile (.sig) files (these files are converted to folders on 64-bit Linux; .sig files and folders are fully interchangeable on other platforms). We hope to fix this problem once Xojo compiler is appropriately updated.      

Full list of platform-specific system requirements is located at Xojo site: http://developer.xojo.com/system-requirements 

Compiled applications for all supported platforms are located on the Releases page.

Additional info and usage instructions are in the [help file](https://github.com/nikolaichik/SigmoID/blob/master/Help/help_en.html) accessible from SigmoID.

There is also a paper describing SigmoID:
Nikolaichik Y, Damienikan AU. (2016) SigmoID: a user-friendly tool for improving bacterial genome annotation through analysis of transcription control signals. PeerJ 4:e2056 https://doi.org/10.7717/peerj.2056

As supporting four different systems (and different versions of those) isn't simple, we'd be grateful for reporting any problems via the [Issues page](https://github.com/nikolaichik/SigmoID/issues).
