library(ggplot2)

data <- read.csv("SuperMarket Analysis.csv")

# 1. Scatter Plot
# Sales vs Gross Income

ggplot(data, aes(x = Sales, y = gross.income)) +
  geom_point() +
  labs(
    title = "Scatter Plot of Sales vs Gross Income",
    x = "Sales",
    y = "Gross Income"
  )

# 2. Pie Chart
# Product Line Distribution

# Prepare data for pie chart
pie_data <- as.data.frame(table(data$Product.line))
colnames(pie_data) <- c("Product.line", "Count")

# Pie Chart
ggplot(pie_data, aes(x = "", y = Count, fill = Product.line)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar("y") +
  labs(title = "Pie Chart of Product Line Distribution")

# 3. High–Low Chart
# Minimum and Maximum Sales

# Create high-low data
high_low <- data.frame(
  Type = c("Low Sales", "High Sales"),
  Value = c(min(data$Sales), max(data$Sales))
)

# High-Low Chart
ggplot(high_low, aes(x = Type, y = Value, fill = Type)) +
  geom_bar(stat = "identity") +
  labs(
    title = "High-Low Sales Chart",
    x = "Sales Type",
    y = "Sales Value"
  )
