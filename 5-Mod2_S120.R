# Read the CSV file
market_data <- read.csv(
 "C:/Users/yukta/Downloads/sales_data - sales_data.csv",
  stringsAsFactors = FALSE
)

# View dataset
head(market_data)

# Check column names
colnames(market_data)

# Select first two numeric columns safely
num_cols <- names(market_data)[sapply(market_data, is.numeric)][1:2]

paired_data <- market_data[, num_cols]

# View selected paired data
head(paired_data)

# Perform paired t-test
paired_t_test <- t.test(
  paired_data[[1]],
  paired_data[[2]],
  paired = TRUE
)

# Print result
print(paired_t_test)

print("Yukta Sonawane S120")
