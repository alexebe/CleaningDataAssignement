1-We begin by adding header details to test and train data 

2-We  merge the train and test data to create one dataset

3-We extract the measurements on the mean and the standard deviation by searching the patterns "mean" and "std" from the columns names

4-We add subject variable by merging the measurements data and subjects data.

5-We add activity variable by merging the measurements data and activities data

6-In order to use descriptive activity names to name the activities in the data set, we retrieve the activity name which has the
 same number with the activity column for a given row
 
7-To create the second independent tidy data set ,we begin by creating a matix with 0 row and same number of column with the original data set. After that, we retrieve ,
for each subject and each activity, the subset from the original data set
  which has the same subject and activity. A new row is added to the new data set with the following values:
  *the current subject is copied into the subject column
  *the current activity is copied into the activity column
  *for each column the mean of the subset (for this column) is calculated and put into the same colum in the second data set. 