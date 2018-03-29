#! /bin/bash

for fq in ~/unix_lesson/rnaseq/raw_data/*.fq
do

sbatch -p short -t 0-2:00 -n 6 --job-name rnaseq-workflow --wrap="sh ~/unix_lesson/rnaseq/scripts/rnaseq_analysis_on_input_file.sh $fq"
sleep 1	# wait 1 second between each job submission
  
done
