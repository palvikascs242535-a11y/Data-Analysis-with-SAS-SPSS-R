# Load dataset
data <- read.csv("insurance.csv")

# Convert smoker to factor
data$smoker <- as.factor(data$smoker)

# Numeric variable
y <- data$charges
g <- data$smoker

# Overall mean
gm <- mean(y)

# Between Group Sum of Squares
SSB <- sum(tapply(y, g, length) * (tapply(y, g, mean) - gm)^2)

# Within Group Sum of Squares
SSW <- sum(tapply(y, g, function(x) sum((x - mean(x))^2)))

# Degrees of freedom
dfb <- length(levels(g)) - 1
dfw <- length(y) - length(levels(g))

# F value
F <- (SSB/dfb) / (SSW/dfw)

# p-value
p <- pf(F, dfb, dfw, lower.tail = FALSE)

# Output
F
p

