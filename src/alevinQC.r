if (!requireNamespace("alevinQC", quietly = TRUE))
{
  install.packages("httpuv")
  if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")
  BiocManager::install("alevinQC")
  
}
library(alevinQC)

setwd("/home/rstudio/mydatalocal/tp_NGS_Simon")

alevin.path <- "results/output_alevin_"
QCreport.path <- "results/alevinQC_report"
samples <- c("SRR8257100", "SRR8257106")

for(sample in samples)
{
  alevinQCReport(baseDir = paste0(alevin.path, sample),
                 sampleId = sample, 
                 outputFile = paste0(QCreport.path, "/",sample,"_alevinReport.html"),
                 outputFormat = "html_document",
                 forceOverwrite = TRUE)
}
