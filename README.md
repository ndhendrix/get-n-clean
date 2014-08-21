##My run_analysis.R script
This script does the following, in the following order:

1.Reads the features, X_test, y_test, subject_test, X_train, y_train, and subject_train files into R 
2.Renames the columns in the X_test and X_train datasets based on the features file 
3.Binds the columns representing subject and activity to the appropriate features sets *Appends the test dataset to the train dataset 
4.Relabels activities in order to make them human-readable
5.Discards any column that does not reflect a mean or standard deviation
6.Creates a new dataset with averages of each parameter for each subject's performance of each activity