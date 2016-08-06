==============================
Getting and Cleaning Data Course Project
Data Science Specialization
Coursera

GitHub repository: 
==============================
https://github.com/joselle4/TidyData.git

Description:
==============================
This course project uses the Human Activity Recognition Using Smartphones Dataset (Version 1.0) in order to to demonstrate my ability to collect, work with, and clean a data set. The goal is to prepare tidy data by merging the training and test data sets to use for analysis such as extracting the mean and standard deviation of different measurements.

The data for this project is obtained from: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The project involves creating one R script called run_analysis.R that does the following:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

This repo includes the following files:
==============================
- ‘README.md’

- ‘Codebook.md’: describes the variables, the data, and any transformations or work performed to clean up the data.

- ‘run_analysis.R’: the script performs the following actions:

- ‘measurementsMeanStdDev.txt’: data output from run_analysis.R providing the means and standard deviations of all the measurements from training and test set.  This reflects Step 2 in the description above.

- ‘activitySubjectMeasurementMeans.txt’: data output from run_analysis.R providing the means by measurement, activity and subject.  

Steps of ‘run_analysis.R’:
==============================
1. Load the following libraries: dtplyr, plyr, dplyr, data.table, stringr, stats
2. Set directories and file paths
3. Read the following files as data tables: 
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/subject_train.txt': Training subjects.
- 'train/X_train.txt': Training set; loaded using features as column names.
- 'train/y_train.txt': Training labels.
- 'test/subject_test.txt': Test subjects.
- 'test/X_test.txt': Test set; loaded using features as column names.
- 'test/y_test.txt': Test labels.
4. Merge activity labels to the y_train and y_test data tables 
5. Add group column to classify between the train or test data
6. Combine subject, activity and x tables for train and test data
7. Merge test and train data
8. Extract only measurements containing mean and standard deviation. Include the following columns in the data extraction: subject, activityID, activity, group.
9. Export table as the first tidy data (‘measurementsMeanStdDev.txt’).
10. Extract mean measurements from the first tidy data and analyze the average measurements by activity and by subject.
11. Export table as the second tidy data (‘activitySubjectMeasurementMeans.txt’).

License:
========
The dataset used for this course project acknowledges the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
