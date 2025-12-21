# Two-Way ANOVA using Car Price dataset

# Load dataset
data <- read.csv("CarPrice_Assignment.csv")

# Convert categorical columns to factors
data$fueltype <- as.factor(data$fueltype)
data$carbody <- as.factor(data$carbody)

# Two-Way ANOVA with interaction
anova_result <- aov(price ~ fueltype * carbody, data = data)

# Show ANOVA result
summary(anova_result)
