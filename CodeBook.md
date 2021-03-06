This file describes the variables, the data, and any transformations or work that I performed to clean up the data

# Code Book
The fields in the output data set "averages.txt" are:

Group fields, the other data points are aggregated over all the samples for this activity/subject combination
 1. Group.label - the activity label this record contains data for
 2. Group.subject - the subject (person) this record contains data for

Data fields, the mean values over all samples for the given activty/subject combination:
 3. tBodyAcc_mean_X
 2. tBodyAcc_mean_Y
 3. tBodyAcc_mean_Z
 4. tBodyAcc_std_X
 5. tBodyAcc_std_Y
 6. tBodyAcc_std_Z
 7. tGravityAcc_mean_X
 8. tGravityAcc_mean_Y
 9. tGravityAcc_mean_Z
 10. tGravityAcc_std_X
 11. tGravityAcc_std_Y
 12. tGravityAcc_std_Z
 13. tBodyAccJerk_mean_X
 14. tBodyAccJerk_mean_Y
 15. tBodyAccJerk_mean_Z
 16. tBodyAccJerk_std_X
 17. tBodyAccJerk_std_Y
 18. tBodyAccJerk_std_Z
 19. tBodyGyro_mean_X
 20. tBodyGyro_mean_Y
 21. tBodyGyro_mean_Z
 22. tBodyGyro_std_X
 23. tBodyGyro_std_Y
 24. tBodyGyro_std_Z
 25. tBodyGyroJerk_mean_X
 26. tBodyGyroJerk_mean_Y
 27. tBodyGyroJerk_mean_Z
 28. tBodyGyroJerk_std_X
 29. tBodyGyroJerk_std_Y
 30. tBodyGyroJerk_std_Z
 31. tBodyAccMag_mean
 32. tBodyAccMag_std
 33. tGravityAccMag_meant
 34. GravityAccMag_std
 34. tBodyAccJerkMag_mean
 35. tBodyAccJerkMag_std
 36. tBodyGyroMag_mean
 37. tBodyGyroMag_std
 38. tBodyGyroJerkMag_mean
 39. tBodyGyroJerkMag_std
 40. fBodyAcc_mean_X
 41. fBodyAcc_mean_Y
 42. fBodyAcc_mean_Z
 43. fBodyAcc_std_X
 44. fBodyAcc_std_Y
 45. fBodyAcc_std_Z
 46. fBodyAccJerk_mean_X
 47. fBodyAccJerk_mean_Y
 48. fBodyAccJerk_mean_Z
 49. fBodyAccJerk_std_X
 50. fBodyAccJerk_std_Y
 51. fBodyAccJerk_std_Z
 52. fBodyGyro_mean_X
 53. fBodyGyro_mean_Y
 54. fBodyGyro_mean_Z
 55. fBodyGyro_std_X
 56. fBodyGyro_std_Y
 57. fBodyGyro_std_Z
 58. fBodyAccMag_mean
 59. fBodyAccMag_std
 60. fBodyBodyAccJerkMag_mean
 61. fBodyBodyAccJerkMag_std
 62. fBodyBodyGyroMag_mean
 63. fBodyBodyGyroMag_std
 64. fBodyBodyGyroJerkMag_mean
 65. fBodyBodyGyroJerkMag_std

# Study Design
Refer to README.txt in the source dataset for methodology on the original data collection.
The result data set for this project was formed by
 1. merging the "training" and "test" sub sets from test/X_test.txt and "train/X_train.txt
 2. selecting only fields containing the (whole) words "std" or "mean"
 3. appending activity labels for each sample from the y_test.txt and y_train.txt files using values from activity_labels.txt to assign readable names
 4. appending subject IDs for each sample from test/subject_test.txt and train/subject_train.txt
 5. averaging each column grouped by activity and subject

# Cleaning Up the Data
The field names from the sample files had brackets "()" removed and "-" replaced with underscore to allow easier use within R
