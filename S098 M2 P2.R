# Practical 2: Generating Frequency Tables

# Load dataset
df <- read.csv("xAPI-Edu-Data (1).csv")
str(df)
colnames(df)

# Frequency of Gender categories
sku_freq <- table(df$gender)
print("Frequency Table using table():")
print(sku_freq)

# Load dplyr library
library(dplyr)

# Frequency using count()
sku_count <- df %>% count(gender)
print("Frequency Table using dplyr count():")
print(sku_count)