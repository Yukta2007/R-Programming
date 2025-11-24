install.packages("dplyr")

library(dplyr)
library(readr)

sales <- read_csv("C:/Users/yukta/R Prog_S120/supermarket_sales.csv")

head(sales)


high_total_subset <- subset(sales, Total > 500)

cat("Number of high-value sales (Total > 500):", nrow(high_total_subset), "\n")
summary(high_total_subset$Total)

high_total_high_qty <- subset(sales, Total > 500 & Quantity > 7)

cat("High Total & High Quantity:", nrow(high_total_high_qty), "\n")
head(high_total_high_qty)


special_sales <- subset(sales, Payment == "Credit card" | Rating > 8)

cat("Special sales (Credit card OR Rating > 8):", nrow(special_sales), "\n")
head(special_sales)


low_price_filter <- sales |>
  filter(`Unit price` < 50)

cat("Number of low-price items (< 50):", nrow(low_price_filter), "\n")
summary(low_price_filter$`Unit price`)


female_high_quantity <- sales |>
  filter(Gender == "Female", Quantity > 5)

cat("Female customers with quantity > 5:", nrow(female_high_quantity), "\n")
head(female_high_quantity)


member_or_normal <- sales |>
  filter(`Customer type` %in% c("Member", "Normal"))

cat("Total customers (Member or Normal):", nrow(member_or_normal), "\n")
table(member_or_normal$`Customer type`)
