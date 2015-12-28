#CodeBook for tidydata.txt
###ID Variables: Subject, ActivityType######
######Subject:  Subject Identifier Code
######ActivityType: Observed Activities consist of:
      1. WALKING
      2. WALKING_UPSTAIRS
      3. WALKING_DOWNSTAIRS
      4. SITTING
      5. STANDING
      6. LAYING
###Measuremment Variables:
The following convention will help in identifying the variables in this set.  

The prefix identify the data domain:
- t for Time Domain
- f for Frequency

The postfix in each UCIData variable, such as: -X, -Y, -Z denotes the Tri-axial signals in the X, Y and Z directions.  For each record, UCIData set provides the following : 
- Tri-axial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Tri-axial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.
The Value variables in the tidydata.txt were extracted from UCI data source then consolidated in this tidy dataset. The estimated within this tidy data set  are identified in a fixed string like: 
    1. mean(): Mean value
    2. std(): Standard deviation
    3. meanFreq(): Weighted average of the frequency components to obtain a mean frequency
 
#####Time domain body tri-axial acceleration variables:
 - Mean Value for Time domain body Tri-axial acceleration:
  -  tBodyAcc-mean()-X
  -  tBodyAcc-mean()-Y
  -  tBodyAcc-mean()-Z
 -  Standard deviation for Time domain body Tri-axial acceleration:
  -  tBodyAcc-std()-X
  -  tBodyAcc-std()-Y
  -  tBodyAcc-std()-Z

######Time domain Gravity tri-axial acceleration variables:
 - Mean Value for Gravity tri-axial acceleration:
  - tGravityAcc-mean()-X
  - tGravityAcc-mean()-Y
  - tGravityAcc-mean()-Z

 - Standard Deviation Value for Gravity tri-axial acceleration:
  - tGravityAcc-std()-X
  - tGravityAcc-std()-Y
  - tGravityAcc-std()-Z

######Time domain body acceleration jerk tri-axial acceleration variables:
- Mean Value for body acceleration jerk tri-axial acceleration
  - tBodyAccJerk-mean()-X
  - tBodyAccJerk-mean()-Y
  - tBodyAccJerk-mean()-Z
- Standard Deviation Value for body acceleration jerk tri-axial acceleration
  - tBodyAccJerk-std()-X
  - tBodyAccJerk-std()-Y
  - tBodyAccJerk-std()-Z

######Time domain body gyroscope tri-axial acceleration variables:
 - Mean Value body gyroscope tri-axial acceleration:
  - tBodyGyro-mean()-X
  - tBodyGyro-mean()-Y
  - tBodyGyro-mean()-Z
 - Standard Deviation Value body gyroscope tri-axial acceleration:
  - tBodyGyro-std()-X
  - tBodyGyro-std()-Y
  - tBodyGyro-std()-Z      

######Time domain body gyroscope jerk tri-axial variables:
 - Mean Value body  tri-axial gyroscope jerk:
  - tBodyGyroJerk-mean()-X
  - tBodyGyroJerk-mean()-Y
  - tBodyGyroJerk-mean()-Z
 - Standard Deviation Value tri-axial body gyroscope jerk :
  - tBodyGyroJerk-std()-X
  - tBodyGyroJerk-std()-Y
  - tBodyGyroJerk-std()-Z

######Time domain body acceleration Magnitude: 
 - Mean Value body acceleration Magnitude variable:
  - tBodyAccMag-mean()
 - Standard Deviation Value body acceleration magnitude variable:
  - tBodyAccMag-std()

######Time domain Gravity acceleration Magnitude: 
 - Mean Value gravity acceleration Magnitude variable:
  - tGravityAccMag-mean()
 - Standard Deviation Value gravity acceleration Magnitude variable:
  - tGravityAccMag-std()

######Time domain acceleration jerk Magnitude: 
 - Mean Value acceleration jerk magnitude variable:
   - tBodyAccJerkMag-mean()
 - Standard Deviation Value acceleration jerk magnitude variable:
   - tBodyAccJerkMag-std()

######Time domain Body Gyroscope  Magnitude: 
 - Mean Value of Body Gyroscope  Magnitude variable:
   - tBodyGyroMag-mean()
 - Standard Deviation of Body Gyroscope  Magnitude variable:
   - tBodyGyroMag-std()

######Time domain Body Gyroscope Jerk  Magnitude: 
 - Mean Value of Body Gyroscope Jerk Magnitude variable:
   - tBodyGyroJerkMag-mean()
 - Standard Deviation of Body Gyroscope Jerk Magnitude variable:
   - tBodyGyroJerkMag-std()

#####Frequency related variables:
 - Mean Value for Frequency body Tri-axial acceleration:
   - fBodyAcc-mean()-X
   - fBodyAcc-mean()-Y
   - fBodyAcc-mean()-Z
 - Standard Deviation Value for Frequency body Tri-axial acceleration:
   - fBodyAcc-std()-X
   - fBodyAcc-std()-Y
   - fBodyAcc-std()-Z
 - Weighted average of the frequency Body Tri-axial Acceleration : 
   - fBodyAcc-meanFreq()-X
   - fBodyAcc-meanFreq()-Y
   - fBodyAcc-meanFreq()-Z
 - Mean Value for Frequency Body Jerk Tri-axial Acceleration:
   - fBodyAccJerk-mean()-X
   - fBodyAccJerk-mean()-Y
   - fBodyAccJerk-mean()-Z
 - Standard Deviation Value for Frequency Body Jerk Tri-axial Acceleration:
   - fBodyAccJerk-std()-X
   - fBodyAccJerk-std()-Y
   - fBodyAccJerk-std()-Z
 - Weighted average of the Frequency - Body Jerk Tri-axial Acceleration : 
   - fBodyAccJerk-meanFreq()-X
   - fBodyAccJerk-meanFreq()-Y
   - fBodyAccJerk-meanFreq()-Z
 - Mean values for Frequency - Tri-axial Body Gyroscope:
   - fBodyGyro-mean()-X
   - fBodyGyro-mean()-Y
   - fBodyGyro-mean()-Z
 - Standard Deviation values for Frequency - Tri-axial Body Gyroscope:
   - fBodyGyro-std()-X
   - fBodyGyro-std()-Y
   - fBodyGyro-std()-Z
 - Weighted averages of the Frequency - Tri-axial Body Gyroscope:	 
   - fBodyGyro-meanFreq()-X
   - fBodyGyro-meanFreq()-Y
   - fBodyGyro-meanFreq()-Z
 -  Mean value for Frequency - Body Acceleration Magnitude:
   - fBodyAccMag-mean()
 - Standard Deviation for Frequency - Body Acceleration Magnitude:
   - fBodyAccMag-std()
 - Weighted Average for Frequency - Body Acceleration Magnitude:
   - fBodyAccMag-meanFreq()
 - Mean value for Frequency - Body Acceleration Jerk Magnitude:
   - fBodyAccJerkMag-mean()
 - Standard Deviation value for Frequency - Body Acceleration Jerk Magnitude: 
   - fBodyBodyAccJerkMag-std()
 - Weighted Average value for Frequency - Body Acceleration Jerk Magnitude: 
   - fBodyBodyAccJerkMag-meanFreq()
 - Mean value for Frequency - Body Gyroscope Magnitude  
   - fBodyBodyGyroMag-mean()
 - Standard Deviation for Frequency - Body Gyroscope Magnitude  
   - fBodyBodyGyroMag-std()
 - Weighted Average for Frequency - Body Gyroscope Magnitude  
   - fBodyBodyGyroMag-meanFreq()
 - Mean value for Frequency - Body Gyroscope Jerk Magnitude  
   - fBodyBodyGyroJerkMag-mean()
 - Standard Deviation value for Frequency - Body Gyroscope Jerk Magnitude  
   - fBodyBodyGyroJerkMag-std()
 - Weighted Average for Frequency - Body Gyroscope Jerk Magnitude 
   - fBodyBodyGyroJerkMag-meanFreq()

