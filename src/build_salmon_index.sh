#! /bin/bash

cd ~/mydatalocal/tp_NGS_Simon

salmon index -t data/Arabidopsis_transcriptome.fa -i data/transcriptome_salmon_index -k 31 -p 8