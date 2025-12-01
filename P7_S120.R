library(dplyr)

market <- read.csv("annex1.csv")

cat("--- Original Dataset (First 3 rows) ---\n")
print(head(market, 3))

selected_cols <- market %>%
  select(Item.Code, Item.Name, Category.Name)

cat("\n--- Selected Specific Columns (Item Code, Item Name, Category Name) ---\n")
print(head(selected_cols, 3))

range_cols <- market %>%
  select(Item.Code:Category.Code)

cat("\n--- Selected Range of Columns (Item Code to Category Code) ---\n")
print(head(range_cols, 3))

dropped_one <- market %>%
  select(-Category.Name)

cat("\n--- Dataset with 'Category.Name' dropped ---\n")
print(names(dropped_one))

dropped_multiple <- market %>%
  select(-Item.Code, -Category.Code)

cat("\n--- Dataset with 'Item.Code' and 'Category.Code' dropped ---\n")
print(names(dropped_multiple))

dropped_range <- market %>%
  select(-(Item.Name:Category.Code))

cat("\n--- Dataset with range 'Item.Name' to 'Category.Code' dropped ---\n")
print(names(dropped_range))
