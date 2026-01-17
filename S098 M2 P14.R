# Practical 14: Logistic Regression using glm() in R

# Step 1: Load CSV dataset
data <- read.csv("Social_Network_Ads.csv")

# Step 2: Check data
head(data)
str(data)

# Step 3: Logistic Regression Model
model <- glm(Purchased ~ Age + EstimatedSalary,
             data = data,
             family = binomial)

# Step 4: Model Summary
summary(model)

# Step 5: Predict probabilities
data$Predicted_Prob <- predict(model, type = "response")

# Step 6: View predictions
head(data)