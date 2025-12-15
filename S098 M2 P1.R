# Practical 1: Descriptive Statistics

# Load dataset
df <- read.csv("StudentsPerformance.csv")

# View structure
str(df)

# Summary statistics (Base R)
summary(df$math.score)

# Detailed statistics
library(psych)
describe(df$math.score)