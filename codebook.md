Codebook for tidy_data.txt
==========================
Project submission for "Getting & Cleaning Data" #6
---------------------------------------------------

This dataset represents assembled and processed readings from accelerometer readings from 30 subjects, each of whom performed 6 different activities. All variables represent the mean of several means of several trials, or the mean of several standard deviations of several trials.

Variables
---------------

- **Subject**: an integer ID (1-30) given to each individual included in the data collection
- **Activity**: a character string indicating which activity is represented by the readings; one of six possible values (walking, walking upstairs, walking downstairs, sitting, standing, laying)
- **tBodyAcc**: body acceleration readings in three dimensions
- **tGravityAcc**: gravity acceleration readings in three dimensions
- **tBodyJerk** and **tBodyGyroJerk**: body linear acceleration and angular velocity readings derived in time to calculate jerk readings
- **t___Mag**: a series of variables (BodyAcc, GravityAcc, BodyAccJerk, BodyGyro, BodyGyroJerk) indicating magnitude of three-dimensional signals calculated using the Euclidean norm
- **all variables starting with f**: should be read as the identical variable to the above, but with a Fourier Fast Transform (FFT) applied