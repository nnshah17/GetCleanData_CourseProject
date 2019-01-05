create_tidyDF <-  function(){
  
  # ========  Step 1 ===============
  
  #Combine rows of X_data_set of Test and Train
  X_test<-read.delim("getdata%2Fprojectfiles%2FUCI HAR Dataset/UCI HAR Dataset/test/X_test.txt", header = FALSE, sep = "", dec = ".")
  X_train<-read.delim("getdata%2Fprojectfiles%2FUCI HAR Dataset/UCI HAR Dataset/train/X_train.txt", header = FALSE, sep = "", dec = ".")
  X_combine<-(rbind(X_test,X_train))
  
  #Combine rows of Y_data_labels of Test and Train
  y_test<-read.delim("getdata%2Fprojectfiles%2FUCI HAR Dataset/UCI HAR Dataset/test/y_test.txt", header = FALSE, sep = "", dec = ".")
  y_train<-read.delim("getdata%2Fprojectfiles%2FUCI HAR Dataset/UCI HAR Dataset/train/y_train.txt", header = FALSE, sep = "", dec = ".")
  y_combine <- rbind(y_test,y_train)
  
  # Combine subjects of test and train data set
  subj_test <- read.delim("getdata%2Fprojectfiles%2FUCI HAR Dataset/UCI HAR Dataset/test/subject_test.txt", header = FALSE, sep = "", dec = ".")
  subj_train <- read.delim("getdata%2Fprojectfiles%2FUCI HAR Dataset/UCI HAR Dataset/train/subject_train.txt", header = FALSE, sep = "", dec = ".")
  subj_combine <- rbind(subj_test,subj_train)
  
  #================= Step 2 =======================
  
  #Read measurement names from features.txt into a vector
  allColNames <- scan("getdata%2Fprojectfiles%2FUCI HAR Dataset/UCI HAR Dataset/features.txt",character(),sep="\t")
  
  # Extract by column name containing 'Mean' measurement
  ind_meanMeasurement <- grep("-mean()",allColNames,fixed = TRUE)
  df1 <- X_combine[ind_meanMeasurement]

  # Extract by column name containing 'Standard deviation' measurement
  ind_stdMeasurement <- grep("-std()",allColNames,fixed = TRUE)
  df2 <- X_combine[ind_stdMeasurement]

  # Return dataframe that only contains mean and std for all measurements
  df_MeanStd <- cbind(df1,df2)
   
  #=================== Step 3 ====================
  
  # #Add new column with activity descriptive name
  library(dplyr)
  ActDescName<-case_when(
    y_combine == 1 ~ "WALKING",
    y_combine == 2 ~ "WALKING_UPSTAIRS",
    y_combine == 3 ~ "WALKING_DOWNSTAIRS",
    y_combine == 4 ~ "SITTING",
    y_combine == 5 ~ "STANDING",
    y_combine == 6 ~ "LAYING"
  )

  #Combine by columns df_MeanStd and Y_data_labels into one data frame
  df_MeanStdWithLabel <- cbind(y_combine,ActDescName,subj_combine,df_MeanStd)
  
  #==================== Step 4 ==================
  
  # Name the columns
  names(df_MeanStdWithLabel) <- c("ActivityLabel","ActivityDescriptiveName","Subject","tBodyAcc_Mean_X","tBodyAcc_Mean_Y","tBodyAcc_Mean_Z","tGravityAcc_Mean_X","tGravityAcc_Mean_Y","tGravityAcc_Mean_Z","tBodyAccJerk_Mean_X","tBodyAccJerk_Mean_Y","tBodyAccJerk_Mean_Z","tBodyGyro_Mean_X","tBodyGyro_Mean_Y","tBodyGyro_Mean_Z","tBodyGyroJerk_Mean_X","tBodyGyroJerk_Mean_Y","tBodyGyroJerk_Mean_Z","tBodyAccMag_Mean","tGravityAggMag_Mean","tBodyAccJerkMag_Mean","tBodyGyroMag_Mean","tBodyGyroJerkMag_Mean","fBodyAcc_Mean_X","fBodyAcc_Mean_Y","fBodyAcc_Mean_Z","fBodyAccJerk_Mean_X","fBodyAccJerk_Mean_Y","fBodyAccJerk_Mean_Z","fBodyGyro_Mean_X","fBodyGyro_Mean_Y","fBodyGyro_Mean_Z","fBodyAccMag_Mean","fBodyBodyAccJerkMag_Mean","fBodyBodyGyroMag_Mean","fBodyBodyGyroJerkMag_Mean","tBodyAcc_Std_X","tBodyAcc_Std_Y","tBodyAcc_Std_Z","tGravityAcc_Std_X","tGravityAcc_Std_Y","tGravityAcc_Std_Z","tBodyAccJerk_Std_X","tBodyAccJerk_Std_Y","tBodyAccJerk_Std_Z","tBodyGyro_Std_X","tBodyGyro_Std_Y","tBodyGyro_Std_Z","tBodyGyroJerk_Std_X","tBodyGyroJerk_Std_Y","tBodyGyroJerk_Std_Z","tBodyAccMag_Std","tGravityAggMag_Std","tBodyAccJerkMag_Std","tBodyGyroMag_Std","tBodyGyroJerkMag_Std","fBodyAcc_Std_X","fBodyAcc_Std_Y","fBodyAcc_Std_Z","fBodyAccJerk_Std_X","fBodyAccJerk_Std_Y","fBodyAccJerk_Std_Z","fBodyGyro_Std_X","fBodyGyro_Std_Y","fBodyGyro_Std_Z","fBodyAccMag_Std","fBodyBodyAccJerkMag_Std","fBodyBodyGyroMag_Std","fBodyBodyGyroJerkMag_Std")
  
  #=================== Step 5 ===================
  
  # Group dataframe of step-4 by Activity & subject
  df_byActivitySubject <- group_by(df_MeanStdWithLabel,ActivityDescriptiveName,Subject)
  
  # Summarize with mean of all columns per activityName
  df_AvgValues <- summarize(df_byActivitySubject,tBodyAcc_Mean_X=mean(tBodyAcc_Mean_X,na.rm = TRUE),tBodyAcc_Mean_Y=mean(tBodyAcc_Mean_Y,na.rm = TRUE),tBodyAcc_Mean_Z=mean(tBodyAcc_Mean_Z,na.rm = T),tGravityAcc_Mean_X=mean(tGravityAcc_Mean_X,na.rm = T),tGravityAcc_Mean_Y=mean(tGravityAcc_Mean_Y,na.rm=T),tGravityAcc_Mean_Z=mean(tGravityAcc_Mean_Z,na.rm=T),tBodyAccJerk_Mean_X=mean(tBodyAccJerk_Mean_X,na.rm=T),tBodyAccJerk_Mean_Y=mean(tBodyAccJerk_Mean_Y,na.rm=T),tBodyAccJerk_Mean_Z=mean(tBodyAccJerk_Mean_Z,na.rm=T),tBodyGyro_Mean_X=mean(tBodyGyro_Mean_X,na.rm=T),tBodyGyro_Mean_Y=mean(tBodyGyro_Mean_Y,na.rm=T),tBodyGyro_Mean_Z=mean(tBodyGyro_Mean_Z,na.rm=T),tBodyGyroJerk_Mean_X=mean(tBodyGyroJerk_Mean_X,na.rm=T),tBodyGyroJerk_Mean_Y=mean(tBodyGyroJerk_Mean_Y,na.rm=T),tBodyGyroJerk_Mean_Z=mean(tBodyGyroJerk_Mean_Z,na.rm=T),tBodyAccMag_Mean=mean(tBodyAccMag_Mean,na.rm=T),tGravityAggMag_Mean=mean(tGravityAggMag_Mean,na.rm=T),tBodyAccJerkMag_Mean=mean(tBodyAccJerkMag_Mean,na.rm=T),tBodyGyroMag_Mean=mean(tBodyGyroMag_Mean,na.rm=T),tBodyGyroJerkMag_Mean=mean(tBodyGyroJerkMag_Mean,na.rm=T),fBodyAcc_Mean_X=mean(fBodyAcc_Mean_X,na.rm=T),fBodyAcc_Mean_Y=mean(fBodyAcc_Mean_Y,na.rm=T),fBodyAcc_Mean_Z=mean(fBodyAcc_Mean_Z,na.rm=T),fBodyAccJerk_Mean_X=mean(fBodyAccJerk_Mean_X,na.rm=T),fBodyAccJerk_Mean_Y=mean(fBodyAccJerk_Mean_Y,na.rm=T),fBodyAccJerk_Mean_Z=mean(fBodyAccJerk_Mean_Z,na.rm=T),fBodyGyro_Mean_X=mean(fBodyGyro_Mean_X,na.rm=T),fBodyGyro_Mean_Y=mean(fBodyGyro_Mean_Y,na.rm=T),fBodyGyro_Mean_Z=mean(fBodyGyro_Mean_Z,na.rm=T),fBodyAccMag_Mean=mean(fBodyAccMag_Mean,na.rm=T),fBodyBodyAccJerkMag_Mean=mean(fBodyBodyAccJerkMag_Mean,na.rm=T),fBodyBodyGyroMag_Mean=mean(fBodyBodyGyroMag_Mean,na.rm=T),fBodyBodyGyroJerkMag_Mean=mean(fBodyBodyGyroJerkMag_Mean,na.rm=T),tBodyAcc_Std_X=mean(tBodyAcc_Std_X,na.rm=T),tBodyAcc_Std_Y=mean(tBodyAcc_Std_Y,na.rm=T),tBodyAcc_Std_Z=mean(tBodyAcc_Std_Z,na.rm=T),tGravityAcc_Std_X=mean(tGravityAcc_Std_X,na.rm=T),tGravityAcc_Std_Y=mean(tGravityAcc_Std_Y,na.rm=T),tGravityAcc_Std_Z=mean(tGravityAcc_Std_Z,na.rm=T),tBodyAccJerk_Std_X=mean(tBodyAccJerk_Std_X,na.rm=T),tBodyAccJerk_Std_Y=mean(tBodyAccJerk_Std_Y,na.rm=T),tBodyAccJerk_Std_Z=mean(tBodyAccJerk_Std_Z,na.rm=T),tBodyGyro_Std_X=mean(tBodyGyro_Std_X,na.rm=T),tBodyGyro_Std_Y=mean(tBodyGyro_Std_Y,na.rm=T),tBodyGyro_Std_Z=mean(tBodyGyro_Std_Z,na.rm=T),tBodyGyroJerk_Std_X=mean(tBodyGyroJerk_Std_X,na.rm=T),tBodyGyroJerk_Std_Y=mean(tBodyGyroJerk_Std_Y,na.rm=T),tBodyGyroJerk_Std_Z=mean(tBodyGyroJerk_Std_Z,na.rm=T),tBodyAccMag_Std=mean(tBodyAccMag_Std,na.rm=T),tGravityAggMag_Std=mean(tGravityAggMag_Std,na.rm=T),tBodyAccJerkMag_Std=mean(tBodyAccJerkMag_Std,na.rm=T),tBodyGyroMag_Std=mean(tBodyGyroMag_Std,na.rm=T),tBodyGyroJerkMag_Std=mean(tBodyGyroJerkMag_Std,na.rm=T),fBodyAcc_Std_X=mean(fBodyAcc_Std_X,na.rm=T),fBodyAcc_Std_Y=mean(fBodyAcc_Std_Y,na.rm=T),fBodyAcc_Std_Z=mean(fBodyAcc_Std_Z,na.rm=T),fBodyAccJerk_Std_X=mean(fBodyAccJerk_Std_X,na.rm=T),fBodyAccJerk_Std_Y=mean(fBodyAccJerk_Std_Y,na.rm=T),fBodyAccJerk_Std_Z=mean(fBodyAccJerk_Std_Z,na.rm=T),fBodyGyro_Std_X=mean(fBodyGyro_Std_X,na.rm=T),fBodyGyro_Std_Y=mean(fBodyGyro_Std_Y,na.rm=T),fBodyGyro_Std_Z=mean(fBodyGyro_Std_Z,na.rm=T),fBodyAccMag_Std=mean(fBodyAccMag_Std,na.rm=T),fBodyBodyAccJerkMag_Std=mean(fBodyBodyAccJerkMag_Std,na.rm=T),fBodyBodyGyroMag_Std=mean(fBodyBodyGyroMag_Std,na.rm=T),fBodyBodyGyroJerkMag_Std=mean(fBodyBodyGyroJerkMag_Std,na.rm=T))
    
  # # Download dataset into CSV format in CURRENT WORKING DIRECTORY
  write.table(df_AvgValues, file = "tidy_dataSet.txt",row.names=FALSE, na="",col.names=TRUE, sep=";")
}
