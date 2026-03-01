# Step 1: Load required library
library(ggplot2)

# Step 2: Load dataset (CSV file)
data <- read.csv("HRV_Dataset.csv")

# Step 3: Create summary data for bar graph
hrv_summary <- data.frame(
  Parameter = c("RR Interval (ms)", "Heart Rate (bpm)"),
  Mean_Value = c(
    mean(data$RR_Interval_ms),
    mean(data$Heart_Rate_bpm)
  )
)

# Step 4: Create bar graph
ggplot(hrv_summary, aes(x = Parameter, y = Mean_Value, fill = Parameter)) +
  geom_bar(stat = "identity", width = 0.6) +
  labs(
    title = "Mean Values of HRV Parameters",
    x = "HRV Parameters",
    y = "Mean Value"
  ) +
  theme_minimal() +
  theme(
    legend.position = "none",
    plot.title = element_text(hjust = 0.5, size = 14, face = "bold")
  )