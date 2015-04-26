# Code book

<h2>Variables</h2>

<p><strong>activity</strong></p>
<p>values:<br>
1 WALKING<br>
2 WALKING_UPSTAIRS<br>
3 WALKING_DOWNSTAIRS<br>
4 SITTING<br>
5 STANDING<br>
6 LAYING<br>
</p>
<p><strong>subject</strong></p>
<p>values:<br>
integer values from 1 to 30</p>


<p><strong>tBodyAccmeanX<br>
tBodyAccmeanY<br>
tBodyAccmeanZ<br>
tBodyAccstdX<br>
tBodyAccstdY<br>
tBodyAccstdZ<br>
tGravityAccmeanX<br>
tGravityAccmeanY<br>
tGravityAccmeanZ<br>
tGravityAccstdX<br>
tGravityAccstdY<br>
tGravityAccstdZ<br>
tBodyAccJerkmeanX<br>
tBodyAccJerkmeanY<br>
tBodyAccJerkmeanZ<br>
tBodyAccJerkstdX<br>
tBodyAccJerkstdY<br>
tBodyAccJerkstdZ<br>
tBodyGyromeanX<br>
tBodyGyromeanY<br>
tBodyGyromeanZ<br>
tBodyGyrostdX<br>
tBodyGyrostdY<br>
tBodyGyrostdZ<br>
tBodyGyroJerkmeanX<br>
tBodyGyroJerkmeanY<br>
tBodyGyroJerkmeanZ<br>
tBodyGyroJerkstdX<br>
tBodyGyroJerkstdY<br>
tBodyGyroJerkstdZ<br>
tBodyAccMagmean<br>
tBodyAccMagstd<br>
tGravityAccMagmean<br>
tGravityAccMagstd<br>
tBodyAccJerkMagmean<br>
tBodyAccJerkMagstd<br>
tBodyGyroMagmean<br>
tBodyGyroMagstd<br>
tBodyGyroJerkMagmean<br>
tBodyGyroJerkMagstd<br>
fBodyAccmeanX<br>
fBodyAccmeanY<br>
fBodyAccmeanZ<br>
fBodyAccstdX<br>
fBodyAccstdY<br>
fBodyAccstdZ<br>
fBodyAccJerkmeanX<br>
fBodyAccJerkmeanY<br>
fBodyAccJerkmeanZ<br>
fBodyAccJerkstdX<br>
fBodyAccJerkstdY<br>
fBodyAccJerkstdZ<br>
fBodyGyromeanX<br>
fBodyGyromeanY<br>
fBodyGyromeanZ<br>
fBodyGyrostdX<br>
fBodyGyrostdY<br>
fBodyGyrostdZ<br>
fBodyAccMagmean<br>
fBodyAccMagstd<br>
fBodyBodyAccJerkMagmean<br>
fBodyBodyAccJerkMagstd<br>
fBodyBodyGyroMagmean<br>
fBodyBodyGyroMagstd<br>
fBodyBodyGyroJerkMagmean<br>
fBodyBodyGyroJerkMagstd</strong>
</p>

<p>values: floats, averages of corresponding columns in source file by activity and subject</p>

<h2>Data clean up process</h2>
<ul>
<li>extracting mean and std column names and indexes from features.txt file; matching features which contain mean() and std() strings; removing ( ) , - characters from column names</li>
<li>joining rows from train and test data for predictors (X_train.txt,X_test.txt), subjects (subject_train.txt,subject_test.txt) and labels (y_train.txt,y_test.txt)</li>
<li>extracting mean and std columns from predictors data frame (subsetting with previously found indexes)</li>
<li>setting factor for labels (using activity_labels.txt)</li>
<li>joining predictor, subject and labels columns</li>
<li>grouping by activity labels and subject and calculating mean for each activity and predictor column</li>
</ul>