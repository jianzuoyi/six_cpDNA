#!/bin/bash

/bin/perl /its1/GB_BT2/jianzuoyi/biosoft/SSPACE-STANDARD-3.0_linux-x86_64/SSPACE_Standard_v3.0.pl \
-l /its1/GB_BT2/jianzuoyi/workspace/six_cpDNA/modules/05.scaffolding/lib.raw.txt \
-s /its1/GB_BT2/jianzuoyi/workspace/six_cpDNA/modules/02.assembly/spades_results_miseq.hiseq-pe.sanger/scaffolds.fasta \
-b scaffolds.miseq.hiseq-pe.raw.sanger.extension \
-T 24 \
-x 1 \
-g 3 \
-p 1
