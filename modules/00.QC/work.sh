bioawk -c fastx 'length($seq)!=length($qual){print NR,"@"$name"\nseq:"$seq"\ncomment:"$comment"\nqual:"$qual}' /its1/GB_BT2/jianzuoyi/workspace/six_cpDNA/data/raw_data/chloroplast_S1_L001_R2_001.fastq.gz > /its1/GB_BT2/jianzuoyi/workspace/six_cpDNA/data/raw_data/chloroplast_S1_L001_R2_001.length.no.equal.2.fastq