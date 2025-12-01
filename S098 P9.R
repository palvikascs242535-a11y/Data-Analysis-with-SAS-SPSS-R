library(stringr)
library(dplyr)
library(tidyr)

data <- read.csv("global_gaming_esports_2010_2025.csv")

head(data, 3)

data$Game_Info <- paste(data$Top_Platform, data$Top_Genre, sep = "-")

data$Platform_Code <- str_sub(data$Top_Platform, 1, 3)

data$Genre_End <- str_sub(data$Top_Genre, -3, -1)

split_matrix <- str_split(data$Game_Info, "-", simplify = TRUE)

data$Platform_Split <- split_matrix[, 1]
data$Genre_Split <- split_matrix[, 2]

data <- data %>%
  separate(Game_Info, into = c("Plat", "Gen"), sep = "-")

head(data)