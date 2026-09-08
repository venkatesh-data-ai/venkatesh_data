## plot results
rm(list=ls())
library(knitr)
library(ggplot2)
library(fields)
library(data.table)
library(dplyr)
library(igraph)

################################################
## load results
################################################
load("model_Thu_Mar_13_12h.RData")

################################################
## view prediction performance
################################################
kable(res)
sink("res_pred.txt")
res
sink() 

sink("res_pred_latex.txt")
kable(res, format = "latex")
sink() 

################################################
## interpretation
################################################
condexp <- "WD"
idPheno <- c("LAl.WD", "WU.WD")
### extract groups of samples 
labelsUltim = apply(mod.bllim2.tot$r, 1, which.max)
probaUltim = apply(mod.bllim2.tot$r, 1, max)
##  conditional probability for cluster affectation
boxplot(probaUltim ~ labelsUltim, main='proba. to be in each cluster')

## info samples
clusteringSamples <- cbind(labelsUltim)
colnames(clusteringSamples) <- "cluster_samples"

write.table(mod.bllim2.tot$A, "regression_coefficients.csv", sep=",", quote=FALSE, row.names=TRUE)

# Commented out as requested
# info_geno <- read.csv2("raw/Admixture_AmaizingDente_genome.csv", sep="\t")
# info_samples <- info_geno[, c("K_2", "K_3", "K_4", "K_5", "K_6", "K_7", "K_8", "K_9", "K_10")]
# rownames(info_samples) <- info_geno$Variety_ID
# inf_sple <- info_samples[rownames(tapp), ]

## get names of selected variables 
namesProtFull <- colnames(yapp[, prep_data$selected.variables])
namesProtShort <- gsub("^.{18}", "", namesProtFull)

# Commented out as requested
# annotations_mppzkeg <- read_excel("annotations_prot_mapman_plaza_KEGG.xlsx")

## box plot of response variables
pdf("boxplot_LAl.pdf")
ggplot(data.frame(pheno=tapp[,1], labels=factor(labelsUltim)), aes(labels, pheno)) +
  geom_boxplot(aes(fill = labels)) +
  theme(legend.position="none") +
  xlab("Cluster") + ylab(paste0("LAl.", condexp)) +
  coord_flip()
dev.off()

pdf("boxplot_WU.pdf")
ggplot(data.frame(pheno=tapp[,2], labels=factor(labelsUltim)), aes(labels, pheno)) +
  geom_boxplot(aes(fill = labels)) +
  theme(legend.position="none") +
  xlab("Cluster") + ylab(paste0("WU.", condexp)) +
  coord_flip()
dev.off()

## save session and final outputs
save.image(file="modified_03_plot_results.RData")
