
## Study Design

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

### Raw Data Attribute Information:

For each record in the dataset it is provided:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope.
- A 561-feature vector with time and frequency domain variables.
- Its activity label.
- An identifier of the subject who carried out the experiment. 

### The raw dataset includes the following files:


- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation

### Notes: 

- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws

### Raw data Source:

Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

Reduced this raw dataset to a tidy dataset as per guidance in https://class.coursera.org/getdata-012/forum/thread?thread_id=9


## Codebook




* subjectId :  Range is 1 - 30, one per subject, identifies a subject
* activitylabel : describes activity performed by subject, six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
* tBodyAcc-mean()-X : mean of mean value of Body acceleration along X axis per activity per subject 
* tBodyAcc-mean()-Y : mean of mean value of Body acceleration along Y axis per activity per subject 
* tBodyAcc-mean()-Z : mean of mean value of Body acceleration along Z axis per activity per subject 
* tBodyAcc-std()-X  : mean of Std value of Body acceleration along X axis per activity per subject
* tBodyAcc-std()-Y  : mean of Std value of Body acceleration along Y axis per activity per subject
* tBodyAcc-std()-Z  : mean of Std value of Body acceleration along Z axis per activity per subject
* tGravityAcc-mean()-X : mean of mean value of Gravity acceleration along X axis per activity per subject
* tGravityAcc-mean()-Y : mean of mean value of Gravity acceleration along Y axis per activity per subject
* tGravityAcc-mean()-Z : mean of mean value of Gravity acceleration along Z axis per activity per subject
* tGravityAcc-std()-X : mean of std value of Gravity acceleration along X axis per activity per subject
* tGravityAcc-std()-Y : mean of std value of Gravity acceleration along Y axis per activity per subject
* tGravityAcc-std()-Z : mean of std value of Gravity acceleration along Z axis per activity per subject
* tBodyAccJerk-mean()-X : mean of mean value of Jerk signal along X axis per activity per subject
* tBodyAccJerk-mean()-Y : mean of mean value of Jerk signal along Y axis per activity per subject
* tBodyAccJerk-mean()-Z : mean of mean value of Jerk signal along Z axis per activity per subject
* tBodyAccJerk-std()-X :  mean of std value of Jerk signal along X axis per activity per subject
* tBodyAccJerk-std()-Y :  mean of std value of Jerk signal along Y axis per activity per subject
* tBodyAccJerk-std()-Z :  mean of std value of Jerk signal along Z axis per activity per subject
* tBodyGyro-mean()-X :  mean of mean value of Gyro signal along X axis per activity per subject
* tBodyGyro-mean()-Y : mean of mean value of Gyro signal along Y axis per activity per subject
* tBodyGyro-mean()-Z : mean of mean value of Gyro signal along Z axis per activity per subject
* tBodyGyro-std()-X :  mean of std value of Gyro signal along X axis per activity per subject
* tBodyGyro-std()-Y :  mean of std value of Gyro signal along Y axis per activity per subject 
* tBodyGyro-std()-Z :  mean of std value of Gyro signal along Z axis per activity per subject
* tBodyGyroJerk-mean()-X : mean of mean value of Gyro Jerk signal along X axis per activity per subject
* tBodyGyroJerk-mean()-Y : mean of mean value of Gyro Jerk signal along Y axis per activity per subject
* tBodyGyroJerk-mean()-Z : mean of mean value of Gyro Jerk signal along Z axis per activity per subject
* tBodyGyroJerk-std()-X : mean of std value of Gyro Jerk signal along X axis per activity per subject
* tBodyGyroJerk-std()-Y : mean of std value of Gyro Jerk signal along Y axis per activity per subject
* tBodyGyroJerk-std()-Z : mean of std value of Gyro Jerk signal along Z axis per activity per subject
* tBodyAccMag-mean() : mean of mean value of Euclidean norm of Body Acceleration per activity per subject
* tBodyAccMag-std()  : mean of std value of Euclidean norm of Body Acceleration per activity per subject
* tGravityAccMag-mean() : mean of mean value of Euclidean norm of Gravity Acceleration per activity per subject
* tGravityAccMag-std() : mean of std value of Euclidean norm of Gravity Acceleration per activity per subject
* tBodyAccJerkMag-mean() :  mean of mean value of Euclidean norm of Jerk per activity per subject
* tBodyAccJerkMag-std() :  mean of std value of Euclidean norm of Jerk per activity per subject
* tBodyAccGyroMag-mean() : mean of mean value of Euclidean norm of Gyro per activity per subject
* tBodyAccGyroMag-std() : mean of std value of Euclidean norm of Gyro per activity per subject
* tBodyAccGyroJerkMag-mean() : mean of mean value of Euclidean norm of Gyro Jerk per activity per subject
* tBodyAccGyroJerkMag-std() : mean of std value of Euclidean norm of Gyro Jerk per activity per subject
* fBodyAcc-mean()-X : mean of mean values of FFT Body acceleration along X axis per activity per subject
* fBodyAcc-mean()-Y : mean of mean values of FFT Body acceleration along Y axis per activity per subject
* fBodyAcc-mean()-Z : mean of mean values of FFT Body acceleration along Z axis per activity per subject
* fBodyAcc-std()-X : mean of std values of FFT Body acceleration along X axis per activity per subject
* fBodyAcc-std()-Y : mean of mean values of FFT Body acceleration along Y axis per activity per subject
* fBodyAcc-std()-Z : mean of mean values of FFT Body acceleration along Z axis per activity per subject
* fBodyAccJerk-mean()-X : mean of mean values of FFT Body acceleration Jerk along X axis per activity per subject
* fBodyAccJerk-mean()-Y : mean of mean values of FFT Body acceleration Jerk along Y axis per activity per subject
* fBodyAccJerk-mean()-Z : mean of mean values of FFT Body acceleration Jerk along Z axis per activity per subject
* fBodyAccJerk-std()-X : mean of std values of FFT Body acceleration Jerk along X axis per activity per subject
* fBodyAccJerk-std()-Y : mean of std values of FFT Body acceleration Jerk along Y axis per activity per subject
* fBodyAccJerk-std()-Z : mean of std values of FFT Body acceleration Jerk along Z axis per activity per subject
* fBodyGyro-mean()-X : mean of mean values of FFT Gyro along X axis per activity per subject
* fBodyGyro-mean()-Y : mean of mean values of FFT Gyro along Y axis per activity per subject
* fBodyGyro-mean()-Z : mean of mean values of FFT Gyro along Z axis per activity per subject
* fBodyGyro-std()-X : mean of std values of FFT Gyro along X axis per activity per subject
* fBodyGyro-std()-Y : mean of std values of FFT Gyro along Y axis per activity per subject
* fBodyGyro-std()-Z : mean of std values of FFT Gyro along Z axis per activity per subject
* fBodyAccMag-mean() : mean of mean value of FFT Euclidean norm of Body acceleration per activity per subject
* fBodyAccMag-std() : mean of std value of FFT Euclidean norm of Body acceleration per activity per subject
* fBodyAccJerkMag-mean() : mean of mean value of FFT Euclidean norm of Body acc Jerk per activity per subject
* fBodyAccJerkMag-std()  : mean of std value of FFT Euclidean norm of Body acc Jerk per activity per subject
* fBodyAccGyroMag-mean() : mean of mean value of FFT Euclidean norm of Gyro per activity per subject
* fBodyAccGyroMag-std()  : mean of std value of FFT Euclidean norm of Gyro per activity per subject
* fBodyAccGyroJerkMag-mean() : mean of mean value of FFT Euclidean norm of Gyro Jerk per activity per subject
* fBodyAccGyroJerkMag-std()  : mean of std value of FFT Euclidean norm of Gyro Jerk per activity per subject

