  library(dplyr)

    orders_df <- data.frame(
    OrderID = c(201, 202, 202, 203, 204, 201, 204),
    Customer = c("Amit", "Neha", "Neha", "Rohan", "Sneha", "Amit", "Sneha"),
    Product = c("Keyboard", "Mouse", "Mouse", "Camera", "Speaker", "Keyboard", "Headset")
  )
  
  print("--- 1. Original Dataset (Note 7 rows) ---")
  print(orders_df)

    duplicates_report <- orders_df %>%
    group_by(OrderID, Customer, Product) %>%
    count() %>%
    filter(n > 1)
  
  print("--- 2. Identification Report (Rows that are duplicated) ---")
  print(duplicates_report)

    clean_exact <- orders_df %>%
    distinct()
  
  print("--- 3. Removed Exact Duplicates (distinct) ---")
  print(clean_exact)

    unique_customers <- orders_df %>%
    distinct(Customer, .keep_all = TRUE)
  
  print("--- 4. Unique Customers Only (Partial Duplicates removed) ---")
  print(unique_customers)
