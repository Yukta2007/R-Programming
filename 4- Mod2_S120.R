market_data <- read.csv(
  "C:/Users/yukta/Downloads/sales_data - sales_data.csv",
  stringsAsFactors = FALSE
)

head(market_data)

colnames(market_data)

num_col <- names(market_data)[sapply(market_data, is.numeric)][1]

t_test_result <- t.test(
  market_data[[num_col]],
  mu = mean(market_data[[num_col]], na.rm = TRUE)
)

print(t_test_result)

print("Yukta Sonawane S120")
