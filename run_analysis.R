## script for reading , cleaning and tidying up data in UCI HAR Dataset folder
## assumes the data is already downloaded and extracted to a folder "UCI HAR Dataset" in the working directory
##
## Install and load the required packages or packages used in the script

##   install.packages("arules",dependencies=TRUE)
##   install.packages("dplyr",dependencies=TRUE)
##   install.packages("Hmisc",dependencies=TRUE)
   library(arules)
   library(dplyr)
##   library(Hmisc)
   
##
## Read the data into R
##
  subjecttest <- read.table("UCI HAR Dataset/test/subject_test.txt",header=FALSE,sep ="",quote="\"'",dec=".",numerals = c("allow.loss","warn.loss","no.loss"),row.names= NULL,na.strings="NA")
  Xtest <- read.table("UCI HAR Dataset/test/X_test.txt",header=FALSE,sep ="",quote="\"'",dec=".",numerals = c("allow.loss","warn.loss","no.loss"),row.names= NULL,na.strings="NA")
  ytest <- read.table("UCI HAR Dataset/test/y_test.txt",header=FALSE,sep ="",quote="\"'",dec=".",numerals = c("allow.loss","warn.loss","no.loss"),row.names= NULL,na.strings="NA")
  
  subjecttrain <- read.table("UCI HAR Dataset/train/subject_train.txt",header=FALSE,sep ="",quote="\"'",dec=".",numerals = c("allow.loss","warn.loss","no.loss"),row.names= NULL,na.strings="NA")
  Xtrain <- read.table("UCI HAR Dataset/train/X_train.txt",header=FALSE,sep ="",quote="\"'",dec=".",numerals = c("allow.loss","warn.loss","no.loss"),row.names= NULL,na.strings="NA")
  ytrain <- read.table("UCI HAR Dataset/train/y_train.txt",header=FALSE,sep ="",quote="\"'",dec=".",numerals = c("allow.loss","warn.loss","no.loss"),row.names= NULL,na.strings="NA")
  
  features <- read.table("UCI HAR Dataset/features.txt",header=FALSE,sep ="",quote="\"'",dec=".",numerals = c("allow.loss","warn.loss","no.loss"),row.names= NULL,na.strings="NA")
  activitylabels <- read.table("UCI HAR Dataset/activity_labels.txt",header=FALSE,sep ="",quote="\"'",dec=".",numerals = c("allow.loss","warn.loss","no.loss"),row.names= NULL,na.strings="NA")
  
  col1 <-  grep("mean[(][)]|std[(][)]",features$V2) 
  featuresreq <- features[col1,] 
  Xtest1 <- Xtest[,col1]
  names(Xtest1) <- featuresreq$V2
  Xtrain1 <- Xtrain[,col1]
  names(Xtrain1) <- featuresreq$V2
  
  ytest1 <- ytest
  ytrain1 <- ytrain
  ytest1$V1 <- decode(ytest$V1,activitylabels$V2)
  ytrain1$V1 <- decode(ytrain$V1,activitylabels$V2)
  names(ytest1) <- "activitylabel"
  names(ytrain1) <- "activitylabel" 
  names(subjecttest) <- "subjectId"
  names(subjecttrain) <- "subjectId"
  
  Xtest2 <- cbind(Xtest1,ytest1,subjecttest)
  Xtrain2 <- cbind(Xtrain1,ytrain1,subjecttrain)

##
## combine the training and test data measurements
##
  Xfull <- rbind(Xtrain2,Xtest2)

##
## calculate average of the measurements per activity per subject
##
   
  by_activities <- Xfull %>% group_by(subjectId,activitylabel)
  Xtidy <- by_activities %>% summarise_each(funs(mean))
   
##
## write the resulting tidy dataset to the UCI HAR Dataset folder with file name "Xtidy.txt"
## 
  write.table(Xtidy,file="UCI HAR Dataset/Xtidy.txt",append=FALSE,quote= TRUE, sep = " ",eol="\n", na="NA",dec=".",row.names =FALSE,col.names=TRUE,qmethod=c("escape","double"),fileEncoding="")
   
  