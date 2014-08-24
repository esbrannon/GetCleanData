
# This program completes the following tasks (not in this order)
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names. 
# 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

# Download and unzip file
setwd("./R/datascience/")
furl = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(furl,"./data/data.zip")
unzip("./data/data.zip")


# Read in Activity Labels and Features
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")
features <- read.table("./UCI HAR Dataset/features.txt")

# Read in Test data
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")

# Merge Test data
testdata <- cbind(subject_test, y_test, X_test)

# Read in Training data
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
subject_train<- read.table("./UCI HAR Dataset/train/subject_train.txt")

# Merge Training data
traindata <- cbind(subject_train, y_train, X_train)

# Merge Training and Test data
data <- rbind(testdata,traindata)

# Add features as column names
colnames(data) <- c("subject", "y", as.vector(features$V2))

# Save first two columns "subject" and "y" (next step will remove these)
data1 <- data[,1:2]

# Search for and save colum names with "mean" or "std"
data2<-data[, grep(paste(c("mean","std"),collapse="|"), names(data), value=TRUE)]

# Merge first two columns ("sujbect" and "std") with column names "mean" or "std"
data3<-cbind(data1,data2)

# Add column names to first two columns
colnames(activity_labels) <- c("y","activity_labels")

# Add description of the activity ("Walking", "Walking Upstairs", etc.)
data4 <- merge(activity_labels,data3,by="y")

# Calculate Mean by Subject and activity (y)
data5 <- aggregate(data4[4:82], by=list(data4$y,data4$subject), FUN=mean)
colnames(data5)[1] <- c("y")
data6 <- merge(activity_labels,data5,by="y")
data7 <- data6[,c(3,1,2,4:82)]
colnames(data7)[1:2] <- c("subject", "activity_num")

data8 <- data7[order(data7$subject, data7$activity_num), ]

write.table(data8, "output.txt", row.name=FALSE) 
