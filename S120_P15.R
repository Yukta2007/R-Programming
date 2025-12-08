
wh_df <- read.csv("C:/Users/mvluc/Downloads/weight-height.csv")

print("--- Data Loaded from CSV ---")
print(head(wh_df))




print("--- OUTPUT OF str() ---")
str(wh_df)




print("--- OUTPUT OF summary() [Before Factor Conversion] ---")
summary(wh_df)


# Convert Gender column to Factor (if it exists)
wh_df$Gender <- as.factor(wh_df$Gender)

print("--- OUTPUT OF summary() [After Factor Conversion] ---")
summary(wh_df)


# Accessing only selected statistics
avg_height <- mean(wh_df$Height, na.rm = TRUE)
max_weight <- max(wh_df$Weight, na.rm = TRUE)

print(paste("Average Height:", avg_height))
print(paste("Highest Weight:", max_weight))

print("Yukta Sonawane S120")
