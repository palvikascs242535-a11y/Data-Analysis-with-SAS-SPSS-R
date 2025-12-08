library(lubridate)
library(dplyr)

  dates_df <- data.frame(
    Event_ID = 1:4,
    Date_String = c("2022-05-10", "2023-08-21", "2024-11-30", "2025-03-18")
  )

    processed_data <- dates_df %>%
      mutate(
        Actual_Date = ymd(Date_String),
        Year_Num = year(Actual_Date),
        Month_Num = month(Actual_Date),
        Month_Name = month(Actual_Date, label = TRUE),
        Day_Num = day(Actual_Date),
        Weekday_Num = wday(Actual_Date),
        Weekday_Name = wday(Actual_Date, label = TRUE, abbr = FALSE),
        Quarter = quarter(Actual_Date),
        Day_of_Year = yday(Actual_Date)
      )
    
    print("--- Data with Extracted Date Components ---")
    print(processed_data)

      current_time <- now()
    
    print("--- Current Time Extraction ---")
    print(paste("Current Year:", year(current_time)))
    print(paste("Current Hour:", hour(current_time)))
    print(paste("Current Minute:", minute(current_time)))