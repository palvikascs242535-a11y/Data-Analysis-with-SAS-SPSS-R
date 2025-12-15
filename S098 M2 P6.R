# Practical 6: Paired t-test

# Load dataset
df <- read.csv("Sleep_Efficiency (1).csv")
str(df)
colnames(df)

# Create before and after values from existing numeric column
df$area_before <- df$Sleep.efficiency
df$area_after  <- df$Sleep.efficiency + rnorm(nrow(df), mean = -5, sd = 2)

# Paired t-test
t_test_paired <- t.test(df$area_before,
                        df$area_after,
                        paired = TRUE)

print(t_test_paired)