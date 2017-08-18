# CodeBook
## Data
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

### Attribute Information
For each record in the dataset it is provided: 
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

### Citation
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.

## Variables
Variable | Description
--- | ---
subjectids | Subject ID
activitynames | Type of activity performed
time.bodyacc.mean.x | Mean time of acceleration of body for X direction
time.bodyacc.mean.y | Mean time of acceleration of body for Y direction
time.bodyacc.mean.z | Mean time of acceleration of body for Z direction
time.bodyacc.std.x | Standard deviation of time for acceleration of body for X direction
time.bodyacc.std.y | Standard deviation of time for acceleration of body for Y direction
time.bodyacc.std.z | Standard deviation of time for acceleration of body for Z direction
time.gravityacc.mean.x | Mean time of acceleration of gravity for X direction
time.gravityacc.mean.y | Mean time of acceleration of gravity for Y direction
time.gravityacc.mean.z | Mean time of acceleration of gravity for Z direction
time.gravityacc.std.x | Standard deviation of acceleration of gravity for X direction
time.gravityacc.std.y | Standard deviation of acceleration of gravity for Y direction
time.gravityacc.std.z | Standard deviation of acceleration of gravity for Z direction
time.bodyaccjerk.mean.x | Mean time of body acceleration jerk for X direction
time.bodyaccjerk.mean.y | Mean time of body acceleration jerk for Y direction
time.bodyaccjerk.mean.z | Mean time of body acceleration jerk for Z direction
time.bodyaccjerk.std.x | Standard deviation of time of body acceleration jerk for X direction
time.bodyaccjerk.std.y | Standard deviation of time of body acceleration jerk for Y direction
time.bodyaccjerk.std.z | Standard deviation of time of body acceleration jerk for Z direction
time.bodygyro.mean.x | Mean time of body gyroscope measurement for X direction
time.bodygyro.mean.y | Mean time of body gyroscope measurement for Y direction
time.bodygyro.mean.z | Mean time of body gyroscope measurement for Z direction
time.bodygyro.std.x | Standard deviation of time of body gyroscope measurement for X direction
time.bodygyro.std.y | Standard deviation of time of body gyroscope measurement for Y direction
time.bodygyro.std.z | Standard deviation of time of body gyroscope measurement for Z direction
time.bodygyrojerk.mean.x | Mean time of body gyroscope jerk for X direction
time.bodygyrojerk.mean.y | Mean time of body gyroscope jerk for Y direction
time.bodygyrojerk.mean.z | Mean time of body gyroscope jerk for Z direction
time.bodygyrojerk.std.x | Standard deviation of time of body gyroscope jerk for X direction
time.bodygyrojerk.std.y | Standard deviation of time of body gyroscope jerk for Y direction
time.bodygyrojerk.std.z | Standard deviation of time of body gyroscope jerk for Z direction
time.bodyaccmag.mean | Mean time of body acceleration magnitude
time.bodyaccmag.std | Standard deviation of time of body acceleration magnitude
time.gravityaccmag.mean | Mean time of gravity acceleration magnitude
time.gravityaccmag.std | Standard deviation of time of gravity acceleration magnitude
time.bodyaccjerkmag.mean | Mean time of body acceleration jerk magnitude
time.bodyaccjerkmag.std | Standard deviation of time of body acceleration jerk magnitude
time.bodygyromag.mean | Mean time of body gyroscope magnitude
time.bodygyromag.std | Standard deviation of time of body gyroscope magnitude
time.bodygyrojerkmag.mean | Mean time of body gyroscope jerk magnitude
time.bodygyrojerkmag.std | Standard deviation of time of body gyroscope jerk magnitude
freq.bodyacc.mean.x | Mean frequency of acceleration of body for X direction
freq.bodyacc.mean.y | Mean frequency of acceleration of body for Y direction
freq.bodyacc.mean.z | Mean frequency of acceleration of body for Z direction
freq.bodyacc.std.x | Standard deviation of frequency for acceleration of body for X direction
freq.bodyacc.std.y | Standard deviation of frequency for acceleration of body for Y direction  
freq.bodyacc.std.z | Standard deviation of frequency for acceleration of body for Z direction
freq.bodyacc.meanfreq.x | Weighted average of frequency components to obtain mean frequency of acceleration of body for X direction
freq.bodyacc.meanfreq.y | Weighted average of frequency components to obtain mean frequency of acceleration of body for Y direction
freq.bodyacc.meanfreq.z | Weighted average of frequency components to obtain mean frequency of acceleration of body for Z direction
freq.bodyaccjerk.mean.x | Mean frequency of body acceleration jerk for X direction
freq.bodyaccjerk.mean.y | Mean frequency of body acceleration jerk for Y direction
freq.bodyaccjerk.mean.z | Mean frequency of body acceleration jerk for Z direction
freq.bodyaccjerk.std.x | Standard deviation of frequency of body acceleration jerk for X direction
freq.bodyaccjerk.std.y | Standard deviation of frequency of body acceleration jerk for Y direction
freq.bodyaccjerk.std.z | Standard deviation of frequency of body acceleration jerk for Z direction
freq.bodyaccjerk.meanfreq.x | Weighted average of frequency components to obtain mean frequency of body acceleration jerk for X direction
freq.bodyaccjerk.meanfreq.y | Weighted average of frequency components to obtain mean frequency of body acceleration jerk for Y direction
freq.bodyaccjerk.meanfreq.z | Weighted average of frequency components to obtain mean frequency of body acceleration jerk for Z direction
freq.bodygyro.mean.x | Mean frequency of body gyroscope measurement for X direction
freq.bodygyro.mean.y | Mean frequency of body gyroscope measurement for Y direction
freq.bodygyro.mean.z | Mean frequency of body gyroscope measurement for Z direction
freq.bodygyro.std.x | Standard deviation of frequency of body gyroscope measurement for X direction
freq.bodygyro.std.y | Standard deviation of frequency of body gyroscope measurement for Y direction
freq.bodygyro.std.z | Standard deviation of frequency of body gyroscope measurement for Z direction
freq.bodygyro.meanfreq.x | Weighted average of frequency components to obtain mean frequency of body gyroscope measurement for X direction
freq.bodygyro.meanfreq.y | Weighted average of frequency components to obtain mean frequency of body gyroscope measurement for Y direction
freq.bodygyro.meanfreq.z | Weighted average of frequency components to obtain mean frequency of body gyroscope measurement for Z direction
freq.bodyaccmag.mean | Mean frequency of body acceleration magnitude
freq.bodyaccmag.std | Standard deviation of frequency of body acceleration magnitude
freq.bodyaccmag.meanfreq | Weighted average of frequency components to obtain mean frequency of body acceleration magnitude
freq.bodyaccjerkmag.mean | Mean frequency of body acceleration jerk magnitude
freq.bodyaccjerkmag.std | Standard deviation of frequency of body acceleration jerk magnitude
freq.bodyaccjerkmag.meanfreq | Weighted average of frequency components to obtain mean frequency of body acceleration jerk magnitude
freq.bodygyromag.mean | Mean frequency of body gyroscope magnitude
freq.bodygyromag.std | Standard deviation of frequency of body gyroscope magnitude
freq.bodygyromag.meanfreq | Weighted average of frequency components to obtain mean frequency of body gyroscope magnitude
freq.bodygyrojerkmag.mean | Mean frequency of body gyroscope jerk magnitude
freq.bodygyrojerkmag.std | Standard deviation of frequency of body gyroscope jerk magnitude
freq.bodygyrojerkmag.meanfreq | Weighted average of frequency components to obtain mean frequency of body gyroscope jerk magnitude
