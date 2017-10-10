#!/bin/bash

PEAR=/its1/GB_BT2/jianzuoyi/biosoft/anaconda/bin/pear
THREADS=16
#FQ1=/its1/GB_BT2/jianzuoyi/workspace/six_cpDNA/modules/00.QC/trimmomatic_results/chloroplast_S205_L001_R1_001.trim.fastq.gz
#FQ2=/its1/GB_BT2/jianzuoyi/workspace/six_cpDNA/modules/00.QC/trimmomatic_results/chloroplast_S205_L001_R2_001.trim.fastq.gz
#OUTBASE=merge_overlap/chloroplast_S205_L001

FQ1=/its1/GB_BT2/jianzuoyi/workspace/six_cpDNA/modules/00.QC/trimmomatic_results/chloroplast_clean_R1.trim.fastq.gz
FQ2=/its1/GB_BT2/jianzuoyi/workspace/six_cpDNA/modules/00.QC/trimmomatic_results/chloroplast_clean_R2.trim.fastq.gz
OUTBASE=merge_overlap/chloroplast_clean.trim
$PEAR --forward-fastq $FQ1 --reverse-fastq $FQ2 -o $OUTBASE --min-overlap 100 --threads $THREADS
