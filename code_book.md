# gettingandcleaning_courseproject
## code book

The data originally comes from data collected from the accelerometers from a Samsung Galaxy S smartphone. A full description is available at the site where the original data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

however the original data is not tidy, hence the creation of this script and the output of the tidy dataset tidy_data.csv

the tidy data set comprises 180 observations of our 30 subjects and 6 activities, i.e. 1 observation per subject per activity. The variables are the means of the observations of the original study for each combination subject/activity, and we kept only values that represented means or standard variations as represented in the list by "mean" or "std" respectively.

                                 
 "TimeDomain_BodyAcc_mean_X"                    "TimeDomain_BodyAcc_mean_Y"                   
 "TimeDomain_BodyAcc_mean_Z"                    "TimeDomain_GravityAcc_mean_X"                
 "TimeDomain_GravityAcc_mean_Y"                 "TimeDomain_GravityAcc_mean_Z"                
 "TimeDomain_BodyAccJerk_mean_X"                "TimeDomain_BodyAccJerk_mean_Y"               
 "TimeDomain_BodyAccJerk_mean_Z"                "TimeDomain_BodyGyro_mean_X"                  
 "TimeDomain_BodyGyro_mean_Y"                   "TimeDomain_BodyGyro_mean_Z"                  
 "TimeDomain_BodyGyroJerk_mean_X"               "TimeDomain_BodyGyroJerk_mean_Y"              
 "TimeDomain_BodyGyroJerk_mean_Z"               "TimeDomain_BodyAccMag_mean"                  
 "TimeDomain_GravityAccMag_mean"                "TimeDomain_BodyAccJerkMag_mean"              
 "TimeDomain_BodyGyroMag_mean"                  "TimeDomain_BodyGyroJerkMag_mean"             
 "FrequencyDomain_BodyAcc_mean_X"               "FrequencyDomain_BodyAcc_mean_Y"              
 "FrequencyDomain_BodyAcc_mean_Z"               "FrequencyDomain_BodyAcc_meanFreq_X"          
 "FrequencyDomain_BodyAcc_meanFreq_Y"           "FrequencyDomain_BodyAcc_meanFreq_Z"          
 "FrequencyDomain_BodyAccJerk_mean_X"           "FrequencyDomain_BodyAccJerk_mean_Y"          
 "FrequencyDomain_BodyAccJerk_mean_Z"           "FrequencyDomain_BodyAccJerk_meanFreq_X"      
 "FrequencyDomain_BodyAccJerk_meanFreq_Y"       "FrequencyDomain_BodyAccJerk_meanFreq_Z"      
 "FrequencyDomain_BodyGyro_mean_X"              "FrequencyDomain_BodyGyro_mean_Y"             
 "FrequencyDomain_BodyGyro_mean_Z"              "FrequencyDomain_BodyGyro_meanFreq_X"         
 "FrequencyDomain_BodyGyro_meanFreq_Y"          "FrequencyDomain_BodyGyro_meanFreq_Z"         
 "FrequencyDomain_BodyAccMag_mean"              "FrequencyDomain_BodyAccMag_meanFreq"         
 "FrequencyDomain_BodyBodyAccJerkMag_mean"      "FrequencyDomain_BodyBodyAccJerkMag_meanFreq" 
 "FrequencyDomain_BodyBodyGyroMag_mean"         "FrequencyDomain_BodyBodyGyroMag_meanFreq"    
 "FrequencyDomain_BodyBodyGyroJerkMag_mean"     "FrequencyDomain_BodyBodyGyroJerkMag_meanFreq"
 "TimeDomain_BodyAcc_std_X"                     "TimeDomain_BodyAcc_std_Y"                    
 "TimeDomain_BodyAcc_std_Z"                     "TimeDomain_GravityAcc_std_X"                 
 "TimeDomain_GravityAcc_std_Y"                  "TimeDomain_GravityAcc_std_Z"                 
 "TimeDomain_BodyAccJerk_std_X"                 "TimeDomain_BodyAccJerk_std_Y"                
 "TimeDomain_BodyAccJerk_std_Z"                 "TimeDomain_BodyGyro_std_X"                   
 "TimeDomain_BodyGyro_std_Y"                    "TimeDomain_BodyGyro_std_Z"                   
 "TimeDomain_BodyGyroJerk_std_X"                "TimeDomain_BodyGyroJerk_std_Y"               
 "TimeDomain_BodyGyroJerk_std_Z"                "TimeDomain_BodyAccMag_std"                   
 "TimeDomain_GravityAccMag_std"                 "TimeDomain_BodyAccJerkMag_std"               
 "TimeDomain_BodyGyroMag_std"                   "TimeDomain_BodyGyroJerkMag_std"              
 "FrequencyDomain_BodyAcc_std_X"                "FrequencyDomain_BodyAcc_std_Y"               
 "FrequencyDomain_BodyAcc_std_Z"                "FrequencyDomain_BodyAccJerk_std_X"           
 "FrequencyDomain_BodyAccJerk_std_Y"            "FrequencyDomain_BodyAccJerk_std_Z"           
 "FrequencyDomain_BodyGyro_std_X"               "FrequencyDomain_BodyGyro_std_Y"              
 "FrequencyDomain_BodyGyro_std_Z"               "FrequencyDomain_BodyAccMag_std"              
 "FrequencyDomain_BodyBodyAccJerkMag_std"       "FrequencyDomain_BodyBodyGyroMag_std"         
 "FrequencyDomain_BodyBodyGyroJerkMag_std"   
 
 These time domain signals (prefix 'Timedomain' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.
 
 A Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (prefix 'Frequency domain')
 
 These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
