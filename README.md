SigmoID
=======

This is a simple GUI written in Xojo to ease annotation of sigma-factor and TF binding sites in bacterial genomes.
Functions:
- visualise binding site alignments with WebLogo;
- integrated access to RegPrecise and RegulonDB
- extend, shorten and mask alignments;
- create hmm profiles from alignments;
- search bacterial genomes with calibrated (and uncalibrated) hmm profiles;
- annotate promoters and transcription factor binding sites in GenBank-formatted genomes;
- view regulatory sites in genomic context with the integrated genome browser;
- verify annotation via the integrated database search.

This version includes over 30 calibrated profiles (including 5 for sigma factors) optimised for enterobacterial phytopathogens Pectobacterium spp. and Dickeya dadantii. Efficiency of these profiles may decrease for other bacteria.

WebLogo installation is required for new alignments, otherwise logos won't be displayed, but the rest of SigmoID should work. The actual searches are done by nhmmer or mast which are included or could be configured to run from default installations on the user system.

Adding annotations to GenBank files is done by the HmmGen.py script which could be used on its own. BioPython (version 1.64 and up) is required.

At the moment SigmoID is known to work on OS X (10.8 and 10.9), 32-bit Ubuntu (12.04 and 14.04) and Windows (XP-10, with some glitches on XP). Other 32-bit Linux distributions may work prowided Xojo requirements are met. Current SigmoID version may run on 64-bit Linux distributions provided 32-bit libraries are installed. 

Additional info and short instructions are in the help file.
