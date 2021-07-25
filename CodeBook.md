# Code Book

## Introduction
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. The embedded accelerometer and gyroscope were used to capture the 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. 


## Data set
After manipulating the dataset provided, I had a dataset of 68 columns. In the first two columns of the dataset are the person number and activities. The following columns have the means and standard deviations of the time and frequency domain measurements, which were extracted from the 561-feature vector.


## Steps I took
1. Since the experiment datasets were split between training and test datasets, I joined them together. This gave me a dataset of all anonymous participants, activity label and their time and frequency domain measurements.

2. I extracted the names of the columns from the features.txt file.

3. I then joined this table with a dataset of activities in order to add the activity name to the dataset. 

4. I reduced the size of the dataset by selecting only the person ID, activity name and mean and standard deviation calculations.

5. Finally I calculated the mean of all measures broken down by person and activity.
