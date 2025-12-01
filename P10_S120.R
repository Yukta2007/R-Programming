library(dplyr)
library(tidyr)

df <- read.csv("annex1.csv", na.strings = c("", "NA"))

df_new <- df %>%
  mutate(
    ItemCode_Length = nchar(Item.Code),
    ItemCode_Prefix = substr(Item.Code, 1, 4),
    Category_Group = case_when(
      grepl("Leaf", Category.Name, ignore.case = TRUE) ~ "Leafy Vegetable",
      grepl("Flower", Category.Name, ignore.case = TRUE) ~ "Flower Vegetable",
      TRUE ~ "Other"
    ),
    Item_Summary = paste0(Item.Name, " belongs to category: ", Category.Name),
    Name_Length_Label = ifelse(nchar(Item.Name) > 15, "Long Name", "Short Name")
  )

print(head(df_new))
