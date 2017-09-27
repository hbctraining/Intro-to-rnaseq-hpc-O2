## samtools  extras

To play around with a few `samtools` commands, first change directories into the directory containing all BAM files.

`$ cd ~/unix_workshop/rnaseq/results/STAR/bams`

### Write only mapped reads to file (filter out unmapped reads)

`$ samtools view -b -h -F 4 Mov10_oe_1_Aligned.sortedByCoord.out.bam > Mov10_oe_1_Aligned.onlyAligned.bam`

### Create a FASTQ file containing only mapped reads

`$ bamtofastq -o Mov10_oe_1_Mapped.fastq --no-unaligned Mov10_oe_1_Aligned.onlyMapped.bam`

### Index BAM file

`$ samtools index Mov10_oe_1_Aligned.sortedByCoord.out.bam`

### Extract reads from a specific region of the chromosome

`$samtools view  Mov10_oe_1_Aligned.sortedByCoord.out.bam chr1:200000-500000`

### Randomly subsample half of the reads into a new BAM file

`$ samtools view -s 0.5 -b Mov10_oe_1_Aligned.sortedByCoord.out.bam > Mov10_oe_1_subsample.bam`

### Simple stats for alignment file

`$ samtools flagstat Mov10_oe_1_Aligned.sortedByCoord.out.bam`

### Visualizing mismatches

`$ samtools view -h Mov10_oe_1_Aligned.sortedByCoord.out.bam | head -n 5 | samtools fillmd -e - ~/unix_workshop/rnaseq/reference_data/chr1.fa`

