# Practical 3: Cross Tabulation

# Load dataset
df <- read.csv("attendance (1).csv")

# Cross table: Class vs Status
cross_tab <- table(df$Class, df$Status)
print(cross_tab)