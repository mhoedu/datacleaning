# run_analysis.R:
# This R script fulfills the requirement of Getting and CLeanning Data course final project. The project requirement include: 
# Use  UCI training data set is available at:
# http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
# The script will perform the following tasks beside from download UCI data set:
#   1. Merges the training and the test sets to create one data set.
#   2. Extracts only the measurements on the mean and standard deviation for each measurement. 
#   3. Uses descriptive activity names to name the activities in the data set
#   4. Appropriately labels the data set with descriptive variable names. 
#   5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
# Miscellaneous Notes: the use of tictoc package throughout  the R script simply is an attempt to profile each task
# aiming to refactor and improve each task as things go along 
# Reference:    https://cran.fhcrc.org/web/packages/tictoc/tictoc.pdf.


#Introduce R package pacman which is efficient for multiple download
# p_load will check if package is installed if not will install package from CRAN
if (!require("pacman")) install.packages("pacman")
p_load(tictoc,data.table, reshape2,plyr)



###------------------- Functions to perform project tasks
#clrCon: quick way to clear console
clrCon <- function() cat(rep("\n",40))

#showMsg: a quick and dirty progress status
showMsg = function(msg = " ....Done \n",TimerFlag = FALSE,Tick = FALSE) {
     
     message(msg,"  \b",appendLF=FALSE)
     if (TimerFlag)
     {   
       if (Tick) tic()  
       else toc() 
     }  
}

#UCIData.download: Prep working directory. Create a data subdirectory , then download uci data. 
#  input: 1. wd = working directory
#         2. overwriteFlag = if true download the file regard less if it is there or not  
#   
UCIData.download = function(workDirectory="C:/Rwork/test", overwriteFlag = TRUE) {
  
  #establish working directory and create a sub directory for download
  showMsg("UCIData.download: establish work directory, create subdirectory, download, then unzip files \n",TRUE,TRUE)
  if (length(workDirectory) > 0 ) setwd(workDirectory);
  
  if (!file.exists("download")) {
    showMsg("  Creating sub-directory download  ")
    dir.create("download")
    showMsg()
  }
  
  
  if (!file.exists("download/UCI HAR Dataset") || (overwriteFlag)) {
    
    downloadZip ="download/UCI_HAR_data.zip"
    downloadURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    download.file(downloadURL, destfile=downloadZip, method="wininet")
    showMsg("  Unzip UCI download file")
    unzip(downloadZip, exdir="download")
    showMsg()
  }
  else
    showMsg(" Raw data Files exist. Skip Downloading file.\n",FALSE)
  showMsg("  UCIData.download function completed ",TRUE,FALSE)
  
  
}

#Manipulate download data: extract std and mean, naming/label appropriately
UCIData.process = function(outputFile = "tidy.data") {
  
  # Establish patterns to extract abd load list of features from feature.txt, and extract. 
  showMsg("   Read in Test, Train Measurements and Extract the mean and standard deviation ",TRUE,TRUE)
  pattern <- "-mean|-std"
  labelCol <- c("Subject","ActivityID", "ActivityType")
  
  ColumnList <- read.table("download/UCI HAR Dataset/features.txt")[,2]
  extract_columns <- grepl(pattern, ColumnList)

  # Load and process X_test & y_test data.
  Test.x <- read.table("download/UCI HAR Dataset/test/X_test.txt")
  Test.y <- read.table("download/UCI HAR Dataset/test/y_test.txt") 
  Test.subject <- read.table("download/UCI HAR Dataset/test/subject_test.txt")
  names(Test.x) = ColumnList
  
  # Extract only the measurements on the mean and standard deviation for each measurement.
  Test.x = Test.x[,extract_columns]
  
  activity_labels <- read.table("download/UCI HAR Dataset/activity_labels.txt")[,2]
  Test.y[,2] = activity_labels[Test.y[,1]]
  names(Test.y) = labelCol[2:3] 
  names(Test.subject) = labelCol[1]
  showMsg(" ...Done",TRUE,FALSE)
  showMsg("   Prep and Merge Test, Train data sets  ",TRUE,TRUE)
  
  # Bind data
  comboTest <- cbind(as.data.table(Test.subject), Test.y, Test.x)
  # Load and process X_train & y_train data.
  Train.x <- read.table("download/UCI HAR Dataset/train/X_train.txt")
  Train.y <- read.table("download/UCI HAR Dataset/train/y_train.txt")
  Train.subject <- read.table("download/UCI HAR Dataset/train/subject_train.txt")
  names(Train.x) = ColumnList
  # Extract only the measurements on the mean and standard deviation for each measurement.
  Train.x = Train.x[,extract_columns]
  # Load activity data
  Train.y[,2] = activity_labels[Train.y[,1]]
  names(Train.y) = labelCol[2:3]
  names(Train.subject) = labelCol[1]
  # Bind data
  comboTrain <- cbind(as.data.table(Train.subject),Train.y, Train.x)
  # Merge test and train data
  mergedTestTrain = rbind(comboTest, comboTrain)
  measureLabels = setdiff(colnames(mergedTestTrain), labelCol)
  showMsg(" ...Done",TRUE,FALSE)
  
   # Final preparation
  showMsg("   Cast merged sets and  write final tidy result to output file",TRUE,TRUE)
  tidyResult  = dcast(melt(mergedTestTrain,labelCol, measureLabels), Subject + ActivityType ~ variable, mean)
  write.table(tidyResult, file = outputFile,row.name=FALSE)
  showMsg(" ...Done",TRUE,FALSE)
}

### Main:
clrCon()
UCIData.download(workDirectory = "C:/Rwork/datacleaning", overwriteFlag = FALSE)
UCIData.process(outputFile = "tiddydata.txt")
