#! /bin/bash

cd ~/mydatalocal/tp_NGS_Simon

SRR="SRR8257100 SRR8257106"


salmon index -t data/Arabidopsis_transcriptome.fa -i data/transcriptome_salmon_index -k 31 -p 8
for sample in $SRR
do
salmon alevin -l ISR -1 data/${sample}_1.fastq.gz -2 data/${sample}_2.fastq.gz --chromium\
  -i data/transcriptome_salmon_index -p 8 -o results/output_alevin\
  --tgmap XXX
done
