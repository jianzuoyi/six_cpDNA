#!/bin/bash
export PATH=/its1/GB_BT2/jianzuoyi/biosoft/mummer/bin/:/its1/GB_BT2/jianzuoyi/biosoft/gnuplot:/its1/GB_BT2/jianzuoyi/biosoft/gnuplot/bin:$PATH
mummerplot scaffold.delta.filter -R NC_034898.1.fa -Q scaffolds.cluster.fasta --postscript
