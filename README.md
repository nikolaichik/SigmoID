SigmoID
=======

This is a simple GUI written in Xojo to ease annotation of sigma-factor and TF binding sites in bacterial genomes.
Functions:
- visualise binding site alignments with WebLogo;
- extend, shorten and mask alignments;
- create hmm profiles from alignments;
- search bacterial genomes with calibrated (and uncalibrated) hmm profiles;
- annotate promoters and transcription factor binding sites in GenBank-formatted genomes.

This version includes eleven calibrated profiles (for 4 sigma factors and 7 TFs) optimised for enterobacterial phytopathogens Pectobacterium spp. and Dickeya dadantii. Efficiency of these profiles may decrease for other bacteria.

The search for binding sites is done by nhmmer which is expected to be installed in the default location. 
WebLogo installation is required for new alignments, otherwise logos won't be displayed, but the rest of SigmoID should work.

Adding annotations to GenBank files is done by the HmmGen.py script which could be used on its own. BioPython (version 1.64 and up) is required.

At the moment SigmoID is known to work on OS X (10.8 and 10.9) and Ubuntu (12.04 and 14.04); it may compile and run on Windows (provided HMMER, BioPython and WebLogo are installed), but this was not tested yet. 64 bit Ubuntu requires installation of 32-bit libraries. 


