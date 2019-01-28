Coursera - John Hopkins University
==================================

Getting and Cleaning Data - Week 4 Assignment
---------------------------------------------

Project Description
-------------------

### Overview

The purpose of this assignment is to prepare tidy data from the provided
data set which can then be used for further analysis. A summary set of
data is also required.

Key output documents for this assignment comprise:

-   ‘run\_analysis.R’ - the R script which reads data and then formats
    and tidies data.
-   ‘all\_data.txt’ - output text file containing the ‘tidied’ data, not
    summarised.
-   ‘summary\_data.txt’ - output text file, summarised to show average
    data by subject, activity and signal.
-   ’README.md - this document, which describes project approach and
    rationale.
-   ‘Codebook.Rmd’ - RMarkdown file which generates and updates the
    codebooks, as below:
    -   ‘Codebook.md’ - markdown version
    -   ‘Codebook.pdf’ - pdf version

The above are all provided on this Github repo. The original data
sources are also saved on repo.

### R Code Prerequisites

Two R packages are required to run the ’run\_analysis.R script:

-   tidyverse - obviously actually quite a few separate packages will
    load.
-   Data.table - the ‘fread’ function is used for file reading
    preference and to allow selective column loads.

In addition, the CodeBook is produced using knitR and kableExtra
packages (ie in ‘Codebook.Rmd’ script).

### Summary Output

#### All\_data dataframe

For information, first 6 rows of ‘all\_data’ dataframe are as follows:

<table>
<thead>
<tr class="header">
<th style="text-align: right;">subject_id</th>
<th style="text-align: left;">activity</th>
<th style="text-align: right;">date_time_id</th>
<th style="text-align: left;">data_set</th>
<th style="text-align: left;">signal</th>
<th style="text-align: right;">mean</th>
<th style="text-align: right;">std</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: right;">1</td>
<td style="text-align: left;">LAYING</td>
<td style="text-align: right;">1</td>
<td style="text-align: left;">train</td>
<td style="text-align: left;">fBodyAcc-X</td>
<td style="text-align: right;">-0.9263140</td>
<td style="text-align: right;">-0.9103749</td>
</tr>
<tr class="even">
<td style="text-align: right;">1</td>
<td style="text-align: left;">LAYING</td>
<td style="text-align: right;">1</td>
<td style="text-align: left;">train</td>
<td style="text-align: left;">fBodyAcc-Y</td>
<td style="text-align: right;">-0.8869485</td>
<td style="text-align: right;">-0.9056274</td>
</tr>
<tr class="odd">
<td style="text-align: right;">1</td>
<td style="text-align: left;">LAYING</td>
<td style="text-align: right;">1</td>
<td style="text-align: left;">train</td>
<td style="text-align: left;">fBodyAcc-Z</td>
<td style="text-align: right;">-0.9287921</td>
<td style="text-align: right;">-0.8810446</td>
</tr>
<tr class="even">
<td style="text-align: right;">1</td>
<td style="text-align: left;">LAYING</td>
<td style="text-align: right;">1</td>
<td style="text-align: left;">train</td>
<td style="text-align: left;">fBodyAccJerk-X</td>
<td style="text-align: right;">-0.9491758</td>
<td style="text-align: right;">-0.9502229</td>
</tr>
<tr class="odd">
<td style="text-align: right;">1</td>
<td style="text-align: left;">LAYING</td>
<td style="text-align: right;">1</td>
<td style="text-align: left;">train</td>
<td style="text-align: left;">fBodyAccJerk-Y</td>
<td style="text-align: right;">-0.8980041</td>
<td style="text-align: right;">-0.9036754</td>
</tr>
<tr class="even">
<td style="text-align: right;">1</td>
<td style="text-align: left;">LAYING</td>
<td style="text-align: right;">1</td>
<td style="text-align: left;">train</td>
<td style="text-align: left;">fBodyAccJerk-Z</td>
<td style="text-align: right;">-0.9729599</td>
<td style="text-align: right;">-0.9824606</td>
</tr>
</tbody>
</table>

### Summary\_Data dataframe

<table>
<thead>
<tr class="header">
<th style="text-align: left;">signal</th>
<th style="text-align: left;">activity</th>
<th style="text-align: right;">subject_id</th>
<th style="text-align: right;">average_mean</th>
<th style="text-align: right;">average_std</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">fBodyAcc-X</td>
<td style="text-align: left;">LAYING</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">-0.9390991</td>
<td style="text-align: right;">-0.9244374</td>
</tr>
<tr class="even">
<td style="text-align: left;">fBodyAcc-X</td>
<td style="text-align: left;">LAYING</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">-0.9767251</td>
<td style="text-align: right;">-0.9732465</td>
</tr>
<tr class="odd">
<td style="text-align: left;">fBodyAcc-X</td>
<td style="text-align: left;">LAYING</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">-0.9806656</td>
<td style="text-align: right;">-0.9836911</td>
</tr>
<tr class="even">
<td style="text-align: left;">fBodyAcc-X</td>
<td style="text-align: left;">LAYING</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">-0.9588021</td>
<td style="text-align: right;">-0.9524649</td>
</tr>
<tr class="odd">
<td style="text-align: left;">fBodyAcc-X</td>
<td style="text-align: left;">LAYING</td>
<td style="text-align: right;">5</td>
<td style="text-align: right;">-0.9687417</td>
<td style="text-align: right;">-0.9649539</td>
</tr>
<tr class="even">
<td style="text-align: left;">fBodyAcc-X</td>
<td style="text-align: left;">LAYING</td>
<td style="text-align: right;">6</td>
<td style="text-align: right;">-0.9391143</td>
<td style="text-align: right;">-0.9324629</td>
</tr>
</tbody>
</table>

Data Set Information
--------------------

### Source

This assignment uses data collected from the accelerometers from the
Samsung Galaxy S smartphone as part of an experiment which is explained
in detail on the following web site
[(webLink)](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

The data can be downloaded from the following site, although it is also
stored in this repo.
[(webLink)](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

### Overview of Original Data

The original data was produced from an experiment ‘Human Activity
Recognition Using Smartphones Dataset’[1]

An overview of the experiment as provided by the related README.txt
(which is also contained in the repo for this assignment) is:

“The experiments have been carried out with a group of 30 volunteers
within an age bracket of 19-48 years. Each person performed six
activities (WALKING, WALKING\_UPSTAIRS, WALKING\_DOWNSTAIRS, SITTING,
STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the
waist. Using its embedded accelerometer and gyroscope, we captured
3-axial linear acceleration and 3-axial angular velocity at a constant
rate of 50Hz. The experiments have been video-recorded to label the data
manually. The obtained dataset has been randomly partitioned into two
sets, where 70% of the volunteers was selected for generating the
training data and 30% the test data.”

A detailed description of the data is contained in the Codebook, filed
in this repo.

A rationale for using the above as a ‘tidy’ structure for the assignment
is detailed in the CodeBook

Structure of analysis
---------------------

### Input Files

Key data input files sourced from the original data source are as
follows:

-   ‘features.txt’ - List of all features.
-   ‘activity\_labels.txt’ - Links the class labels with their activity
    name.
-   ‘train/X\_train.txt’ - Training set.
-   ‘train/y\_train.txt’ - Training labels.
-   ‘train/subject\_train.txt’- subject\_ids for each row of train set.
-   ‘test/X\_test.txt’ - Test set.
-   ‘test/y\_test.txt’ - Test labels.
-   ‘test/subject\_test.txt’ - subject\_ids for each row if test set.

The other key files used to document the original experiment data sets
are:

-   ‘README.md’ file - overview of experiment and related data files
-   ‘features\_info.txt’ - Shows information about the variables used on
    the feature vector.

### Structure of

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge
L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a
Multiclass Hardware-Friendly Support Vector Machine. International
Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz,
Spain. Dec 2012
