## Assuming all files are in one directory...
## Reads files into R
subject_test <- read.table("subject_test.txt")
X_test <- read.table("X_test.txt")
y_test <- read.table("y_test.txt")
subject_train <- read.table("subject_train.txt")
X_train <- read.table("X_train.txt")
y_train <- read.table("y_train.txt")

## Renames the columns
subject_test <- rename(subject_test, subject = V1)
subject_train <- rename(subject_train, subject = V1)
y_test <- rename(y_test, activity = V1)
y_train <- rename(y_test, activity = V1)

## Binds the "test" and "train" data together, then combines
combined_test <- cbind(subject_test, y_test, X_test)
combined_train <- cbind(subject_train, y_train, X_train)
combined <- rbind(combined_test, combined_train)

## Orders by subject_id and activity
combined <- combined[ordered(subject, activity), ]

## Groups by subject, then takes the mean of each variable
## and renames the columns. 
combined1 <- group_by(combined, subject, activity)
rough_answer <- summarise(combined1, 
                   tBodyAcc_mean_x = mean(V1),
                   tBodyAcc_mean_y = mean(V2),
                   tBodyAcc_mean_z = mean(V3),
                   tBodyAcc_std_x = mean(V4),
                   tBodyAcc_std_y = mean(V5),
                   tBodyAcc_std_z = mean(V6),
                   tGravityAcc_mean_x = mean(V41),
                   tGravityAcc_mean_y = mean(V42),
                   tGravityAcc_mean_z = mean(V43),
                   tGravityAcc_std_x = mean(V44),
                   tGravityAcc_std_y = mean(V45),
                   tGravityAcc_std_z = mean(V46),
                   tBodyAccJerk_mean_x = mean(V81),
                   tBodyAccJerk_mean_y = mean(V82),
                   tBodyAccJerk_mean_z = mean(V83),
                   tBodyAccJerk_std_x = mean(V84),
                   tBodyAccJerk_std_y = mean(V85),
                   tBodyAccJerk_std_z = mean(V86),
                   tBodyGyro_mean_x = mean(V121),
                   tBodyGyro_mean_y = mean(V122),
                   tBodyGyro_mean_z = mean(V123),
                   tBodyGyro_std_x = mean(V124),
                   tBodyGyro_std_y = mean(V125),
                   tBodyGyro_std_z = mean(V126),
                   tBodyGyroJerk_mean_x = mean(V161),
                   tBodyGyroJerk_mean_y = mean(V162),
                   tBodyGyroJerk_mean_z = mean(V163),
                   tBodyGyroJerk_std_x = mean(V164),
                   tBodyGyroJerk_std_y = mean(V165),
                   tBodyGyroJerk_std_z = mean(V166), 
                   tBodyAccMag_mean = mean(V201),
                   tBodyAccMag_std = mean(V202), 
                   tGravityAccMag_mean = mean(V214),
                   tGravityAccMag_std = mean(V215), 
                   tBodyAccJerkMag_mean = mean(V227),
                   tBodyAccJerkMag_std = mean(V228),
                   tBodyGyroMag_mean = mean(V240), 
                   tBodyGyroMag_std = mean(V241),
                   tBodyGyroJerkMag_mean = mean(V253), 
                   tBodyGyroJerkMagstd = mean(V254), 
                   fBodyAcc_mean_x = mean(V266), 
                   fBodyAcc_mean_y = mean(V267), 
                   fBodyAcc_mean_z = mean(V268), 
                   fBodyAcc_std_x = mean(V269), 
                   fBodyAcc_std_y = mean(V270),
                   fBodyAcc_std_z = mean(V271),
                   fBodyAccJerk_mean_x = mean(V345),
                   fBodyAccJerk_mean_y = mean(V346), 
                   fBodyAccJerk_mean_z = mean(V347), 
                   fBodyAccJerk_std_x = mean(V348),
                   fBodyAccJerk_std_y = mean(V349), 
                   fBodyAccJerk_std_z = mean(V350),
                   fBodyGyro_mean_x = mean(V424), 
                   fBodyGyro_mean_y = mean(V425), 
                   fBodyGyro_mean_z = mean(V426), 
                   fBodyGyro_std_x = mean(V427), 
                   fBodyGyro_std_y = mean(V428), 
                   fBodyGyro_std_z = mean(V429),
                   fBodyAccMag_mean = mean(V503),
                   fBodyAccMag_std = mean(V504), 
                   fBodyBodyGyroMag_mean = mean(V529),
                   fBodyBodyGyroMag_std = mean(V530), 
                   fBodyBodyGyroJerkMag_mean = mean(V542),
                   fBodyBodyGyroJerkMag_mean = mean(V543)
                   )

answer_closer <- as.data.frame(rough_answer)

## Creates a vector with the proper activity labels, then replicates it.
vector <- c("Walking", "Walking_Upstairs", "Walking_Downstairs", 
            "Sitting", "Standing", "Laying")
activity <- as.character(replicate(30, vector))

## Subsets the data frame above, then binds the "subject_id"
## "activity" vectors and "averages" data frame into a final answer. 
subject_id <- answer_closer$subject
averages <- subset(answer_closer, select = tBodyAcc_mean_x:fBodyBodyGyroJerkMag_mean)
answer2 <- cbind(subject_id, activity, averages)
