# TP NGS - scArabi - Sim Lacombe

## Introduction

The idea of this project is to analyse data from single cell sequencing of Arabidopsis root to build an atlas of cell types.   

## Origin of the data 

- WT Protoplasts from roots
- 10X Chromium
- 3 reads per mol. (cell barcode ; gene ; manip label) ; we deleted the 3rd read

## Files
### Data
Two samples:
  - SRR8257100 $\rightarrow$ WT
  - SRR8257106 $\rightarrow$ mutant gl2
for each sample, 2 fastq files:
  - XXX_1
### Src

- get_data.sh : script to download SRR data