## First of all set the dplyr library
library(dplyr)

## Read all the files required
features<-read.table("./features.txt")
labels<-read.table("./activity_labels.txt")
stest<-read.table("./test/subject_test.txt")
xtest<-read.table("./test/X_test.txt")
ytest<-read.table("./test/y_test.txt")
strain<-read.table("./train/subject_train.txt")
xtrain<-read.table("./train/X_train.txt")
ytrain<-read.table("./train/y_train.txt")

## GEt the ids and descriptions of the features, inserting within two different
## variables
featindex<-grep("mean|std", features$V2, value = FALSE)
featnames<-grep("mean|std", features$V2, value = TRUE)

## Convert the data frame to tbl_df, which is better for dplyr select
table_xtest <- tbl_df(xtest)
## set memory free
rm(xtest)

## Subset of the data, selecting only the variables that contain the 
## measurements on the mean and standard deviation for each measurement.
## For this, we take the ids calculated above(featindex)
meanstdtest <- select(table_xtest, featindex)
## assign the names. Taken from the names calculated above(featNames)
names(meanstdtest)<-featnames

## Merge the label description with the ids of the test labels
## due to the problem with the arrangement in the merge it is necessary to 
## create a variable of arrangement
ytest$id = seq_len(nrow(ytest))
labelytest<-merge(labels,ytest, by.x="V1", by.y="V1")
labelytest<-arrange(labelytest, id)

## set memory free
rm(ytest)

## Include the column with the activities
meanstdtest <- cbind("activity"=labelytest$V2, meanstdtest)
## Include the column with the subjects
meanstdtest <- cbind("subject"=stest$V1, meanstdtest)

## set memory free
rm(stest)
rm(table_xtest)

## Convert the data frame to tbl_df, which is better for dplyr select
table_xtrain <- tbl_df(xtrain)

## set memory free
rm(xtrain)

## Subset of the data, selecting only the variables that contain the 
## measurements on the mean and standard deviation for each measurement.
## For this, we take the ids calculated above(featindex)
meanstdtrain <- select(table_xtrain, featindex)
## assign the names. Taken from the names calculated above(featNames)
names(meanstdtrain)<-featnames

## Merge the label description with the ids of the test labels
## due to the problem with the arrangement in the merge it is necessary to 
## create a variable of arrangement
ytrain$id = seq_len(nrow(ytrain))
labelytrain<-merge(ytrain,labels, by.x="V1", by.y="V1")
labelytrain<-arrange(labelytrain, id)

## set memory free
rm(ytrain)

## Include the column with the activities
meanstdtrain <- cbind("activity"=labelytrain$V2, meanstdtrain)
## Include the column with the subjects
meanstdtrain <- cbind("subject"=strain$V1, meanstdtrain)

## set memory free
rm(strain)
rm(table_xtrain)

##Merge of the train and test sets
dataUCI<-rbind(meanstdtrain,meanstdtest)

## set memory free
rm(labelytest)
rm(labelytrain)
rm(meanstdtrain)
rm(meanstdtest)


## From the data set in step 4, creates a second, independent tidy data
tidyUCIData <- dataUCI %>% group_by(subject, activity) %>%
         ## summarize(avg = mean(`tBodyAcc-mean()-X`)
        summarise_each(funs(mean)
         )

## Write the tidy data created to the tidyUCIData.txt file
write.table(tidyUCIData,"./tidyUCIData.txt", row.name=FALSE)

## Delete all the objects  (except the tidy data) to set the memory free
rm(dataUCI)
rm(features)
rm(labels)