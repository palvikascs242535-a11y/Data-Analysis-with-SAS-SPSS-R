# Load dataset
data <- read.csv("HRV_Dataset.csv")

# Create Heart Rate column
data$HeartRate <- 60000 / data$RR_Interval

# SCATTER PLOT
plot(data$RR_Interval, data$HeartRate,
     main = "RR Interval vs Heart Rate",
     xlab = "RR Interval (ms)",
     ylab = "Heart Rate (BPM)",
     pch = 19)

# add grid
grid()