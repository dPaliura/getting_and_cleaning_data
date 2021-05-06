UCI_HAR_feature_averages.txt contains only that features of UCI HAR Dataset
that are mean values (have 'mean()' in label) or standard deviation (have
'std()' in label). Variables in this file has similar names but they are
average values grouped both by subjects and activities.

These variables are:

* tBodyAccMeanX, tBodyAccMeanY, tBodyAccMeanZ - average value for mean body
    acceleration time domain signals by 3 axis - X, Y, Z. 
* tBodyAccStdX, tBodyAccStdY, tBodyAccStdZ - average value for standard 
    deviation of body acceleration time domain signals by 3 axis - X, Y, Z. 
* tGravityAccMeanX, tGravityAccMeanY, tGravityAccMeanZ - average value for mean
    gravity force acceleration time domain signals by 3 axis - X, Y, Z. 
* tGravityAccStdX, tGravityAccStdY, tGravityAccStdZ - average value for standard 
    deviation of gravity force acceleration time domain signals by 3 axis - X,
    Y, Z.
* tBodyAccJerkMeanX, tBodyAccJerkMeanY, tBodyAccJerkMeanZ - average value of
    Jerk accelerometr signals mean derived in time by 3 axis - X, Y, Z.
* tBodyAccJerkStdX, tBodyAccJerkStdY, tBodyAccJerkStdZ - average value of
    Jerk accelerometr signals standard deviation derived in time by 3 axis - X,
    Y, Z.
* tBodyGyroMeanX, tBodyGyroMeanY, tBodyGyroMeanZ - 
* tBodyGyroStdX, tBodyGyroStdY, tBodyGyroStdZ - 
* tBodyGyroJerkMeanX, tBodyGyroJerkMeanY, tBodyGyroJerkMeanZ - 
* tBodyGyroJerkStdX, tBodyGyroJerkStdY, tBodyGyroJerkStdZ - 
* tBodyAccMagMean, tBodyAccMagStd - 
* tGravityAccMagMean, tGravityAccMagStd - 
* tBodyAccJerkMagMean, tBodyAccJerkMagStd - 
* tBodyGyroMagMean, tBodyGyroMagStd - 
* tBodyGyroJerkMagMean, tBodyGyroJerkMagStd - 
* fBodyAccMeanX, fBodyAccMeanY, fBodyAccMeanZ - 
* fBodyAccStdX, fBodyAccStdY, fBodyAccStdZ - 
* fBodyAccJerkMeanX, fBodyAccJerkMeanY, fBodyAccJerkMeanZ - 
* fBodyAccJerkStdX, fBodyAccJerkStdY, fBodyAccJerkStdZ - 
* fBodyGyroMeanX, fBodyGyroMeanY, fBodyGyroMeanZ - 
* fBodyGyroStdX, fBodyGyroStdY, fBodyGyroStdZ - 
* fBodyAccMagMean, fBodyAccMagStd - 
* fBodyBodyAccJerkMagMean, fBodyBodyAccJerkMagStd - 
* fBodyBodyGyroMagMean, fBodyBodyGyroMagStd - 
* fBodyBodyGyroJerkMagMean, fBodyBodyGyroJerkMagStd - 


Notes:

- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

