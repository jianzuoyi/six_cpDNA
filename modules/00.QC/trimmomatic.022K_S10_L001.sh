#!/bin/bash
set -vex

JAVA=/its1/GB_BT2/jianzuoyi/biosoft/anaconda/bin/java
TRIMMOMATIC_JAR=/its1/GB_BT2/jianzuoyi/biosoft/Trimmomatic-0.36/trimmomatic-0.36.jar
THREADS=32
FQ1=/its1/GB_BT2/jianzuoyi/workspace/six_cpDNA/data/raw_data/022K_S10_L001_R1_001.fastq.gz
FQ2=/its1/GB_BT2/jianzuoyi/workspace/six_cpDNA/data/raw_data/022K_S10_L001_R2_001.fastq.gz
OUTDIR=/its1/GB_BT2/jianzuoyi/workspace/six_cpDNA/modules/00.QC/trimmomatic_results
mkdir -p $OUTDIR

out_trim1=${OUTDIR}/$(basename $FQ1 .fastq.gz).trim.fastq.gz
out_trim2=${OUTDIR}/$(basename $FQ2 .fastq.gz).trim.fastq.gz
out_trim1_filter=${OUTDIR}/$(basename $FQ1 .fastq.gz).trim.filter.fastq.gz
out_trim2_filter=${OUTDIR}/$(basename $FQ2 .fastq.gz).trim.filter.fastq.gz
trimlog=${OUTDIR}/$(basename $FQ1 _R1_001.fastq.gz).trimlog

$JAVA -jar $TRIMMOMATIC_JAR PE -threads $THREADS -phred33 -trimlog $trimlog $FQ1 $FQ2 $out_trim1 $out_trim1_filter $out_trim2 $out_trim2_filter \
ILLUMINACLIP:/its1/GB_BT2/jianzuoyi/biosoft/Trimmomatic-0.36/adapters/TruSeq3-PE.fa:2:30:10 SLIDINGWINDOW:5:20 LEADING:5 TRAILING:5 MINLEN:50

