library(dplyr)

data_jan <- data.frame(
  ID = c(1, 2, 3),
  Name = c("Vikas", "Jeetesh", "Abhishek"),
  Jan_Sales = c(100, 150, 200)
)

data_feb <- data.frame(
  ID = c(1, 2, 3),
  Name = c("Vikas", "Jeetesh", "Abhishek"),
  Feb_Sales = c(120, 160, 210)
)

data_new_hires <- data.frame(
  ID = c(4, 5),
  Name = c("David", "Eva"),
  Jan_Sales = c(50, 60)
)

print("--- Data January ---")
print(data_jan)

print("--- Data February ---")
print(data_feb)

merged_data <- merge(data_jan, data_feb, by = c("ID", "Name"))
print("--- Merged Data ---")
print(merged_data)

final_list <- bind_rows(data_jan, data_new_hires)
print("--- Appended Data ---")
print(final_list)
