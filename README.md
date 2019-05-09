# AAS-Yu Han
Mid-term project for advanced applied statistics

## Data

### Abstract 

This is the fMRI data of the attention deficit hyperactivity disorder (ADHD) patients.

### Availability 

The preprocessed data set was made available by Neuro Bureau and the ADHD-200 consortium and can be downloaded from <https://www.nitrc.org/plugins/mwiki/index.php/neurobureau:AthenaPipeline>. Plus, this data set has been made to hold a data analysis competition, so descriptions and other information of the data can be found on the competition website <http://fcon_1000.projects.nitrc.org/indi/adhd200/>.

### Description 

All output from this project published online is available according to the conditions of the Creative Commons License
(https://creativecommons.org/licenses/by-nc-sa/2.0/).

The ADHD-200 Sample is a grassroots initiative, dedicated to accelerating the scientific community's understanding 
of the neural basis of ADHD through the implementation of open data-sharing and discovery-based science. Towards this goal, 
we are pleased to announce the unrestricted public release of 776 resting-state fMRI and anatomical datasets aggregated across 
8 independent imaging sites, 491 of which were obtained from typically developing individuals and 285 in children and 
adolescents with ADHD (ages: 7-21 years old). Accompanying phenotypic information includes: diagnostic status, dimensional 
ADHD symptom measures, age, sex, intelligence quotient (IQ) and lifetime medication status. Preliminary quality control 
assessments (usable vs. questionable) based upon visual timeseries inspection are included for all resting state fMRI scans.

In accordance with HIPAA guidelines and 1000 Functional Connectomes Project protocols, all datasets are anonymous, with no
protected health information included.

## Code

### Abstract

All of the data processing and analysis for this report were done in R. The corresponding code is provided to take 
exploratory data analysis on the raw data; conduct various preprocessing steps and generate descriptive plots used in the 
report.

### Description

All of the R scripts used in the report are available in a public repository on GitHub [https://github.com/hanyuisbd/AAS]. 
The MIT license applies to all code, and no permissions are required to access the code.

### Optional Information

R version 3.5.1 (2018-07-02, “Feather Spray”) was used for the analyses in this report. The
necessary R libraries for the code used for data processing and analysis are:

- readr, version 1.3.1 (https://CRAN.R-project.org/package=readr)
- ggplot2, version 3.1.0 (http://ggplot2.org)
- reshape2, version 1.4.3 (https://CRAN.R-project.org/package=reshape2)

## Instructions for Use

### Reproducibility

All data preparation and analyses are reproduced, as well as all Figures in the
report.

The general steps are:

1. Take exploratory data analysis on the raw data.
2. Conduct data processing/preparation for the analyses.
3. Detect dynamicity of covariance matrices
4. Generate all plots in the report.
