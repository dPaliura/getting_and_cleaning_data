# Human Activity Recognition Using Smartphones Dataset Tydiing

### About repository

This repo contains R script mainly dedicated to execute getting and particularly
cleaning data set of experiment described below. Mentioned downloads archive
with compressed data set, unzips it, reads files of train and test sets,
file with labels of columns and other one with labels of activities (described
below). Then script forms some aggregated data-set which contains average values
of variables for different groups. Initial data set files are in folder
"UCI HAR Dataset". Produces data set is in folder "output" and has name
"UCI_HAR_feature_averages.txt" or same with .csv extension.

### About experiment and dataset

The experiments have been carried out with a group of 30 volunteers within an
age bracket of 19-48 years. Each person performed six activities (WALKING,
WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a
smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer
and gyroscope, we captured 3-axial linear acceleration and 3-axial angular
velocity at a constant rate of 50Hz. The experiments have been video-recorded to
label the data manually. The obtained dataset has been randomly partitioned into
two sets, where 70% of the volunteers was selected for generating the training
data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying
noise filters and then sampled in fixed-width sliding windows of 2.56 sec and
50% overlap (128 readings/window). The sensor acceleration signal, which has
gravitational and body motion components, was separated using a Butterworth
low-pass filter into body acceleration and gravity. The gravitational force is
assumed to have only low frequency components, therefore a filter with 0.3 Hz
cutoff frequency was used. From each window, a vector of features was obtained
by calculating variables from the time and frequency domain.
See 'features_info.txt' for more details.

### Script description

Script must:

1. Merge the training and the test sets to create one data set.
2. Extract only the measurements on the mean and standard deviation for
    each measurement.
3. Use descriptive activity names to name the activities in the data set.
4. Appropriately label the data set with descriptive variable names
5. From the data set in step 4, create a second, independent tidy data set with
    the average of each variable for each activity and each subject.

Script uses packages:

* zip
* dplyr

Script does:

1) Download Human Activity Recognition Using Smartphones Dataset as zip=archive
    from here: 
    <https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>.
2) Unzip loaded data set.
3) Read into environment test and train sets as 6 variables from files:
    * subject_train.txt
    * X_train.txt
    * y_train.txt
    from both subfolders 'train' and 'test'.
4) Concatenates same variables for train and test data in appropriate order.
5) Read into environment files with feature labels (file 'features.txt') and
    activities labels (file 'activity_labels.txt').
6) Find which columns of features table matches to regular expression, that
    check presence of pattern 'mean(' or 'std('. So it define which features
    are based on average or standard deviation.
7) Juxtapose activity labels instead of their codes.
8) Rename features so they contain only alphabetical symbols using a few
    substitutions by regular expressions.
9) Assigns these names as columns' names to selected ones.
10) Binds columns: subjects, activity names and features (matrix).
11) At single step group got data set by subjects and activities, then
    summarises with function mean across all variables in table.
12) Write formed data frame into file UCI_HAR_feature_averages.txt

### Tree description

* UCI HAR Dataset - unzipped archive with data set of experiment
    + train - folder with train set files
        - Inertial Signals - I guess, files with raw data
            - ...
        - subject_train.txt - data file with numbers of subjects (participants)
        - X_train.txt - data file with values of features (651 number each row)
        - y_train.txt - codes of activities respective to measurements
    + test - folder with test set files
        - Inertial Signals - I guess, files with raw data
            - ...
        - subject_test.txt - data file with numbers of subjects (participants)
        - X_test.txt - data file with values of features (651 number each row)
        - y_test.txt - codes of activities respective to measurements
    + README.txt - data set description
    + features_info.txt - file with features description
    + features.txt - file with data - features' labels
    + activity_labels.txt - file containing labels of activities by codes
* output - folder with data set produced by script
    + UCI_HAR_feature_averages.txt - processed tidy data set
    + UCI_HAR_feature_averages.csv - the same data set in .csv format
* README.md - this file - repository description
* data.zip - downloaded archive with  script run_analysis.R
* run_analysis.R - script which described
* codebook.md - extended code book with processed data set description