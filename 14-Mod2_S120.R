library(ggplot2)

data <- read.csv("C:/Users/yukta/Downloads/extrastate.csv")

# Create a binary outcome: 1 if Side 1 wins (outcome 1), 0 otherwise
data$side1_wins <- ifelse(data$outcome == 1, 1, 0)

# Filter for valid fatalities and log-transform
data_clean <- subset(data, state_fatalities > 0)
data_clean$log_fatalities <- log10(data_clean$state_fatalities)


logit_model <- glm(side1_wins ~ log_fatalities, 
                   data = data_clean, 
                   family = binomial)

# Display statistical results
summary(logit_model)

# Create the plot
ggplot(data_clean, aes(x = log_fatalities, y = side1_wins)) +
  geom_jitter(color = "orchid", height = 0.03, alpha = 0.5) +
  geom_smooth(method = "glm", 
              method.args = list(family = "binomial"), 
              color = "maroon", 
              fill = "maroon", 
              alpha = 0.1) +
  labs(
    title = "Logistic Regression: Probability of Side 1 Win",
    x = "Log10 State Fatalities",
    y = "Probability of Win (1=Yes, 0=No)"
  ) +
  theme_minimal()