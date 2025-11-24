library(dplyr)

sales <- read.csv("sales_data.csv")

sales_sorted_amount <- sales |>
  arrange(Sales_Amount)

head(sales_sorted_amount, 5)

sales_sorted_price_desc <- sales |>
  arrange(desc(Unit_Price))

head(sales_sorted_price_desc, 5)

sales_multi_sort <- sales |>
  arrange(Region, desc(Sales_Amount))

head(sales_multi_sort, 10)

large_sales_by_discount <- sales |>
  filter(Quantity_Sold > 30) |>
  arrange(Discount)

cat("Top 5 large quantity sales with lowest discount:\n")
print(large_sales_by_discount |> select(Quantity_Sold, Discount, Sales_Amount) |> head(5))