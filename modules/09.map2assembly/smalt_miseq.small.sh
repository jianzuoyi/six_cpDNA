#!/bin/bash
set -vex
set -o pipefail

SMALT=/its1/GB_BT2/jianzuoyi/biosoft/anaconda/bin/smalt
SAMTOOLS=/its1/GB_BT2/jianzuoyi/biosoft/anaconda/bin/samtools
INDEX=/its1/GB_BT2/jianzuoyi/workspace/six_cpDNA/modules/11.gapfilling/Cp.assembly.v5.fasta
similarity=0.80
THREADS=32

FQ1=/its1/GB_BT2/jianzuoyi/workspace/six_cpDNA/modules/00.QC/trimmomatic_results/chloroplast_S205_L001_R1_001.trim.fastq.gz
FQ2=/its1/GB_BT2/jianzuoyi/workspace/six_cpDNA/modules/00.QC/trimmomatic_results/chloroplast_S205_L001_R2_001.trim.fastq.gz
OUTBASE=/its1/GB_BT2/jianzuoyi/workspace/six_cpDNA/modules/09.map2assembly/v5.chloroplast_S205_L001.sim.${similarity}

$SMALT map -f bam -n $THREADS -i 1000 -y ${similarity} $INDEX $FQ1 $FQ2 | $SAMTOOLS sort -n -@ $THREADS -o ${OUTBASE}.bam -
$SAMTOOLS view -bF 12 -o ${OUTBASE}.F12.bam ${OUTBASE}.bam
$SAMTOOLS fastq -1 ${OUTBASE}.F12_R1.fq -2 ${OUTBASE}.F12_R2.fq -N ${OUTBASE}.F12.bam
