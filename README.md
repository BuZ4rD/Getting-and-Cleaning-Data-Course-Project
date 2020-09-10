*** Getting-and-Cleaning-Data-Course-Project

*** Peer-graded Assignment: Getting and Cleaning Data Course Project

## CONTEXT

In the frame of the Coursera/John Hopkins courses, it has been assigned to me to complete a reasearch on the [UCI HAR dataset].

The dataset represents the human activity collected through Smartphones during an experiment/test.

More information here:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones


## DATA USED FOR THIS RESEARCH

The dataset used for this research is contained in this link :

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

I can highlight the following files, used for my work:

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

## SUMMARY

The dataset has been split for ML, we have to retro-engineer it in order to extract a human readable and undesrtandable specific analysis

## DETAIL

The request consists in the production of tidy dataset which is:
  - gathering the whole data (train data and test data merged, activities, subject)
  - get correct names for features
  - observations variables from the activity
  - representing the means by subject and by activity

## PROCEDURE

  - Download and unzip the dataset
  - Open and load the dataset
  - Rename the columns with the features
  - Merging
  - Keep only means and standard
  - Give activity names instead of numeric code and reorder columns
  - Melting to extract mean values for eachsubject and activity
  - Generate tidy data files




