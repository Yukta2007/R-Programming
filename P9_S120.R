install.packages("stringr")
install.packages("tidyr")
library(stringr)
library(tidyr)
library(dplyr)

retail_data <- read.csv("annex1.csv", na.strings = c("", "NA"))
print(head(retail_data))

retail_data$Code_Start <- str_sub(retail_data$Item.Code, 1, 4)
retail_data$Code_End <- str_sub(retail_data$Item.Code, -4, -1)

print(retail_data %>% select(Item.Code, Code_Start, Code_End))

split_matrix <- str_split(retail_data$Category.Name, "[ /]+", simplify = TRUE)

retail_data$Main_Cat <- split_matrix[, 1]
retail_data$Sub_Cat  <- split_matrix[, 2]

print(retail_data %>% select(Category.Name, Main_Cat, Sub_Cat))

tidy_data <- retail_data %>%
  separate(Item.Code, into = c("Part1", "Part2"), sep = 4, remove = FALSE)

print(tidy_data %>% select(Item.Code, Part1, Part2))
print("Yukta Sonawane S120")
