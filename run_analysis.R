# ================================================================
# 1. Merge the training and the test sets to create one data set
# ================================================================

# Read train data
train_s = read.table("./UCI HAR Dataset/train/subject_train.txt",header=FALSE)
train_x = read.table("./UCI HAR Dataset/train/X_train.txt",header=FALSE)
train_y = read.table("./UCI HAR Dataset/train/y_train.txt",header=FALSE)

# Read test data
test_s = read.table("./UCI HAR Dataset/test/subject_test.txt",header=FALSE)
test_x = read.table("./UCI HAR Dataset/test/X_test.txt",header=FALSE)
test_y = read.table("./UCI HAR Dataset/test/y_test.txt",header=FALSE)

# Read feature names
features = read.table('./UCI HAR Dataset/features.txt',header=FALSE)

# Set column names in both train and test data
colnames(train_s) = "subjectId"
colnames(train_x) = features[,2]
colnames(train_y) = "activityId"
colnames(test_s) = "subjectId"
colnames(test_x) = features[,2]
colnames(test_y) = "activityId"

# Combine train data by columns
data_train = cbind(train_s,train_x,train_y)

# Combine test data by columns
data_test = cbind(test_s,test_x,test_y)

# Cobmine train and test data by rows
data_train_test = rbind(data_train,data_test)


# ================================================================
# 2. Extract the mean and standard deviation for each measurement
# ================================================================

# Extract all column names
colNames = colnames(data_train_test)

# Find columns with IDs, means, and standard deviations
subsetColNames = (grepl("activity",colNames) | grepl("subject",colNames) | grepl("mean()",colNames) | grepl("std()",colNames))

# Subset found columns in data
data_train_test_subset = data_train_test[subsetColNames]


# ================================================================
# 3. Add column with descriptive activity names to data set
# ================================================================

# Read activity labels
activities = read.table('./UCI HAR Dataset/activity_labels.txt',header=FALSE)

# Set column names in activity data
colnames(activities) = c("activityId","activityType")

# Add column with descriptive activity names
data_train_test_subset = merge(data_train_test_subset,activities,by="activityId")


# ================================================================
# 4. Appropriately label data set with descriptive variable names
# ================================================================

# Get current column names
cols = colnames(data_train_test_subset)
  
# Make column names more human readable
for (i in 1:length(cols)) 
{
  cols[i] = gsub("-","",cols[i])
  cols[i] = gsub("\\()","",cols[i])
  cols[i] = gsub("mean","Mean",cols[i])
  cols[i] = gsub("std","StandardDeviation",cols[i])
  cols[i] = gsub("^(t)","time",cols[i])
  cols[i] = gsub("^(f)","frequency",cols[i])
  cols[i] = gsub("Mag","Magnitude",cols[i])
}

# Use new column names
colnames(data_train_test_subset) = cols


# ================================================================
# 5. Create a second, independent tidy data set with the average 
#    of each variable for each activity and each subject
# ================================================================

# Remove the column with activity names
d = data_train_test_subset[colnames(data_train_test_subset) != c('activityType')]

# Aggregate the average of each variable for each activity and each subject
data_tidy = aggregate(d[colnames(d) != c('activityId','subjectId')],by=list(activityId=d$activityId,subjectId=d$subjectId),mean)

# Add back the column with activity names
data_tidy = merge(data_tidy,activities,by="activityId")
