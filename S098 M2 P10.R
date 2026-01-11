# Load ggplot2 library
library(ggplot2)

# Load dataset
data <- read.csv("SuperMarket Analysis.csv")


# 1. Simple Bar Chart

ggplot(data, aes(x = Product.line)) +
  geom_bar(fill = "skyblue") +
  labs(
    title = "Bar Chart of Product Line",
    x = "Product Line",
    y = "Count"
  )


# 2. Simple Line Graph

ggplot(data, aes(x = Date, y = Sales, group = 1)) +
  geom_line() +
  labs(
    title = "Line Graph of Sales",
    x = "Date",
    y = "Sales"
  )


# 3. Simple Scatter Plot

ggplot(data, aes(x = Sales, y = gross.income)) +
  geom_point() +
  labs(
    title = "Scatter Plot of Sales vs Gross Income",
    x = "Sales",
    y = "Gross Income"
  )