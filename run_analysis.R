# load required libraries
library(dtplyr)
library(plyr)
library(dplyr)
library(data.table)
library(stringr)
library(stats)

# set directories and filepaths:
dirTidyData <- "/Users/joselle4/Documents/Programming/R/coursera/TidyData"
dirRawData <- "/Users/joselle4/Documents/Programming/R/coursera/UCI HAR Dataset"
fileActivityLabels <- paste0(dirRawData, "/activity_labels.txt")
fileFeatures <- paste0(dirRawData, "/features.txt") 
fileSubjectTest <- paste0(dirRawData, "/test/subject_test.txt")
fileXTest <- paste0(dirRawData, "/test/X_test.txt")
fileYTest <- paste0(dirRawData, "/test/y_test.txt")
fileSubjectTrain <- paste0(dirRawData, "/train/subject_train.txt")
fileXTrain <- paste0(dirRawData, "/train/X_train.txt")
fileYTrain <- paste0(dirRawData, "/train/y_train.txt")

# load/read text files
## features will serve as the column naames for the "x-files"
## using features as column names will saitisfy step 4 of the course project:
## appropriately label the date set with descriptive variable names
dtFeatures <- read.table(fileFeatures, col.names = c("featuresID", "features"))
dtActivityLabels <- read.table(fileActivityLabels, 
                               col.names = c("activityID", "activity"))
dtSubjectTest <- read.table(fileSubjectTest, col.names = c("subject"))
dtXTest <- read.table(fileXTest, col.names = dtFeatures$features)
dtYTest <- read.table(fileYTest, col.names = c("activityID"))
dtSubjectTrain <- read.table(fileSubjectTrain, col.names = c("subject"))
dtXTrain <- read.table(fileXTrain, col.names = dtFeatures$features)
dtYTrain <- read.table(fileYTrain, col.names = c("activityID"))

# before merging the test and training sets, 
## relabel activities by merging it with the activity labels
## this would satisfy step 3 of the course project: 
## use descriptive activity names to name the activities
dtYTrain <- merge.data.frame(dtActivityLabels, dtYTrain, 
                             all = TRUE, by = "activityID")
dtYTest <- merge.data.frame(dtActivityLabels, dtYTest, 
                            all = TRUE, by = "activityID")
## add a new column to differentiate between test and training sets
dtYTest$group <- "test"
dtYTrain$group <- "train"
## column bind subjects, y and x for test and training sets
dtTest <- cbind(dtSubjectTest, dtYTest, dtXTest)
dtTrain <- cbind(dtSubjectTrain, dtYTrain, dtXTrain)

## merge test and training set via rowbind
## this would satisfy step 1 of the course project:
## merge the training and test sets to create one data set
dtMergeTestTrain <- rbind(dtTest, dtTrain)

# for step 2 of the course project:
# extract only the measurements on the mean 
# and standard deviation for each measurement
dtMeanStDev <- dtMergeTestTrain[ , grepl("subject|activity|group|mean|std", 
                                         colnames(dtMergeTestTrain))]
write.table(dtMeanStDev, file = paste0(dirTidyData, 
                                       "/measurementsMeanStdDev.txt"))
write.table(dtMeanStDev, 
            file = paste0(dirTidyData, "/measurementsMeanStdDevRAW.txt"),
            row.names = FALSE)

# for step 5 of the course project:
# create a second tidy data with the average of each 
# variable and each activity and each subject
dtMean <- dtMeanStDev[, grepl("subject|activity|mean", 
                              colnames(dtMeanStDev))]
dtMeanbyActSub <- aggregate(dtMean[,(4:49)], 
                           list(dtMean$subject, dtMean$activity), 
                           FUN = mean)
dtMeanbyActSub <- rename(dtMeanbyActSub, subject = Group.1, activity = Group.2)
write.table(dtMeanbyActSub, file = paste0(dirTidyData, 
                                          "/activitySubjectMeasurementMeans.txt"))
write.table(dtMeanbyActSub, 
            file = paste0(dirTidyData,  "/activitySubjectMeasurementMeansRAW.txt"),
            row.names = FALSE)
