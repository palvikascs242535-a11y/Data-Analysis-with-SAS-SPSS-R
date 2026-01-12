# Practical 10 : Graphical Reports using ggplot2

install.packages("ggplot2")

library(ggplot2)
data <- read.csv("SuperMarket Analysis.csv")

ggplot(data, aes(x = Sales, y = gross.income)) +
  geom_point() +
  labs(
    title = "Scatter Plot of Sales vs Gross Income",
    x = "Sales",
    y = "Gross Income"
  )

pie_data <- as.data.frame(table(data$Product.line))
colnames(pie_data) <- c("Product.line", "Count")


ggplot(pie_data, aes(x = "", y = Count, fill = Product.line)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar("y") +
  labs(title = "Pie Chart of Product Line Distribution")

high_low <- data.frame(
  Type = c("Low Sales", "High Sales"),
  Value = c(min(data$Sales), max(data$Sales))
)

ggplot(high_low, aes(x = Type, y = Value, fill = Type)) +
  geom_bar(stat = "identity") +
  labs(
    title = "High-Low Sales Chart",
    x = "Sales Type",
    y = "Sales Value"
  )
