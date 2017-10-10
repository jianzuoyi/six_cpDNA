#!/bin/bash

export GNUPLOT_PS_DIR=/its1/GB_BT2/jianzuoyi/workspace/barley/modules/soap_insert/Soap/gnuplot/share/gnuplot/4.4/PostScript/
cd 01.soap
perl ../soap2_insert_2.pl *.pe.gz *.se.gz 50 500
