The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals timeAcc-XYZ and timeGyro-XYZ. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (timeBodyAcc-XYZ and timeGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (timeBodyAccJerk-XYZ and timeBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (timeBodyAccMagnitude, timeGravityAccMagnitude, timeBodyAccJerkMagnitude, timeBodyGyroMagnitude, timeBodyGyroJerkMagnitude). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing frequencyBodyAcc-XYZ, frequencyBodyAccJerk-XYZ, frequencyBodyGyro-XYZ, frequencyBodyAccJerkMagnitude, frequencyBodyGyroMagnitude, frequencyBodyGyroJerkMagnitude. 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

timeBodyAcc-XYZ
timeGravityAcc-XYZ
timeBodyAccJerk-XYZ
timeBodyGyro-XYZ
timeBodyGyroJerk-XYZ
timeBodyAccMagMagnitude
timeGravityAccMagMagnitude
timeBodyAccJerkMagMagnitude
timeBodyGyroMagMagnitude
timeBodyGyroJerkMagMagnitude
frequencyBodyAcc-XYZ
frequencyBodyAccJerk-XYZ
frequencyBodyGyro-XYZ
frequencyBodyAccMagMagnitude
frequencyBodyAccJerkMagMagnitude
frequencyBodyGyroMagMagnitude
frequencyBodyGyroJerkMagnitude

The means and standard deviations of these signals were estimated.

The complete list of variables:

 [1] "activityId"                                         
 [2] "subjectId"                                          
 [3] "timeBodyAccMeanX"                                   
 [4] "timeBodyAccMeanY"                                   
 [5] "timeBodyAccMeanZ"                                   
 [6] "timeBodyAccStandardDeviationX"                      
 [7] "timeBodyAccStandardDeviationY"                      
 [8] "timeBodyAccStandardDeviationZ"                      
 [9] "timeGravityAccMeanX"                                
[10] "timeGravityAccMeanY"                                
[11] "timeGravityAccMeanZ"                                
[12] "timeGravityAccStandardDeviationX"                   
[13] "timeGravityAccStandardDeviationY"                   
[14] "timeGravityAccStandardDeviationZ"                   
[15] "timeBodyAccJerkMeanX"                               
[16] "timeBodyAccJerkMeanY"                               
[17] "timeBodyAccJerkMeanZ"                               
[18] "timeBodyAccJerkStandardDeviationX"                  
[19] "timeBodyAccJerkStandardDeviationY"                  
[20] "timeBodyAccJerkStandardDeviationZ"                  
[21] "timeBodyGyroMeanX"                                  
[22] "timeBodyGyroMeanY"                                  
[23] "timeBodyGyroMeanZ"                                  
[24] "timeBodyGyroStandardDeviationX"                     
[25] "timeBodyGyroStandardDeviationY"                     
[26] "timeBodyGyroStandardDeviationZ"                     
[27] "timeBodyGyroJerkMeanX"                              
[28] "timeBodyGyroJerkMeanY"                              
[29] "timeBodyGyroJerkMeanZ"                              
[30] "timeBodyGyroJerkStandardDeviationX"                 
[31] "timeBodyGyroJerkStandardDeviationY"                 
[32] "timeBodyGyroJerkStandardDeviationZ"                 
[33] "timeBodyAccMagnitudeMean"                           
[34] "timeBodyAccMagnitudeStandardDeviation"              
[35] "timeGravityAccMagnitudeMean"                        
[36] "timeGravityAccMagnitudeStandardDeviation"           
[37] "timeBodyAccJerkMagnitudeMean"                       
[38] "timeBodyAccJerkMagnitudeStandardDeviation"          
[39] "timeBodyGyroMagnitudeMean"                          
[40] "timeBodyGyroMagnitudeStandardDeviation"             
[41] "timeBodyGyroJerkMagnitudeMean"                      
[42] "timeBodyGyroJerkMagnitudeStandardDeviation"         
[43] "frequencyBodyAccMeanX"                              
[44] "frequencyBodyAccMeanY"                              
[45] "frequencyBodyAccMeanZ"                              
[46] "frequencyBodyAccStandardDeviationX"                 
[47] "frequencyBodyAccStandardDeviationY"                 
[48] "frequencyBodyAccStandardDeviationZ"                 
[49] "frequencyBodyAccMeanFreqX"                          
[50] "frequencyBodyAccMeanFreqY"                          
[51] "frequencyBodyAccMeanFreqZ"                          
[52] "frequencyBodyAccJerkMeanX"                          
[53] "frequencyBodyAccJerkMeanY"                          
[54] "frequencyBodyAccJerkMeanZ"                          
[55] "frequencyBodyAccJerkStandardDeviationX"             
[56] "frequencyBodyAccJerkStandardDeviationY"             
[57] "frequencyBodyAccJerkStandardDeviationZ"             
[58] "frequencyBodyAccJerkMeanFreqX"                      
[59] "frequencyBodyAccJerkMeanFreqY"                      
[60] "frequencyBodyAccJerkMeanFreqZ"                      
[61] "frequencyBodyGyroMeanX"                             
[62] "frequencyBodyGyroMeanY"                             
[63] "frequencyBodyGyroMeanZ"                             
[64] "frequencyBodyGyroStandardDeviationX"                
[65] "frequencyBodyGyroStandardDeviationY"                
[66] "frequencyBodyGyroStandardDeviationZ"                
[67] "frequencyBodyGyroMeanFreqX"                         
[68] "frequencyBodyGyroMeanFreqY"                         
[69] "frequencyBodyGyroMeanFreqZ"                         
[70] "frequencyBodyAccMagnitudeMean"                      
[71] "frequencyBodyAccMagnitudeStandardDeviation"         
[72] "frequencyBodyAccMagnitudeMeanFreq"                  
[73] "frequencyBodyBodyAccJerkMagnitudeMean"              
[74] "frequencyBodyBodyAccJerkMagnitudeStandardDeviation" 
[75] "frequencyBodyBodyAccJerkMagnitudeMeanFreq"          
[76] "frequencyBodyBodyGyroMagnitudeMean"                 
[77] "frequencyBodyBodyGyroMagnitudeStandardDeviation"    
[78] "frequencyBodyBodyGyroMagnitudeMeanFreq"             
[79] "frequencyBodyBodyGyroJerkMagnitudeMean"             
[80] "frequencyBodyBodyGyroJerkMagnitudeStandardDeviation"
[81] "frequencyBodyBodyGyroJerkMagnitudeMeanFreq"         
[82] "activityType"
