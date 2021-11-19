# TP NGS - scArabi - Sim Lacombe

## Introduction

The idea of this project is to analyse data from single cell sequencing of Arabidopsis root to build an atlas of cell types.

## Origin of the data 
...
- WT Protoplasts from roots
- 10X Chromium
- 3 reads per mol. (cell barcode ; gene ; manip label) ; we deleted the 3rd read

## Files
### Data
Two samples:
  - SRR8257100 = WT
  - SRR8257106 = mutant gl2 (lacks non-haired cells) and rhd6 (lacks root-haired cells)
For each sample, 2 fastq files:
  - XXX_1 = cell barcode + UMI
  - XXX_2 = Read
  
### Src

- *get_data.sh* : download the fastq data of the SRR samples
- *get_ref_transcriptome.sh* : download A. thaliana transcriptomes from "https://ics.hutton.ac.uk/atRTD" (ta, gtf)
- *run_fastqs.sh* : quality analysis of the fastq data with fastqc
- *run_multiQC.sh* : agregate the fastqc analyses into a single multidata analysis
- *alevin.sh* : runs the Alevin pipeline to build a cell-gene count matrix. 
    - See Srivastava & al. 2019 - Genome Biology (https://doi.org/10.1186/s13059-019-1670-y) for the description of the process
    - See https://salmon.readthedocs.io/en/latest/alevin.html for the implementation

- *alevinQC.r* : quality check of the alevin data