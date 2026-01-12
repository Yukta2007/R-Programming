library(ggplot2)

# Load and clean data
df <- read.csv("C:/Users/yukta/Downloads/Unemployment in India.csv")
df <- na.omit(df)
colnames(df) <- c("Region", "Date", "Frequency", "Unemployment_Rate", 
                  "Employed", "Participation_Rate", "Area")

# Create a balanced subset: First 5 Rural and First 5 Urban rows
df_rural <- head(df[df$Area == "Rural", ], 5)
df_urban <- head(df[df$Area == "Urban", ], 5)
df_subset <- rbind(df_rural, df_urban)

# 1. Bar Graph: Comparing Unemployment across the 10 samples
ggplot(df_subset, aes(x = Region, y = Unemployment_Rate, fill = Area)) +
  geom_bar(stat = "identity", position = "dodge") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  labs(
    title = "Unemployment Rate: Rural vs Urban (First 10 Samples)-Yukta Sonawane S120",
    x = "Region",
    y = "Unemployment Rate (%)"
  ) +
  scale_fill_manual(values = c("#69b3a2", "#404080"))

# 2. Scatter Plot: Relationship between Participation and Unemployment
ggplot(df_subset, aes(x = Participation_Rate, y = Unemployment_Rate, color = Area)) +
  geom_point(size = 5, alpha = 0.8) +
  theme_minimal() +
  labs(
    title = "Participation vs Unemployment (First 10 Samples)-Yukta Sonawane S120",
    x = "Labor Participation Rate (%)",
    y = "Unemployment Rate (%)"
  ) +
  scale_color_manual(values = c("#69b3a2", "#404080"))