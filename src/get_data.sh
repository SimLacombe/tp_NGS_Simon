#! /bin/bash

cd ~/mydatalocal/tp_NGS_Simon
srr="SRR8257100 SRR8257106" #SRR files (WT, mutant)

for sample in $srr #get data
do
  echo $sample
  parallel-fastq-dump --sra-id $sample \
    --threads 8 --outdir data/ \
    --split-files --gzip 
done