#!/bin/bash

toAmos -s scaffolds.cluster.fasta -o amos.afg
minimus2 amos -D REFCOUNT=14
