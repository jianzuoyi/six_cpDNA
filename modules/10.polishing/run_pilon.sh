#!/bin/bash

PILON=/its1/GB_BT2/jianzuoyi/biosoft/anaconda/bin/pilon
OUTDIR=/its1/GB_BT2/jianzuoyi/workspace/six_cpDNA/modules/10.polishing/pilon_results
TMP_DIR=${OUTDIR}/tmp
mkdir -p $TMP_DIR
THREADS=32

$PILON -Xms1g -Xmx1g -Djava.io.tmpdir=$TMP_DIR \
--genome /its1/GB_BT2/jianzuoyi/workspace/six_cpDNA/modules/intermediate_results/assembly/Cp.assembly.v4.fasta \
--bam /its1/GB_BT2/jianzuoyi/workspace/six_cpDNA/modules/09.map2assembly/chloroplast_S205_L001.sim.0.80.F12.sorted.bam \
--bam /its1/GB_BT2/jianzuoyi/workspace/six_cpDNA/modules/09.map2assembly/chloroplast_clean.sim.0.80.F12.sorted.bam \
--bam /its1/GB_BT2/jianzuoyi/workspace/six_cpDNA/modules/09.map2assembly/chloroplast_022K_S10_L001.sim.0.90.F12.sorted.bam \
--outdir $OUTDIR \
--output miseq \
--changes \
--threads $THREADS
