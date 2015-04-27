# download and unzip
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileURL, "Dataset.zip", method = "curl")
unzip("Dataset.zip")

# read the data
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
data_test <- read.table("UCI HAR Dataset/test/X_test.txt")
activity_test <-read.table("UCI HAR Dataset/test/y_test.txt")

subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
data_train <- read.table("UCI HAR Dataset/train/X_train.txt")
activity_train <-read.table("UCI HAR Dataset/train/y_train.txt")

features <- read.table("UCI HAR Dataset/features.txt")
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")
    
# 1. Merges the training and the test sets to create one data set.
all_test <- cbind(subject_test, activity_test,data_test)
all_train <- cbind(subject_train, activity_train, data_train)
all <- rbind(all_test,all_train)
# remove no longer used data frames
rm("all_test","all_train","subject_test","subject_train","data_test","data_train","activity_test","activity_train")
    
# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
regex <- c("*mean\\(+","*std*")
measures_interest_index <- sapply(regex, function(y) grep(y,features[,2]))
measures_interest_index <- sort(as.vector(measures_interest_index))
# add 2 to account for the first two columns which are the subject and the activity
all <- all[,c(1,2,measures_interest_index + 2)]

# 3. Uses descriptive activity names to name the activities in the data set
all[[2]]<-factor(all[[2]], ordered = FALSE, labels=activity_labels[[2]])

# 4. Appropriately labels the data set with descriptive variable names. 
measures_interest_names <- as.vector.factor(features[measures_interest_index,2])
# remove - 
measures_interest_names <- gsub("-","",measures_interest_names)
# change t for time and f for frequency at the beginning of the string
measures_interest_names <- sub("^t","time",measures_interest_names)
measures_interest_names <- sub("^f","frequency",measures_interest_names)
# chance Acc to Accel
measures_interest_names <- gsub("Acc","Accel",measures_interest_names)
# change mean and std to Mean and StdDev
measures_interest_names <- gsub("mean\\()","Mean",measures_interest_names)
measures_interest_names <- gsub("std\\()","StdDev",measures_interest_names)
# fix mistake in names containing BodyBody
measures_interest_names <- gsub("BodyBody","Body",measures_interest_names)
# set names
names(all) <- c("subject","activity",measures_interest_names)

# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
tidy <- aggregate(. ~ subject + activity, all, mean)
tidy <- tidy[order(tidy$subject),]
#output
write.table(tidy,"tidyData.txt", row.name = FALSE)