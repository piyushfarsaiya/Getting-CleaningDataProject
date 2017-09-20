Input Data
----------

Input Data has been collected from UCI dataset which consists of following data files: \* X\_test: Main Test dataset \* y\_test: Labels of test data \* subject\_test:IDs of test subject \* X\_train: Main Train dataset \* y\_train: Labels of train data \* subject\_train:IDs of train subject \* features: Descriptive name of various measurements done. \* activity\_labels: Labels of 6 activities

-   Test dataset was used for the development of model
-   Train dataset was used for the validation of model

Output data
-----------

-   Merge test, train , subject data with variable names from features data
-   Then select the variables with measurement as "mean" or "std"
-   Computes the means of this secondary data set, group by subject/activity.
-   Save this last data set to tidy\_data.txt
-   This tidy data set consist mean and std dev variables of following *tBodyAcc-XYZ *tGravityAcc-XYZ *tBodyAccJerk-XYZ *tBodyGyro-XYZ *tBodyGyroJerk-XYZ *tBodyAccMag *tGravityAccMag *tBodyAccJerkMag *tBodyGyroMag *tBodyGyroJerkMag *fBodyAcc-XYZ *fBodyAccJerk-XYZ *fBodyGyro-XYZ *fBodyAccMag *fBodyAccJerkMag *fBodyGyroMag \*fBodyGyroJerkMag
