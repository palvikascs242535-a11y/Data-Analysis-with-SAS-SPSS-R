install.packages("dplyr")

library(dplyr)
library(readr)

mental <- read_csv("Student Mental health.csv")

head(mental)

high_age_subset <- subset(mental, Age > 22)
cat("Number of students with Age > 22:", nrow(high_age_subset), "\n")
summary(high_age_subset$Age)

dep_anx_subset <- subset(mental,
                         `Do you have Depression?` == "Yes" &
                           `Do you have Anxiety?` == "Yes")

cat("Number of students with both Depression and Anxiety:", nrow(dep_anx_subset), "\n")
head(dep_anx_subset)

panic_or_treated_subset <- subset(mental,
                                  `Do you have Panic attack?` == "Yes" |
                                    `Did you seek any specialist for a treatment?` == "Yes")

cat("Number of students with Panic attack or who took treatment:", nrow(panic_or_treated_subset), "\n")
head(panic_or_treated_subset)

young_students_filter <- mental |>
  filter(Age < 20)

cat("Number of students with Age < 20:", nrow(young_students_filter), "\n")
summary(young_students_filter$Age)

female_dep_filter <- mental |>
  filter(`Choose your gender` == "Female",
         `Do you have Depression?` == "Yes")

cat("Number of Female students with Depression:", nrow(female_dep_filter), "\n")
head(female_dep_filter)

high_cgpa_filter <- mental |>
  filter(`What is your CGPA?` %in% c("3.00 - 3.49", "3.50 - 4.00"))

cat("Number of students with high CGPA (>= 3.00):", nrow(high_cgpa_filter), "\n")
table(high_cgpa_filter$`What is your CGPA?`)
