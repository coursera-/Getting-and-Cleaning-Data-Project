Getting-and-Cleaning-Data-Project
=================================

This is a repository of a project for "Getting and Cleaning Data" course on Coursera:

https://www.coursera.org/course/getdata

Before running the project code, please download the project data:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

and extract the contents of the downloaded archive file into your working directory.

To run the project code, execute the following command in R environment:

```{r}
source(run_analysis.R)
```

This script will perform the following transformations of data:

- Read train and test data sets
- Set column names from features.txt
- Combine both train and test data sets into one data set
- Extract columns only with means and standard deviations of each variable
- Add a column with descriptive activity names
- Make column names more human readable
- Create a second tidy data set with the average of each variable for each activity and each subject
- Save the tidy data set to a text file

Please see CodeBook.md for more details about features used in this project.
