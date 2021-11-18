if (!requireNamespace("alevinQC", quietly = TRUE))
{
  install.packages("httpuv")
  if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")
  BiocManager::install("alevinQC")
  
}

setwd("/home/rstudio/mydatalocal/tp_NGS_Simon")

alevin.path <- "results/output_alevin_"
QC.path <- "results/output_alevinQC_report"
samples <- c("SRR8257100", "SRR8257106")

for(sample in samples)
{
  alevinQCReport(baseDir = paste0(alevin.path, sample),
                 sampleId = "testSample", 
                 outputFile = paste0(QC.path, "/",sample,"_alevinReport.html"),
                 outputFormat = "html_document",
                 outputDir = tempdir(), forceOverwrite = TRUE)
}
