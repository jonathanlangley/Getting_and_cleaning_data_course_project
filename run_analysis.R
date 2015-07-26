## Download the dataset
filename <- "UCI_HAR_Dataset.zip"
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", filename, method="libcurl")

## Unzip the dataset
unzip(filename)

#read and combine training data
train = read.csv("UCI HAR Dataset/train/X_train.txt", sep="", header=FALSE)
train[,562] = read.csv("UCI HAR Dataset/train/Y_train.txt", sep="", header=FALSE)
train[,563] = read.csv("UCI HAR Dataset/train/subject_train.txt", sep="", header=FALSE)

#read and combine testing data
test = read.csv("UCI HAR Dataset/test/X_test.txt", sep="", header=FALSE)
test[,562] = read.csv("UCI HAR Dataset/test/Y_test.txt", sep="", header=FALSE)
test[,563] = read.csv("UCI HAR Dataset/test/subject_test.txt", sep="", header=FALSE)

#read features and substitute to improve feature names
features = read.csv("UCI HAR Dataset/features.txt", sep="", header=FALSE)
features[,2] = gsub('-mean', 'Mean', features[,2])
features[,2] = gsub('-std', 'Std', features[,2])
features[,2] = gsub('[-()]', '', features[,2])

#read activity labels
activityLabels = read.csv("UCI HAR Dataset/activity_labels.txt", sep="", header=FALSE)

#bind training and testing data sets together
allData <- rbind(train, test)

#reduce the features table
features <- features[grep(".*Mean.*|.*Std.*", features[,2]),] 

#remove the unwanted columns from allData
allData <- allData[,c(grep(".*Mean.*|.*Std.*", features[,2]), 562, 563)]

#Add feature names to allData
colnames(allData) <- tolower(c(features$V2, "Activity", "Subject"))

#create a second tidy data set with the average of each variable for each activity and each subject.
#load reshape2 package ready to use melt and dcast functions
library(reshape2)

#convert to factors
allData$activity <- factor(allData$activity, levels = activityLabels[,1], labels = activityLabels[,2])
allData$subject <- as.factor(allData$subject)

#create the new data set with the means
tidydata <- dcast(melt(allData, id = c("subject", "activity")), subject + activity ~ variable, mean)

#write the table
write.table(tidydata, "tidy.txt", sep="\t", row.names = FALSE)