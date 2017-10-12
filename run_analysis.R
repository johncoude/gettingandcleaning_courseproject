library(dplyr)

setwd("C:/Users/john/Desktop/DataScienceSpecialization/GettingAndCleaningData/week4/CourseProject/gettingandcleaning_courseproject")

if(!file.exists("./wearable.zip")){
        download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",
               "wearable.zip")}

if(!dir.exists("./UCI HAR Dataset")){
        unzip("./wearable.zip")
}

#read the features and "clean" to make them clearer for the reader
features <- read.table("./UCI HAR Dataset/features.txt")
features$V2 <- gsub("\\()", "", features$V2)
features$V2 <- gsub("-", "_", features$V2)
features$V2 <- gsub(",", "_", features$V2)
features$V2 <- sub("^t", "TimeDomain_", features$V2)
features$V2 <- sub("^f", "FrequencyDomain_", features$V2)

#read the activity labels
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")

#read training set
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
activity_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
training_set <- cbind(X_train, activity_train, subject_train)

#read test set
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
activity_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
testing_set <- cbind(X_test, activity_test, subject_test)

#merge
full_set <- rbind(training_set, testing_set) 

#name the columns after the previously cleaned feature names, using make.unique to take care of identical 
#column names, as well as the 2 last columns activity and subject
colnames(full_set) <- c(make.unique(features$V2), "activity", "subject")
full_set$activity <- as.factor(full_set$activity)
full_set$subject <- as.factor(full_set$subject)

#change levels 1 to 6 to the levels indicated in activity_labels.txt
levels(full_set$activity) <- activity_labels$V2

#select columns containing low character mean and std, as well as activity and subject ofc
meanstd_set <- full_set %>% select(grep("mean", names(full_set)), 
                                   grep("std", names(full_set)), activity, subject)

tidy_data <- meanstd_set %>% 
        group_by(subject,activity) %>% 
        summarize_all(mean)

write.csv(tidy_data, "tidy_data.csv")
