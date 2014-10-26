---
title: "Getting and Cleaning Data Project - Cookbook"
author: "PY Chia"
date: "Sunday, October 26, 2014"
output: html_document
---

## Description 

A full description is available at the site where the data was obtained: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

## Variables

"Subject"         : Each subject identified by Id                 
"Activity"        : Activity Id  
"Acitivity Desc"  : The activity description as indicated in activity_labels.txt
 
          

**mean and standard deviation measurement**

"tBodyAcc-mean()-X"               
"tBodyAcc-mean()-Y"              
"tBodyAcc-mean()-Z"              
"tBodyAcc-std()-X"
"tBodyAcc-std()-Y"    
"tBodyAcc-std()-Z"               
"tGravityAcc-mean()-X"            
"tGravityAcc-mean()-Y"  
"tGravityAcc-mean()-Z"
"tGravityAcc-std()-X"            
"tGravityAcc-std()-Y"
"tGravityAcc-std()-Z"           
"tBodyAccJerk-mean()-X"      
"tBodyAccJerk-mean()-Y"        
"tBodyAccJerk-mean()-Z"
"tBodyAccJerk-std()-X"
"tBodyAccJerk-std()-Y"
"tBodyAccJerk-std()-Z"           
"tBodyGyro-mean()-X"            
"tBodyGyro-mean()-Y" 
"tBodyGyro-mean()-Z"
"tBodyGyro-std()-X"              
"tBodyGyro-std()-Y"
"tBodyGyro-std()-Z"
"tBodyGyroJerk-mean()-X"
"tBodyGyroJerk-mean()-Y"         
"tBodyGyroJerk-mean()-Z"
"tBodyGyroJerk-std()-X"
"tBodyGyroJerk-std()-Y" 
"tBodyGyroJerk-std()-Z"          
"tBodyAccMag-mean()"
"tBodyAccMag-std()" 
"tGravityAccMag-mean()"
"tGravityAccMag-std()"           
"tBodyAccJerkMag-mean()"    
"tBodyAccJerkMag-std()"
"tBodyGyroMag-mean()"   
"tBodyGyroMag-std()"             
"tBodyGyroJerkMag-mean()" 
"tBodyGyroJerkMag-std()"
"fBodyAcc-mean()-X"
"fBodyAcc-mean()-Y"              
"fBodyAcc-mean()-Z"      
"fBodyAcc-std()-X"
"fBodyAcc-std()-Y"  
"fBodyAcc-std()-Z"               
"fBodyAcc-meanFreq()-X" 
"fBodyAcc-meanFreq()-Y"  
"fBodyAcc-meanFreq()-Z"
"fBodyAccJerk-mean()-X"          
"fBodyAccJerk-mean()-Y"      
"fBodyAccJerk-mean()-Z"           
"fBodyAccJerk-std()-X"
"fBodyAccJerk-std()-Y"           
"fBodyAccJerk-std()-Z"
"fBodyAccJerk-meanFreq()-X"
"fBodyAccJerk-meanFreq()-Y"
"fBodyAccJerk-meanFreq()-Z"      
"fBodyGyro-mean()-X"
"fBodyGyro-mean()-Y"
"fBodyGyro-mean()-Z"
"fBodyGyro-std()-X"              
"fBodyGyro-std()-Y"
"fBodyGyro-std()-Z" 
"fBodyGyro-meanFreq()-X"   
"fBodyGyro-meanFreq()-Y"         
"fBodyGyro-meanFreq()-Z" 
"fBodyAccMag-mean()"   
"fBodyAccMag-std()"  
"fBodyAccMag-meanFreq()"         
"fBodyBodyAccJerkMag-mean()"   
"fBodyBodyAccJerkMag-std()"
"fBodyBodyAccJerkMag-meanFreq()" 
"fBodyBodyGyroMag-mean()"        
"fBodyBodyGyroMag-std()" 
"fBodyBodyGyroMag-meanFreq()"
"fBodyBodyGyroJerkMag-mean()" 
"fBodyBodyGyroJerkMag-std()"     
"fBodyBodyGyroJerkMag-meanFreq()" 



## Data transformation performed to clean up the data

1) Merge Test data set and training data set.

2) Add descriptive variable names from features.txt to merged data set 

3) Extracts only the measurements on the mean and standard deviation for each measurement. This is done by extracting column names that has the word "mean" or "std" appearing in the column name. 

4) Merge the training labels, test labels and the mean and standard deviation measurements to form a new data set . A new column named ActivityDesc were added to store the descriptive activity names. New average of each activity is computed. 

5) The data set created in step 4 is written to tidydata.txt file.

