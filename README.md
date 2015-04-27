# Getting-and-Cleaning-Data-Course-Project

The purpose of this project is to demonstrate my ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. For this I created the **run_analysis.R** script which does the following:


## Setup/Collection:

- Downloads and unzip the data collected from the accelerometers from the Samsung Galaxy S smartphone. Note you don't have to input anything, the url is already set and will place the files in your working directory.

- Read a total of 8 files: one contains the activity labels, another the features that are being measured and subject, activity and measurement data for the test subjects and train subjects.


## Manipulation:

- Merges the training and the test sets to create one data set. Specifically we first colomn bind the 3 files for the test subjects (subject, activity and measurement data) and then do the same for the 3 train subject files. Finally we row bind those two data sets

- We select only the measurements we're interested in, specifically extracts only the measurements on the mean and standard deviation for each measurement.

## Cleaning:

- Add descriptive activity names to name the activities in the data set. Originally they we're labeled 1-6 but we replace them with the activity labels we read in.

- Add column names to the data set. We take the measurement features and replace characters and abbreviations to create more readable and descriptive labels.

## Outputting:
- Create an independent tidy data set with the average of each variable aggregated for each activity and each subject
- Finally save the data set to a text file.


