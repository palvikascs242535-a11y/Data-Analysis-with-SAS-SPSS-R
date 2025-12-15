# Practical 4: One Sample t-test

# Load dataset
df <- read.csv("exams (1).csv")

str(df)
colnames(df)

# One-sample t-test on math score
t_test_one <- t.test(df$math.score, mu = 50)

print(t_test_one)