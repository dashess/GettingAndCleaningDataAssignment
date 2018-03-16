# ** Getting and Cleaning Data - Coursera Course Project**
This is the Course Project for Getting and Cleaning Data on Coursera.com from Johns Hopkins University.
The script "run_analysis.R" does the following:
1. Download the dataset if it does not already exist in the working directory
1. Extracts only the measurements on the mean and standard deviation for each measurement.
	1. Creates 2 vectors of features with only the mean and standard deviation names and their index position
		1. Index position
		1. Features names extracted and tidied up
1. Loads and Merges the training and the test sets to create one data set.
	1. Loads train data with only the wanted features
	1. Loads test data with only the wanted features
	1. Merges training and test sets
1. Appropriately labels the data set with descriptive variable names.
1. Uses descriptive activity names to name the activities in the data set
	1. Turn subjects and activities into factors
1. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
1. Melts data on subject and activity into a new table (Calculates the mean for each variable and subject/activity pairing)
	1. Writes table to file

The "tidy.txt" file is the end result of the script