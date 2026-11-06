# Environment Set up
rm(list = ls()) #Clean workspace
cat("\014")     #Clean Console
gc() # Free memory

###################
# Install packages
###################

pkgs <- c("remedy", "dplyr", "Seurat", "rstudioapi",
          "cowplot", "gplots", "ggplot2", "grid", "gridExtra",
          "styler", "stringr", "inlmisc", "RColorBrewer",
          "readxl", "devtools", "tidyverse", "hdf5r", "scales",
          "useful", "renv", "pROC", "ggfittext", "ggalluvial", "RVenn")

for(i in 1:length(pkgs)){
  if(!require(pkgs[i], character.only = T)){
    install.packages(pkgs[i])
    require(pkgs[i], character.only = T)
  }else{
    require(pkgs[i], character.only = T)
  }
}

pkgs <- c("gplots", 
          "pcaMethods",
          "SingleCellExperiment", "limma", "SummarizedExperiment", "glmGamPoi")


for(i in 1:length(pkgs)){
  if(!require(pkgs[i], character.only = T)){
    BiocManager::install(pkgs[i])
    require(pkgs[i], character.only = T)
  }else{
    require(pkgs[i], character.only = T)
  }
}




#####################
# Github packages
#####################

# library("devtools")

# usethis::browse_github_pat()
# usethis::edit_r_environ()
# GITHUB_PAT = ""
# R_MAX_VSIZE = 30Gb


# sctransform 
#devtools::install_github(repo = 'ChristophH/sctransform')
library("sctransform")


#####################
# Reproducibility
#####################

# Only run once to initialise 
#renv::init()

# Run snapshot to update renv.lock file 
#renv::snapshot()

# use to restore environment 
#renv::restore()






