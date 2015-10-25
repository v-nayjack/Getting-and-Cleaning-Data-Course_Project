## Opening the required libraries and some.

library(dplyr)

library(datasets)

library(reshape2)

## First of all, we are going to read in all the data given in the form of .txt files 

## Reading all activities ID and their names and apprpriately labeling the columns 

labels <- read.table("./UCI HAR Dataset/activity_labels.txt",col.names=c("activity_id","activity_name"))

## Reading all the dataframe's column names

features <- read.table("./UCI HAR Dataset/features.txt")

feature_names <-  features[,2]

## Reading the X values of training data and labeling the dataframe's columns

train_data <- read.table("./UCI HAR Dataset/train/X_train.txt")

colnames(train_data) <- feature_names

## Reading the subject ids and labeling the columns

train_subject_id <- read.table("./UCI HAR Dataset/train/subject_train.txt")

colnames(train_subject_id) <- "subject_id"


## Now reading the activity id's of the Y values' training data file and labeling the columns

train_activity_id <- read.table("./UCI HAR Dataset/train/Y_train.txt")

colnames(train_activity_id) <- "activity_id"


## Reading the X values of test data and labeling the dataframe's columns

test_data <- read.table("./UCI HAR Dataset/test/X_test.txt")

colnames(test_data) <- feature_names

## Reading the subject ids and labeling the columns

test_subject_id <- read.table("./UCI HAR Dataset/test/subject_test.txt")

colnames(test_subject_id) <- "subject_id"

## Now reading the activity id's of the Y values' test data file and labeling the columns


test_activity_id <- read.table("./UCI HAR Dataset/test/Y_test.txt")

colnames(test_activity_id) <- "activity_id"

## Now merging the X and Y values of the test file and the train file

traindata <- cbind(train_subject_id , train_activity_id , train_data)

testdata <- cbind(test_subject_id , test_activity_id , test_data)


## Now merging the train and test data 

all_data <- rbind(traindata,testdata)

## Extracting the columns refering to mean() or std() values

mean_col_idx <- grep("mean",names(all_data),ignore.case = TRUE)

mean_col_names <- names(all_data)[mean_col_idx]

std_col_idx <- grep("std",names(all_data),ignore.case = TRUE)

std_col_names <- names(all_data)[std_col_idx]

meanstddata <-all_data[,c("subject_id","activity_id",mean_col_names,std_col_names)]

## Merging the activities dataset with the mean/std values dataset to get one dataset with descriptive activity names

descrnames <- merge(labels,meanstddata,by.x="activity_id",by.y="activity_id",all=TRUE)

## And melting the dataset with the descriptive activity names for better handling usin melt()

data_melt <- melt(descrnames,id=c("activity_id","activity_name","subject_id"))

## Now casting the melted dataset according to the average of each variable for each activity and each subject
## using dcast()


mean_data <- dcast(data_melt,activity_id + activity_name + subject_id ~ variable,mean)

## Create a file with the new tidy dataset

write.table(mean_data,"./UCI HAR Dataset/tidy_data.txt", row.names = FALSE)






