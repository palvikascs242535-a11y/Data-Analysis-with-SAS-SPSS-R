# Load dataset
ads <- read.csv("Social_Network_Ads.csv")

# Take first 10 observations
ads10 <- ads[1:10, ]

# Create binary dependent variable
# Purchased already exists (0 = No, 1 = Yes)
ads10$Purchased <- as.numeric(ads10$Purchased)

# Logistic Regression Model
model_glm <- glm(Purchased ~ Age,
                 data = ads10,
                 family = binomial)

# Model summary
summary(model_glm)

# Predicted probabilities
ads10$prob <- predict(model_glm, type = "response")

# Logistic Regression Graph
plot(ads10$Age,
     ads10$Purchased,
     main = "Logistic Regression",
     xlab = "Age",
     ylab = "Purchased (0/1)",
     pch = 19,
     col = "blue")

# Probability curve
lines(sort(ads10$Age),
      ads10$prob[order(ads10$Age)],
      col = "red",
      lwd = 2)

