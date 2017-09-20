# Load packages
library(reshape2)
library(dplyr)

# Change working directory to "uci" folder whwere I saved the data
setwd("./uci")

# Load the various test datasets
test_x <- read.table("./test/X_test.txt")   # Main data
test_y <- read.table("./test/y_test.txt")   # Labels for test data
test_subject <- read.table("./test/subject_test.txt")   

# Load various train datasets
train_x <- read.table("./train/X_train.txt")    # Main data
train_y <- read.table("./train/y_train.txt")    # Labels for train data
train_subject <- read.table("./train/subject_train.txt")

# Load features data and labels data
features <- read.table("./features.txt")    #eatures consist of variable name of data
activity_labels <- read.table("./activity_labels.txt")

# Merge the labels dataset
labels <- rbind(test_y, train_y)
labels <- merge(labels, activity_labels, by=1)[,2] #Generates factor labels

# Merge subject data
subject <- rbind(test_subject, train_subject)
colnames(subject) <- "subject"

# Merge main data
main_data <- rbind(test_x, train_x)
colnames(main_data) <- features[,2]

# Now in this step all the three datasets will be merged
data <- cbind(subject, labels, main_data)

# Subset the dataset containing only mean and std variables
colno_mean_std <- grep("mean|std", colnames(data))
data_std_mean <- data[,c(1,2,colno_mean_std)]

# Compute the means, grouped by subject/label
molten <- melt(data_std_mean, id.var = c("subject", "labels"))
means <- dcast(molten , subject + labels ~ variable, mean)

# Save the resulting dataset
write.table(means, file="./tidy_data.txt")

# Output final dataset
means
