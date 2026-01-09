library(ggplot2)

df <- read.csv("C:/Users/yukta/Downloads/Unemployment in India.csv")
df <- na.omit(df)

colnames(df) <- c("Region", "Date", "Frequency", "Unemployment_Rate", 
                  "Employed", "Participation_Rate", "Area")

test_results <- t.test(Unemployment_Rate ~ Area, data = df)
print(test_results)



ggplot(df, aes(x = Area, y = Unemployment_Rate, fill = Area)) +
  geom_boxplot(alpha = 0.7) +
  theme_minimal() +
  labs(
    title = "Comparison of Unemployment Rates by Area-Yukta Sonawane S120",
    subtitle = paste("P-value:", format.pval(test_results$p.value)),
    x = "Area",
    y = "Estimated Unemployment Rate (%)"
  ) +
  scale_fill_manual(values = c("#69b3a2", "#404080"))

ggplot(df, aes(x = Unemployment_Rate, fill = Area)) +
  geom_density(alpha = 0.5) +
  theme_minimal() +
  labs(
    title = "Density Distribution of Unemployment-Yukta Sonawane S120",
    x = "Estimated Unemployment Rate (%)",
    y = "Density"
  )