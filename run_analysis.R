#Load libraries
library(data.table)
library(dplyr)

#Load test data
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt", header = FALSE)
y_test <- read.table("UCI HAR Dataset/test/y_test.txt", header = FALSE)
X_test <- read.table("UCI HAR Dataset/test/X_test.txt", header = FALSE)

#Load train data
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt", header = FALSE)
y_train <- read.table("UCI HAR Dataset/train/y_train.txt", header = FALSE)
X_train <- read.table("UCI HAR Dataset/train/X_train.txt", header = FALSE)

#Load lookup data
feature_names <- read.table("UCI HAR Dataset/features.txt")
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt", header = FALSE)

#1 - Merge the training and the test sets to create one data set
subject <- rbind(subject_train, subject_test)
activity <- rbind(y_train, y_test)
features <- rbind(X_train, X_test)

#Name the column names
colnames(features) <- t(feature_names[2])

#Add activity and subject as a column
colnames(activity) <- "Activity"
colnames(subject) <- "Subject"
combined_data <- cbind(features,activity,subject)

#2 - Extracts only the measurements on the mean and standard deviation for each measurement
columnsWithMeanSTD <- grep(".*Mean.*|.*Std.*", names(combined_data), ignore.case=TRUE)
complete_data <- combined_data[,c(columnsWithMeanSTD, 562, 563)]

#3 - Uses descriptive activity names to name the activities in the data set
complete_data$Activity <- as.character(complete_data$Activity)
for (i in 1:6){
        complete_data$Activity[complete_data$Activity == i] <- as.character(activity_labels[i,2])
}
complete_data$Activity <- as.factor(complete_data$Activity)

#4 - Appropriately labels the data set with descriptive variable names. 
names(complete_data)<-gsub("-mean\\(\\)", "Mean", names(complete_data), ignore.case = TRUE)
names(complete_data)<-gsub("-meanfreq\\(\\)", "MeanFrequency", names(complete_data), ignore.case = TRUE)
names(complete_data)<-gsub("-freq\\(\\)", "Frequency", names(complete_data), ignore.case = TRUE)
names(complete_data)<-gsub("-std\\(\\)", "STD", names(complete_data), ignore.case = TRUE)

names(complete_data)<-gsub("^t", "Time", names(complete_data))
names(complete_data)<-gsub("^f", "Frequency", names(complete_data))

names(complete_data)<-gsub("Acc", "Accelerometer", names(complete_data))
names(complete_data)<-gsub("BodyBody", "Body", names(complete_data))
names(complete_data)<-gsub("Gyro", "Gyroscope", names(complete_data))
names(complete_data)<-gsub("Mag", "Magnitude", names(complete_data))
names(complete_data)<-gsub("tBody", "TimeBody", names(complete_data))

names(complete_data)<-gsub("angle", "Angle", names(complete_data))
names(complete_data)<-gsub("gravity", "Gravity", names(complete_data))

#5 - From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
complete_data$Subject <- as.factor(complete_data$Subject)
complete_data <- data.table(complete_data)
tidy_data <- aggregate(. ~Subject + Activity, complete_data, mean)
tidy_data <- tidy_data[order(tidy_data$Subject,tidy_data$Activity),]
write.table(tidy_data, file = "Tidy.txt", row.names = FALSE)
