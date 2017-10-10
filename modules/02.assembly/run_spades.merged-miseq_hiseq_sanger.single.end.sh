#!/bin/bash

SPAdes=/its1/GB_BT2/jianzuoyi/biosoft/SPAdes-3.11.0-Linux/bin/spades.py
THREADS=20

$SPAdes \
--s1 /its1/GB_BT2/jianzuoyi/workspace/six_cpDNA/modules/01.map2reference/chloroplast_S205_L001.sim.0.90.F12.assembled.fastq \
--pe1-s /its1/GB_BT2/jianzuoyi/workspace/six_cpDNA/modules/01.map2reference/chloroplast_S205_L001.sim.0.90.F12.unassembled.forward.fastq \
--pe1-s /its1/GB_BT2/jianzuoyi/workspace/six_cpDNA/modules/01.map2reference/chloroplast_S205_L001.sim.0.90.F12.unassembled.reverse.fastq \
--s2 /its1/GB_BT2/jianzuoyi/workspace/six_cpDNA/modules/01.map2reference/chloroplast_clean.sim.0.90.F12.assembled.fastq \
--pe2-s /its1/GB_BT2/jianzuoyi/workspace/six_cpDNA/modules/01.map2reference/chloroplast_clean.sim.0.90.F12.unassembled.forward.fastq \
--pe2-s /its1/GB_BT2/jianzuoyi/workspace/six_cpDNA/modules/01.map2reference/chloroplast_clean.sim.0.90.F12.unassembled.reverse.fastq \
--pe3-1 /its1/GB_BT2/jianzuoyi/workspace/six_cpDNA/modules/01.map2reference/chloroplast_022K_S10_L001.sim.0.90.F12.sorted_R1.fq \
--pe3-2 /its1/GB_BT2/jianzuoyi/workspace/six_cpDNA/modules/01.map2reference/chloroplast_022K_S10_L001.sim.0.90.F12.sorted_R2.fq \
--sanger /its1/GB_BT2/jianzuoyi/workspace/six_cpDNA/data/sanger.fa \
-o /its1/GB_BT2/jianzuoyi/workspace/six_cpDNA/modules/02.assembly/spades_results_merged-miseq.hiseq.sanger.single.end \
--careful \
-t $THREADS
