#! /bin/bash

cd ~/mydatalocal/tp_NGS_Simon

SRR="SRR8257100 SRR8257106"
data_path="data/transcriptome_data/"

###Build salmon index
salmon index -t ${data_path}Arabidopsis_transcriptome.fa -i ${data_path}transcriptome_salmon_index -k 31 -p 8

###Build tgmap
bioawk -c gff '$feature=="exon" {print $9}' < ${data_path}Arabidopsis_transcriptome.gtf \
  | awk -F " " '{print substr($2,2,length($2)-3) "\t" substr($4,2,length($4)-3)}' - > ${data_path}txp2gene.tsv
  
###Run alevin
for sample in $SRR
do
salmon alevin -l ISR -1 data/sample_data/${sample}_1.fastq.gz -2 data/sample_data/${sample}_2.fastq.gz --chromium\
  -i ${data_path}transcriptome_salmon_index -p 8 -o results/output_alevin_${sample}\
  --tgMap ${data_path}txp2gene.tsv
done
