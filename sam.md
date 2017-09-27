## samtools  extras


# Write only mapped reads to file (filter out unmapped reads)

samtools view -b -h -F 4 Mov10_oe_1_Aligned.sortedByCoord.out.bam > Mov10_oe_1_Aligned.onlyAligned.bam 

# Index BAM file

samtools index Mov10_oe_1_Aligned.sortedByCoord.out.bam

# Extract reads from a specific region of the chromosome

samtools view  Mov10_oe_1_Aligned.sortedByCoord.out.bam chr1:200000-500000

# Simple stats for alignment file

samtools flagstat Mov10_oe_1_Aligned.sortedByCoord.out.bam

# Visualizing mismatches

samtools view -h Mov10_oe_1_Aligned.sortedByCoord.out.bam | head -n 5 | samtools fillmd -e - ~/unix_workshop/rnaseq/reference_data/chr1.fa

