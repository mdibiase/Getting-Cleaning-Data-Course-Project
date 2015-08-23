The Variables (column names) 

subject_id : The id numbers of the 30 people who participated in the study. These were 
             originally in two separate files, 9 in the "test" and 21 in the "train" 
             groups. Part of the analysis is to combine the two sets of data into one. 
             
activity : One of six movements that the cell phones measured. 
           1 - Walking
           2 - Walking_Upstairs
           3 - Walking_Downstairs
           4 - Sitting
           5 - Standing
           6 - Laying
           
The rest of the columns measurements taken from a Galaxy S II worn by the subjects of the 
study. The internal accelerometer and gyroscope that the subjects wore on their hips 
recorded the measurements. This "tidy" data set only retained the calculations of the
mean and standard deviation of each variable, and the final table is the average of 
each of those calculations for all 30 subjects and all 6 activities (meaning 180 total
rows). XYZ indicates the 3 directions. t indicates time, and f to indicate a frequency 
domain signal. 

See the below quote for an explanation of the files where the data came from and the units. 
The quote comes from the README.md file associated with the data. 
___________
"The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity 
 for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the 
   smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 
   128 element vector. The same description applies for the 'total_acc_x_train.txt' 
   and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by 
   subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by 
   the gyroscope for each window sample. The units are radians/second. 

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file."

___________

Below is a list of the variables I retained and are in the data set. For an explanation
please see the README as too why these ones were retained. 

                   tBodyAcc_mean_x
                   tBodyAcc_mean_y 
                   tBodyAcc_mean_z 
                   tBodyAcc_std_x 
                   tBodyAcc_std_y 
                   tBodyAcc_std_z 
                   tGravityAcc_mean_x
                   tGravityAcc_mean_y 
                   tGravityAcc_mean_z 
                   tGravityAcc_std_x 
                   tGravityAcc_std_y 
                   tGravityAcc_std_z 
                   tBodyAccJerk_mean_x 
                   tBodyAccJerk_mean_y 
                   tBodyAccJerk_mean_z 
                   tBodyAccJerk_std_x 
                   tBodyAccJerk_std_y 
                   tBodyAccJerk_std_z 
                   tBodyGyro_mean_x 
                   tBodyGyro_mean_y 
                   tBodyGyro_mean_z 
                   tBodyGyro_std_x 
                   tBodyGyro_std_y 
                   tBodyGyro_std_z 
                   tBodyGyroJerk_mean_x 
                   tBodyGyroJerk_mean_y 
                   tBodyGyroJerk_mean_z 
                   tBodyGyroJerk_std_x 
                   tBodyGyroJerk_std_y 
                   tBodyGyroJerk_std_z 
                   tBodyAccMag_mean 
                   tBodyAccMag_std 
                   tGravityAccMag_mean 
                   tGravityAccMag_std 
                   tBodyAccJerkMag_mean 
                   tBodyAccJerkMag_std 
                   tBodyGyroMag_mean  
                   tBodyGyroMag_std 
                   tBodyGyroJerkMag_mean 
                   tBodyGyroJerkMag_std 
                   fBodyAcc_mean_x 
                   fBodyAcc_mean_y 
                   fBodyAcc_mean_z 
                   fBodyAcc_std_x 
                   fBodyAcc_std_y 
                   fBodyAcc_std_z 
                   fBodyAccJerk_mean_x 
                   fBodyAccJerk_mean_y 
                   fBodyAccJerk_mean_z 
                   fBodyAccJerk_std_x 
                   fBodyAccJerk_std_y 
                   fBodyAccJerk_std_z 
                   fBodyGyro_mean_x 
                   fBodyGyro_mean_y  
                   fBodyGyro_mean_z 
                   fBodyGyro_std_x 
                   fBodyGyro_std_y 
                   fBodyGyro_std_z 
                   fBodyAccMag_mean 
                   fBodyAccMag_std 
                   fBodyBodyGyroMag_mean 
                   fBodyBodyGyroMag_std 
                   fBodyBodyGyroJerkMag_mean 
                   fBodyBodyGyroJerkMag_mean
