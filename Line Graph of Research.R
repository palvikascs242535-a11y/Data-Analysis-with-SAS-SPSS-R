# Load dataset
data <- read.csv("HRV_Dataset.csv")

# Check column names
names(data)

# LINE GRAPH
plot(data$RR_Interval,
     type = "l",
     main = "RR Interval Variation",
     xlab = "Sample Number",
     ylab = "RR Interval (ms)",
     lwd = 2)

# grid add karo
grid()