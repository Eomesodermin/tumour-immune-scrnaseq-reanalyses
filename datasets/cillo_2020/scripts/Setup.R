# pipeline variables
start.time <- Sys.time()

# Set working directory to source file location
if (!requireNamespace("here", quietly = TRUE)) install.packages("here")
setwd(here::here())   # project root; works in RStudio, knitr and Rscript

working.dir <- getwd()

# For reproducibility
set.seed(42)

# Load custom functions
source("scripts/Functions/scRNAseq_function.R", local = knitr::knit_global())


###############################
# create output directories
###############################

# Common directories 
if(!dir.exists("saves")){dir.create("saves", recursive = T)}

# scRNAseq directories
if(!dir.exists("results")){dir.create("results", recursive = T)}
if(!dir.exists("results/figures")){dir.create("results/figures", recursive = T)}
if(!dir.exists("results/tables")){dir.create("results/tables", recursive = T)}
if(!dir.exists("results/QC")){dir.create("results/QC", recursive = T)}
