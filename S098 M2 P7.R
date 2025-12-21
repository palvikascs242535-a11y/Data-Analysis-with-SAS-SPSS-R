# One-Way ANOVA using Medical Insurance dataset

# Load dataset
data <- read.csv("insurance.csv")

# Convert smoker column to factor
data$smoker <- as.factor(data$smoker)

# Apply One-Way ANOVA
anova_result <- aov(charges ~ smoker, data = data)

# Display ANOVA table
summary(anova_result)