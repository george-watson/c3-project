
	Codebook

---------------------------------

The 'tidy_run.txt' data set results from an analysis of the Human Activity Recognition Using Smartphones Dataset (Version 1.0). 

For more details, see http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.

---------------------------------

Description of the experiments :

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details.

---------------------------------

The original data set has been subset and reorganised using the 'run_analysis.txt' script : 
- the 'test' and 'train' sets have been merged
- only measurements on the mean and standard deviation of each measurement have been retained
- variables' name have been clarified, and activities' label made explicit
- for each activities and each subject, each variable has been averaged

The resulting data set is stored in 'tidy_run.txt'. 

---------------------------------

Variables :

subject : an identifier of the subject who carried out the experiment (ranging from 1 to 30).

activity : the activity label 
- WALKING
- WALKING_UPSTAIRS
- WALKING_DOWNSTAIRS
- SITTING
- STANDING
- LAYING


66 variables corresponding to estimation of signals :

The signals used are :
('-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.)
- tBodyAcc-XYZ
- tGravityAcc-XYZ
- tBodyAccJerk-XYZ
- tBodyGyro-XYZ
- tBodyGyroJerk-XYZ
- tBodyAccMag
- tGravityAccMag
- tBodyAccJerkMag
- tBodyGyroMag
- tBodyGyroJerkMag
- fBodyAcc-XYZ
- fBodyAccJerk-XYZ
- fBodyGyro-XYZ
- fBodyAccMag
- fBodyAccJerkMag
- fBodyGyroMag
- fBodyGyroJerkMag

The set of variables that were estimated from these signals, then retained for our analysis, are: 
- mean(): Mean value
- std(): Standard deviation
