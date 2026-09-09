## run methods on formatted data
rm(list=ls())

################################################
## packages
################################################
library(mclust) 
library(devtools)
library(ggplot2) # for results visualisation
library(RColorBrewer)
library(fields)
library(igraph)
library(knitr)
library(data.table)
library(mixOmics)
library(readr)
library(dplyr)
devtools::install_github("epertham/xLLiM",ref="master",force=TRUE, build=FALSE)
devtools::source_url("https://raw.githubusercontent.com/epertham/xLLiM/master/R/Kfoldcv_xllim.R")
devtools::source_url("https://raw.githubusercontent.com/epertham/xLLiM/master/R/createFolds_xllim.R")
library(xLLiM)

## set seed
set.seed(388)

load("datatapp.RData")

## extract datasets sizes
N <- dim(yapp)[1]
L <- dim(tapp)[2]
D <- dim(yapp)[2]
print(paste0("we have N=",N," observations ;
             L=",L," phenotypes ; D=",D," prot. abundances"))
flush.console()

Kmax <- 3
BICvector <- rep(NA,Kmax)
for(theK in 1:Kmax){
  print(theK)
  flush.console()
  prep_data <- preprocess_data(tapp,yapp,in_K = theK,alpha= 0.7,nfolds = 50, grouped = FALSE)
  mod.bllim2.tot <- bllim(t(tapp), t(yapp[,prep_data$selected.variables]), 
                          in_K=theK,maxiter=100, in_r=list(R=prep_data$clusters),
                          plot=FALSE,verb=1)
  BICvector[theK] <- - 2 * mod.bllim2.tot$LLf + mod.bllim2.tot$nbpar*log(N) 
}
plot(1:Kmax,BICvector,lwd=2,lty=4,type="l")
Kbic <- which.min(BICvector)
flush.console()

kfc <- 10
Bc <- 1
#### Prediction by the mean
p.mean <- Kfoldcv_xllim(yapp,tapp,func = xLLiM:::mean_cv,Kfold=kfc,B=Bc,verb = FALSE)
flush.console()

## Train BLLiM under both Independence & Block Structures
print("Starting BLLiM Training...")
flush.console()
p.bllim2_indep <- bllim(t(tapp), t(yapp), in_K=Kbic, maxiter=50, in_r=NULL, verb=1, plot=FALSE)
print(" BLLiM (Independence) Completed!")
flush.console()

p.bllim2_block <- bllim(t(tapp), t(yapp), in_K=Kbic, maxiter=50, in_r=NULL, verb=1, plot=FALSE)
print("BLLiM (Block) Completed!")
flush.console()

## Train GLLiM under both Independence & Block Structures
print("Starting GLLiM Training...")
flush.console()
p.gllim_indep <- Kfoldcv_xllim(yapp, tapp, func = xLLiM:::gllim_cv, Kfold=kfc, B=Bc, 
                               K=Kbic, alpha = 0.7, nfolds = 50, verb = FALSE, grouped = FALSE)
print("GLLiM (Independence) Completed!")
flush.console()

p.gllim_block <- Kfoldcv_xllim(yapp, tapp, func = xLLiM:::gllim_cv, Kfold=kfc, B=Bc, 
                               K=Kbic, alpha = 0.7, nfolds = 50, verb = FALSE, grouped = TRUE)
print("GLLiM (Block) Completed!")
flush.console()

## Save models for later evaluation
save(p.bllim2_indep, p.bllim2_block, p.gllim_indep, p.gllim_block, file="bllim_gllim_results.RData")
print("BLLiM & GLLiM training completed successfully!")
flush.console()

#### sPLS mixomics
p.pls <- Kfoldcv_xllim(yapp,tapp,func = xLLiM:::mixOmics_cv,Kfold=kfc,B=Bc,verb = FALSE)
### SVM
p.svm <- Kfoldcv_xllim(yapp,tapp,func = xLLiM:::svm_cv,Kfold=kfc,B=Bc,verb = FALSE)
### RF
p.rf <- Kfoldcv_xllim(yapp,tapp,func = xLLiM:::randomForest_cv,Kfold=kfc,B=Bc,verb = FALSE)
## MARS
p.mars <- Kfoldcv_xllim(yapp,tapp,func = xLLiM:::mars_cv,Kfold=kfc,B=Bc,verb = FALSE)
flush.console()

## Final tables
res <- rbind(
  colMeans((p.mean[[1]] - tapp)^2),
  apply((p.mean[[1]] - tapp)^2,2,sd),
  colMeans((p.mars[[1]] - tapp)^2),
  apply((p.mars[[1]] - tapp)^2,2,sd),
  colMeans((p.bllim2_indep[[1]] - tapp)^2),
  apply((p.bllim2_indep[[1]] - tapp)^2,2,sd),
  colMeans((p.pls[[1]] - tapp)^2),
  apply((p.pls[[1]] - tapp)^2,2,sd),
  colMeans((p.svm[[1]] - tapp)^2),
  apply((p.svm[[1]] - tapp)^2,2,sd),
  colMeans((p.rf[[1]] - tapp)^2),
  apply((p.rf[[1]] - tapp)^2,2,sd))
flush.console()

## format results
row.names(res) = c("mean mean","mean sd",
                   'MARS mean','MARS sd', 
                   "BLLiM mean","BLLiM sd",
                   'PLS mean','PLS sd',
                   'SVM mean','SVM sd',
                   'RF mean',"RF sd")

prep_data <- preprocess_data(tapp,yapp,in_K = Kbic,alpha= 0.7,nfolds = 50, grouped = FALSE)
mod.bllim2.tot <- bllim(t(tapp), t(yapp[,prep_data$selected.variables]), 
                        in_K=Kbic,maxiter=50, in_r=list(R=prep_data$clusters),
                        plot=FALSE,verb=1)
flush.console()

save.image(file=paste0("model_",format(Sys.time(), "%a_%b_%d_%Hh"),".RData"))
sI <- sessionInfo()
sink(paste0("sessionInfo_",format(Sys.time(), "%a_%b_%d_%Hh"),"bllim_analysis.txt"))
sI
sink() 
flush.console()
