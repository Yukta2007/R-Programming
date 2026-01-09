library(ggplot2)
library(tidyr)
library(dplyr)

data <- read.csv("C:/Users/yukta/Downloads/both_sexes.csv")

df_long <- data %>%
  select(HS_2534, BAp_2534) %>%
  pivot_longer(cols = everything(), names_to = "Education_Level", values_to = "Never_Married_Rate")

test_results <- t.test(Never_Married_Rate ~ Education_Level, data = df_long)
print(test_results)

ggplot(df_long, aes(x = Never_Married_Rate, fill = Education_Level)) +
  geom_histogram(bins = 10, alpha = 0.6, position = "identity", color = "white") +
  theme_minimal() +
  labs(title = "Histogram of Never Married Rates (Age 25-34)-Yukta Sonawane S120",
       x = "Proportion Never Married",
       y = "Frequency") +
  scale_fill_manual(values = c("#3498db", "#e74c3c"))

ggplot(df_long, aes(x = Education_Level, y = Never_Married_Rate, fill = Education_Level)) +
  geom_boxplot() +
  theme_minimal() +
  labs(title = "Box Plot Comparison of Education Levels-Yukta Sonawane S120",
       subtitle = paste("P-value:", round(test_results$p.value, 4)),
       x = "Education Level",
       y = "Proportion Never Married") +
  scale_fill_manual(values = c("#3498db", "#e74c3c"))