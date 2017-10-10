#!/bin/bash

SPAdes=/its1/GB_BT2/jianzuoyi/biosoft/SPAdes-3.11.0-Linux/bin/spades.py
THREADS=20

$SPAdes \
--pe1-s /its1/GB_BT2/jianzuoyi/workspace/six_cpDNA/modules/01.map2reference/chloroplast_S205_L001.sim.0.90.F12.sorted_R1.fq \
--pe1-s /its1/GB_BT2/jianzuoyi/workspace/six_cpDNA/modules/01.map2reference/chloroplast_S205_L001.sim.0.90.F12.sorted_R2.fq \
--sanger /its1/GB_BT2/jianzuoyi/workspace/six_cpDNA/data/sanger.fa \
-o /its1/GB_BT2/jianzuoyi/workspace/six_cpDNA/modules/02.assembly/spades_results_S205 \
--careful \
-t $THREADS
