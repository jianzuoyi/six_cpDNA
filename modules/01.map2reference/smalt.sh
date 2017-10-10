#!/bin/bash
set -vex
set -o pipefail

SMALT=/its1/GB_BT2/jianzuoyi/biosoft/anaconda/bin/smalt
SAMTOOLS=/its1/GB_BT2/jianzuoyi/biosoft/anaconda/bin/samtools
INDEX=/its1/GB_BT2/jianzuoyi/workspace/six_cpDNA/data/Astereae/Astereae_RefSeq.fasta
#FQ1=/its1/GB_BT2/jianzuoyi/workspace/six_cpDNA/modules/00.QC/trimmomatic_results/chloroplast_S205_L001_R1_001.trim.fastq.gz
#FQ2=/its1/GB_BT2/jianzuoyi/workspace/six_cpDNA/modules/00.QC/trimmomatic_results/chloroplast_S205_L001_R2_001.trim.fastq.gz
#FQ1=/its1/GB_BT2/jianzuoyi/workspace/six_cpDNA/data/raw_data/chloroplast/chloroplast_clean_R1.fq
#FQ2=/its1/GB_BT2/jianzuoyi/workspace/six_cpDNA/data/raw_data/chloroplast/chloroplast_clean_R2.fq
FQ1=/its1/GB_BT2/jianzuoyi/workspace/six_cpDNA/modules/00.QC/trimmomatic_results/022K_S10_L001_R1_001.trim.fastq.gz
FQ2=/its1/GB_BT2/jianzuoyi/workspace/six_cpDNA/modules/00.QC/trimmomatic_results/022K_S10_L001_R2_001.trim.fastq.gz
similarity=0.90
OUTBASE=/its1/GB_BT2/jianzuoyi/workspace/six_cpDNA/modules/01.map2reference/chloroplast_022K_S10_L001.sim.${similarity}
THREADS=32

$SMALT map -f bam -n $THREADS -i 1000 -y ${similarity} $INDEX $FQ1 $FQ2 \
| $SAMTOOLS sort -@ $THREADS -o ${OUTBASE}.bam -
$SAMTOOLS index ${OUTBASE}.bam
$SAMTOOLS view -bF 12 -o ${OUTBASE}.F12.bam ${OUTBASE}.bam
$SAMTOOLS fastq -1 ${OUTBASE}_R1.fq -2 ${OUTBASE}_R2.fq -N ${OUTBASE}.bam
