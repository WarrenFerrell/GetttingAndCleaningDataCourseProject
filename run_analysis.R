#download and unzip the dataset
#data currently in folder was downloaded 7/15/2016

#activityDataLink <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
#DataFile <- "Data.zip"
#download.file( activityDataLink, DataFile )
#unzip( DataFile )

library(dplyr)
library(tidyr)
setwd( "UCI HAR Dataset/" )
readArgs <- list( stringsAsFactors = FALSE, header = FALSE,
                  col.names = c("pos", "label") )

#read in labels for each set and prepare for assigning factor variables
readArgs$file <- "features.txt"
feature_labels <-  do.call( read.table , readArgs )[["label"]]
readArgs$file <- "activity_labels.txt"
activity_labels <- tolower(do.call( read.table , readArgs )[["label"]])
readArgs$file <- "test/subject_test.txt"; readArgs$col.names <- "subject"
test_subject <- as.factor( do.call( read.table , readArgs )[["subject"]])
readArgs$file <- "train/subject_train.txt";
train_subject <- as.factor( do.call( read.table , readArgs )[["subject"]])
readArgs$file <- "test/y_test.txt"; readArgs$col.names <- "activity"
test_activity <- as.factor( do.call( read.table , readArgs )[["activity"]])
readArgs$file <- "train/y_train.txt";
train_activity <- as.factor( do.call( read.table , readArgs )[["activity"]] )

#only pull mean and std from each dataset file
readArgs$colClass <- feature_labels %>% grepl(pattern = "^.*(mean|std)\\(") %>%
    gsub(pattern = "FALSE", replacement = "NULL") %>%
    gsub(pattern = "TRUE", replacement = "numeric")
readArgs$file <- "test/X_test.txt"; readArgs$col.names <- feature_labels
test_data <- do.call( read.table , readArgs )
test_data <- cbind(subject = test_subject, activity = test_activity, test_data)
readArgs$file <- "train/X_train.txt";
train_data <- do.call( read.table , readArgs )
train_data <- cbind(subject = train_subject, activity = train_activity, train_data)
setwd("..")

#combine test and train together, then cleanup column names
combined_data <- rbind(test_data, train_data)
combined_data$activity <- factor(combined_data$activity, levels = 1:6, labels = activity_labels)
colnames(combined_data) <- gsub("Body", "", colnames(combined_data) )
colnames(combined_data) <- gsub("\\.\\.", "", colnames(combined_data) )
write.csv(combined_data, "FerrellCombinedData.csv")

#summarize the data by subject and activity and write to fill
combined_data <- group_by(combined_data, subject, activity )
new_dataset <- summarise_all( combined_data, mean)
write.csv(new_dataset, "FerrellNewData.csv")



# ##
# combined_data[ ,3:8] <- lapply( combined_data[ ,3:8], as.factor)
# combined_data$domain <- factor(combined_data$domain, labels = c("frequency", "time"))
# combined_data$source <- factor(combined_data$source, labels = c("body", "gravity"))
# combined_data$device <- factor(combined_data$device, labels = c("accelerometer", "gyroscope"))
# combined_data$direction <- factor(combined_data$direction, labels = c(NA, "x", "y", "z"))
# combined_data$derived <- factor(combined_data$derived, labels = c(NA, "jerk"))
# combined_data$magnitude <- factor(combined_data$magnitude, labels = c("false", "true"))
# combined_data <- combined_data %>% gather( meanhold, mean, contains("mean"), factor_key = TRUE) %>%
#   gather( stdhold, std, contains("std"), factor_key = TRUE)                 %>%
#  extract( meanhold, into = c("domain", "source", "device", "direction"),
#          regex = "([tf])(Body|Gravity).*(Acc|Gyro).*\\.\\.([XYZ]?)") %>%
# extract( stdhold, into = c("derived", "magnitude"),
#             regex = ".{8,13}(Jerk|)(Mag|)\\.std.*")                     %>%
#   select( 1:6, derived, magnitude, mean, std) %>%
#    tbl_df
# ##


