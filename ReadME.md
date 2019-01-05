==================================================================
## Human Activity Recognition Using Smartphones TIDY DATASET
### Version 1.0
==================================================================

This work is focused to create a TIDY dataset by name tidy_dataSet.txt for upstream consumption of analysis

### Step 1 - 4 of run_analysis.R file:

The X_test.txt and X_train.txt data-set are merged to create one dataset that hold all measurements of 561 features (feature.txt). The y_test.txt and y_train.txt datasets are merged to create one dataset the holds all 6 labels (type of activity) corresponding to each rocord. 

Then measurements indicating mean and standard deviation from freatures are extracted into a dataframe. To that 2 columns are added corresponding to activity labels (1-6) and its descriptive name.

### Step 5 of run_analysis.R file:

First dataset is grouped by Activity Descriptive Name & subject.
After grouping, average value of all measurement is created by mean of reading by respective activity type and stored into second data set.

The course project submission includes the following files:
=========================================

* ReadME.md

* Cookbook.md

* Tidy data sets: tidy_dataSet.txt

* R-script that transforms raw data to tidy data : run_analysis.R


Notes:
* Description of variables of dataset are provided cookBook.md



Author:
========
Nancy Shah