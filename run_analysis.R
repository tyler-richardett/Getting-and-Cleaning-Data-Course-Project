## Download data set
destfile <- "activity.zip"
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

if(!file.exists(destfile)){
        download.file(fileURL, destfile)
}

unzip(destfile)

## Load libraries
library(dplyr)

## Read in data
subjectTest <- read.table("./UCI HAR Dataset/test/subject_test.txt")
yTest <- read.table("./UCI HAR Dataset/test/y_test.txt")
xTest <- read.table("./UCI HAR Dataset/test/X_test.txt")

subjectTrain <- read.table("./UCI HAR Dataset/train/subject_train.txt")
yTrain <- read.table("./UCI HAR Dataset/train/y_train.txt")
xTrain <- read.table("./UCI HAR Dataset/train/X_train.txt")

features <- read.table("./UCI HAR Dataset/features.txt")

## Merge X, Y, subject tables by row
tableX <- rbind(xTest, xTrain)
tableY <- rbind(yTest, yTrain)
tableSubject <- rbind(subjectTest, subjectTrain)

## Add column names to all tables
colnames(tableX) <- as.list(features)$V2
colnames(tableY) <- "activityids"
colnames(tableSubject) <- "subjectids"

## Subset mean and std columns
tableX <- subset(tableX, select = grep("mean()|std()", names(tableX)))

## Combine X, Y, subject tables by column
tableMaster <- cbind(tableSubject, tableY, tableX)

## Read in activity lables and add column names
activities <- read.table("./UCI HAR Dataset/activity_labels.txt")
colnames(activities) <- c("activityids", "activitynames")

## Merge tables to create descriptive activity names
tableMaster <- merge(x=tableMaster, y=activities, by="activityids")
tableMaster <- select(tableMaster, subjectids, activitynames, everything(), -activityids)

## Clean up column names
names(tableMaster) <- tolower(names(tableMaster))
names(tableMaster) <- sub("^t", "time.", names(tableMaster))
names(tableMaster) <- sub("^f", "freq.", names(tableMaster))
names(tableMaster) <- sub("bodybody", "body", names(tableMaster))
names(tableMaster) <- gsub("\\()", "", names(tableMaster))
names(tableMaster) <- gsub("-", ".", names(tableMaster))

## Create tidy dataset (summarize each)
tableMasterTidy <- tbl_df(tableMaster)
tableMasterTidy <- tableMasterTidy %>%
        group_by(subjectids, activitynames) %>%
        summarize_all(mean)

## Create tidy data file
write.table(tableMasterTidy, file = "tidy.txt", row.names = FALSE)