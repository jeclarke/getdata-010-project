This file describes the variables, the data, and any transformations or work that I performed to clean up the data

# Code Book
The fields in averages.txt are:

Group fields, the other data points are aggregated over all the samples for this activity/subject combination
1. Group.label - the activity label this record contains data for
1. Group.subject - the subject (person) this record contains data

Data fields, the mean values for all samples whose names contain the words "mean" or "std" for the given activty/subject combination. Refer to the documentation in the source dataset to understand these fields. These fields are:
1. tBodyAcc_mean_X
1. tBodyAcc_mean_Y
1. tBodyAcc_mean_Z
1. tBodyAcc_std_X
1. tBodyAcc_std_Y
1. tBodyAcc_std_Z
1. tGravityAcc_mean_X
1. tGravityAcc_mean_Y
1. tGravityAcc_mean_Z
2. tGravityAcc_std_X
3. tGravityAcc_std_Y
4. tGravityAcc_std_Z
5. tBodyAccJerk_mean_X
6. tBodyAccJerk_mean_Y
7. tBodyAccJerk_mean_Z
8. tBodyAccJerk_std_X
9. tBodyAccJerk_std_Y
10. tBodyAccJerk_std_Z
11. tBodyGyro_mean_X
12. tBodyGyro_mean_Y
13. tBodyGyro_mean_Z
14. tBodyGyro_std_X
15. tBodyGyro_std_Y
16. tBodyGyro_std_Z
17. tBodyGyroJerk_mean_X
18. tBodyGyroJerk_mean_Y
19. tBodyGyroJerk_mean_Z
20. tBodyGyroJerk_std_X
21. tBodyGyroJerk_std_Y
22. tBodyGyroJerk_std_Z
23. tBodyAccMag_mean
24. tBodyAccMag_std
25. tGravityAccMag_meantGravityAccMag_std" "tBodyAccJerkMag_mean" "tBodyAccJerkMag_std" "tBodyGyroMag_mean" "tBodyGyroMag_std" "tBodyGyroJerkMag_mean" "tBodyGyroJerkMag_std" "fBodyAcc_mean_X" "fBodyAcc_mean_Y" "fBodyAcc_mean_Z" "fBodyAcc_std_X" "fBodyAcc_std_Y" "fBodyAcc_std_Z" "fBodyAccJerk_mean_X" "fBodyAccJerk_mean_Y" "fBodyAccJerk_mean_Z" "fBodyAccJerk_std_X" "fBodyAccJerk_std_Y" "fBodyAccJerk_std_Z" "fBodyGyro_mean_X" "fBodyGyro_mean_Y" "fBodyGyro_mean_Z" "fBodyGyro_std_X" "fBodyGyro_std_Y" "fBodyGyro_std_Z" "fBodyAccMag_mean" "fBodyAccMag_std" "fBodyBodyAccJerkMag_mean" "fBodyBodyAccJerkMag_std" "fBodyBodyGyroMag_mean" "fBodyBodyGyroMag_std" "fBodyBodyGyroJerkMag_mean" "fBodyBodyGyroJerkMag_std"

