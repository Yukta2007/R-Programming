creditcard <- read.csv("-/creditcard.csv")
View(creditcard)


lm(V1 ~ V2)
attach(creditcard)

install.packages("tidyverse")
library(ggplot2)

animal <- data.frame(
  sleep_total = c(5, 7, 8, 10, 12, 9, 6)  # <-- Add your real data here
)
ggplot(data = animal, aes(x = sleep_total)) +
  geom_histogram(bins = 30)


data <- data.frame(
  heights = c(22, 52, 34, 45)
)
heights <- c(54, 54, 34)
