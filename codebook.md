UCI_HAR_feature_averages.txt contains only that features of UCI HAR Dataset
that are mean values (have 'mean()' in label) or standard deviation (have
'std()' in label). Variables in this file has similar names but they are
average values grouped both by subjects and activities.

These variables are:
* subject - id of experiment participant as subject.
* activityName - label of actifity recorded.
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
* tBodyGyroMeanX, tBodyGyroMeanY, tBodyGyroMeanZ - average of mean value of body
    angular velocity derived in time by 3 axis - X, Y, Z.
* tBodyGyroStdX, tBodyGyroStdY, tBodyGyroStdZ - average of standard deviation
    value of body angular velocity derived in time by 3 axis - X, Y, Z. 
* tBodyGyroJerkMeanX, tBodyGyroJerkMeanY, tBodyGyroJerkMeanZ - average of mean
    Jerk value of body angular velocity derived in time by 3 axis - X, Y, Z.
* tBodyGyroJerkStdX, tBodyGyroJerkStdY, tBodyGyroJerkStdZ - average of standard
    deviation value of Jerk body angular velocity derived in time by 3
    axis - X, Y, Z.
* tBodyAccMagMean, tBodyAccMagStd - average values of mean and standard
    deviation of body acceleration magnitude derived in time.
* tGravityAccMagMean, tGravityAccMagStd - average values of mean and standard
    deviation of gravity acceleration magnitude derived in time.
* tBodyAccJerkMagMean, tBodyAccJerkMagStd - average values of mean and standard
    deviation of body Jerk acceleration magnitude derived in time.
* tBodyGyroMagMean, tBodyGyroMagStd - average values of mean and standard
    deviation of body angular velocity magnitude derived in time.
* tBodyGyroJerkMagMean, tBodyGyroJerkMagStd - average values of mean and standard
    deviation of body Jerk angular velocity magnitude derived in time.
* fBodyAccMeanX, fBodyAccMeanY, fBodyAccMeanZ - average values of mean frequency
    domain signals of body acceleration by 3 axis - X, Y, Z.
* fBodyAccStdX, fBodyAccStdY, fBodyAccStdZ - average values of standard
    deviation of frequency domain signals of body acceleration by 3
    axis - X, Y, Z.
* fBodyAccStdX, fBodyAccStdY, fBodyAccStdZ - average values of standard 
    deviation of frequency domain signals of body acceleration by 3
    axis - X, Y, Z.
* fBodyAccJerkMeanX, fBodyAccJerkMeanY, fBodyAccJerkMeanZ - average values of
    mean frequency domain signals of body Jerk acceleration by 3 axis - X, Y, Z.
* fBodyAccJerkStdX, fBodyAccJerkStdY, fBodyAccJerkStdZ - average values of
    standard deviation of frequency domain signals of body Jerk acceleration
    by 3 axis - X, Y, Z.
* fBodyGyroMeanX, fBodyGyroMeanY, fBodyGyroMeanZ - average values of
    mean frequency domain signals of body angular velocity by 3 axis - X, Y, Z.
* fBodyGyroStdX, fBodyGyroStdY, fBodyGyroStdZ - average values of standard
    deviation of frequency domain signals of body angular velocity by 3 
    axis - X, Y, Z.
* fBodyAccMagMean, fBodyAccMagStd - average values of mean and standard
    deviation of frequency domain signals of body acceleration magnitude by 3
    axis - X, Y, Z.
* fBodyBodyAccJerkMagMean, fBodyBodyAccJerkMagStd - average values of mean and
    standard deviation of frequency domain signals of body Jerk acceleration
    magnitude by 3 axis - X, Y, Z.
* fBodyBodyGyroMagMean, fBodyBodyGyroMagStd - ???
* fBodyBodyGyroJerkMagMean, fBodyBodyGyroJerkMagStd - ???


Notes:

- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

