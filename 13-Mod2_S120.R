library(ggplot2)

data <- read.csv("C:/Users/yukta/Downloads/infrastructure-damaged.csv")

model <- lm(residential_ext_destroyed ~ civic_buildings_ext_destroyed, data = data)

summary(model)

ggplot(data, aes(x = civic_buildings_ext_destroyed, y = residential_ext_destroyed)) +
  geom_point(color = "orchid", alpha = 0.6) +
  geom_smooth(method = "lm", color = "maroon", fill = "maroon", alpha = 0.1) +
  labs(
    title = "Linear Regression: Civic vs. Residential Destruction- Yukta Sonawane S120",
    subtitle = paste("R-squared:", round(summary(model)$r.squared, 3)),
    x = "Civic Buildings Destroyed",
    y = "Residential Units Destroyed"
  ) +
  theme_minimal()