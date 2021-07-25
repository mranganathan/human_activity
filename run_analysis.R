library(readr)
library(stringr)
library(dplyr)

setwd("~/R Coursera course/human_activity")

## Load training datasets and subjects
X_train <- read.table(
  "UCI HAR Dataset/train/X_train.txt", quote="\"", comment.char="")

y_train <- read.table(
  "UCI HAR Dataset/train/y_train.txt", quote="\"", comment.char="")

subject_train <- read.table(
  "UCI HAR Dataset/train/subject_train.txt", quote="\"", comment.char="")


## Join training datasets
train <- cbind(subject_train, y_train, X_train)


## Load test datasets and subjects
X_test <- read.table(
  "UCI HAR Dataset/test/X_test.txt", quote="\"", comment.char="")

y_test <- read.table(
  "UCI HAR Dataset/test/y_test.txt", quote="\"", comment.char="")

subject_test <- read.table(
  "UCI HAR Dataset/test/subject_test.txt", quote="\"", comment.char="")


## Join test datasets
test <- cbind(subject_test, y_test, X_test)


## Load column names
features <- read.table("UCI HAR Dataset/features.txt", quote="\"", comment.char="")

## Load activities and their labels
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt", quote="\"", comment.char="")
names(activity_labels) <- c("activity_label", "activity_name")

columns <- as.array(features[, 2])


## Join training and test datasets together
data <- rbind(train, test)
names(data) <- c("person", "activity_label", columns)


## Get activity name added to main dataset
data <- data %>%
  merge(activity_labels, by = c('activity_label'))


## Extracting columns of means and standard deviations only
means <- columns[grep("std|mean[^F]", columns)]

data <- data[, c("person", "activity_name", means)]


## Calculate average breakdown by person and activity
summary <- data %>%
  group_by(person, activity_name) %>%
  summarise(across(where(is.numeric), mean))
