# PRACTICAL 15

# Load dataset
housing <- read.csv("Housing.csv")

# Export to CSV
write.csv(housing,
          "housing_output.csv",
          row.names = FALSE)

# Export to Excel
library(writexl)

write_xlsx(housing,
           "housing_output.xlsx")

# Create binary variable
housing$HighPrice <- ifelse(housing$price > mean(housing$price), 1, 0)

# Logistic Regression Model
model <- glm(HighPrice ~ area,
             data = housing,
             family = binomial)

# Export model summary to PDF
pdf("housing_logistic_output.pdf")

plot.new()   # blank page
title("Logistic Regression Output")

# Convert summary to text and print
model_text <- capture.output(summary(model))
text(0.01, 0.99,
     paste(model_text, collapse = "\n"),
     adj = c(0,1),
     cex = 0.7)

dev.off()