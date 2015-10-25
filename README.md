# Getting-and-Cleaning-Data-Course_Project

### Vinay Jakkali

## Breif Description:  

This repo consists of an R script named "run_analysis.R", a text file "tidy_data.txt" and a markdown file named "CodeBook.md"

The run_analysis.R script reads data from the UCI HAR dataset provided by the course instructor and also the original data can be found at  
"http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones" and it produces a new - tidy - dataset  
which can be used for further analysis. All the description and explanations for the variables in the "tidy_data.txt" is in the "CodeBook.md" file.  
  
  
## Original files in the data set provided:  


    'features.txt': List of all features.

    'activity_labels.txt': List of class labels and their activity name.
# Files in the training data set  

    'train/X_train.txt': Training set for X values..

    'train/Y_train.txt': Training for Y values.  

    'train/subject_train.txt': ID's of subjects in the training data  

# Files in the test data set.  

    'test/X_test.txt': Test set for X values.

    'test/Y_test.txt': Test set for Y values.

    'test/subject_test.txt': ID's of subjects in the test data.  
  
## Brief description of the R script.
  
The run_analysis.R script merges data from a number of .txt files and produces a tidy data set which may be used for further analysis.

   Firstly it loads the R packages "reshape2", "dplyr", "tidyr" using library function.   

   Then reading all the required txt files of the given datasets.  

   Appropriate "activity_id"'s and "subject_id"'s are appended to the "training" and the "test" data, and then they are combined into one single data frame

   Now extracting the mean() and std() values using "grep" function and new data frame including activity_id and subject_id with mean() and std() is created.

   Now using the "merge" fuction to merge the activities with mean/std dataset, to get one dataset with activity names.

   With the help of the "melt" and "dcast" functions, the data is then converted into a table containing mean values of all the included features,
   ordered by the activity name and the subject id, and the data is then written to the "tidy_data.txt" file.



