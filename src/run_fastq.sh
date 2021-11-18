 #! /bin/bash

cd ~/mydatalocal/tp_NGS_Simon

fastqc -o results/ -f fastq data/*.fastq.gz

