#Alexis Leclerc
#07/15/2024

rm(list = ls())
gc()

set.seed(55555)
Data <- read.csv("Dataset_dummies.csv")

total_rows <- nrow(Data)

# Generate random uniform numbers in the range of 1 to 143553
u <- runif(total_rows)

y <- -log(1. - u / 143553.) 

# Normalize y to range between 0 and 1
y_normalized <- y / max(y)

# Determine the split points
train_cutoff <- 0.5
val_cutoff <- 0.75

# Assign indices based on the normalized transformed numbers
train_indices <- which(y_normalized <= train_cutoff)
val_indices <- which(y_normalized > train_cutoff & y_normalized <= val_cutoff)
test_indices <- which(y_normalized > val_cutoff)

# Create the datasets
Train_Data <- Data[train_indices, ]
Val_Data <- Data[val_indices, ]
Test_Data <- Data[test_indices, ]

# Display the number of rows in each dataset to verify the splits
cat("Number of rows in training data: ", nrow(Train_Data), "\n")
cat("Number of rows in validation data: ", nrow(Val_Data), "\n")
cat("Number of rows in test data: ", nrow(Test_Data), "\n")


# Save the dataframe as a .dat file with comma-separated values
write.table(Train_Data, file = "Train.dat", sep = ",", row.names = FALSE, col.names = TRUE)

# Save the dataframe as a .dat file with comma-separated values
write.table(Val_Data, file = "Validation.dat", sep = ",", row.names = FALSE, col.names = TRUE)

# Save the dataframe as a .dat file with comma-separated values
write.table(Test_Data, file = "Testing.dat", sep = ",", row.names = FALSE, col.names = TRUE)

