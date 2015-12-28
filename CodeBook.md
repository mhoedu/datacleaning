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

The postfix in each UCIData variable, such as: -X, -Y, -Z denotes the Tri-axial signals in the X, Y and Z directions.  For each record, UCIData set provide the following : 
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.
The measurement variables in the tidydata.txt were extracted from UCI data source then consolidated in this tidy dataset. The estimated within this tidy data set  are identified in a fixed string like: 
	1. mean(): Mean value
    2. std(): Standard deviation
    3. meanFreq(): Weighted average of the frequency components to obtain a mean frequency 
 
 
###### Time domain body tri-axial acceleration :
 - Mean measurement for Time domain body Tri-axial acceleration:
	-  tBodyAcc-mean()-X
	-  tBodyAcc-mean()-Y
	-  tBodyAcc-mean()-Z
 -  Standard deviation for Time domain body Tri-axial acceleration:
	-  tBodyAcc-std()-X
	-  tBodyAcc-std()-Y
	-  tBodyAcc-std()-Z
###### Time domain Gravity tri-axial acceleration:
 - Mean measurement for Gravity tri-axial acceleration:
	- tGravityAcc-mean()-X
	- tGravityAcc-mean()-Y
	- tGravityAcc-mean()-Z
 - Standard Deviation measurement for Gravity tri-axial acceleration:
    - tGravityAcc-std()-X
	- tGravityAcc-std()-Y
	- tGravityAcc-std()-Z
######  Time domain body acceleration jerk tri-axial acceleration:
 - Mean measurement for body acceleration jerk tri-axial acceleration
    - tBodyAccJerk-mean()-X
######tBodyAccJerk-mean()-Y
######tBodyAccJerk-mean()-Z
######tBodyAccJerk-std()-X
######tBodyAccJerk-std()-Y
######tBodyAccJerk-std()-Z
######tBodyGyro-mean()-X
######tBodyGyro-mean()-Y
######tBodyGyro-mean()-Z
######tBodyGyro-std()-X
######tBodyGyro-std()-Y
######tBodyGyro-std()-Z
######tBodyGyroJerk-mean()-X
######tBodyGyroJerk-mean()-Y
######tBodyGyroJerk-mean()-Z
######tBodyGyroJerk-std()-X
######tBodyGyroJerk-std()-Y
######tBodyGyroJerk-std()-Z
######tBodyAccMag-mean()
######tBodyAccMag-std()
######tGravityAccMag-mean()
######tGravityAccMag-std()
######tBodyAccJerkMag-mean()
######tBodyAccJerkMag-std()
######tBodyGyroMag-mean()
######tBodyGyroMag-std()
######tBodyGyroJerkMag-mean()
######tBodyGyroJerkMag-std()
######fBodyAcc-mean()-X
######fBodyAcc-mean()-Y
######fBodyAcc-mean()-Z
######fBodyAcc-std()-X
######fBodyAcc-std()-Y
######fBodyAcc-std()-Z
######fBodyAcc-meanFreq()-X
######fBodyAcc-meanFreq()-Y
######fBodyAcc-meanFreq()-Z
######fBodyAccJerk-mean()-X
######fBodyAccJerk-mean()-Y
######fBodyAccJerk-mean()-Z
######fBodyAccJerk-std()-X
######fBodyAccJerk-std()-Y
######fBodyAccJerk-std()-Z
######fBodyAccJerk-meanFreq()-X
######fBodyAccJerk-meanFreq()-Y
######fBodyAccJerk-meanFreq()-Z
######fBodyGyro-mean()-X
######fBodyGyro-mean()-Y
######fBodyGyro-mean()-Z
######fBodyGyro-std()-X
######fBodyGyro-std()-Y
######fBodyGyro-std()-Z
######fBodyGyro-meanFreq()-X
######fBodyGyro-meanFreq()-Y
######fBodyGyro-meanFreq()-Z
######fBodyAccMag-mean()
######fBodyAccMag-std()
######fBodyAccMag-meanFreq()
######fBodyBodyAccJerkMag-mean()
######fBodyBodyAccJerkMag-std()
######fBodyBodyAccJerkMag-meanFreq()
######fBodyBodyGyroMag-mean()
######fBodyBodyGyroMag-std()
######fBodyBodyGyroMag-meanFreq()
######fBodyBodyGyroJerkMag-mean()
######fBodyBodyGyroJerkMag-std()
######fBodyBodyGyroJerkMag-meanFreq()"

