# Coursera Getting and Cleaning Data - Week 4 Assignment

# load packages
library(tidyverse)
library(data.table)

# get data - commented out as not in assignment requirements
# url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
# download.file(url,"dataset.zip") 

# read data common to test and train
activity_labels <- fread("UCI HAR Dataset/activity_labels.txt")
features <- fread("UCI HAR Dataset/features.txt",stringsAsFactors = FALSE,select = 2 )

# extract feature names and indices to allow selective load of test and training data
feature_names_index <- grep("mean(\\()|std",features$V2,value = FALSE)
feature_names <- grep("mean(\\()|std",features$V2,value = TRUE)

# read test data - only those cols required
subject_test <- fread("UCI HAR Dataset/test/subject_test.txt")
x_test <-fread("UCI HAR Dataset/test/x_test.txt", select = feature_names_index)
y_test <- fread("UCI HAR Dataset/test/y_test.txt")

# read training data - only those cols required
subject_train <- fread("UCI HAR Dataset/train/subject_train.txt")
x_train <-fread("UCI HAR Dataset/train/x_train.txt", select = feature_names_index)
y_train <- fread("UCI HAR Dataset/train/y_train.txt")

# add colnames
names(x_test) <- feature_names
names(x_train) <- feature_names

# add test/train identifiers and x,y
test <- cbind(subject_id = subject_test$V1, data_set = "test",
              label_id = y_test$V1, x_test)
train <- cbind(subject_id = subject_train$V1, data_set = "train",
               label_id =y_train$V1, x_train)

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

# gather and tidy
all_data <- all_data %>%
        gather(key = signal, value = value,c(-subject_id,-activity,-date_time_id,-data_set)) %>%
        mutate(signal = str_remove(signal,"[//(][//)]")) %>%
        extract(col = "signal",into = "metric",regex = "(mean|std)",remove = FALSE)

# fix variable names by removing mean and std description from signal names add factors
all_data$variable = as.factor(str_replace_all(all_data$signal,c("-mean"="","-std"="")))
all_data$activity = as.factor(all_data$activity)

# put mean and std in separate columns, these being the measures of the various signals (using the terminology in the original README). 
# This might be flattened out further by putting mean and std of the f (frequency) and t (time)
# components - but this would depend on what further analysis is required.
# I have retained a very 'narrow/tall' structure so treating the signals as observations (so a row each)
# with mean and std being the recorded variables. Both approaches would seem to follow tidyverse principles depending on requirements
# I used narrow approach for f and t as signals are not exacty the same between f and t, so would result in NAs in places
# (ie if f/t removed from front of full feature name)
all_data <- all_data %>%
        spread(metric,value)

# summarise data - as requested and as averages of mean and std within subject,activity and variable...
summary_data <- all_data %>%
        group_by(variable,activity,subject_id) %>%
        summarise(average_mean = mean(mean),average_std = mean(std))

# write to file as csv - commented out as not specifcally requested
 write.txt(all_data,"all_data.csv")
 write.csv(summary_data,"summary_data.csv")

# clean up temp working data
rm(x_test,x_train,y_test,y_train,activity_labels,feature_names,feature_names_index,features,subject_test,subject_train,
   test,train)


