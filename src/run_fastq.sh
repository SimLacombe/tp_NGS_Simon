 #! /bin/bash

cd ~/mydatalocal/tp_NGS_Simon

fastqc -o results/output_fastqc/ -f fastq data/*.fastq.gz

