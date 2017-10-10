#!/bin/bash

/bin/perl /its1/GB_BT2/jianzuoyi/biosoft/SSPACE-STANDARD-3.0_linux-x86_64/SSPACE_Standard_v3.0.pl \
-l /its1/GB_BT2/jianzuoyi/workspace/six_cpDNA/modules/05.scaffolding/lib.txt \
-s /its1/GB_BT2/jianzuoyi/workspace/six_cpDNA/modules/intermediate_results/assembly/v1/LSC46825-IRB-SSC-IRA-LSC30974.fasta \
-b asm.v1 \
-x 1 \
-g 3 \
-T 24 \
-p 1
