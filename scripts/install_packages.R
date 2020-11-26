install.packages("BiocManager",lib="/home/Rlibs/")
BiocManager::install("oligo",lib="/home/Rlibs/")
BiocManager::install("oligoData",lib="/home/Rlibs/")
library(oligo,lib.loc = "/home/Rlibs/")

install.packages('https://cran.r-project.org/src/contrib/Archive/ff/ff_2.2-14.tar.gz',repos=NULL,lib="/home/Rlibs/")
.libPaths( c( .libPaths(), "/home/Rlibs") )
.libPaths()
library(BiocManager)
BiocManager::install("GEOquery",lib="/home/Rlibs/")

install.packages("dplyr",lib =  "/home/Rlibs/")
library(GEOquery,lib = "/home/Rlibs/")
install.packages("readr",lib =  "/home/Rlibs/")
library(readr,lib.loc = "/home/Rlibs/")
install.packages("tidyr",lib =  "/home/Rlibs/")
data2 <- getGEO("GSE17189", GSEMatrix =TRUE, getGPL=FALSE)
BiocManager::install("oligoData",lib="/home/Rlibs/")

library(oligoData)

install.packages("ggplot2",lib =  "/home/Rlibs/")
install.packages("withr",lib =  "/home/Rlibs/")
library(withr,lib =  "/home/Rlibs/")
library(ggplot2,lib =  "/home/Rlibs/")
install.packages("labeling",lib =  "/home/Rlibs/")
library(labeling,lib =  "/home/Rlibs/")

install.packages("farver",lib =  "/home/Rlibs/")
library(farver,lib =  "/home/Rlibs/")
systemfonts
gdtools
svglite
install.packages("gdtools",lib =  "/home/Rlibs/")
BiocManager::install("systemfonts",lib =  "/home/Rlibs/")
BiocManager::install("arrayQualityMetrics",lib =  "/home/Rlibs/")



