 #! /bin/bash

cd ~/mydatalocal/tp_NGS_Simon

fastqc -o data/output_fastqc -f fastq data/*.fastq.gz

