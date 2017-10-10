#!/bin/bash
set -vex

# ---------------------------------------------------------------------------------------------------
# Author: Zuoyi Jian
# Email: jianzuoyi@qq.com
# Version: 1.0    Date: 2017-07-13
# ---------------------------------------------------------------------------------------------------
SH=$(pwd)/run_bwt.sh
BWT=/its1/GB_BT2/jianzuoyi/workspace/barley/modules/soap_insert/Soap/soap2.21release/2bwt-builder
GENOME=00.index/scaffolds.S205_clean.cluster.fasta

$BWT $GENOME
touch ${SH}.done
