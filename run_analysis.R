# Setting up the directories

uci_dir <- "UCI HAR Dataset"
features_file <- paste(uci_dir, "/features.txt", sep = "")
activity_labels_file <- paste(uci_dir, "/activity_labels.txt", sep = "")
x_train_file <- paste(uci_dir, "/train/X_train.txt", sep = "")
y_train_file <- paste(uci_dir, "/train/y_train.txt", sep = "")
subject_train_file <- paste(uci_dir, "/train/subject_train.txt", sep = "")
x_test_file  <- paste(uci_dir, "/test/X_test.txt", sep = "")
y_test_file  <- paste(uci_dir, "/test/y_test.txt", sep = "")
subject_test_file <- paste(uci_dir, "/test/subject_test.txt", sep = "")

# Reading in all tables
features <- read.table(features_file, colClasses = c("character"))
activity_labels <- read.table(activity_labels_file, col.names = c("ActivityId", "Activity"))
x_train <- read.table(x_train_file)
y_train <- read.table(y_train_file)
subject_train <- read.table(subject_train_file)
x_test <- read.table(x_test_file)
y_test <- read.table(y_test_file)
subject_test <- read.table(subject_test_file)


### Part 1 - Merging the data frames to create one big dataframe

# Binding all training data by columns
training_data <- cbind(cbind(x_train, y_train),subject_train)
# Binding the test data by columns
test_data <- cbind(cbind(x_test, y_test),subject_test)
# Binding the training and test dataframes created above by rows 
data <- rbind(training_data, test_data)

# Label columns
data_new_labels <- rbind(rbind(features, c(562, "Subject")), c(563, "ActivityId"))[,2]
names(data) <- data_new_labels



### Part 2 - Extracts only the measurements on the mean and standard deviation 
### for each measurement

# Any variable having mean or std in the name has been taken into account
data_mean_std <- data[,grepl("mean|std|Subject|ActivityId", names(data))]



### Part 3 - Uses descriptive activity names to name the activities in the data set

# Using the plyr package to join an empty dataframe for the mean and standard deviations with 
# the activity labels file
library(plyr)
data_mean_std <- join(data_mean_std, activity_labels, by = "ActivityId", match = "first")
data_mean_std <- data_mean_std[,-1]



### Part 4 - Labeling the data set with descriptive names

# Removing the parentheses
names(data_mean_std) <- gsub('\\(|\\)',"",names(data_mean_std), perl = TRUE)
# Make syntactically valid names
names(data_mean_std) <- make.names(names(data_mean_std))
# Make clearer names
names(data_mean_std) <- gsub('Acc',"Acceleration",names(data_mean_std))
names(data_mean_std) <- gsub('GyroJerk',"Angular Acceleration",names(data_mean_std))
names(data_mean_std) <- gsub('Gyro',"Angular Speed",names(data_mean_std))
names(data_mean_std) <- gsub('Mag',"Magnitude",names(data_mean_std))
names(data_mean_std) <- gsub('^t',"Time Domain.",names(data_mean_std))
names(data_mean_std) <- gsub('^f',"Frequency Domain.",names(data_mean_std))
names(data_mean_std) <- gsub('\\.mean',".Mean",names(data_mean_std))
names(data_mean_std) <- gsub('\\.std',".Standard Deviation",names(data_mean_std))
names(data_mean_std) <- gsub('Freq\\.',"Frequency.",names(data_mean_std))
names(data_mean_std) <- gsub('Freq$',"Frequency",names(data_mean_std))



### Part 5 - Creates a second, independent tidy data set with the average of each variable 
### for each activity and each subject. Then writing out the final data set as a text file. 

data_avg_by_act_sub = ddply(data_mean_std, c("Subject","Activity"), numcolwise(mean))
write.table(data_avg_by_act_sub, file = "data_avg_by_act_sub.txt",row.names=FALSE)

