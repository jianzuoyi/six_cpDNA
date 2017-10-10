#blastn -query scaffolds.cluster.fasta -subject NC_034898.1.fasta -outfmt 6 -qcov_hsp_perc 10 -out blastn.out
#blastn -query scaffolds.cluster.fasta -subject NC_034898.1.fasta -outfmt 6 -qcov_hsp_perc 1 -out blastn.out
blastn -query scaffolds.cluster.fasta -subject NC_034898.1.fasta -outfmt 6 -out blastn.out
awk '{if (($9>$10)) {tmp=$9;$9=$10;$10=tmp}{print $0}}' OFS='\t' blastn.out | sort -k9,9n > blastn.out.sorted
blastn -query scaffolds.cluster.fasta -subject scaffolds.cluster.fasta -outfmt 6 | awk '$1!=$2' > blastn.all_vs_all.m6
