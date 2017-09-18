#!/bin/bash/

for fq in /groups/hbctraining/unix_workshop_other/full_dataset/*.fastq
 do 
   base=`basename $fq .fastq`
   bsub -q mcore -n 6 -W 1:30 -R "rusage[mem=4000]" -J $base.mov10_salmon -o %J.$base.out -e %J.$base.err \
   salmon quant -i /groups/hbctraining/unix_workshop_other/salmon.ensembl37.idx/ \
   -p 6 -l SR -r $fq --useVBOpt --numBootstraps 30 -o $base.salmon
 done
