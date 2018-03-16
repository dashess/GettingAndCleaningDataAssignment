# Assignment Getting and Cleaning Data
# 1. The submitted data set is tidy.
# 2. The Github repo contains the required scripts.
# 3. GitHub contains a code book that modifies and updates the available codebooks 
#    with the data to indicate all the variables and summaries calculated, along 
#    with units, and any other relevant information.
# 4. The README that explains the analysis files is clear and understandable.
# 5 .The work submitted for this project is the work of the student who submitted it.

# Information about smartphone: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
# The data for the project: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

# You should create one R script called run_analysis.R that does the following.
library(reshape2)

filename <- "getdata_dataset.zip"

## Download and unzip the dataset:
if (!file.exists(filename)){
        fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
        download.file(fileURL, filename)
}  
if (!file.exists("UCI HAR Dataset")) { 
        unzip(filename) 
}
# 1. Extracts only the measurements on the mean and standard deviation for each measurement.
# Loads features
features <- read.table("UCI HAR Dataset/features.txt")
features[,2] <- as.character(features[,2])
# Creates 2 vectors of features with only the mean and standard deviation names and their index position
# Index position
features_wanted <- grep(".*mean.*|.*std.*", features[,2])
# Features names extracted and tidied up
features_wanted_names <- tolower(features[features_wanted,2])
features_wanted_names <- gsub('-mean', 'mean', features_wanted_names)
features_wanted_names <- gsub('-std', 'std', features_wanted_names)
features_wanted_names <- gsub('[-()]', '', features_wanted_names)

# 2. Loads and Merges the training and the test sets to create one data set.
# Loads train data with only the wanted features
train_subjects <- read.table("UCI HAR Dataset/train/subject_train.txt")
train_activities <- read.table("UCI HAR Dataset/train/y_train.txt")
train_data <- read.table("UCI HAR Dataset/train/X_train.txt")[features_wanted]
train <- cbind(train_subjects, train_activities, train_data)
# Loads test data with only the wanted features
test_subjects <- read.table("UCI HAR Dataset/test/subject_test.txt")
test_activities <- read.table("UCI HAR Dataset/test/y_test.txt")
test_data <- read.table("UCI HAR Dataset/test/X_test.txt")[features_wanted]
test <- cbind(test_subjects, test_activities, test_data)
# Merges training and test sets
merged_data <- rbind(train, test)

# 3. Appropriately labels the data set with descriptive variable names.
colnames(merged_data) <- c("subject", "activity", features_wanted_names)

# 4. Uses descriptive activity names to name the activities in the data set
# Turn subjects and activities into factors
# Subjects
merged_data$subject <- as.factor(merged_data$subject)
# Activities
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")
activity_labels[,2] <- as.character(activity_labels[,2])
merged_data$activity <- factor(merged_data$activity, levels = activity_labels[,1], labels = activity_labels[,2])

# 5. From the data set in step 4, creates a second, independent tidy data set 
#    with the average of each variable for each activity and each subject.
# melt data on subject and activity
merged_data_melted <- melt(merged_data, id = c("subject", "activity"))
merged_data_melted_mean <- dcast(merged_data_melted, subject + activity ~ variable, mean)
# Write table to file
write.table(merged_data_melted_mean, "tidy.txt", row.names = FALSE, quote = FALSE)

