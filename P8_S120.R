install.packages("tidyr")
library(dplyr)
library(tidyr)

market_df <- read.csv("annex1.csv", na.strings = c("", "NA"))

print("--- 1. Original Data (First 6 Rows) ---")
print(head(market_df))

print("--- Count of Missing Values per Column ---")
print(colSums(is.na(market_df)))

clean_omit <- na.omit(market_df)

print("--- 2. Data after na.omit() ---")
print(paste("Original rows:", nrow(market_df)))
print(paste("Rows remaining:", nrow(clean_omit)))
print(head(clean_omit))

clean_replace <- market_df %>%
  replace_na(list(
    Item.Code = "Unknown",
    Item.Name = "Unknown Item",
    Category.Code = "0000000000",
    Category.Name = "Uncategorized"
  ))

print("--- 3. Data after replace_na() ---")
print(clean_replace[3, ])
print(head(clean_replace))

print("--- Remaining NAs after replacement ---")
print(colSums(is.na(clean_replace)))
print("Yukta Sonawane S120")
