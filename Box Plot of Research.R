# Load dataset
data <- read.csv("HRV_Dataset.csv")

# Check column names
names(data)

# BOX PLOT
boxplot(data$RR_Interval,
        main = "HRV Variability (RR Intervals)",
        ylab = "RR Interval (ms)",
        col = "lightblue",
        border = "darkblue",
        notch = TRUE)

# grid add karo
grid()