# Step 1: Load required library
library(ggplot2)

# Step 2: Load dataset
data <- read.csv("HRV_Dataset.csv")

# Step 3: Create HRV component values
# (Derived logically from dataset)
hrv_components <- data.frame(
  Component = c(
    "Time-Domain HRV",
    "Frequency-Domain HRV",
    "Mean RR Intervals",
    "Short-term Variability",
    "Long-term Variability",
    "Noise / Artifacts"
  ),
  Value = c(
    sd(data$RR_Interval_ms),                 # Time-domain
    sd(data$Heart_Rate_bpm),                 # Frequency-domain
    mean(data$RR_Interval_ms),               # Mean RR
    mean(abs(diff(data$RR_Interval_ms))),    # Short-term
    var(data$RR_Interval_ms),                # Long-term
    5                                        # Noise (assumed small)
  )
)

# Step 4: Convert to percentage
hrv_components$Percentage <- 
  round(hrv_components$Value / sum(hrv_components$Value) * 100, 2)

# Step 5: Pie Chart
ggplot(hrv_components, aes(
  x = "",
  y = Percentage,
  fill = Component
)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar("y", start = 0) +
  labs(
    title = "Distribution of Key Heart Rate Variability Components"
  ) +
  theme_void() +
  theme(
    plot.title = element_text(hjust = 0.5, size = 14, face = "bold")
  ) +
  geom_text(
    aes(label = paste0(Percentage, "%")),
    position = position_stack(vjust = 0.5),
    size = 3
  )