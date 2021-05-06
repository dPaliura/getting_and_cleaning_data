##
#   Import packages here
##
library(zip)
library(dplyr)


##
#   Constants defined to use in script
##
data_url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
loadfile_name <- "data.zip"
outputfile_name <- "UCI_HAR_feature_averages.csv"

# used relative folders directions
dir_in <- "UCI HAR Dataset/"
dir_train <- paste0(dir_in, "train/")
dir_test <- paste0(dir_in, "test/")
dir_out <- "output/"
# directories of files to read
dir_subj_train <- paste0(dir_train, "subject_train.txt")
dir_X_train <- paste0(dir_train, "X_train.txt")
dir_y_train <- paste0(dir_train, "y_train.txt")
dir_subj_test <- paste0(dir_test, "subject_test.txt")
dir_X_test <- paste0(dir_test, "X_test.txt")
dir_y_test <- paste0(dir_test, "y_test.txt")
dir_act_labels <- paste0(dir_in, "activity_labels.txt")
dir_features <- paste0(dir_in, "features.txt")


##
#   Functions defined to use in script
##
read_txt <- function(path){
    f <- file(path)
    content <- readLines(f)
    close(f)
    return(content)
}

gsub_ <- function(x, pattern, replacement, ...) gsub(pattern,replacement,x,...)

##
#   Script body
##

# Load data-set from web
download.file(data_url,
              loadfile_name)
# unzip it into project root
unzip(loadfile_name)

# Read files with target data
# train set:
subj_train <- read_txt(dir_subj_train)
X_train <- read.table(dir_X_train)
y_train <- read_txt(dir_y_train)
# test set:
subj_test <- read_txt(dir_subj_test)
X_test <- read.table(dir_X_test)
y_test <- read_txt(dir_y_test)

#
# 1) Merges the training and the test sets to create one data set.
#
subjects <- c(subj_train, subj_test) %>% as.numeric
X <- rbind(X_train, X_test)
y <- c(y_train, y_test) %>% as.numeric

# Free memory by removing overused variables
rm(subj_train, X_train, y_train,
   subj_test,  X_test,  y_test)


# Read activity labels and features
activity_labels <- read.table(dir_act_labels)[,2]
features <- read.table(dir_features)[,2]

#
# 2) Extracts only the measurements on the mean and standard deviation
#    for each measurement.
#
# Find which columns is mean or standard deviation
col_index <- grep("mean[(]|std[(]", features)
#
# Create new data frame of chosen columns from read data frame
X_selected <- select(X, all_of(col_index))

#
# 3) Uses descriptive activity names to name the activities in the data set.
#
activity_names <- sapply(y, function(index) activity_labels[index])

#
# 4) Appropriately labels the data set with descriptive variable names.
#
# Rename chosen features to make them shorter and without non-alphabetic symbols
features_selected <- features[col_index]
features_renamed <- features_selected %>%
    gsub_('mean', 'Mean') %>% gsub_('std', 'Std') %>%
    gsub_('[(]|[)]|-', '')
#
# Assign got features as names of features vectors data frame
names(X_selected) <- features_renamed

# Add columns with activities from step (3) to got table and assign to variable
dataset <- cbind(subject = subjects,
                 activityName = activity_names,
                 X_selected)

# Free memory by removing overused variables
rm(X, X_selected,
   y, activity_labels, activity_names,
   features, col_index, features_selected, features_renamed,
   subjects)


#
# 5) From the data set in step 4, creates a second, independent tidy data set
#    with the average of each variable for each activity and each subject.
tidy_dataset <- dataset %>%
    group_by(subject, activityName) %>%
    summarise(across(.fns = mean))

# Create folder to write output file if not exists
if (!dir.exists(dir_out)) dir.create(dir_out)
write.csv(tidy_dataset, paste0(dir_out, outputfile_name))


# Clearing environment after work
# remove all created variables
rm(dataset, tidy_dataset,
   data_url, loadfile_name, outputfile_name,
   dir_in, dir_train, dir_test, dir_out,
   dir_subj_train, dir_X_train, dir_y_train,
   dir_subj_test, dir_X_test, dir_y_test,
   dir_act_labels, dir_features,
   read_txt, gsub_)
# unload used packages
detach('package:zip', unload = TRUE)
detach('package:dplyr', unload = TRUE)
