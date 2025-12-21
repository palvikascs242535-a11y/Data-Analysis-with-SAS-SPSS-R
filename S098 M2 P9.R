# Practical 9: Chi-Square Test of Independence

# Load the dataset
data <- read.csv("WA_Fn-UseC_-Telco-Customer-Churn.csv")

# View first few rows
head(data)

# Create contingency table between Gender and Churn
contingency_table <- table(data$gender, data$Churn)

# Display the table
print(contingency_table)

# Apply Chi-Square Test
chi_result <- chisq.test(contingency_table)

# Display test result
chi_result
