#! /bin/bash

for fq in ~/unix_workshop/rnaseq/raw_data/*.fq
do
  
  bsub -q priority -n 6 -W 1:30 -R "rusage[mem=4000]" -J rnaseq_mov10 -o %J.out -e %J.err "sh ~/unix_workshop/rnaseq/scripts/rnaseq_analysis_on_input_file.sh $fq"
  
  sleep 1	# wait 1 second between each job submission
  
done
