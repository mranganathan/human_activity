# human_activity

From the UCI HAR Dataset folder, the run_analysis.R script loads the following:

* activity_labels.txt
* features.txt
* subject_train.txt
* X_train.txt
* y_train.txt
* subject_test.txt
* X_test.txt
* y_test.txt


Due to the size of the UCI HAR Dataset folder, I did not push it to Github.


The R script does the following:

1. Joins the training and test datasets together.

2. Extracts the names of the columns from the features.txt file.

3. Joins this table with a dataset of activities in order to add the activity name to the dataset. 

4. Reduces the size of the dataset by selecting only the person ID, activity name and mean and standard deviation calculations.

5. Calculates the mean of all measures broken down by person and activity.
