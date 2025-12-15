# Practical 5: Independent Two Sample t-test

# Load dataset
df <- read.csv("heart (1).csv")

str(df)
unique(df$target)

# Keep only two groups (0 and 1)
df_two <- subset(df, target %in% c(0, 1))

# Independent two-sample t-test
t_test_two <- t.test(age ~ target, data = df_two)
print(t_test_two)