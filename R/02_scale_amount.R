# install.packages("readr")

original_data <- read.csv('creditcard.csv')

# Display the first 5 transactions before scaling
cat("First 5 transactions before scaling:\n")
print(head(original_data, 5))

# Extract the 'amount' feature
amount_feature <- original_data$Amount

# Scale the 'amount' feature
scaled_amount <- scale(amount_feature)

# Create a new data frame with the scaled 'amount' feature
scaled_data <- original_data
scaled_data$Amount <- scaled_amount

# Display the first 5 transactions after scaling
cat("\nFirst 5 transactions after scaling:\n")
print(head(scaled_data, 5))

# Save the new dataset with scaled 'amount' feature
write.csv(scaled_data, 'scaled_data.csv', row.names = FALSE)

