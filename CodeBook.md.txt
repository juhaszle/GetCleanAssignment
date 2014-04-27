Variables in aggregatedData.txt
[1] "subject"                     "activity"                   
 [3] "timeBodyAccMeanX"            "timeBodyAccMeanY"           
 [5] "timeBodyAccMeanZ"            "timeBodyAccStdX"            
 [7] "timeBodyAccStdY"             "timeBodyAccStdZ"            
 [9] "timeGravityAccMeanX"         "timeGravityAccMeanY"        
[11] "timeGravityAccMeanZ"         "timeGravityAccStdX"         
[13] "timeGravityAccStdY"          "timeGravityAccStdZ"         
[15] "timeBodyAccJerkMeanX"        "timeBodyAccJerkMeanY"       
[17] "timeBodyAccJerkMeanZ"        "timeBodyAccJerkStdX"        
[19] "timeBodyAccJerkStdY"         "timeBodyAccJerkStdZ"        
[21] "timeBodyGyroMeanX"           "timeBodyGyroMeanY"          
[23] "timeBodyGyroMeanZ"           "timeBodyGyroStdX"           
[25] "timeBodyGyroStdY"            "timeBodyGyroStdZ"           
[27] "timeBodyGyroJerkMeanX"       "timeBodyGyroJerkMeanY"      
[29] "timeBodyGyroJerkMeanZ"       "timeBodyGyroJerkStdX"       
[31] "timeBodyGyroJerkStdY"        "timeBodyGyroJerkStdZ"       
[33] "timeBodyAccMagMean"          "timeBodyAccMagStd"          
[35] "timeGravityAccMagMean"       "timeGravityAccMagStd"       
[37] "timeBodyAccJerkMagMean"      "timeBodyAccJerkMagStd"      
[39] "timeBodyGyroMagMean"         "timeBodyGyroMagStd"         
[41] "timeBodyGyroJerkMagMean"     "timeBodyGyroJerkMagStd"     
[43] "freqBodyAccMeanX"            "freqBodyAccMeanY"           
[45] "freqBodyAccMeanZ"            "freqBodyAccStdX"            
[47] "freqBodyAccStdY"             "freqBodyAccStdZ"            
[49] "freqBodyAccJerkMeanX"        "freqBodyAccJerkMeanY"       
[51] "freqBodyAccJerkMeanZ"        "freqBodyAccJerkStdX"        
[53] "freqBodyAccJerkStdY"         "freqBodyAccJerkStdZ"        
[55] "freqBodyGyroMeanX"           "freqBodyGyroMeanY"          
[57] "freqBodyGyroMeanZ"           "freqBodyGyroStdX"           
[59] "freqBodyGyroStdY"            "freqBodyGyroStdZ"           
[61] "freqBodyAccMagMean"          "freqBodyAccMagStd"          
[63] "freqBodyBodyAccJerkMagMean"  "freqBodyBodyAccJerkMagStd"  
[65] "freqBodyBodyGyroMagMean"     "freqBodyBodyGyroMagStd"     
[67] "freqBodyBodyGyroJerkMagMean" "freqBodyBodyGyroJerkMagStd"

The names of the variables follow the notations of the original source: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
However, in some cases they were formed more ’tidy’, discarding parentheses and dashes.
[1] subject: 1 -30, n=30
[2] activity: factor; 1 WALKING, 2 WALKING_UPSTAIRS, 3 WALKING_DOWNSTAIRS, 4 SITTING, 5 STANDING, 6 LAYING

At the case of  the other variables [3]… [68]:
prefix ’time’: time domain signal
prefix ’freq’: frequency domain signal
infix ’Acc’: accelerometer
infix ’Gyro’: gyroscope
infix ’Body’: body
infix ’Gravity’: gravity
infix ’Jerk’: jerk signal
infix ’Mag’: magnitude
suffix ’Mean’: mean of
suffix ’Std’: standard deviation of
suffix’X/Y/Z’: x,y or z axes 
