GetCleanData
============

##Assignment
This program completes the following tasks (not in this order)

1. Merges the training and the test sets to create one data set.

1. Extracts only the measurements on the mean and standard deviation for each measurement. 

1. Uses descriptive activity names to name the activities in the data set

1. Appropriately labels the data set with descriptive variable names. 

1. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

##Program Steps
1. Download and unzip file
1. Read in Activity Labels and Features
1. Read in Test data
1. Merge Test data
1. Read in Training data
1. Merge Training data
1. Merge Training and Test data
1. Add features as column names
1. Save first two columns "subject" and "y" (next step will remove these)
1. Search for and save colum names with "mean" or "std"
1. Merge first two columns ("sujbect" and "std") with column names "mean" or "std"
1. Add column names to first two columns
1. Add description of the activity ("Walking", "Walking Upstairs", etc.)
1. Calculate Mean by Subject and activity (y)


## Data Set Information (copied from: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 


## Attribute Information:

For each record in the dataset it is provided: 
* subject: There were 30 subjects in the study, each subject can be identified by the 'subject' variable
* activity_num: There were six types of activities, these activities can be identified by the 'activity_num' variable
  * 1 = Walking
  * 2 = Walking Upstairs
  * 3 = Walking Downstairs
  * 4 = Sitting
  * 5 = Standing
  * 6 = Laying
* Note that the 'activity_num' variable is described by the corresponding 'activity_lables' variable
* The remaining variables are the mean of the variables in the 'test' and 'train' datasets corresponding to the same subject and activity. For example, the mean value for the 'tBodyAcc-mean()-X' was calculated for subject one for each different activity (walking, walking upstairs, etc.). 
  * Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. - Mean and standard deviation only. 
  * Triaxial Angular velocity from the gyroscope. - Mean and standard deviation only.
