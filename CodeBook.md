<h1>GETTING AND CLEANING DATA FINAL PROJECT</h1>
<h3>
1-We begin by adding header details to test and train data <br/>

2-We  merge the train and test data to create one dataset <br/>

3-We extract the measurements on the mean and the standard deviation by searching the patterns "mean" and "std" from the columns names <br/>

4-We add subject variable by merging the measurements data and subjects data. <br/>

5-We add activity variable by merging the measurements data and activities data <br/>

6-In order to use descriptive activity names to name the activities in the data set, we retrieve the activity name which has the
 same number with the activity column for a given row <br/>
 
7-To create the second independent tidy data set ,we begin by creating a matix with 0 row and same number of column with the original data set. After that, we retrieve ,
for each subject and each activity, the subset from the original data set
  which has the same subject and activity. A new row is added to the new data set with the following values:
  *the current subject is copied into the subject column
  *the current activity is copied into the activity column
  *for each column the mean of the subset (for this column) is calculated and put into the same colum in the second data set.
 <br/><br/>
 </h3>
 <h2>
The final data set has the following variables:
subject activity tBodyAccMeanX tBodyAccMeanY tBodyAccMeanZ tBodyAccStdX tBodyAccStdY tBodyAccStdZ tGravityAccMeanX tGravityAccMeanY tGravityAccMeanZ tGravityAccStdX tGravityAccStdY tGravityAccStdZ tBodyAccJerkMeanX tBodyAccJerkMeanY tBodyAccJerkMeanZ tBodyAccJerkStdX tBodyAccJerkStdY tBodyAccJerkStdZ tBodyGyroMeanX tBodyGyroMeanY tBodyGyroMeanZ tBodyGyroStdX tBodyGyroStdY tBodyGyroStdZ tBodyGyroJerkMeanX tBodyGyroJerkMeanY tBodyGyroJerkMeanZ tBodyGyroJerkStdX tBodyGyroJerkStdY tBodyGyroJerkStdZ tBodyAccMagMean tBodyAccMagStd tGravityAccMagMean tGravityAccMagStd tBodyAccJerkMagMean tBodyAccJerkMagStd tBodyGyroMagMean tBodyGyroMagStd tBodyGyroJerkMagMean tBodyGyroJerkMagStd fBodyAccMeanX fBodyAccMeanY fBodyAccMeanZ fBodyAccStdX fBodyAccStdY fBodyAccStdZ fBodyAccMeanFreqX fBodyAccMeanFreqY fBodyAccMeanFreqZ fBodyAccJerkMeanX fBodyAccJerkMeanY fBodyAccJerkMeanZ fBodyAccJerkStdX fBodyAccJerkStdY fBodyAccJerkStdZ fBodyAccJerkMeanFreqX fBodyAccJerkMeanFreqY fBodyAccJerkMeanFreqZ fBodyGyroMeanX fBodyGyroMeanY fBodyGyroMeanZ fBodyGyroStdX fBodyGyroStdY fBodyGyroStdZ fBodyGyroMeanFreqX fBodyGyroMeanFreqY fBodyGyroMeanFreqZ fBodyAccMagMean fBodyAccMagStd fBodyAccMagMeanFreq fBodyBodyAccJerkMagMean fBodyBodyAccJerkMagStd fBodyBodyAccJerkMagMeanFreq fBodyBodyGyroMagMean fBodyBodyGyroMagStd fBodyBodyGyroMagMeanFreq fBodyBodyGyroJerkMagMean fBodyBodyGyroJerkMagStd fBodyBodyGyroJerkMagMeanFreq
</h2>

