The run_analysis.R script does the following, in the following order:
-Reads the features, X_test, y_test, subject_test, X_train, y_train, and subject_train files into R 
-Renames the columns in the X_test and X_train datasets based on the features file 
-Binds the columns representing subject and activity to the appropriate features sets *Appends the test dataset to the train dataset 
-Relabels activities in order to make them human-readable
-Discards any column that does not reflect a mean or standard deviation
-Creates a new dataset with averages of each parameter for each subject's performance of each activity