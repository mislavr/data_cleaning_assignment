library(dplyr)
#loading training set predictors
training_set <- read.table("UCI HAR Dataset/train/X_train.txt")
#loading test set predictors
test_set <- read.table("UCI HAR Dataset/test/X_test.txt")
#loading column names
column_names_data <- read.table("UCI HAR Dataset/features.txt",stringsAsFactors=FALSE)[,2]
#extracting column names indexes which contain mean() and std() string
mean_column_indexes <- grep("mean()",column_names_data,fixed = TRUE)
std_column_indexes <- grep("std()",column_names_data,fixed = TRUE)
#cleaning up column names - removing ( ) , - characters
column_names <- gsub('\\(|\\)|,|\\-','',column_names_data)
#joining test set and training set predictors
joined_predictor_data <- rbind(training_set,test_set)
#setting data frame column names
names(joined_predictor_data) <- column_names
#selecting columns with means and standard deviations
joined_predictor_data <- joined_predictor_data[,sort(c(mean_column_indexes,std_column_indexes))]

#loading activity label strings
factor_levels <- read.table("UCI HAR Dataset/activity_labels.txt",stringsAsFactors=FALSE)[,2]
#loading training set labels
labels_training_set <- read.table("UCI HAR Dataset/train/y_train.txt")
#loading test set labels
labels_test_set <- read.table("UCI HAR Dataset/test/y_test.txt")
#joining test set and training set labels
joined_labels_data <- rbind(labels_training_set,labels_test_set)
#converting to factor
joined_labels_data_factor <- data.frame(activity=factor(joined_labels_data$V1,labels=factor_levels))
#joining predictor and labels columns
joined_all_data <- cbind(joined_predictor_data,joined_labels_data_factor)

#grouping by activity labels and calculating mean for each activity and predictor column
result <- summarise_each(group_by(joined_all_data,activity),funs(mean))
#writing results to file
write.table(result, "result_data_set.txt", row.name=FALSE)