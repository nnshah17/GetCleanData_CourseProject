## Human Activity Recognition Using Smartphones Data Dictionary

### Steps of transformation

The X_test.txt and X_train.txt data-set are merged to create one dataset that hold all measurements of 561 features (feature.txt). The y_test.txt and y_train.txt datasets are merged to create one dataset the holds all 6 labels (type of activity) corresponding to each rocord. 

Then measurements indicating mean and standard deviation from freatures are extracted into a dataframe. To that 2 columns are added corresponding to activity labels (1-6) and its descriptive name.

Then dataset is grouped by Activity Descriptive Name & subject.
After grouping, average value of all measurement is created by mean of reading by respective activity type and stored into second data set.

### Description of all variables of TIDY DATASET (tidy_dataSet.txt):

* ActivityDescriptiveName		character
		Activity Descriptive Name
					WALKING
					WALKING_UPSTAIRS
					WALKING_DOWNSTAIRS
					STANDING
					SITTING
					LAYING


* tBodyAcc_Mean_X			numeric		
		Avg. Measurement by each activity - Mean of tBody Acceleration in X-axis


* tBodyAcc_Mean_Y			numeric
		Avg. Measurement by each activity - Mean of tBody Acceleration in Y-axis


* tBodyAcc_Mean_Z			numeric
		Avg. Measurement by each activity - Mean of tBody Acceleration in Y-axis


* tGravityAcc_Mean_X			numeric
		Avg. Measurement by each activity - Mean of tGravity Acceleration in X-axis


* tGravityAcc_Mean_Y			numeric
		Avg. Measurement by each activity - Mean of tGravity Acceleration in Y-axis


* tGravityAcc_Mean_Z			numeric
		Avg. Measurement by each activity - Mean of tGravity Acceleration in Z-axis


* tBodyAccJerk_Mean_X			numeric
		Avg. Measurement by each activity - Mean of tBody Acceleration Jerk in X-axis


* tBodyAccJerk_Mean_Y			numeric
		Avg. Measurement by each activity - Mean of tBody Acceleration Jerk in Y-axis


* tBodyAccJerk_Mean_Z			numeric
		Avg. Measurement by each activity - Mean of tBody Acceleration Jerk in Z-axis


* tBodyGyro_Mean_X			numeric
		Avg. Measurement by each activity - Mean of tBody Gyroscope in X-axis


* tBodyGyro_Mean_Y			numeric
		Avg. Measurement by each activity - Mean of tBody Gyroscope in Y-axis


* tBodyGyro_Mean_Z			numeric
		Avg. Measurement by each activity - Mean of tBody Gyroscope in Z-axis


* tBodyGyroJerk_Mean_X			numeric
		Avg. Measurement by each activity - Mean of tBody Gyroscope jerk in X-axis


* tBodyGyroJerk_Mean_Y			numeric
		Avg. Measurement by each activity - Mean of tBody Gyrosope jerk in Y-axis


* tBodyGyroJerk_Mean_Z			numeric
		Avg. Measurement by each activity - Mean of tBody Gyroscope jerk in Z-axis


* tBodyAccMag_Mean			numeric
		Avg. Measurement by each activity - Mean of tBody Acc. Mag


* tGravityAggMag_Mean			numeric
		Avg. Measurement by each activity - Mean of tGravity Acc Mag


* tBodyAccJerkMag_Mean			numeric
		Avg. Measurement by each activity - Mean of tBody Acc. Jerk Mag


* tBodyGyroMag_Mean			numeric
		Avg. Measurement by each activity - Mean of tBody Gyroscope Mag


* tBodyGyroJerkMag_Mean			numeric
		Avg. Measurement by each activity - Mean of tBody Gyroscope Jerk Mag


* fBodyAcc_Mean_X			numeric
		Avg. Measurement by each activity - Mean of fBody Acceleration in X-axis


* fBodyAcc_Mean_Y			numeric
		Avg. Measurement by each activity - Mean of fBody Acceleration in Y-axis


* fBodyAcc_Mean_Z			numeric
		Avg. Measurement by each activity - Mean of fBody Acceleration in Z-axis


* fBodyAccJerk_Mean_X			numeric
		Avg. Measurement by each activity - Mean of fBody Acceleration jerk in X-axis


* fBodyAccJerk_Mean_Y			numeric
		Avg. Measurement by each activity - Mean of fBody Acc. Jerk in Y-axis


* fBodyAccJerk_Mean_Z			numeric
		Avg. Measurement by each activity - Mean of tBody Acceleration jerk in Z-axis


* fBodyGyro_Mean_X			numeric
		Avg. Measurement by each activity - Mean of fBody Gyroscope in X-axis


* fBodyGyro_Mean_Y			numeric
		Avg. Measurement by each activity - Mean of fBody Gyroscope in Y-axis


* fBodyGyro_Mean_Z			numeric
		Avg. Measurement by each activity - Mean of fBody Gyroscope in Z-axis


* fBodyAccMag_Mean			numeric
		Avg. Measurement by each activity - Mean of fBody Acceleration Mag


* fBodyBodyAccJerkMag_Mean		numeric
		Avg. Measurement by each activity - Mean of fBody Acceleration jerk mag


* fBodyBodyGyroMag_Mean			numeric
		Avg. Measurement by each activity - Mean of tBodyBody Gyroscope Mag


* fBodyBodyGyroJerkMag_Mean		numeric
		Avg. Measurement by each activity - Mean of tBodyBody Gyroscope jerk Mag


* tBodyAcc_Std_X			numeric
		Avg. Measurement by each activity - Standard deviation of tBody Acceleration in X-axis


* tBodyAcc_Std_Y			numeric
		Avg. Measurement by each activity - Standard deviation of Acceleration in Y-axis


* tBodyAcc_Std_Z			numeric
		Avg. Measurement by each activity - Standard deviation of Acceleration in Z-axis


* tGravityAcc_Std_X			numeric
		Avg. Measurement by each activity - Standard deviation of tGravity Acceleration in X-axis


* tGravityAcc_Std_Y			numeric
		Avg. Measurement by each activity - Standard deviation of tGravity Acceleration in Y-axis


* tGravityAcc_Std_Z			numeric
		Avg. Measurement by each activity - Standard deviation of tGravity Acceleration in Z-axis


* tBodyAccJerk_Std_X			numeric
		Avg. Measurement by each activity - Standard deviation of tBody Acceleration jerk in X-axis


* tBodyAccJerk_Std_Y			numeric
		Avg. Measurement by each activity - Standard deviation of tBody Acceleration jerk in Y-axis


* tBodyAccJerk_Std_Z			numeric
		Avg. Measurement by each activity - Standard deviation of tBody Acceleration jerk in Z-axis


* tBodyGyro_Std_X			numeric
		Avg. Measurement by each activity - Standard deviation of tBody Gyroscope in X-axis


* tBodyGyro_Std_Y			numeric
		Avg. Measurement by each activity - Standard deviation of tBody Gyrosope in Y-axis


* tBodyGyro_Std_Z			numeric
		Avg. Measurement by each activity - Standard deviation of tBody Gyroscope in Z-axis


* tBodyGyroJerk_Std_X			numeric
		Avg. Measurement by each activity - Standard deviation of tBody Gyrosocpe jerk in X-axis


* tBodyGyroJerk_Std_Y			numeric
		Avg. Measurement by each activity - Standard deviation of tBody Gyroscope jerk in Y-axis


* tBodyGyroJerk_Std_Z			numeric
		Avg. Measurement by each activity - Standard deviation of tBody Gyroscope jerk in Z-axis


* tBodyAccMag_Std			numeric
		Avg. Measurement by each activity - Standard deviation of tBody Acceleration Mag


* tGravityAggMag_Std			numeric
		Avg. Measurement by each activity - Standard deviation of tGravity Acceleration Mag


* tBodyAccJerkMag_Std			numeric
		Avg. Measurement by each activity - Standard deviation of tBody Acceleration jerk Mag


* tBodyGyroMag_Std			numeric
		Avg. Measurement by each activity - Standard deviation of tBody Gyroscope Mag


* tBodyGyroJerkMag_Std			numeric
		Avg. Measurement by each activity - Standard deviation of tBody Gyroscope jerk Mag


* fBodyAcc_Std_X			numeric
		Avg. Measurement by each activity - Standard deviation of fBody Acceleration in X-axis


* fBodyAcc_Std_Y			numeric
		Avg. Measurement by each activity - Standard deviation of fBody Acceleration in Y-axis


* fBodyAcc_Std_Z			numeric
		Avg. Measurement by each activity - Standard deviation of fBody Acceleration in Z-axis


* fBodyAccJerk_Std_X			numeric
		Avg. Measurement by each activity - Standard deviation of fBody Acceleration Jerk in X-axis


* fBodyAccJerk_Std_Y			numeric
		Avg. Measurement by each activity - Standard deviation of fBody Acceleration jerk in Y-axis


* fBodyAccJerk_Std_Z			numeric
		Avg. Measurement by each activity - Standard deviation of fBody Acceleration jerk in Z-axis


* fBodyGyro_Std_X			numeric
		Avg. Measurement by each activity - Standard deviation of fBody Gyroscope in X-axis


* fBodyGyro_Std_Y			numeric
		Avg. Measurement by each activity - Standard deviation of fBody Gyroscope in Y-axis


* fBodyGyro_Std_Z			numeric
		Avg. Measurement by each activity - Standard deviation of fBody Gyroscope in Z-axis


* fBodyAccMag_Std			numeric
		Avg. Measurement by each activity - Standard deviation of fBody Acceleration Mag


* fBodyBodyAccJerkMag_Std		numeric
		Avg. Measurement by each activity - Standard deviation of fBody Acceleration jerk mag


* fBodyBodyGyroMag_Std			numeric
		Avg. Measurement by each activity - Standard deviation of fBody Gyroscope mag


* fBodyBodyGyroJerkMag_Std		numeric
		Avg. Measurement by each activity - Standard deviation of fBody Gyroscope jerk mag
