library(dplyr)

setwd("UCI HAR Dataset")



## Loads and merges train and test data sets, with features as variable names

features <- read.table("features.txt")[,2]

subjects <- read.table("train/subject_train.txt", col.names = "subject")
x <- read.table("train/X_train.txt", comment.char = "", col.names = features, colClasses = "numeric")
train <- bind_cols(subjects, x)
train <- mutate(train, set = "train", activity = read.table("train/y_train.txt")[,1])

subjects <- read.table("test/subject_test.txt", col.names = "subject")
x <- read.table("test/X_test.txt", comment.char = "", col.names = features, colClasses = "numeric")
test <- bind_cols(subjects, x) ; rm(subjects, x)
test <- mutate(test, set = "test", activity = read.table("test/y_test.txt")[,1])

df <- bind_rows(train, test)

## Extracts only the measurements on the mean and standard deviation for each measurement. 

meanVars <- grep("mean[^Freq]",names(df))
stdVars <- grep("std",names(df))

df <- select(df, subject, meanVars, stdVars, activity)

## Explicitly labels activities and clarifies variable names

labels <- read.table("activity_labels.txt")[,2]
df <- mutate(df, activity = labels[activity])

names(df) <- names(df) %>% {gsub("Body", ".body", .)} %>% {gsub("Gravity", ".gravity", .)} %>% {gsub("Jerk", ".jerk", .)} %>% {gsub("^t", "time", .)} %>% {gsub("^f", "freq", .)} %>% {gsub("Acc", ".accelerometer", .)} %>% {gsub("Gyro", ".gyroscope", .)} %>% {gsub("Mag", ".magnitude", .)} %>% {gsub("\\.\\.\\.", "\\.", .)} %>% {gsub("\\.\\.", "", .)}

## Creates an independent tidy data set with the average of each variable for each activity and each subject

avg <- group_by(df, activity, subject) %>% summarise_all(funs(mean))
write.table(avg, "tidy_run.txt", row.names = FALSE)
