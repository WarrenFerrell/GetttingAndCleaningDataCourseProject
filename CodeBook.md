# CodeBook for tidy-modified Human Activity Recognition Using Smart Phones Dataset
### Original Dataset published by Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto. 
### Smartlab - Non Linear Complex Systems Laboratory
### Modification performed for Coursera Getting and Cleaning Data course project


* All acceleroometer data is reported in standard gravity units 'g' 
* All gyroscopic data is reported in angular velocity units 'radians/second'
* Prefix 't' or 'f' represent time and frequency domain variables respectively
* Force due to Gravity has been subtracted from each variable
	* Variables containing the word gravity are the value of the force from gravity subtracted out
* Jerk is the third derivative of position / derivative of acceleration
	* Jerk represents the change in the acceleration over time

Variable Pos | Variable Name | Explanation
-------------|---------------|------------
1 | subject  | test subject observations are for
2 | activity | activity performed during observations 
3-5 | tAcc.mean.[XYZ] | average accelerometer reading due to subject's movements in X,Y, or Z direction
6-8 | tAcc.std.[XYZ] | standard deviation of accelerometer reading due to subject's movements in X,Y, or Z direction
9-11 | tGravityAcc.mean.[XYZ] | average accelerometer reading due to gravity in X,Y, or Z direction 
12-14 | tGravityAcc.std.[XYZ] | standard deviation of accelerometer reading due to gravity in X,Y, or Z direction 
15-17 | tAccJerk.mean.[XYZ] | average accelerometer jerk due to subject's movements in X,Y, or Z direction
18-20 | tAccJerk.std.[XYZ] | standard deviation of accelerometer jerk due to subject's movements in X,Y, or Z direction
21-23 | tGyro.mean.[XYZ] | average gyroscope reading in X,Y, or Z direction
24-26 | tGyro.std.[XYZ] | standard deviation of gyroscope reading in X,Y, or Z direction
27-29 | tGyroJerk.mean.[XYZ] | average gyroscope jerk in X, Y, or Z direction
30-32 | tGyroJerk.std.[XYZ] | standard deviation of gyroscope jerk in X, Y, or Z direction
33    | tAccMag.mean | average magnitude of accelerometer reading due to subject's movements
34    | tAccMag.std | standard deviation of magnitude of accelerometer reading due to subject's movements
35    | tGravityAccMag.mean | average magnitude of accelerometer reading due to gravity
36    | tGravityAccMag.std | standard deviation of magnitude of accelerometer reading due to gravity
37    | tAccJerkMag.mean | average magnitude of acceleromter jerk due to subject's movements
38    | tAccJerkMag.std | standard deviation of magnitude of acceleromter jerk due to subject's movements
39    | tGyroMag.mean | average magnitude of gyroscope reading
40    | tGyroMag.std | standard deviation of magnitude of gyroscope reading
41    | tGyroJerkMag.mean | average magnitide of gyroscope jerk
42    | tGyroJerkMag.std | standard deviation of magnitide of gyroscope jerk
43-45 | fAcc.mean.[XYZ] | average accelerometer frequency due to subject's movements in X,Y, or Z direction
46-48 | fAcc.std.[XYZ] | standard deviation of accelerometer frequency due to subject's movements in X,Y, or Z direction
49-51 | fAccJerk.mean.[XYZ] | average accelerometer jerk frequency due to subject's movements in X,Y, or Z direction
52-54 | fAccJerk.std.[XYZ] | standard deviation of accelerometer jerk frequency due to subject's movements in X,Y, or Z direction
55-57 | fGyro.mean.[XYZ] | average gyroscope frequency in X,Y, or Z direction
58-60 | fGyro.std.[XYZ] | standard deviation of gyroscope frequency in X,Y, or Z direction
61    | fAccMag.mean | average magnitude of accelerometer frequency due to subject's movements
62    | fAccMag.std | standard deviation of magnitude of accelerometer frequency due to subject's movements
63    | fAccJerkMag.mean | average magnitude of acceleromter jerk frequency due to subject's movements
64    | fAccJerkMag.std | standard deviation of magnitude of acceleromter jerk frequency due to subject's movements
65    | fGyroMag.mean | average magnitude of gyroscope frequency
66    | fGyroMag.std | standard deviation of magnitude of gyroscope frequency
67    | fGyroJerkMag.mean | average magnitide of gyroscope jerk frequency
68    | fGyroJerkMag.std | standard deviation of magnitide of gyroscope jerk frequency
 
