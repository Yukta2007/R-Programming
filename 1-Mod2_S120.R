library(psych)

data_full <- read.csv(
  "C:/Users/yukta/Downloads/cardata.csv",
  stringsAsFactors = FALSE
)

colnames(data_full)

data1 <- data_full[, 1:3]

head(data1)

summary(data1)

describe(data1)
