## Description  
Referring to the features.txt file in the original dataset, we find the following description about the dataset:   

The data been taken from the experiments carried out with a group of 30 volunteers within an age range of 19-48 years.     
Each person performed six activities 
-WALKING
-WALKING_UPSTAIRS
-WALKING_DOWNSTAIRS
-SITTING
-STANDING
-LAYING  
wearing a smartphone to their waist. Using the phone's embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz were captured,  
  
In short, for the derived dataset, the following signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.  

-tBodyAcc-XYZ
-tGravityAcc-XYZ
-tBodyAccJerk-XYZ
-tBodyGyro-XYZ
-tBodyGyroJerk-XYZ
-tBodyAccMag
-tGravityAccMag
-tBodyAccJerkMag
-tBodyGyroMag
-tBodyGyroJerkMag
-fBodyAcc-XYZ
-fBodyAccJerk-XYZ
-fBodyGyro-XYZ
-fBodyAccMag
-fBodyAccJerkMag
-fBodyGyroMag
-fBodyGyroJerkMag  

For this assignment the set of variables that were estimated from these signals are:  

-mean(): Mean value  
-std(): Standard deviation  

Additional vectors obtained by averaging the signals. These were obtained using the angle() variable:  

-gravityMean
-tBodyAccMean
-tBodyAccJerkMean
-tBodyGyroMean
-tBodyGyroJerkMean  

Any additional estimates have been removed for the purpose of this assignment.