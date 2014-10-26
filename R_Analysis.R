
# read test set
x_test <- read.table("./test/X_test.txt")

# read training set
x_train <- read.table("./train/x_Train.txt")

# merge test set and training set
x_merge <- rbind (x_test, x_train)

# add descriptive variable names from features.txt to merged data set
features <- read.table("./features.txt")
names (x_merge) <- features[,2]


# extract mean and standard deviation measurements only
mean_col <- which (grepl("mean+", names(x_merge), perl=TRUE))
std_col <- which (grepl("std+", names(x_merge), perl=TRUE))
col_to_keep <- sort(c(mean_col, std_col))
mean_sd_ds<-x_merge[, col_to_keep]


# add acitivity labels 
y_test <- read.table("./test/Y_test.txt")
y_train <- read.table("./train/Y_train.txt")
y_merge <- rbind(y_test, y_train)
names (y_merge) <- "Activity"


subject_test <- read.table("./test/subject_test.txt")
subject_train <- read.table("./train/subject_train.txt")
subject_merge <- rbind(subject_test, subject_train)
names (subject_merge) <- "Subject"


combined_ds <- cbind (mean_sd_ds,  y_merge, subject_merge)

# compute average of each variable for each activity and each subject
tidy_ds<-aggregate(combined_ds[,1:ncol(combined_ds)],list(Subject=combined_ds$Subject, Activity=combined_ds$Activity), mean)

activity_desc<-read.table("./activity_labels.txt")
for (i in 1:nrow(activity_desc) )
{
  tidy_ds$ActivityDesc[tidy_ds$Activity==activity_desc[i,1]]<-as.character(activity_desc[i,2])
}

# remove duplicate Activity and Subject column in tidy_ds after the aggregate function
tidy_ds[,83]<- NULL
tidy_ds[,82]<- NULL

# write tidy data set to file tidydata.txt
write.table(tidy_ds, file="./tidydata.txt", sep="\t", row.names=FALSE)