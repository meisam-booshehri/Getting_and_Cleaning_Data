A tidy dataset extracted from Smartphones Dataset V 1.0
==================================================================
Meisam Booshehri,
Institute of Computer Science
University of Rostock
Germany


The tidy dataset includes the following files:
=========================================

- 'README.md'

- 'run_analysis': Shows the code for making an independent tidy data set from Smartphones Dataset.

- 'tidy_data.txt': tidy data set.



tidy_data.txt
========================================================

'tidy_data.txt' contains a table with the following characteristics:

- There 68 columns in the table. 

- Combination of "subject"  column and "activity" column constitutes the key for each record in the table.


Comprehensive list of variables along with description
======================================================================

- There are 180 observations of the following 68 variables.

- subject ranges from 1 to 30 and identifies the subject who performed an activity.

- There are a total number of six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone 

-  Other 66 columns of the table corresponds to the average of mean or average of Standard deviation considering subject-activity observations. If the name of each variable contains "std" it corresponds to the average standard deviation. If it contains "mean", it corresponds to the average mean for that observation.


1.  subject                  : Factor w/ 30 levels
2.	activity                 : Factor w/ 6 levels 
3.	tBodyAcc-mean-X          : num  
4.	tBodyAcc-mean-Y          : num  
5.	tBodyAcc-mean-Z          : num  
6.	tBodyAcc-std-X           : num  
7.	tBodyAcc-std-Y           : num  
8.	tBodyAcc-std-Z           : num  
9.	tGravityAcc-mean-X       : num  
10.	tGravityAcc-mean-Y       : num  
11.	tGravityAcc-mean-Z       : num  
12.	tGravityAcc-std-X        : num  
13.	tGravityAcc-std-Y        : num  
14.	tGravityAcc-std-Z        : num  
15.	tBodyAccJerk-mean-X      : num  
16.	tBodyAccJerk-mean-Y      : num  
17.	tBodyAccJerk-mean-Z      : num  
18.	tBodyAccJerk-std-X       : num  
19.	tBodyAccJerk-std-Y       : num  
20.	tBodyAccJerk-std-Z       : num  
21.	tBodyGyro-mean-X         : num  
22.	tBodyGyro-mean-Y         : num  
23.	tBodyGyro-mean-Z         : num  
24.	tBodyGyro-std-X          : num  
25.	tBodyGyro-std-Y          : num  
26.	tBodyGyro-std-Z          : num  
27.	tBodyGyroJerk-mean-X     : num  
28.	tBodyGyroJerk-mean-Y     : num  
29.	tBodyGyroJerk-mean-Z     : num  
30.	tBodyGyroJerk-std-X      : num  
31.	tBodyGyroJerk-std-Y      : num  
32.	tBodyGyroJerk-std-Z      : num  
33.	tBodyAccMag-mean         : num  
34.	tBodyAccMag-std          : num  
35.	tGravityAccMag-mean      : num  
36.	tGravityAccMag-std       : num  
37.	tBodyAccJerkMag-mean     : num  
38.	tBodyAccJerkMag-std      : num  
39.	tBodyGyroMag-mean        : num  
40.	tBodyGyroMag-std         : num  
41.	tBodyGyroJerkMag-mean    : num  
42.	tBodyGyroJerkMag-std     : num  
43.	fBodyAcc-mean-X          : num  
44.	fBodyAcc-mean-Y          : num  
45.	fBodyAcc-mean-Z          : num  
46.	fBodyAcc-std-X           : num  
47.	fBodyAcc-std-Y           : num  
48.	fBodyAcc-std-Z           : num  
49.	fBodyAccJerk-mean-X      : num  
50.	fBodyAccJerk-mean-Y      : num  
51.	fBodyAccJerk-mean-Z      : num  
52.	fBodyAccJerk-std-X       : num  
53.	fBodyAccJerk-std-Y       : num  
54.	fBodyAccJerk-std-Z       : num  
55.	fBodyGyro-mean-X         : num  
56.	fBodyGyro-mean-Y         : num  
57.	fBodyGyro-mean-Z         : num  
58.	fBodyGyro-std-X          : num  
59.	fBodyGyro-std-Y          : num  
60.	fBodyGyro-std-Z          : num  
61.	fBodyAccMag-mean         : num  
62.	fBodyAccMag-std          : num  
63.	fBodyBodyAccJerkMag-mean : num  
64.	fBodyBodyAccJerkMag-std  : num  
65.	fBodyBodyGyroMag-mean    : num  
66.	fBodyBodyGyroMag-std     : num  
67.	fBodyBodyGyroJerkMag-mean: num  
68.	fBodyBodyGyroJerkMag-std : num  



Complementary information from the original smartphones dataset
======================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 
