#!/bin/bash

PEAR=/its1/GB_BT2/jianzuoyi/biosoft/anaconda/bin/pear
THREADS=16

#FQ1=chloroplast_S205_L001.sim.0.90.F12_1.fq
#FQ2=chloroplast_S205_L001.sim.0.90.F12_2.fq
#OUTBASE=chloroplast_S205_L001.sim.0.90.F12

FQ1=chloroplast_clean.sim.0.90.F12_R1.fq
FQ2=chloroplast_clean.sim.0.90.F12_R2.fq
OUTBASE=chloroplast_clean.sim.0.90.F12

$PEAR --forward-fastq $FQ1 --reverse-fastq $FQ2 -o $OUTBASE --min-overlap 100 --threads $THREADS

