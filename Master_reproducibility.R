#===============================================================
#  Mid-term Project for AAS 
# [Yu Han]
# May, 2019
#===============================================================

#===============================================================
# Reproducibility: MASTER script
#===============================================================

# This file contains instructions for reproducing the data, all
# analyses, and plots contained in the report.

# Download the repository from  GitHub [https://github.com/hanyuisbd/AAS].
# The following script assumes the working directory has
# been set to this folder. 

#===============================================================
# Step 0: Download the raw data and install necessary packages;
#===============================================================
## Download the raw data and decompress files into "data" folder.

## Necessary packages
library(readr)
library(reshape2)
library(ggplot2)

#===============================================================
# Step 1: Conduct data processing/preparation for the analyses.
#===============================================================

setwd("../code")
source("step1.R")

#=====================================================================================
# Step 2: Take exploratory data analysis and detect dynamicity of covariance matrices.
#=====================================================================================

setwd("../code")
source("step2.R")

# Alternatively: load data
# load("../data/sfnwmrda1000804_session_1_rest_1_cc200_TCs.csv")
# load("../data/sfnwmrda1023964_session_1_rest_1_cc200_TCs.csv")
# load("../data/sfnwmrda0010005_session_1_rest_1_cc200_TCs.csv")
# load("../data/sfnwmrda0010002_session_1_rest_1_cc200_TCs.csv")

#====================================================================
# Step 3: Generate plots to give some illustrations of dynamic models.
#====================================================================

setwd("../code")
source("step3.R")
