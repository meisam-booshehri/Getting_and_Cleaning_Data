
#-------------------------------------------- Step 1 ------------------------------------
# Step1. Merge the training and the test sets to create one data set.
# Copy the dataset to the working directory

#_______________________________________step 1.1 : merging the data tables______________________
trainSet <- read.table("./train/X_train.txt")
head(trainSet) # heading the trainSet for getting an intuition of the set content (561 variables)
testSet <- read.table("./test/X_test.txt")
head(testSet) # heading the testSet for getting an intuition of the set content (561 variables)
mergedSet <- rbind(trainSet, testSet)
head(mergedSet) # looking at the beginning of the merged set
tail(mergedSet) # looking at the last rows of the merged set

#________________________________________step 1.2 : merging the label tables_____________________
trainingLabels <- read.table("./train/y_train.txt")
testLabels <- read.table("./test/y_test.txt") 
mergedLabels <- rbind(trainingLabels, testLabels)
head(mergedLabels)

#________________________________________step 1.3 : merging the subject tables_____________________
trainSubject <- read.table("./train/subject_train.txt")
testSubject <- read.table("./test/subject_test.txt")
mergedSubject <- rbind(trainSubject, testSubject)
head(mergedSubject)


#-------------------------------------------- Step 2 ------------------------------------
# Step 2. Extracts only the measurements on the mean and standard deviation for each measurement.

featureTable <- read.table("./features.txt")
meanStdIndex <- grep("mean\\(\\)|std\\(\\)", featureTable[, 2])
mergedSet <- mergedSet[, meanStdIndex]


#-------------------------------------------- Step 3 ------------------------------------
# Step 3. Using descriptive activity names to name the activities in the data set

activityTable <- read.table("./activity_labels.txt")
activityLabel <- activityTable[mergedLabels[, 1], 2]
mergedLabels[, 1] <- activityLabel
names(mergedLabels) <- "activity"


#-------------------------------------------- Step 4 ------------------------------------
# Step 4. Appropriately labels the data set with descriptive variable names.
# in the mergeset the names of the columns would be polished by removing "()"

names(mergedSet) <- sub("\\(\\)", "", featureTable[meanStdIndex, 2]) 
names(mergedSubject) <- "subject"
mergedData <- cbind(mergedSubject, mergedLabels, mergedSet)


#-------------------------------------------- Step 5 ------------------------------------
# Step 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject..
# in this step, firstly we create a list of factors on the subject column and the acctivity column.
# then we split the merged Data set based on the list of factors in order to compute the average of each variable
# for each activity and each subject
# finally the tidyDataSet will be written to a text file

f1<-factor(mergedData$subject)
f2<-factor(mergedData$activity)
factorCols<-colnames(mergedData) %in% c("subject","activity")
tempDataSet<-sapply(split(mergedData,list(f1,f2)), function(x) colMeans(x[, colnames(mergedData)[!factorCols]]))
newTemp<-t(tempDataSet)
newCol1<-rownames(newTemp)
splitNames=strsplit(newCol1,"\\.")
firstElement<-function(x){x[1]}
secondElement<-function(x){x[2]}
subject<-data.frame(subject=c(sapply(splitNames, firstElement)))
activity<-data.frame(activity=c(sapply(splitNames, secondElement)))
tidyDataSet<-cbind(subject,activity,newTemp)
dim(tidyDataSet)
head(tidyDataSet)
write.table(tidyDataSet, "Tidy_data.txt", row.name=FALSE)



