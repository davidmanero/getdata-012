library(data.table)
library(dplyr)

## Getting the metadata used for the file. Features and the Activity Labels
featureNames <- read.table("UCI HAR Dataset/features.txt")
activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt", header = FALSE)

## Reading the data of the trainings
subjectTrain <- read.table("UCI HAR Dataset/train/subject_train.txt", header = FALSE)
activityTrain <- read.table("UCI HAR Dataset/train/y_train.txt", header = FALSE)
featuresTrain <- read.table("UCI HAR Dataset/train/X_train.txt", header = FALSE)

## Reading the data for the tests
subjectTest <- read.table("UCI HAR Dataset/test/subject_test.txt", header = FALSE)
activityTest <- read.table("UCI HAR Dataset/test/y_test.txt", header = FALSE)
featuresTest <- read.table("UCI HAR Dataset/test/X_test.txt", header = FALSE)

##  ---- PART 1   ----------------------------------------------
##  Merges the training and the test sets to create one data set

## We can use rbind to combine the Training and the Test data
subject <- rbind(subjectTrain, subjectTest)
activity <- rbind(activityTrain, activityTest)
features <- rbind(featuresTrain, featuresTest)

## The name of the columns are given in the metadata files
colnames(features) <- t(featureNames[2])

## In order to get the file with the whole information we must to merge this data files
colnames(activity) <- "Activity"
colnames(subject) <- "Subject"
completeData <- cbind(features,activity,subject)

##  ---- PART 2   ----------------------------------------------
##  Extracts only the measurements on the mean and standard 
##  deviation for each measurement. 

## Once we have everything together, we must get the mean an standard deviation as they ask for
columnsWithMeanSTD <- grep(".*Mean.*|.*Std.*", names(completeData), ignore.case=TRUE)
requiredColumns <- c(columnsWithMeanSTD, 562, 563)
## And extracts the columns we are not asked for
extractedData <- completeData[,requiredColumns]

##  ---- PART 3   ----------------------------------------------
##  Uses descriptive activity names to name the activities in the data set

## Taking the names from activityLabels, and changing the numeric type to charachter
extractedData$Activity <- as.character(extractedData$Activity)
for (i in 1:6){
      extractedData$Activity[extractedData$Activity == i] <- as.character(activityLabels[i,2])
}

## Then we can factor it
extractedData$Activity <- as.factor(extractedData$Activity)

##  ---- PART 4   ----------------------------------------------
##  Appropriately labels the data set with descriptive variable names

## Changing every acronyms founded
names(extractedData)<-gsub("Acc", "Accelerometer", names(extractedData))
names(extractedData)<-gsub("Gyro", "Gyroscope", names(extractedData))
names(extractedData)<-gsub("BodyBody", "Body", names(extractedData))
names(extractedData)<-gsub("Mag", "Magnitude", names(extractedData))
names(extractedData)<-gsub("^t", "Time", names(extractedData))
names(extractedData)<-gsub("^f", "Frequency", names(extractedData))
names(extractedData)<-gsub("tBody", "Time_Body", names(extractedData))
names(extractedData)<-gsub("-mean()", "Mean", names(extractedData), ignore.case = TRUE)
names(extractedData)<-gsub("-std()", "STD", names(extractedData), ignore.case = TRUE)
names(extractedData)<-gsub("-freq()", "Frequency", names(extractedData), ignore.case = TRUE)
names(extractedData)<-gsub("angle", "Angle", names(extractedData))
names(extractedData)<-gsub("gravity", "Gravity", names(extractedData))

##  ---- PART 5   ----------------------------------------------
##  From the data set in step 4, creates a second, independent tidy data set 
##  with the average of each variable for each activity and each subject

extractedData$Subject <- as.factor(extractedData$Subject)
extractedData <- data.table(extractedData)
tidyData <- aggregate(. ~Subject + Activity, extractedData, mean)
tidyData <- tidyData[order(tidyData$Subject,tidyData$Activity),]
write.table(tidyData, file = "tidy.txt", row.names = FALSE)

