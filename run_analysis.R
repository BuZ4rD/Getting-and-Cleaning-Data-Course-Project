# ---
# title: "project_script"
# author: "Mathias"
# date: "10/09/2020"
# 
# ---
  
#### Load environment
  
library(dplyr)
library(data.table)

#### Download and unzip the dataset


url = "http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
if (!dir.exists("./data/")){ dir.create("./data")}
download.file(url, destfile = "./data/data.zip")
unzip("./data/data.zip", exdir = "./data")



#### Open and load the dataset



# train set
trainXpath <- "./data/UCI HAR Dataset/train/X_train.txt"
trainX <- read.table(trainXpath)

trainypath <- "./data/UCI HAR Dataset/train/y_train.txt"
trainy <- read.table(trainypath)

trainsubjectPath <- "./data/UCI HAR Dataset/train/subject_train.txt"
trainsubject <- read.table(trainsubjectPath)

# test set
testXpath <- "./data/UCI HAR Dataset/test/X_test.txt"
testX <- read.table(testXpath)

testypath <- "./data/UCI HAR Dataset/test/y_test.txt"
testy <- read.table(testypath)

testsubjectPath <- "./data/UCI HAR Dataset/test/subject_test.txt"
testsubject <- read.table(testsubjectPath)

# features
featuresPath <- "./data/UCI HAR Dataset/features.txt"
features <- read.table(featuresPath)

# activities
activity_labelsPath <- "./data/UCI HAR Dataset/activity_labels.txt"
activity_labels <- read.table(activity_labelsPath)


#### Rename the columns with the features


colnames(trainX) <- features[,2]
colnames(testX) <- features[,2]

rm(features)


#### Merging


train <- trainX
train$subject <- factor(trainsubject$V1)
train$activity <- trainy$V1

test$subject <- factor(testsubject$V1)
test$activity <- testy$V1

DF <- rbind(train, test)
head(DF[,560:563])

rm(test,testsubject,testy,testX)
rm(train,trainsubject,trainy,trainX)


#### Keep only means and standard


col_to_keep <- grep("std\\(\\)|mean\\(\\)|activity|subject", colnames(DF), value=TRUE)

DF <- DF[,col_to_keep]


#### Give activity names instead of numeric code and reorder columns


# 1 WALKING
# 2 WALKING_UPSTAIRS
# 3 WALKING_DOWNSTAIRS
# 4 SITTING
# 5 STANDING
# 6 LAYING

# Got issues with the factor() function...
# old fashion way then...

DF$activity[1]
DF$activity_name <- DF$activity
for (i in 1:nrow(DF)){
  if (DF$activity[i] == 1) {activity_name <- "WALKING" }
  if (DF$activity[i] == 2) {activity_name <- "WALKING_UPSTAIRS" }
  if (DF$activity[i] == 3) {activity_name <- "WALKING_DOWNSTAIRS" }
  if (DF$activity[i] == 4) {activity_name <- "SITTING" }
  if (DF$activity[i] == 5) {activity_name <- "STANDING" }
  if (DF$activity[i] == 6) {activity_name <- "LAYING" }
  DF$activity_name[i]<- activity_name
}

rm(activity_labels)

# Reorder to see activity and subject first
lastcols <- c((ncol(DF)-2):ncol(DF),1:((ncol(DF)-3)))
DF <- DF[,lastcols]



##### Melting to extract mean values for eachsubject and activity



col_to_melt = grep("std\\(\\)|mean\\(\\)", colnames(DF), value=TRUE)
DF_melt <-melt(DF, id = c('activity_name', 'subject'), measure.vars = col_to_melt)

# compute mean for each activity for each subject
DF_tidy <- dcast(DF_melt, activity_name + subject ~ variable, mean)

rm(DF_melt)



##### Generate tidy data files


write.table(DF_tidy, file = "./data/dataset_step5_tidy.txt", row.names = F)

write.table(DF, file = "./data/dataset_step4_tidy.txt", row.names = F)


