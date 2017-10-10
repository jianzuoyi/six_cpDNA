#!/bin/bash

mkdir -p QC_results
#FQ1=/its1/GB_BT2/jianzuoyi/workspace/six_cpDNA/data/raw_data/chloroplast_S1_L001_R1_001.fastq.gz
#FQ2=/its1/GB_BT2/jianzuoyi/workspace/six_cpDNA/data/raw_data/chloroplast_S1_L001_R2_001.fastq.gz
#FQ1=/its1/GB_BT2/jianzuoyi/workspace/six_cpDNA/data/raw_data/chloroplast/bwa_mapping/chloroplast_clean_R1.fq
#FQ2=/its1/GB_BT2/jianzuoyi/workspace/six_cpDNA/data/raw_data/chloroplast/bwa_mapping/chloroplast_clean_R2.fq
#FQ1=trimmomatic_results/chloroplast_clean_R1.trim.fastq.gz
#FQ2=trimmomatic_results/chloroplast_clean_R2.trim.fastq.gz
FQ1=/its1/GB_BT2/jianzuoyi/workspace/six_cpDNA/modules/00.QC/trimmomatic_results/022K_S10_L001_R1_001.trim.fastq.gz
FQ2=/its1/GB_BT2/jianzuoyi/workspace/six_cpDNA/modules/00.QC/trimmomatic_results/022K_S10_L001_R2_001.trim.fastq.gz

fastqc -o QC_results -t 4 $FQ1
fastqc -o QC_results -t 4 $FQ2
