library(dplyr)

data2 <- read.csv(
  "C:/Users/yukta/Downloads/cardata.csv",
  stringsAsFactors = FALSE
)

head(data2, 10)

colnames(data2)

cat_cols <- names(data2)[sapply(data2, is.character)]

for (col in cat_cols) {
  cat("\nFrequency table for", col, ":\n")
  print(table(data2[[col]]))
}

for (col in cat_cols) {
  cat("\nCount for", col, ":\n")
  print(count(data2, .data[[col]]))
}

print("Yukta Sonawane S120")
