#!/bin/bash

/bin/perl /its1/GB_BT2/jianzuoyi/biosoft/SSPACE-STANDARD-3.0_linux-x86_64/SSPACE_Standard_v3.0.pl \
-l /its1/GB_BT2/jianzuoyi/workspace/six_cpDNA/modules/05.scaffolding/lib.txt \
-s /its1/GB_BT2/jianzuoyi/workspace/six_cpDNA/modules/02.assembly/spades_results_merged-miseq.sanger/scaffolds.fasta \
-b scaffolds.merged-miseq.sanger \
-T 24 \
-g 3 \
-p 1
