#! /bin/bash

cd ~/mydatalocal/tp_NGS_Simon

url_gtf="https://ics.hutton.ac.uk/atRTD/RTD2/AtRTD2_19April2016.gtf"
url_fa="https://ics.hutton.ac.uk/atRTD/RTD2/AtRTD2_19April2016.fa"

wget -O data/transcriptome_data/Arabidopsis_transcriptome.fa $url_fa
wget -O data/transcriptome_data/Arabidopsis_transcriptome.gtf $url_gtf
