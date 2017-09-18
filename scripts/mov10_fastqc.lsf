#!/bin/bash

#BSUB -q priority 		# queue name
#BSUB -W 2:00 		# hours:minutes runlimit after which job will be killed
#BSUB -n 6 		# number of cores requested -- this needs to be greater than or equal to the number of cores you plan to use to run your job
#BSUB -J rnaseq_mov10_fastqc 		# Job name
#BSUB -o %J.out			# File to which standard out will be written
#BSUB -e %J.err 		# File to which standard err will be written

## Changing directories to where the fastq files are located
cd ~/unix_workshop/rnaseq/raw_data

## Loading modules required for script commands
module load seq/fastqc/0.11.3

## Running FASTQC
fastqc -t 6 *.fq

## Moving files to our results directory
mv *fastqc* ../results/fastqc/
