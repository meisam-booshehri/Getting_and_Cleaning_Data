# Getting_and_Cleaning_Data

Here is a description for the run_analysis.R produced by Meisam Booshehri.
The code consists of five steps as follows. Firstly, please Copy the dataset to the working directory


Step1. Merge the training and the test sets to create one data set. 

1. step 1.1 : merging the data tables: in this "X_train.txt"" and "X_test.txt" will be merged by using rbind()
2. step 1.2 : merging the label tables: in this step "y_train.txt" and "y_test.txt" wil be merged together by using rbind()
3. step 1.3 : merging the subject tables:in this step "subject_train.txt" and "subject_test.txt" wil be merged together by using rbind()

Step 2. Extracts only the measurements on the mean and standard deviation for each measurement. This is done
by subsetting the dataset

Step 3. Using descriptive activity names to name the activities in the data set

Step 4. Appropriately labels the data set with descriptive variable names. For instance, in the mergeset the names of the columns would be polished by removing "()"

Step 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject. in this step, firstly we create a list of factors on the subject column and the acctivity column. then we split the merged Data set based on the list of factors in order to compute the average of each variable for each activity and each subject. finally the tidyDataSet will be written to a text file




