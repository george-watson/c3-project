
Analysis on the Human Activity Recognition Using Smartphones Dataset (Version 1.0)

----------------------

The 'run_analysis.R' script aims to extract the measurements on the mean and standard deviation for each measurement in the original data set, and create an independent tidy data set with the average of each variable for each activity and each subject.

For more information on data and variables, see 'CodeBook.md'.

----------------------

The 'run_analysis.R' script proceeds to :

- merge the train and test data sets into a single data frame, with a "subject" variable for the subjects' indices, an "activity" variable for the activities' indices, and one variable for each features of the original data sets. 

The measurements values come from 'X_test.txt' and 'X_train.txt', the subjects' indices from 'subject_test.txt' and 'subject_train.txt', and the activities' references from 'y_test.txt' and 'y_train.txt'. The features' names are read from 'features.txt'.

- extract only the measurements on the mean and standard deviation for each measurement, by identifying variable names containing "mean" (excluding "meanFreq") or "std". 

- replace the activities' indices by explicit labels, provided in 'activity_labels.txt'

- clarify variable names : "t" and "f" are expanded to "time" and "freq" ; "Acc", "Gyro", and "Mag", to "accelerometer", gyroscope", and "magnitude" ; upper case characters are reduced to lower case ; dots are added between terms, and multiple dots are replaced by a single dot. 

- create another data frame, grouped by activities, then subjects, and average each variable using the summarise function. 

- print the resulting set to 'tidy_run.txt'.