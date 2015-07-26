#CodeBook.md

This code book describes the variables and the data. The README.md describes the run_analysis.R script with further details on the transformations performed to clean up the data.

 A full description of the data is available here: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

###Variables

In this project we reduce the raw data to only include the mean and standard deviation for each measurement:-

- mean(): Mean value
- std(): Standard deviation

###Identifiers

- "subject" - An identifier of the subject who carried out the experiment
- "activity" - Activity performed	

###Activity Labels

Each person performed six activities:-

1. WALKING
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING

###Features
We only extract the measurements on the mean and standard deviation:-

- "tbodyaccmeanx"
- "tbodyaccmeany"
- "tbodyaccmeanz"
- "tbodyaccstdx"
- "tbodyaccstdy"
- "tbodyaccstdz"
- "tgravityaccmeanx"
- "tgravityaccmeany"
- "tgravityaccmeanz"
- "tgravityaccstdx"
- "tgravityaccstdy"	
- "tgravityaccstdz"	
- "tbodyaccjerkmeanx"
- "tbodyaccjerkmeany"
- "tbodyaccjerkmeanz"
- "tbodyaccjerkstdx"
- "tbodyaccjerkstdy"	
- "tbodyaccjerkstdz"	
- "tbodygyromeanx"
- "tbodygyromeany"	
- "tbodygyromeanz"	
- "tbodygyrostdx"	
- "tbodygyrostdy"	
- "tbodygyrostdz"	
- "tbodygyrojerkmeanx"	
- "tbodygyrojerkmeany"	
- "tbodygyrojerkmeanz"	
- "tbodygyrojerkstdx"	
- "tbodygyrojerkstdy"	
- "tbodygyrojerkstdz"	
- "tbodyaccmagmean"	
- "tbodyaccmagstd"	
- "tgravityaccmagmean"	
- "tgravityaccmagstd"	
- "tbodyaccjerkmagmean"	
- "tbodyaccjerkmagstd"
- "tbodygyromagmean"	
- "tbodygyromagstd"	
- "tbodygyrojerkmagmean"	
- "tbodygyrojerkmagstd"	
- "fbodyaccmeanx"	
- "fbodyaccmeany"	
- "fbodyaccmeanz"	
- "fbodyaccstdx"	
- "fbodyaccstdy"	
- "fbodyaccstdz"	
- "fbodyaccmeanfreqx"	
- "fbodyaccmeanfreqy"	
- "fbodyaccmeanfreqz"	
- "fbodyaccjerkmeanx"	
- "fbodyaccjerkmeany"	
- "fbodyaccjerkmeanz"	
- "fbodyaccjerkstdx"	
- "fbodyaccjerkstdy"	
- "fbodyaccjerkstdz"	
- "fbodyaccjerkmeanfreqx"	
- "fbodyaccjerkmeanfreqy"	
- "fbodyaccjerkmeanfreqz"	
- "fbodygyromeanx"	
- "fbodygyromeany"	
- "fbodygyromeanz"	
- "fbodygyrostdx"	
- "fbodygyrostdy"	
- "fbodygyrostdz"	
- "fbodygyromeanfreqx"	
- "fbodygyromeanfreqy"	
- "fbodygyromeanfreqz"	
- "fbodyaccmagmean"	
- "fbodyaccmagstd"	
- "fbodyaccmagmeanfreq"	
- "fbodybodyaccjerkmagmean"
- "fbodybodyaccjerkmagstd"	
- "fbodybodyaccjerkmagmeanfreq"	
- "fbodybodygyromagmean"	
- "fbodybodygyromagstd"	
- "fbodybodygyromagmeanfreq"	
- "fbodybodygyrojerkmagmean"	
- "fbodybodygyrojerkmagstd"	
- "fbodybodygyrojerkmagmeanfreq"	
- "angletbodyaccmean,gravity"	
- "angletbodyaccjerkmean,gravitymean"	
- "angletbodygyromean,gravitymean"	
- "angletbodygyrojerkmean,gravitymean"	
- "anglex,gravitymean"	
- "angley,gravitymean"	
- "anglez,gravitymean"
