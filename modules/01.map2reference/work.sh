samtools sort -n -@ 4 -o chloroplast_022K_S10_L001.sim.0.90.F12.sorted.bam chloroplast_022K_S10_L001.sim.0.90.F12.bam
samtools fastq -N -1 chloroplast_022K_S10_L001.sim.0.90.F12.sorted_R1.fq -2 chloroplast_022K_S10_L001.sim.0.90.F12.sorted_R2.fq chloroplast_022K_S10_L001.sim.0.90.F12.sorted.bam
