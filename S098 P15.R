  retail_df <- data.frame(
    ID = 1:6,
    Category = c("Grocery", "Electronics", "Clothing", "Grocery", "Sports", "Electronics"),
    Price = c(120.00, 999.00, 450.75, NA, 800.00, 1500.00),
    In_Stock = c(TRUE, FALSE, TRUE, TRUE, FALSE, TRUE),
    Rating = c(4.0, 4.8, 3.9, 4.3, 4.6, 4.9)
  )
  
  print("--- Data Loaded ---")
  
    print("--- OUTPUT OF str() ---")
  str(retail_df)

    print("--- OUTPUT OF summary() [Before Factor Conversion] ---")
  summary(retail_df)

    retail_df$Category <- as.factor(retail_df$Category)
  print("--- OUTPUT OF summary() [After Factor Conversion] ---")
  summary(retail_df)

    avg_rating <- mean(retail_df$Rating)
  max_price <- max(retail_df$Price, na.rm = TRUE)
  
  print(paste("Average Rating:", avg_rating))
  print(paste("Highest Price:", max_price))