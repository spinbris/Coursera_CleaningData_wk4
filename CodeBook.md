Introduction
------------

This is the CodeBook for the following course assignment:

Coursera/ John Hopkins University - Data Getting and Cleaning Course -
Wk4 Assignment.

The R Markdown script (‘CodeBook.Rmd’, stored in this repo) runs the
‘run\_analysis.R’ script then prepares an updated CodeBook based on then
current data and code (in run\_analysis.R script). It therefore does not
need to be run unless changes are made to the source data or R code.

The output document is stored in the repo as CodeBook.pdf, and
CodeBook.html.

This document is intended to satisfy Review Criteria 3 of the
assignment. An Rmd file is beng used so as to automate the process for
ease of update, but also to meet Review Criteria 3 seems to suggest it
should be done that way by stating:

“GitHub contains a code book that modifies and updates the available
codebooks with the data to indicate all the variables and summaries
calculated, along with units, and any other relevant information.”

Run run\_analysis.R code
------------------------

The following code runs the analysis R script ‘run\_analysis.R’

‘all\_data’ Dataframe Description
---------------------------------

This dataframe is the full ‘tidied’ version of the data.

Structure is summarised below:

<table>
<thead>
<tr class="header">
<th></th>
<th style="text-align: left;">Length</th>
<th style="text-align: left;">Class</th>
<th style="text-align: left;">Mode</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>subject_id</td>
<td style="text-align: left;">339867</td>
<td style="text-align: left;">-none-</td>
<td style="text-align: left;">numeric</td>
</tr>
<tr class="even">
<td>activity</td>
<td style="text-align: left;">339867</td>
<td style="text-align: left;">factor</td>
<td style="text-align: left;">numeric</td>
</tr>
<tr class="odd">
<td>date_time_id</td>
<td style="text-align: left;">339867</td>
<td style="text-align: left;">-none-</td>
<td style="text-align: left;">numeric</td>
</tr>
<tr class="even">
<td>data_set</td>
<td style="text-align: left;">339867</td>
<td style="text-align: left;">-none-</td>
<td style="text-align: left;">character</td>
</tr>
<tr class="odd">
<td>signal</td>
<td style="text-align: left;">339867</td>
<td style="text-align: left;">factor</td>
<td style="text-align: left;">numeric</td>
</tr>
<tr class="even">
<td>mean</td>
<td style="text-align: left;">339867</td>
<td style="text-align: left;">-none-</td>
<td style="text-align: left;">numeric</td>
</tr>
<tr class="odd">
<td>std</td>
<td style="text-align: left;">339867</td>
<td style="text-align: left;">-none-</td>
<td style="text-align: left;">numeric</td>
</tr>
</tbody>
</table>

For clarity, first 6 rows of data frame are as follows:

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

The above tables clearly show that the ‘tidied’ data is structured in a
‘long/ narrow’ format. The rationale for this approach (as opposed to a
potentially much wider structure) is explained in more detail in the
README file for this repo.

Transformations - run\_analysis.R
---------------------------------

The ‘run\_analysis.R’ script handles all data loading, processing and
output, as described in the following paragraphs:

#### Load Packages

    # load packages
    library(tidyverse)
    library(data.table)

-   tidyverse is used for transformations
-   data.table is used for data loads (fread)

#### Read Activity Labels and features

    # read data common to test and train
    activity_labels <- fread("UCI HAR Dataset/activity_labels.txt")
    features <- fread("UCI HAR Dataset/features.txt",stringsAsFactors = FALSE,select = 2 )

    # extract feature names and indices to allow selective load of test and training data
    feature_names_index <- grep("mean(\\()|std",features$V2,value = FALSE)
    feature_names <- grep("mean(\\()|std",features$V2,value = TRUE)

The ‘feature\_names\_index’ and ‘feature\_names’ are extracted for just
‘mean’ and ‘std’ variables so they can then be used to limit the load of
the dataset. This is done as the Assignment requires only mean and std
data to be included in the final tidied dataset.

#### Read Test and Training Datasets as well as labels

    # read test data - only those cols required
    subject_test <- fread("UCI HAR Dataset/test/subject_test.txt")
    x_test <-fread("UCI HAR Dataset/test/x_test.txt", select = feature_names_index)
    y_test <- fread("UCI HAR Dataset/test/y_test.txt")

    # read training data - only those cols required
    subject_train <- fread("UCI HAR Dataset/train/subject_train.txt")
    x_train <-fread("UCI HAR Dataset/train/x_train.txt", select = feature_names_index)
    y_train <- fread("UCI HAR Dataset/train/y_train.txt")

-   ‘x\_test’ and ‘x\_train’ text contain data for test and training
    data sets while y\_test and y\_train contain activity labels (ie a
    1-6 number for each row in the test and train datasets
    respectively).
-   ‘subject\_test’ and ‘subject\_train’ contain subject labels (a 1-30
    number for each row in the test and train datasets respectively)

The ‘select’ option in the fread function limits the columns selected to
the mean and std measures as per previous step.

#### Add column names to test and train datasets

    # add colnames
    names(x_test) <- feature_names
    names(x_train) <- feature_names

    # add test/train identifiers and x,y
    test <- cbind(subject_id = subject_test$V1, data_set = "test",
                  label_id = y_test$V1, x_test)
    train <- cbind(subject_id = subject_train$V1, data_set = "train",
                   label_id =y_train$V1, x_train)

An additional column has also been added to identify which data source
row came from (test or train). This was not specified in Assignment
requirements but helps to maintain an audit train back to source data,
and does impede further analysis.

#### Combine test and train datasets

    # combine train and test and reorder cols
    all_data <- rbind(test,train) %>%
            inner_join(activity_labels, by=c("label_id" = "V1")) %>%
            select(subject_id,activity = V2, everything()) %>%
            select(-label_id)

    # add a proxy sequence for the date_time_id, within subject,data set type, activity
    #  - not specifically requested but does no harm and leaves an audit trail back to original data
    all_data <- all_data %>%
            group_by(data_set,subject_id,activity) %>%
            mutate(date_time_id = row_number())%>%
            select(subject_id, activity ,date_time_id,everything()) %>%
            ungroup()

The date/time identifier is also not specifically required but does also
help with audit trail.

Data is now in one ‘all\_data’ dataset

#### Gather data into Required Columns and Tidy Names

    # gather and tidy
    all_data <- all_data %>%
            gather(key = signal, value = value, c(-subject_id, -activity, -date_time_id, -data_set)) %>%
            mutate(signal = str_remove(signal,"[//(][//)]")) %>%
            extract(col = "signal",into = "metric",regex = "(mean|std)",remove = FALSE)

    # fix variable names by removing mean and std description from signal names add factors
    all_data$signal = as.factor(str_replace_all(all_data$signal,c("-mean"="","-std"="")))
    all_data$activity = as.factor(all_data$activity)

    # put mean and std in separate columns, these being the measures of the various signals
    all_data <- all_data %>%
            spread(metric,value)

This step structures the data into the selected ‘tidy’ data structure,
and removes reference to mean and std in the ‘signal’ descriptions
column

AS discussed in the ‘Tidy’ structure section:

-   The ‘signals’ have not been parsed further as the variables are
    considered to be the mean and standard deviation (std), while the
    observations are the signals. This structure then already meets
    ‘tidy data’ requirements (although a wider structure will also
    probably meet those requirements)
-   the signals are as defined. I am not a subject matter expert so have
    no reason to break the signals into their component parts,for
    example by extacting ‘f’ and ‘t’ components into separate columns
    for the meand and std measures. Doing so, would also introduce NULL
    components, as ‘f’ and ‘t’ signals are not identical.
-   the Summary Analysis required can be easily accomplished with the
    data in this structure, so there is no reason to complicate the code
    further. I may have reconsidered if I knew what any further analysis
    might be, so could perhaps judge if another structure is more
    appropriate. I do not have that information however.

#### Prepare Summary Analysis and write output to file

    # summarise data - as requested and as averages of mean and std within subject,activity and signal...
    summary_data <- all_data %>%
            group_by(signal,activity,subject_id) %>%
            summarise(average_mean = mean(mean),average_std = mean(std))

    # write to file as txt 
     write_tsv(all_data,"all_data.txt")
     write_tsv(summary_data,"summary_data.txt")

Column Specifications
---------------------

#### Subject\_id

30 subjects were used in the original experiment. They are only
identified by a number (integer) ranging from 1-30 for both test and
training data, subsequently joined.

#### Activity

<table>
<thead>
<tr class="header">
<th style="text-align: left;">Activity</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">LAYING</td>
</tr>
<tr class="even">
<td style="text-align: left;">SITTING</td>
</tr>
<tr class="odd">
<td style="text-align: left;">STANDING</td>
</tr>
<tr class="even">
<td style="text-align: left;">WALKING</td>
</tr>
<tr class="odd">
<td style="text-align: left;">WALKING_DOWNSTAIRS</td>
</tr>
<tr class="even">
<td style="text-align: left;">WALKING_UPSTAIRS</td>
</tr>
</tbody>
</table>

Description of each column, and rationale for use is as follows:

-   subject\_id -
