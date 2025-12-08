  mental_df <- read.csv("Mental_Health_and_Social_Media_Balance_Dataset.csv")
  student_df <- read.csv("Student Mental health.csv")
  
  print("--- Data Structure Before Transformation ---")
  print(names(mental_df))
  print(names(student_df))

    mental_clean <- mental_df %>% select(Age)
  student_clean <- student_df %>% select(Age)

    combined_data <- rbind(mental_clean, student_clean)
  
  print("--- Combined Data Summary ---")
  print(paste("Mental dataset rows:", nrow(mental_clean)))
  print(paste("Student dataset rows:", nrow(student_clean)))
  print(paste("Total rows (Expected):", nrow(mental_clean) + nrow(student_clean)))
  print(paste("Total rows (Actual):", nrow(combined_data)))
  
  print("--- Preview of Combined Data (Top and Bottom) ---")
  print(head(combined_data))
  print(tail(combined_data))
  