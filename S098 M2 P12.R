# Load dataset
data <- read.csv("test.csv")

# View dataset
head(data)
str(data)

# Select only numeric columns
numeric_data <- data[sapply(data, is.numeric)]

# Generate correlation matrix
correlation_matrix <- cor(numeric_data)

# Display correlation matrix
print(correlation_matrix)