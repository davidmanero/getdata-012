## CodeBook for the GetData-012 Course Project

### Raw Information

Source:

Jorge L. Reyes-Ortiz(1,2), Davide Anguita(1), Alessandro Ghio(1), Luca Oneto(1) and Xavier Parra(2)
1 - Smartlab - Non-Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova, Genoa (I-16145), Italy. 
2 - CETpD - Technical Research Centre for Dependency Care and Autonomous Living
Universitat Politècnica de Catalunya (BarcelonaTech). Vilanova i la Geltrú (08800), Spain
activityrecognition '@' smartlab.ws


Data Set Information:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

Check the README.txt file for further details about this dataset. 

A video of the experiment including an example of the 6 recorded activities with one of the participants can be seen in the following link: [Web Link]


Attribute Information:

For each record in the dataset it is provided: 
* Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
* Triaxial Angular velocity from the gyroscope. 
* A 561-feature vector with time and frequency domain variables. 
* Its activity label. 
* An identifier of the subject who carried out the experiment.

### The tidy data file

It is composed by the following variables, each in a column:
 * [1] "Subject"                                           
 * [2] "Activity"                                          
 * [3] "TimeBodyAccelerometerMean()-X"                     
 * [4] "TimeBodyAccelerometerMean()-Y"                     
 * [5] "TimeBodyAccelerometerMean()-Z"                     
 * [6] "TimeBodyAccelerometerSTD()-X"                      
 * [7] "TimeBodyAccelerometerSTD()-Y"                      
 * [8] "TimeBodyAccelerometerSTD()-Z"                      
 * [9] "TimeGravityAccelerometerMean()-X"                  
 * [10] "TimeGravityAccelerometerMean()-Y"                  
 * [11] "TimeGravityAccelerometerMean()-Z"                  
 * [12] "TimeGravityAccelerometerSTD()-X"                   
 * [13] "TimeGravityAccelerometerSTD()-Y"                   
 * [14] "TimeGravityAccelerometerSTD()-Z"                   
 * [15] "TimeBodyAccelerometerJerkMean()-X"                 
 * [16] "TimeBodyAccelerometerJerkMean()-Y"                 
 * [17] "TimeBodyAccelerometerJerkMean()-Z"                 
 * [18] "TimeBodyAccelerometerJerkSTD()-X"                  
 * [19] "TimeBodyAccelerometerJerkSTD()-Y"                  
 * [20] "TimeBodyAccelerometerJerkSTD()-Z"                  
 * [21] "TimeBodyGyroscopeMean()-X"                         
 * [22] "TimeBodyGyroscopeMean()-Y"                         
 * [23] "TimeBodyGyroscopeMean()-Z"                         
 * [24] "TimeBodyGyroscopeSTD()-X"                          
 * [25] "TimeBodyGyroscopeSTD()-Y"                          
 * [26] "TimeBodyGyroscopeSTD()-Z"                          
 * [27] "TimeBodyGyroscopeJerkMean()-X"                     
 * [28] "TimeBodyGyroscopeJerkMean()-Y"                     
 * [29] "TimeBodyGyroscopeJerkMean()-Z"                     
 * [30] "TimeBodyGyroscopeJerkSTD()-X"                      
 * [31] "TimeBodyGyroscopeJerkSTD()-Y"                      
 * [32] "TimeBodyGyroscopeJerkSTD()-Z"                      
 * [33] "TimeBodyAccelerometerMagnitudeMean()"              
 * [34] "TimeBodyAccelerometerMagnitudeSTD()"               
 * [35] "TimeGravityAccelerometerMagnitudeMean()"           
 * [36] "TimeGravityAccelerometerMagnitudeSTD()"            
 * [37] "TimeBodyAccelerometerJerkMagnitudeMean()"          
 * [38] "TimeBodyAccelerometerJerkMagnitudeSTD()"           
 * [39] "TimeBodyGyroscopeMagnitudeMean()"                  
 * [40] "TimeBodyGyroscopeMagnitudeSTD()"                   
 * [41] "TimeBodyGyroscopeJerkMagnitudeMean()"              
 * [42] "TimeBodyGyroscopeJerkMagnitudeSTD()"               
 * [43] "FrequencyBodyAccelerometerMean()-X"                
 * [44] "FrequencyBodyAccelerometerMean()-Y"                
 * [45] "FrequencyBodyAccelerometerMean()-Z"                
 * [46] "FrequencyBodyAccelerometerSTD()-X"                 
 * [47] "FrequencyBodyAccelerometerSTD()-Y"                 
 * [48] "FrequencyBodyAccelerometerSTD()-Z"                 
 * [49] "FrequencyBodyAccelerometerMeanFreq()-X"            
 * [50] "FrequencyBodyAccelerometerMeanFreq()-Y"            
 * [51] "FrequencyBodyAccelerometerMeanFreq()-Z"            
 * [52] "FrequencyBodyAccelerometerJerkMean()-X"            
 * [53] "FrequencyBodyAccelerometerJerkMean()-Y"            
 * [54] "FrequencyBodyAccelerometerJerkMean()-Z"            
 * [55] "FrequencyBodyAccelerometerJerkSTD()-X"             
 * [56] "FrequencyBodyAccelerometerJerkSTD()-Y"             
 * [57] "FrequencyBodyAccelerometerJerkSTD()-Z"             
 * [58] "FrequencyBodyAccelerometerJerkMeanFreq()-X"        
 * [59] "FrequencyBodyAccelerometerJerkMeanFreq()-Y"        
 * [60] "FrequencyBodyAccelerometerJerkMeanFreq()-Z"        
 * [61] "FrequencyBodyGyroscopeMean()-X"                    
 * [62] "FrequencyBodyGyroscopeMean()-Y"                    
 * [63] "FrequencyBodyGyroscopeMean()-Z"                    
 * [64] "FrequencyBodyGyroscopeSTD()-X"                     
 * [65] "FrequencyBodyGyroscopeSTD()-Y"                     
 * [66] "FrequencyBodyGyroscopeSTD()-Z"                     
 * [67] "FrequencyBodyGyroscopeMeanFreq()-X"                
 * [68] "FrequencyBodyGyroscopeMeanFreq()-Y"                
 * [69] "FrequencyBodyGyroscopeMeanFreq()-Z"                
 * [70] "FrequencyBodyAccelerometerMagnitudeMean()"         
 * [71] "FrequencyBodyAccelerometerMagnitudeSTD()"          
 * [72] "FrequencyBodyAccelerometerMagnitudeMeanFreq()"     
 * [73] "FrequencyBodyAccelerometerJerkMagnitudeMean()"     
 * [74] "FrequencyBodyAccelerometerJerkMagnitudeSTD()"      
 * [75] "FrequencyBodyAccelerometerJerkMagnitudeMeanFreq()" 
 * [76] "FrequencyBodyGyroscopeMagnitudeMean()"             
 * [77] "FrequencyBodyGyroscopeMagnitudeSTD()"              
 * [78] "FrequencyBodyGyroscopeMagnitudeMeanFreq()"         
 * [79] "FrequencyBodyGyroscopeJerkMagnitudeMean()"         
 * [80] "FrequencyBodyGyroscopeJerkMagnitudeSTD()"          
 * [81] "FrequencyBodyGyroscopeJerkMagnitudeMeanFreq()"     
 * [82] "Angle(Time_BodyAccelerometerMean,Gravity)"         
 * [83] "Angle(Time_BodyAccelerometerJerkMean),GravityMean)"
 * [84] "Angle(Time_BodyGyroscopeMean,GravityMean)"         
 * [85] "Angle(Time_BodyGyroscopeJerkMean,GravityMean)"     
 * [86] "Angle(X,GravityMean)"                              
 * [87] "Angle(Y,GravityMean)"                              
 * [88] "Angle(Z,GravityMean)"  
