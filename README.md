# Getting-and-Cleaning-Data
Created for Coursera course Getting and Cleaning Data Assignment 

This repoistory has three files

  * README.MD -> This file explaining the content in this repository
  * run_analysis.R -> R script used to cleanup and produce the tidy dataset for the assignment
  * codebook.MD  -> explains the final tidy dataset and its contents

Input data:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Data Source:
Human Activity Recognition Using Smartphones Data Set 

Jorge L. Reyes-Ortiz(1,2), Davide Anguita(1), Alessandro Ghio(1), Luca Oneto(1) and Xavier Parra(2)
1 - Smartlab - Non-Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova, Genoa (I-16145), Italy.
2 - CETpD - Technical Research Centre for Dependency Care and Autonomous Living
Universitat Politècnica de Catalunya (BarcelonaTech). Vilanova i la Geltrú (08800), Spain
activityrecognition '@' smartlab.ws


The supplied R script called run_analysis.R does the following :
 
   * Assumes that the data is already downloaded from the URL https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  and unzipped to a folder "UCI HAR Dataset" in the working directory 
   * Uses R packages arules and dplyr
   * Reads the files frm "UCI HAR Dataset" folder in working directory
   * Identify the column names that contain mean() or std() from features.txt file via grep()
   * Only the columns that contain mean() or std() in the names are selected from XTrain, XTest
   * Rename the columns of the dataframe to the column names in the features.txt file
   * Rename the columns of the dataframe subjecttrain, subjecttest to subjectID
   * Rename the columns of the dataframe acivitylabels to activitylabel
   * Change the coded values of ytest and ytrain dataframes to have the textual data from activitylabels via decode 
   * Add the ytrain, subjecttrain data to  Xtrain data frame via cbind
   * Add the ytest,subjecttest data to Xtest data frame via cbind
   * Merges the training and the test sets to create one data set via rbind
   * creates a second, independent tidy data set with the average of each variable for each activity and each subject.
   * and then generates a tidy data text file that meets the principles of Tidy data 
   as per https://class.coursera.org/getdata-012/forum/thread?thread_id=234
    Hadleys: http://vita.had.co.nz/papers/tidy-data.pdf

 Code for reading the tidy data into R

address <- "https://s3.amazonaws.com/coursera-uploads/user-2f2f965c745ebbb70a626573/973499/asst-3/c4b31b20d05411e48792995681333c24.txt"

address <- sub("^https", "http", address)

data <- read.table(url(address), header = TRUE) 

View(data)  


codebook.md contains the description of the tidy data file contents



