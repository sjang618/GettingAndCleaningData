Code Book
=========

This code book containes information about the study design and transformations of the dataset and variable names.

Study Design
------------

Source data was downloaded from <https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>. 

This data was obtained from "Human Activity Recognition Using Smartphones Data Set". The data linked are collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site <http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>.
A full description is available at the site where the data was obtained: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

1. Downloaded the zip file and unzipped the data files into the working directory.
2. Loaded test, training, and lookup datasets.
3. The subjects in training and test data sets were merged to create subject file.
4. The activities in training and test data sets were merged to create activity file.
5. Feature file was created.
6. Subject, activity, and feature files were merged to create a combine data set.
7. Complete data set was created by extracting standard deviation/mean, activity, and subject columns.
8. Column names were updated with the descriptive names.
9. Acronyms in the variable names were replaced with the descriptive labels.
10. Tidy data set was created and written into Tidy.txt file.

Variables
---------
 - Subject
 - Activity
 - TimeBodyAccelerometerMean-X
 - TimeBodyAccelerometerMean-Y
 - TimeBodyAccelerometerMean-Z
 - TimeBodyAccelerometerSTD-X
 - TimeBodyAccelerometerSTD-Y
 - TimeBodyAccelerometerSTD-Z
 - TimeGravityAccelerometerMean-X
 - TimeGravityAccelerometerMean-Y
 - TimeGravityAccelerometerMean-Z
 - TimeGravityAccelerometerSTD-X
 - TimeGravityAccelerometerSTD-Y
 - TimeGravityAccelerometerSTD-Z
 - TimeBodyAccelerometerJerkMean-X
 - TimeBodyAccelerometerJerkMean-Y
 - TimeBodyAccelerometerJerkMean-Z
 - TimeBodyAccelerometerJerkSTD-X
 - TimeBodyAccelerometerJerkSTD-Y
 - TimeBodyAccelerometerJerkSTD-Z
 - TimeBodyGyroscopeMean-X
 - TimeBodyGyroscopeMean-Y
 - TimeBodyGyroscopeMean-Z
 - TimeBodyGyroscopeSTD-X
 - TimeBodyGyroscopeSTD-Y
 - TimeBodyGyroscopeSTD-Z
 - TimeBodyGyroscopeJerkMean-X
 - TimeBodyGyroscopeJerkMean-Y
 - TimeBodyGyroscopeJerkMean-Z
 - TimeBodyGyroscopeJerkSTD-X
 - TimeBodyGyroscopeJerkSTD-Y
 - TimeBodyGyroscopeJerkSTD-Z
 - TimeBodyAccelerometerMagnitudeMean
 - TimeBodyAccelerometerMagnitudeSTD
 - TimeGravityAccelerometerMagnitudeMean
 - TimeGravityAccelerometerMagnitudeSTD
 - TimeBodyAccelerometerJerkMagnitudeMean
 - TimeBodyAccelerometerJerkMagnitudeSTD
 - TimeBodyGyroscopeMagnitudeMean
 - TimeBodyGyroscopeMagnitudeSTD
 - TimeBodyGyroscopeJerkMagnitudeMean
 - TimeBodyGyroscopeJerkMagnitudeSTD
 - FrequencyBodyAccelerometerMean-X
 - FrequencyBodyAccelerometerMean-Y
 - FrequencyBodyAccelerometerMean-Z
 - FrequencyBodyAccelerometerSTD-X
 - FrequencyBodyAccelerometerSTD-Y
 - FrequencyBodyAccelerometerSTD-Z
 - FrequencyBodyAccelerometerMeanFrequency-X
 - FrequencyBodyAccelerometerMeanFrequency-Y
 - FrequencyBodyAccelerometerMeanFrequency-Z
 - FrequencyBodyAccelerometerJerkMean-X
 - FrequencyBodyAccelerometerJerkMean-Y
 - FrequencyBodyAccelerometerJerkMean-Z
 - FrequencyBodyAccelerometerJerkSTD-X
 - FrequencyBodyAccelerometerJerkSTD-Y
 - FrequencyBodyAccelerometerJerkSTD-Z
 - FrequencyBodyAccelerometerJerkMeanFrequency-X
 - FrequencyBodyAccelerometerJerkMeanFrequency-Y
 - FrequencyBodyAccelerometerJerkMeanFrequency-Z
 - FrequencyBodyGyroscopeMean-X
 - FrequencyBodyGyroscopeMean-Y
 - FrequencyBodyGyroscopeMean-Z
 - FrequencyBodyGyroscopeSTD-X
 - FrequencyBodyGyroscopeSTD-Y
 - FrequencyBodyGyroscopeSTD-Z
 - FrequencyBodyGyroscopeMeanFrequency-X
 - FrequencyBodyGyroscopeMeanFrequency-Y
 - FrequencyBodyGyroscopeMeanFrequency-Z
 - FrequencyBodyAccelerometerMagnitudeMean
 - FrequencyBodyAccelerometerMagnitudeSTD
 - FrequencyBodyAccelerometerMagnitudeMeanFrequency
 - FrequencyBodyAccelerometerJerkMagnitudeMean
 - FrequencyBodyAccelerometerJerkMagnitudeSTD
 - FrequencyBodyAccelerometerJerkMagnitudeMeanFrequency
 - FrequencyBodyGyroscopeMagnitudeMean
 - FrequencyBodyGyroscopeMagnitudeSTD
 - FrequencyBodyGyroscopeMagnitudeMeanFrequency
 - FrequencyBodyGyroscopeJerkMagnitudeMean
 - FrequencyBodyGyroscopeJerkMagnitudeSTD
 - FrequencyBodyGyroscopeJerkMagnitudeMeanFrequency
 - Angle(TimeBodyAccelerometerMean,Gravity)
 - Angle(TimeBodyAccelerometerJerkMean),GravityMean)
 - Angle(TimeBodyGyroscopeMean,GravityMean)
 - Angle(TimeBodyGyroscopeJerkMean,GravityMean)
 - Angle(X,GravityMean)
 - Angle(Y,GravityMean)
 - Angle(Z,GravityMean)

