CodeBook for the following files:
“measurementsMeanStdDev.txt”: contains all the variables listed in this codebook.
“activitySubjectMeasurementMeans.txt”: contains only the mean variables in this codebook along with the subject and activity variables.

Variables are listed by column number followed by the column name (as listed in “measurementsMeanStdDev.txt”)

"1" "subject"
	- integer class listing all the participants of the data
"2" "activityID"
	- integer class listing the activities
"3" "activity"
	- factor class equivalent of activityID
	- factors are: 
		1 WALKING
		2 WALKING_UPSTAIRS
		3 WALKING_DOWNSTAIRS
		4 SITTING
		5 STANDING
		6 LAYING
"4" "group"
	- character class classifying test vs training data

The remaining variables are mean and standard deviation measurements from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. Prefix ’t’ denotes time domain signals. Prefix ‘f’ denotes frequency domain signals. Suffixes ’X’, ‘Y’ or ‘Z’ denotes 3-axial signals in the X, Y and Z directions.

The acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ). The body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). The magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). A Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag.

"5" "tBodyAcc.mean...X"
"6" "tBodyAcc.mean...Y"
"7" "tBodyAcc.mean...Z"
"8" "tBodyAcc.std...X"
"9" "tBodyAcc.std...Y"
"10" "tBodyAcc.std...Z"
"11" "tGravityAcc.mean...X"
"12" "tGravityAcc.mean...Y"
"13" "tGravityAcc.mean...Z"
"14" "tGravityAcc.std...X"
"15" "tGravityAcc.std...Y"
"16" "tGravityAcc.std...Z"
"17" "tBodyAccJerk.mean...X"
"18" "tBodyAccJerk.mean...Y"
"19" "tBodyAccJerk.mean...Z"
"20" "tBodyAccJerk.std...X"
"21" "tBodyAccJerk.std...Y"
"22" "tBodyAccJerk.std...Z"
"23" "tBodyGyro.mean...X"
"24" "tBodyGyro.mean...Y"
"25" "tBodyGyro.mean...Z"
"26" "tBodyGyro.std...X"
"27" "tBodyGyro.std...Y"
"28" "tBodyGyro.std...Z"
"29" "tBodyGyroJerk.mean...X"
"30" "tBodyGyroJerk.mean...Y"
"31" "tBodyGyroJerk.mean...Z"
"32" "tBodyGyroJerk.std...X"
"33" "tBodyGyroJerk.std...Y"
"34" "tBodyGyroJerk.std...Z"
"35" "tBodyAccMag.mean.."
"36" "tBodyAccMag.std.."
"37" "tGravityAccMag.mean.."
"38" "tGravityAccMag.std.."
"39" "tBodyAccJerkMag.mean.."
"40" "tBodyAccJerkMag.std.."
"41" "tBodyGyroMag.mean.."
"42" "tBodyGyroMag.std.."
"43" "tBodyGyroJerkMag.mean.."
"44" "tBodyGyroJerkMag.std.."
"45" "fBodyAcc.mean...X"
"46" "fBodyAcc.mean...Y"
"47" "fBodyAcc.mean...Z"
"48" "fBodyAcc.std...X"
"49" "fBodyAcc.std...Y"
"50" "fBodyAcc.std...Z"
"51" "fBodyAcc.meanFreq...X"
"52" "fBodyAcc.meanFreq...Y"
"53" "fBodyAcc.meanFreq...Z"
"54" "fBodyAccJerk.mean...X"
"55" "fBodyAccJerk.mean...Y"
"56" "fBodyAccJerk.mean...Z"
"57" "fBodyAccJerk.std...X"
"58" "fBodyAccJerk.std...Y"
"59" "fBodyAccJerk.std...Z"
"60" "fBodyAccJerk.meanFreq...X"
"61" "fBodyAccJerk.meanFreq...Y"
"62" "fBodyAccJerk.meanFreq...Z"
"63" "fBodyGyro.mean...X"
"64" "fBodyGyro.mean...Y"
"65" "fBodyGyro.mean...Z"
"66" "fBodyGyro.std...X"
"67" "fBodyGyro.std...Y"
"68" "fBodyGyro.std...Z"
"69" "fBodyGyro.meanFreq...X"
"70" "fBodyGyro.meanFreq...Y"
"71" "fBodyGyro.meanFreq...Z"
"72" "fBodyAccMag.mean.."
"73" "fBodyAccMag.std.."
"74" "fBodyAccMag.meanFreq.."
"75" "fBodyBodyAccJerkMag.mean.."
"76" "fBodyBodyAccJerkMag.std.."
"77" "fBodyBodyAccJerkMag.meanFreq.."
"78" "fBodyBodyGyroMag.mean.."
"79" "fBodyBodyGyroMag.std.."
"80" "fBodyBodyGyroMag.meanFreq.."
"81" "fBodyBodyGyroJerkMag.mean.."
"82" "fBodyBodyGyroJerkMag.std.."
"83" "fBodyBodyGyroJerkMag.meanFreq.."
