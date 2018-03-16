# **Code Book**
A summary and description of the data fields in "tidy.txt".
## **Identifiers**
* "subject"
* "actitity"
### **Activity labels**
* "WALKING" (1): subject was walking during the test
* "WALKING_UPSTAIRS" (2): subject was walking up a staircase during the test
* "WALKING_DOWNSTAIRS" (3): subject was walking down a staircase during the test
* "SITTING" (4): subject was sitting during the test
* "STANDING" (5): subject was standing during the test
* "LAYING" (6): subject was laying down during the test
## **Measures**
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* "tBodyAcc-XYZ"
* "tGravityAcc-XYZ"
* "tBodyAccJerk-XYZ"
* "tBodyGyro-XYZ"
* "tBodyGyroJerk-XYZ"
* "tBodyAccMag"
* "tGravityAccMag"
* "tBodyAccJerkMag"
* "tBodyGyroMag"
* "tBodyGyroJerkMag"
* "fBodyAcc-XYZ"
* "fBodyAccJerk-XYZ"
* "fBodyGyro-XYZ"
* "fBodyAccMag"
* "fBodyAccJerkMag"
* "fBodyGyroMag"
* "fBodyGyroJerkMag"

The set of variables that were estimated from these signals are: 

* mean(): Mean value
* std(): Standard deviation

Average from above measures were put into these measures:

* "tbodyaccmeanx"
* "tbodyaccmeany"
* "tbodyaccmeanz"               
* "tbodyaccstdx"                 
* "tbodyaccstdy"                 
* "tbodyaccstdz"                
* "tgravityaccmeanx"             
* "tgravityaccmeany"             
* "tgravityaccmeanz"            
* "tgravityaccstdx"              
* "tgravityaccstdy"              
* "tgravityaccstdz"             
* "tbodyaccjerkmeanx"            
* "tbodyaccjerkmeany"            
* "tbodyaccjerkmeanz"           
* "tbodyaccjerkstdx"             
* "tbodyaccjerkstdy"             
* "tbodyaccjerkstdz"            
* "tbodygyromeanx"               
* "tbodygyromeany"               
* "tbodygyromeanz"              
* "tbodygyrostdx"                
* "tbodygyrostdy"                
* "tbodygyrostdz"               
* "tbodygyrojerkmeanx"           
* "tbodygyrojerkmeany"           
* "tbodygyrojerkmeanz"          
* "tbodygyrojerkstdx"            
* "tbodygyrojerkstdy"            
* "tbodygyrojerkstdz"           
* "tbodyaccmagmean"              
* "tbodyaccmagstd"               
* "tgravityaccmagmean"          
* "tgravityaccmagstd"            
* "tbodyaccjerkmagmean"          
* "tbodyaccjerkmagstd"          
* "tbodygyromagmean"             
* "tbodygyromagstd"              
* "tbodygyrojerkmagmean"        
* "tbodygyrojerkmagstd"          
* "fbodyaccmeanx"                
* "fbodyaccmeany"               
* "fbodyaccmeanz"                
* "fbodyaccstdx"                 
* "fbodyaccstdy"                
* "fbodyaccstdz"                 
* "fbodyaccmeanfreqx"            
* "fbodyaccmeanfreqy"           
* "fbodyaccmeanfreqz"            
* "fbodyaccjerkmeanx"            
* "fbodyaccjerkmeany"           
* "fbodyaccjerkmeanz"            
* "fbodyaccjerkstdx"             
* "fbodyaccjerkstdy"            
* "fbodyaccjerkstdz"             
* "fbodyaccjerkmeanfreqx"        
* "fbodyaccjerkmeanfreqy"       
* "fbodyaccjerkmeanfreqz"        
* "fbodygyromeanx"               
* "fbodygyromeany"              
* "fbodygyromeanz"               
* "fbodygyrostdx"                
* "fbodygyrostdy"               
* "fbodygyrostdz"                
* "fbodygyromeanfreqx"           
* "fbodygyromeanfreqy"          
* "fbodygyromeanfreqz"           
* "fbodyaccmagmean"              
* "fbodyaccmagstd"              
* "fbodyaccmagmeanfreq"          
* "fbodybodyaccjerkmagmean"      
* "fbodybodyaccjerkmagstd"      
* "fbodybodyaccjerkmagmeanfreq"  
* "fbodybodygyromagmean"         
* "fbodybodygyromagstd"         
* "fbodybodygyromagmeanfreq"     
* "fbodybodygyrojerkmagmean"     
* "fbodybodygyrojerkmagstd"     
* "fbodybodygyrojerkmagmeanfreq"