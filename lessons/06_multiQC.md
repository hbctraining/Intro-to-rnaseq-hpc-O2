---
title: MultiQC
author: Radhika Khetani
---

Approximate time: 30 minutes

## Documenting results and gathering QC metrics

As you go through the RNA-seq workflow (or any data analysis workflow), it is important to document the parameters you are using to run the analysis, in addition it is very important to document the results at every step, or some metric that speaks to the results. Evaluating these is a form of QC and it will enable you to identify any issues with the data and/or the parameters you are using, as well as alert you to the presence of contamination or systematic biases, etc.  

With the RNA-seq workflow there are several metrics that you can evaluate, but below are 3 important one that you should keep track of for each sample:
* number of raw reads
* percentage of reads aligned to genome
* percentage of reads associated with genes 

An important QC step is to make sure these metrics are consistent across the samples for a given experiment, and any outliers should be investigated further.

Manually tracking these metrics is tedious and prone to errors. Several tools exist that help you with the documentation and QC assessment. Some of these also have really nice visualizations to easily identify any issues, e.g. [Qualimap](http://qualimap.bioinfo.cipf.es/doc_html/index.html), [MultiQC](http://multiqc.info/). These tools have some overlap, but Qualimap is focused on count data whereas MultiQC is able to make a report from the output of many different tools (for RNA-seq analysis and other NGS workflows) and is a little simpler to use.

### Tracking and aggregating results from workflow tools with *MultiQC*

Today we will be using MultiQC, which aggregates results from several tools and generates a single HTML report with plots to visualize and compare various QC metrics between the samples.

MultiQC can generate this report from 36 different bioinformatics tools, and these tools span various NGS analyses, e.g., basic QC, RNA-seq, variant calling, genome annotation, etc. Today we are going to use it to aggregate information from the results of [FastQC](http://multiqc.info/docs/#fastqc), [STAR](http://multiqc.info/docs/#star), and [featureCounts](http://multiqc.info/docs/#featurecounts). MultiQC can parse the information from specific output files from each of these tools and the manual page specifies the required output from each of the tools that should be used as input to MultiQC.

We are going to start by creating a directory in the `~/unix_lesson/rnaseq/results/` directory called `multiqc_report`, and navigating to it. You should already be in the `~/unix_lesson/rnaseq/` directory.

```bash
mkdir results/multiqc_report

cd results/multiqc_report
```

Next, we are going to run multiQC on the following 3 outputs from our workflow:

* `.zip` files from FastQC
* `.Log.final.out` files from STAR
* `.summary` file from featurecounts

> Note that `multiqc` is not a module on O2 and we will be using the version in `/n/app/bcbio/tools/bin/`, which is in our `$PATH`.

Before we run it, we need to populate the `~/unix_lesson/rnaseq/logs` directory with the `*.Log.final.out` files for all 6 STAR runs:
```bash
cp /n/groups/hbctraining/intro_rnaseq_hpc/bam_STAR/*Log.final.out ~/unix_lesson/rnaseq/logs/
```

Now, let's run multiQC!

```bash
multiqc -n multiqc_report_rnaseq \
~/unix_lesson/rnaseq/results/fastqc/*zip \
~/unix_lesson/rnaseq/logs/*Log.final.out \
~/unix_lesson/rnaseq/results/counts/Mov10_featurecounts.txt.summary
```

> If you want to save the output on the terminal into a log file, you can use `2>` operator to redirect it to a file.

The output of multiQC is 1 HTML file and a data folder. Let's transfer the interactive HTML report over to our laptops using FileZilla and visualize the outputs of the 3 tools we used to generate the report.

The multiQC report is relatively quick to generate and provides a really clear method for comparing the samples to determine consistency, and to identify problematic samples.

---
*This lesson has been developed by members of the teaching team at the [Harvard Chan Bioinformatics Core (HBC)](http://bioinformatics.sph.harvard.edu/). These are open access materials distributed under the terms of the [Creative Commons Attribution license](https://creativecommons.org/licenses/by/4.0/) (CC BY 4.0), which permits unrestricted use, distribution, and reproduction in any medium, provided the original author and source are credited.*
