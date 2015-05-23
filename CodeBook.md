# Getting And Cleaning Data - Course Project CodeBook
A code book that describes the variables, the data, and any transformations or work that you performed to clean up the data

### Source of the project
All the data used for this project comes from the project *Human activity Recognition Using Smartphones Data Set*
* For more information access the project url http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

This source data represents the data collected, from the sensor signals (accelerometer and gyroscope) of a particular mobile model, made for a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).

The Data Set used for the cleanig and getting data project comesfrom the next url URL: 

*https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


### Source files 
* features_info.txt: Shows information about the variables used on the feature vector.
* features.txt: List of all features.
* activity_labels.txt: Links the class labels with their activity name.
* train/X_train.txt: Training set.
* train/y_train.txt: Training labels.
* train/subject_train.txt: Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
* test/X_test.txt: Test set.
* test/y_test.txt: Test labels
* test/subject_test.txt: Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.

### Clean up the data
The source data from the UCI project has a lot of information no relevant for the proposed exercise. Moreover, part of the information needed was on several diferent files. For those reasons after the load of the source files the next work had to be done:

* Take from the features file the ids and descriptions of the features needed for the project (the ones that contains mean or std values)
* Select from the data set with all the information only the variables necessary for us (select usin the ids obtained above)
* Rename those variables with representative names (taken for the description of the features obtained before)
* Merge this information with the activity labels. Is important to be careful with the merge function because it creates an arrengement problem in the data, so is necessary to create a variable of arrangement.
* After doing the merge, order the data with this arrangement variable
* Insert the columns with the activities and subjects to the main data
* Those transformations must be made both train and test data
* Take the test and train data and join
* Take the last data and calcule the mean for all the variables gropued by subject and activity
* Last, take the above data set and write to a file called *tidyUCIData.txt*
* It's importatn too to remove the temporal dataset due to set memory free 

### Data dictionary
These are the main tasks of the run_analysis.R scripts

1. subject 
    * the id of the volunteer
    * 1..30 (Code of the volunteer)
2. activity
    * the activity done
    * Factor w/ 6 levels (LAYING SITTING STANDING WALKING WALKING_DOWNSTAIRS WALKING_UPSTAIRS)
3. tBodyAcc-mean()-X
    * The mean of the original variable group by subject and activity
    * num 
4. tBodyAcc-mean()-Y
    * The mean of the original variable group by subject and activity
    * num 
5. tBodyAcc-mean()-Z
    * The mean of the original variable group by subject and activity
    * num 
6. tBodyAcc-std()-X 
    * The mean of the original variable group by subject and activity
    * num 
7. tBodyAcc-std()-Y 
    * The mean of the original variable group by subject and activity
    * num 
8. tBodyAcc-std()-Z 
    * The mean of the original variable group by subject and activity
    * num 
9. tGravityAcc-mean()-X
    * The mean of the original variable group by subject and activity
    * num 
10. tGravityAcc-mean()-Y
    * The mean of the original variable group by subject and activity
    * num 
11. tGravityAcc-mean()-Z
    * The mean of the original variable group by subject and activity
    * num 
12. tGravityAcc-std()-X
    * The mean of the original variable group by subject and activity
    * num 
13. tGravityAcc-std()-Y
    * The mean of the original variable group by subject and activity
    * num 
14. tGravityAcc-std()-Z
    * The mean of the original variable group by subject and activity
    * num 
15. tBodyAccJerk-mean()-X          
    * The mean of the original variable group by subject and activity
    * num 
16. tBodyAccJerk-mean()-Y
    * The mean of the original variable group by subject and activity
    * num 
17. tBodyAccJerk-mean()-Z
    * The mean of the original variable group by subject and activity
    * num 
18. tBodyAccJerk-std()-X
    * The mean of the original variable group by subject and activity
    * num 
19. tBodyAccJerk-std()-Y
    * The mean of the original variable group by subject and activity
    * num 
20. tBodyAccJerk-std()-Z
    * The mean of the original variable group by subject and activity
    * num 
21. tBodyGyro-mean()-X
    * The mean of the original variable group by subject and activity
    * num 
22. tBodyGyro-mean()-Y
    * The mean of the original variable group by subject and activity
    * num 
23. tBodyGyro-mean()-Z
    * The mean of the original variable group by subject and activity
    * num 
24. tBodyGyro-std()-X
    * The mean of the original variable group by subject and activity
    * num 
25. tBodyGyro-std()-Y
    * The mean of the original variable group by subject and activity
    * num 
26. tBodyGyro-std()-Z
    * The mean of the original variable group by subject and activity
    * num 
27. tBodyGyroJerk-mean()-X         
    * The mean of the original variable group by subject and activity
    * num 
28. tBodyGyroJerk-mean()-Y
    * The mean of the original variable group by subject and activity
    * num 
29. tBodyGyroJerk-mean()-Z
    * The mean of the original variable group by subject and activity
    * num 
30. tBodyGyroJerk-std()-X"          
    * The mean of the original variable group by subject and activity
    * num 
31. tBodyGyroJerk-std()-Y
    * The mean of the original variable group by subject and activity
    * num 
32. tBodyGyroJerk-std()-Z
    * The mean of the original variable group by subject and activity
    * num 
33. tBodyAccMag-mean()
    * The mean of the original variable group by subject and activity
    * num 
34. tBodyAccMag-std()
    * The mean of the original variable group by subject and activity
    * num 
35. tGravityAccMag-mean()
    * The mean of the original variable group by subject and activity
    * num 
36. tGravityAccMag-std()
    * The mean of the original variable group by subject and activity
    * num 
37. tBodyAccJerkMag-mean()
    * The mean of the original variable group by subject and activity
    * num 
38. tBodyAccJerkMag-std()
    * The mean of the original variable group by subject and activity
    * num 
39. tBodyGyroMag-mean()
    * The mean of the original variable group by subject and activity
    * num 
40. tBodyGyroMag-std()
    * The mean of the original variable group by subject and activity
    * num 
41. tBodyGyroJerkMag-mean()
    * The mean of the original variable group by subject and activity
    * num 
42. tBodyGyroJerkMag-std()"         
    * The mean of the original variable group by subject and activity
    * num 
43. fBodyAcc-mean()-X
    * The mean of the original variable group by subject and activity
    * num 
44. fBodyAcc-mean()-Y
    * The mean of the original variable group by subject and activity
    * num 
45. fBodyAcc-mean()-Z
    * The mean of the original variable group by subject and activity
    * num 
46. fBodyAcc-std()-X
    * The mean of the original variable group by subject and activity
    * num 
47. fBodyAcc-std()-Y
    * The mean of the original variable group by subject and activity
    * num 
48. fBodyAcc-std()-Z
    * The mean of the original variable group by subject and activity
    * num 
49. fBodyAcc-meanFreq()-X
    * The mean of the original variable group by subject and activity
    * num 
50. fBodyAcc-meanFreq()-Y
    * The mean of the original variable group by subject and activity
    * num 
51. fBodyAcc-meanFreq()-Z          
    * The mean of the original variable group by subject and activity
    * num 
52. fBodyAccJerk-mean()-X
    * The mean of the original variable group by subject and activity
    * num 
53. fBodyAccJerk-mean()-Y
    * The mean of the original variable group by subject and activity
    * num 
54. fBodyAccJerk-mean()-Z"          
    * The mean of the original variable group by subject and activity
    * num 
55. fBodyAccJerk-std()-X
    * The mean of the original variable group by subject and activity
    * num 
56. fBodyAccJerk-std()-Y
    * The mean of the original variable group by subject and activity
    * num 
57. fBodyAccJerk-std()-Z
    * The mean of the original variable group by subject and activity
    * num 
58. fBodyAccJerk-meanFreq()-X
    * The mean of the original variable group by subject and activity
    * num 
59.  fBodyAccJerk-meanFreq()-Y
    * The mean of the original variable group by subject and activity
    * num 
60. fBodyAccJerk-meanFreq()-Z"      
    * The mean of the original variable group by subject and activity
    * num 
61. fBodyGyro-mean()-X
    * The mean of the original variable group by subject and activity
    * num 
62. fBodyGyro-mean()-Y
    * The mean of the original variable group by subject and activity
    * num 
63. fBodyGyro-mean()-Z
    * The mean of the original variable group by subject and activity
    * num 
64. fBodyGyro-std()-X
    * The mean of the original variable group by subject and activity
    * num 
65. fBodyGyro-std()-Y
    * The mean of the original variable group by subject and activity
    * num 
66. fBodyGyro-std()-Z
    * The mean of the original variable group by subject and activity
    * num 
67. fBodyGyro-meanFreq()-X
    * The mean of the original variable group by subject and activity
    * num 
68. fBodyGyro-meanFreq()-Y
    * The mean of the original variable group by subject and activity
    * num 
69. fBodyGyro-meanFreq()-Z"         
    * The mean of the original variable group by subject and activity
    * num 
70. fBodyAccMag-mean()
    * The mean of the original variable group by subject and activity
    * num 
71. fBodyAccMag-std()
    * The mean of the original variable group by subject and activity
    * num 
72. fBodyAccMag-meanFreq()         
    * The mean of the original variable group by subject and activity
    * num 
73. fBodyBodyAccJerkMag-mean()
    * The mean of the original variable group by subject and activity
    * num 
74. fBodyBodyAccJerkMag-std()
    * The mean of the original variable group by subject and activity
    * num 
75. fBodyBodyAccJerkMag-meanFreq()
    * The mean of the original variable group by subject and activity
    * num 
76. fBodyBodyGyroMag-mean()
    * The mean of the original variable group by subject and activity
    * num 
77. fBodyBodyGyroMag-std()
    * The mean of the original variable group by subject and activity
    * num 
78. fBodyBodyGyroMag-meanFreq()
    * The mean of the original variable group by subject and activity
    * num 
79. fBodyBodyGyroJerkMag-mean()
    * The mean of the original variable group by subject and activity
    * num 
80. fBodyBodyGyroJerkMag-std()
    * The mean of the original variable group by subject and activity
    * num 
81. fBodyBodyGyroJerkMag-meanFreq()
    * The mean of the original variable group by subject and activity
    * num 


### For more information about the script see the README.md
* [./CodeBook.md](https://github.com/interpueblos/UCI_HAR/blob/master/README.md)
 
