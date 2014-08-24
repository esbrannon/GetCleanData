GetCleanData
============

#Assignment
This program completes the following tasks (not in this order)
1. Merges the training and the test sets to create one data set.
1. Extracts only the measurements on the mean and standard deviation for each measurement. 
1. Uses descriptive activity names to name the activities in the data set
1. Appropriately labels the data set with descriptive variable names. 
1. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

#Program Steps
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

# Variables
* subject: There were 30 subjects in the study, each subject can be identified by the 'subject' variable
* activity_num: There were six types of activities, these activities can be identified by the 'activity_num' variable
  * 1 = Walking
  * 2 = Walking Upstairs