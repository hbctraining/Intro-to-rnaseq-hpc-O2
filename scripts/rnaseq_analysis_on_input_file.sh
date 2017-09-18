#!/bin/bash/

# This script takes a fastq file of RNA-Seq data, runs FastQC and outputs a counts file for it.
# USAGE: sh rnaseq_analysis_on_allfiles.sh <name of fastq file>

# initialize a variable with an intuitive name to store the name of the input fastq file

fq=$1

# grab base of filename for naming outputs

base=$(basename $fq .subset.fq)
echo "Sample name is $base"           

# specify the number of cores to use

cores=2

# directory with genome reference FASTA and index files + name of the gene annotation file

genome=/groups/hbctraining/unix_workshop_other/reference_STAR/
gtf=~/unix_workshop/rnaseq/reference_data/chr1-hg19_genes.gtf

# make all of the output directories
# The -p option means mkdir will create the whole path if it 
# does not exist and refrain from complaining if it does exist

mkdir -p ~/unix_workshop/rnaseq/results/fastqc/
mkdir -p ~/unix_workshop/rnaseq/results/STAR
mkdir -p ~/unix_workshop/rnaseq/results/counts

# set up output filenames and locations

fastqc_out=~/unix_workshop/rnaseq/results/fastqc/
align_out=~/unix_workshop/rnaseq/results/STAR/${base}_
counts_input_bam=~/unix_workshop/rnaseq/results/STAR/${base}_Aligned.sortedByCoord.out.bam
counts=~/unix_workshop/rnaseq/results/counts/${base}_featurecounts.txt

# set up the software environment

module load seq/fastqc/0.11.3
module load seq/STAR/2.5.3a
module load seq/samtools/1.3
PATH=/opt/bcbio/centos/bin:$PATH 	# for using featureCounts if not already in $PATH

echo "Processing file $fq"

# Run FastQC and move output to the appropriate folder
fastqc $fq

# Run STAR
STAR --runThreadN $cores --genomeDir $genome --readFilesIn $fq --outFileNamePrefix $align_out --outFilterMultimapNmax 10 --outSAMstrandField intronMotif --outReadsUnmapped Fastx --outSAMtype BAM SortedByCoordinate --outSAMunmapped Within --outSAMattributes NH HI NM MD AS

# Create BAM index
samtools index $counts_input_bam

# Count mapped reads
featureCounts -T $cores -s 2 -a $gtf -o $counts $counts_input_bam