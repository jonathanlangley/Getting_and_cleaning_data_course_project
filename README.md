# Getting and Cleaning Data - Course Project

This is the README.md file for the Course Project (getdata-030). 

This repository includes this **README.md** file, a copy of **tidy.txt**, the **run_analysis.R** script and a **CodeBook.md** which describes the variables, the data, and any transformations performed.

The dataset used in this project represents data collected from the accelerometers from the Samsung Galaxy S smartphone.

The experiments were carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.

The raw data included the following:-

- 'train/X_train.txt': Training set. (561 features, all unlabelled)
- 'train/y_train.txt': Training labels.
- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
- 'test/X_test.txt': Test set. (561 features, all unlabelled)
- 'test/y_test.txt': Test labels.
- 'test/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.

The R script, *run_analysis.R*, does the following:

1.  Downloads the dataset and unzips the files in the working directory
2.	Reads both the training and testing datasets, adding the labels and subjects as columns
3.	Reads the features and apply substitutions to improve the feature names (remove the "()" and "-" symbols in the names, as well as make the first letter of "mean" and "std" with upper case "M" and "S")
4.	Reads the activity labels
5.	Binds training and testing datasets together
6.	Reduces the features table to include only the data on mean and std. dev.
7.	Remove unwanted columns from the combined dataset
8.	Add feature names to the combined dataset, making all names lowercase.
9.	Converts the activity and subject columns into factors
10.	Creates a new dataset with the average of each variable for each activity and each subject (using the dcast and melt functions from the reshape2 package)
11.	Writes the new dataset to a tab-delimited file called tidy.txt using row.name = FALSE.
