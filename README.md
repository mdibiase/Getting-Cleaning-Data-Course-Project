# Getting-Cleaning-Data-Course-Project

This file explains what the run_analysis.R script does. The script itself contains step by step notes indicating the purpose of each step/block of code. However, the outline below will touch on the major points. 

The script assumes that all the files needed to run the script are in the same working directory. This is important to note, given that the original zip file that contains the data puts the "test" and "train" data in seperate directories. The user must move the files into the same directory prior to running the script. 

I selected only the variables that ended in -mean() or -std(). I made this decision after reading through the "features_info.txt" file that came with the data. The -mean(), -std() suffixs seemed to indicated which variables were indicating means and standard deviation calculations. The other variables that have "mean" in it didn't seem to be what the assignment was asking for. 

I didn't expand the variable names. This means I didn't change "fBodyAccMag" to "fBodyAccelerationMagnitude". I found conflicting opinions on this in the discussion forums. I understand that the longer version is acceptable, but I thought that the abbreviated versions made the final product more readable and were intuitive enough to avoid confusion. This is in part because all the "Acc" or "Mag" or "Gyro" all refer to the same 3 words at every instance. 

Here is the main outline of the script: 
1) Read the text files into R using read.table()
2) Rename the column of the newly created "subject" and "y" data frames to "subject" and "activity" respectfully. 
   read.table() names the columns V1 for some reason, making this step necessary. I 
   hold off on renaming the variable columns as it is done later in the analysis. 
3) Bind the "test" and "train" data together, then combine those two data frames into one large data set. 
4) Order the data by "subject" and "activity"
5) Groups the data by subject and activity using the group_by() function, then uses the summarise() function to 
   generate the means of each column. At this point, the columns are also renamed from V1, V2, etc, to the titles assigned in      the "features.txt" file that accompanies the data. I then convert the answer to a data frame. 
6) At this point, we are very close to the tidy data but need to change the "activity" rows to a character vector that             contains the various activities rather than the numbers 1-6. This is done by subsetting the subject ID and averages, then       creating a repeating character vector of the activities and using cbind() to create the final data frame. 



