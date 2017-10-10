#!/bin/bash

PILON=/its1/GB_BT2/jianzuoyi/biosoft/anaconda/bin/pilon
OUTDIR=/its1/GB_BT2/jianzuoyi/workspace/six_cpDNA/modules/10.polishing/pilon_results.v4_pilon
TMP_DIR=${OUTDIR}/tmp
mkdir -p $TMP_DIR
THREADS=32

$PILON -Xms1g -Xmx1g -Djava.io.tmpdir=$TMP_DIR \
--genome /its1/GB_BT2/jianzuoyi/workspace/six_cpDNA/modules/10.polishing/pilon_results.v4/Cp.assembly.v4.fasta \
--bam /its1/GB_BT2/jianzuoyi/workspace/six_cpDNA/modules/09.map2assembly/v4.chloroplast_022K_S10_L001.sim.0.90.sort.bam \
--bam /its1/GB_BT2/jianzuoyi/workspace/six_cpDNA/modules/09.map2assembly/v4.chloroplast_S205_L001.sim.0.80.sort.bam \
--bam /its1/GB_BT2/jianzuoyi/workspace/six_cpDNA/modules/09.map2assembly/v4.chloroplast_clean.sim.0.80.sort.bam \
--outdir $OUTDIR \
--output Cp.assembly.v4 \
--changes \
--variant \
--threads $THREADS
