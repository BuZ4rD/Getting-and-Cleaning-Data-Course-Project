---
title: "project_script"
author: "Mathias"
date: "10/09/2020"
output: html_document



See readme for more information regarding the context 

The dataset has been produced from the original dataset coming from UCI HAR Dataset

## Name and path of the file:

*"./data/dataset_step5_tidy.txt"

## Dimensions of the dataset

* 181 row 
* 68 col


## Name of the Variables

   [1] "activity_name"              
   [2] "subject"                    
   [3] "fBodyBodyGyroMag-std()"     
   [4] "fBodyBodyGyroJerkMag-mean()"
   [5] "fBodyBodyGyroJerkMag-std()" 
   [6] "tBodyAcc-mean()-X"          
   [7] "tBodyAcc-mean()-Y"          
   [8] "tBodyAcc-mean()-Z"          
   [9] "tBodyAcc-std()-X"           
  [10] "tBodyAcc-std()-Y"           
  [11] "tBodyAcc-std()-Z"           
  [12] "tGravityAcc-mean()-X"       
  [13] "tGravityAcc-mean()-Y"       
  [14] "tGravityAcc-mean()-Z"       
  [15] "tGravityAcc-std()-X"        
  [16] "tGravityAcc-std()-Y"        
  [17] "tGravityAcc-std()-Z"        
  [18] "tBodyAccJerk-mean()-X"      
  [19] "tBodyAccJerk-mean()-Y"      
  [20] "tBodyAccJerk-mean()-Z"      
  [21] "tBodyAccJerk-std()-X"       
  [22] "tBodyAccJerk-std()-Y"       
  [23] "tBodyAccJerk-std()-Z"       
  [24] "tBodyGyro-mean()-X"         
  [25] "tBodyGyro-mean()-Y"         
  [26] "tBodyGyro-mean()-Z"         
  [27] "tBodyGyro-std()-X"          
  [28] "tBodyGyro-std()-Y"          
  [29] "tBodyGyro-std()-Z"          
  [30] "tBodyGyroJerk-mean()-X"     
  [31] "tBodyGyroJerk-mean()-Y"     
  [32] "tBodyGyroJerk-mean()-Z"     
  [33] "tBodyGyroJerk-std()-X"      
  [34] "tBodyGyroJerk-std()-Y"      
  [35] "tBodyGyroJerk-std()-Z"      
  [36] "tBodyAccMag-mean()"         
  [37] "tBodyAccMag-std()"          
  [38] "tGravityAccMag-mean()"      
  [39] "tGravityAccMag-std()"       
  [40] "tBodyAccJerkMag-mean()"     
  [41] "tBodyAccJerkMag-std()"      
  [42] "tBodyGyroMag-mean()"        
  [43] "tBodyGyroMag-std()"         
  [44] "tBodyGyroJerkMag-mean()"    
  [45] "tBodyGyroJerkMag-std()"     
  [46] "fBodyAcc-mean()-X"          
  [47] "fBodyAcc-mean()-Y"          
  [48] "fBodyAcc-mean()-Z"          
  [49] "fBodyAcc-std()-X"           
  [50] "fBodyAcc-std()-Y"           
  [51] "fBodyAcc-std()-Z"           
  [52] "fBodyAccJerk-mean()-X"      
  [53] "fBodyAccJerk-mean()-Y"      
  [54] "fBodyAccJerk-mean()-Z"      
  [55] "fBodyAccJerk-std()-X"       
  [56] "fBodyAccJerk-std()-Y"       
  [57] "fBodyAccJerk-std()-Z"       
  [58] "fBodyGyro-mean()-X"         
  [59] "fBodyGyro-mean()-Y"         
  [60] "fBodyGyro-mean()-Z"         
  [61] "fBodyGyro-std()-X"          
  [62] "fBodyGyro-std()-Y"          
  [63] "fBodyGyro-std()-Z"          
  [64] "fBodyAccMag-mean()"         
  [65] "fBodyAccMag-std()"          
  [66] "fBodyBodyAccJerkMag-mean()" 
  [67] "fBodyBodyAccJerkMag-std()"  
  [68] "fBodyBodyGyroMag-mean()"  


#### Transformations applied

* Add feature 'activity_name' factor variable to explicit the activities (previously just numbers)

* Melted dataset from original dataset mean computed for each measurement features for each subject for each activities.