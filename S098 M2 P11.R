# Load ggplot2
library(ggplot2)

# Load dataset
data <- read.csv("Housing.csv")

# View data
head(data)


# 1. Histogram

ggplot(data, aes(x = price)) +
  geom_histogram(fill = "skyblue", color = "black") +
  labs(
    title = "Histogram of House Prices",
    x = "Price",
    y = "Frequency"
  )


# 2. Box Plot

ggplot(data, aes(y = price)) +
  geom_boxplot(fill = "orange") +
  labs(
    title = "Box Plot of House Prices",
    y = "Price"
  )