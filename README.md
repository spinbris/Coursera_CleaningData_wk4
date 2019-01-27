# Coursera - John Hopkins University
## Getting and Cleaning Data - Week 4 Assignment

## Project Description

The purpose of this assignment is to prepare tidy data from the provided data set which can then be used for further analysis. A summary set of data is also required.

Key output documents for this assignment comprise:

  * 'run_analysis.R'   - the R script which reads data and then formats and tidies data.
  * 'all_data.txt'     - output text file containing the 'tidied' data, not summarised.
  * 'summary_data.txt' - output text file, summarised to show average data by subject, activity and signal.
  * 'README.md         - this document, which describes project approach and rationale.
  * 'Codebook.Rmd'      - RMarkdown file which generates and updates the codebooks, as below:
    + 'Codebook.md'     - markdown version
    + 'Codebook.pdf'    - pdf version
  
 
The above are all provided on this Github repo. The original data sources are also saved on repo.

## Data Set Information

### Source

This assignment uses data collected from the accelerometers from the Samsung Galaxy S smartphone as part of an experiment which is explained in detail on the following web site [(webLink)](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)


The data can be downloaded from the following site, although it is also stored in this repo. [(webLink)](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

A detailed description of the data is contained in the Codebook, filed in this repo. 


## R Code Prerequisites

Two R packages are required to run the 'run_analysis.R script:

  * tidyverse  - obviously actually quite few separate packages will load.
  * Data.table - the 'fread' function is used for file reading preference and to allow selective column loads.

In addition, the CodeBook is produced using knitR and kableExtra packages (ie in 'Codebook.Rmd' script.
