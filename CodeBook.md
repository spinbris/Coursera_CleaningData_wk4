R Markdown
----------

This is an R Markdown document which is used to automate production of a
Codebook for the following course assignment:

Coursera/ John Hopkins University - Data Getting and Cleaning Course -
Wk4 Assignment.

The code (‘Codebook.Rmd’, stored in this repo) runs the
‘run\_analysis.R’ script then prepares an updated Codebook based on then
current data and code (in run\_analysis.R script). It therefore does not
need to be run unless changes are made to the source data or R code.

The output document is stored in the repo as Codebook.pdf, and
Codebook.html.

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

    ## -- Attaching packages --------------------------------------------------- tidyverse 1.2.1 --

    ## v ggplot2 3.1.0     v purrr   0.2.5
    ## v tibble  1.4.2     v dplyr   0.7.6
    ## v tidyr   0.8.1     v stringr 1.3.1
    ## v readr   1.1.1     v forcats 0.3.0

    ## -- Conflicts ------------------------------------------------------ tidyverse_conflicts() --
    ## x dplyr::filter() masks stats::filter()
    ## x dplyr::lag()    masks stats::lag()

    ## 
    ## Attaching package: 'data.table'

    ## The following objects are masked from 'package:dplyr':
    ## 
    ##     between, first, last

    ## The following object is masked from 'package:purrr':
    ## 
    ##     transpose

‘All\_Data’ Dataframe Description
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
potentially much wider structure) is as follows:

Column Specifications
---------------------

Detailed information is contained in the CodeBook.md file.

#### Subject\_id

30 subjects were used in the original experiment. They are only
identified by a number ranging from 1-30 for test and training data.

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
