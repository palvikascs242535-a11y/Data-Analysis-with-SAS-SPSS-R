library(dplyr)
library(tidyr)

data <- read.csv("Mental_Health_and_Social_Media_Balance_Dataset.csv", 
                 na.strings = c("", "NA"))

head(data)

colSums(is.na(data))

clean_omit <- na.omit(data)

print(nrow(data))
print(nrow(clean_omit))
head(clean_omit)

avg_cgpa <- mean(data$What.is.your.CGPA., na.rm = TRUE)

clean_replace <- data %>% 
  replace_na(list(
    Age = mean(data$Age, na.rm = TRUE),
    Your.current.year.of.Study = "Unknown",
    marital.status = "Unknown",
    Choose.your.gender = "Unknown",
    What.is.your.course. = "Unknown",
    What.is.your.CGPA. = avg_cgpa,
    Do.you.have.Depression. = "No",
    Do.you.have.Anxiety. = "No",
    Do.you.have.Panic.attack. = "No",
    Did.you.seek.any.specialist.for.a.treatment. = "No"
  ))

head(clean_replace)

colSums(is.na(clean_replace))