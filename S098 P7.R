library(dplyr)

data <- read.csv("Student Mental health.csv")

head(data, 3)

selected_cols <- data %>%
  select(Choose.your.gender, What.is.your.course., Age)
head(selected_cols, 3)

range_cols <- data %>%
  select(Choose.your.gender:Your.current.year.of.Study)
head(range_cols, 3)

starts_with_d <- data %>%
  select(starts_with("Do"))
head(starts_with_d, 3)

dropped_one <- data %>%
  select(-Age)
names(dropped_one)

dropped_multiple <- data %>%
  select(-Do.you.have.Depression., -Do.you.have.Anxiety.)
names(dropped_multiple)

dropped_range <- data %>%
  select(-(What.is.your.course.:Do.you.have.Panic.attack.))
names(dropped_range)