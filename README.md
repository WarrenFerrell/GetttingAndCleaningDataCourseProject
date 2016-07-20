# GetttingAndCleaningDataCourseProject
# tidy-modified Human Activity Recognition Using Smart Phones Dataset
## Original Data
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
## Modification performed for Coursera Getting and Cleaning Data course project
### Files contained in this analysis
* '/UCI HAR Dataset': Original dataset which contains its own README 
* 'FerrellCombinedData.csv': Combined mean and std from Jorge dataset cleaned up to be tidy
* 'FerrellNewData.csv': Averaged out values by subject and activity
* 'CodeBook.md': Breakdown of variables in 'FerrellCombinedData.csv' by column
* 'run_analysis': R script used to generate 'FerrellCombinedData.txt' and 'FerrellNewData.txt'
** Reads in labels for activities and subject assignment
** Extracts only mean and std from original datasets
** Combines two datasets together and cleans up column names
** Generates a new tidy dataset by summarizing on subject and activity

