#!/bin/bash

SPAdes=/its1/GB_BT2/jianzuoyi/biosoft/SPAdes-3.11.0-Linux/bin/spades.py
THREADS=20

$SPAdes \
--pe1-s /its1/GB_BT2/jianzuoyi/data/Assembly/Aztecaster_matudae/1/Aztecaster_matudae_R1_cpmap.fastq.gz \
--pe1-s /its1/GB_BT2/jianzuoyi/data/Assembly/Aztecaster_matudae/1/Aztecaster_matudae_R2_cpmap.fastq.gz \
-o /its1/GB_BT2/jianzuoyi/biosoft/SPAdes-3.11.0-Linux/test/Aztecaster_matudae/out_dir \
--careful \
-t $THREADS
