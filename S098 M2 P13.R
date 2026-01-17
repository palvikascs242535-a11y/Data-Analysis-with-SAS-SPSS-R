# Load data
data <- read.csv("Salary_Data.csv")

# View top rows
head(data)

# Linear Regression
model <- lm(Salary ~ YearsExperience, data = data)

# Summary
summary(model)

# Plot
plot(data$YearsExperience, data$Salary,
     main="Linear Regression on Salary Dataset",
     xlab="Years of Experience",
     ylab="Salary")
abline(model, col="blue")