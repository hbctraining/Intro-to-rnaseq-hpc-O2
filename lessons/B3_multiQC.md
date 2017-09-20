---
title: MultiQC
author: Radhika Khetani
date: 09/20/2017
---

Approximate time: 30 minutes

## Documenting results and gathering QC metrics

As you go through the RNA-seq workflow (or any data analysis workflow), it is important to document the parameters you are using to run the analysis, in addition it is very important to document the results at every step. This is a form of QC and it will enable you to identify any issues with the parameters you are using, presence of any contamination, any systematic biases, etc.  

With the RNA-seq workflow below are 3 important metrics to keep track of for each sample:
* number of raw reads
* percentage of reads aligned to genome
* percentage of reads associated with genes 

An important QC step is to make sure these metrics are consistent across the samples for a given experiment, and any outliers should be investigated further.

Manually tracking these metrics is tedious and prone to errors. Several tools exist that help you with the documentation and QC assessment. Some of these also have really nice visualizations to easily identify any issues, e.g. [Qualimap](http://qualimap.bioinfo.cipf.es/doc_html/index.html), [MultiQC](http://multiqc.info/). These tools have some overlap, but Qualimap is focused on count data whereas MultiQC is able to make a report from the output of many different tools (for RNA-seq analysis and other NGS workflows).

### Tracking and aggregating results from tools with *MultiQC*

Today we will be using MultiQC, which aggregates results from several tools and generates a single HTML report with plots to visualize results. This is a very useful method of not only keeping track of what is going on at each step with each sample, but more importantly it enables a graphical comparison of samples with each other.

MultiQC can generate this report from 36 different bioinformatics tools, and these tools span various NGS analyses, e.g., basic QC, RNA-seq, variant calling, genome annotation, etc. Today we are going to use it to aggregate information from the results of [FastQC](http://multiqc.info/docs/#fastqc), [STAR](http://multiqc.info/docs/#star), and [featureCounts](http://multiqc.info/docs/#featurecounts). MultiQC can parse the information from specific output files from each of these tools and the manual page specifies the required output from each of the tools that should be used as input to MultiQC.

We are going to start by creating a directory in the `~/ngs_course/rnaseq/results/` directory called `multiqc_report` and navigating to it. You should already be in the `~/ngs_course/rnaseq/` directory.

```bash
mkdir results/multiqc_report

cd results/multiqc_report
```

Next, we are going to run multiQC on the output of FastQC (zip files), STAR (.Log.final.out files) and featureCounts (the summary file).

```bash
multiqc -n multiqc_report_rnaseq \
~/ngs_course/rnaseq/results/fastqc_untrimmed_reads/*zip \
~/ngs_course/rnaseq/logs/*Log.final.out \
~/ngs_course/rnaseq/results/counts/Mov10_featurecounts.txt.summary
```

> If you did not move the log files that are output by STAR, you will have to modify the path of the 2nd input in the code above to `~/ngs_course/rnaseq/results/STAR/*Log.final.out`

> If you want to save the output on the terminal into a log file, you can use `2>` operator to redirect it to a file.

The output of multiQC is 1 HTML file and a data folder. Let's transfer the interactive HTML report over to our laptops using FileZilla and visualize the outputs of the 3 tools we used to generate the report.

The multiqc report is relatively quick to generate and provides a really clear method for comparing the samples to determine consistency, and to identify problematic samples.

---
*This lesson has been developed by members of the teaching team at the [Harvard Chan Bioinformatics Core (HBC)](http://bioinformatics.sph.harvard.edu/). These are open access materials distributed under the terms of the [Creative Commons Attribution license](https://creativecommons.org/licenses/by/4.0/) (CC BY 4.0), which permits unrestricted use, distribution, and reproduction in any medium, provided the original author and source are credited.*
