
lung_df <- read.csv("C:/Users/mvluc/Downloads/survey lung cancer.csv",
                    na.strings = c("", "NA"))

weight_df <- read.csv("C:/Users/mvluc/Downloads/weight-height.csv",
                      na.strings = c("", "NA"))

print("--- Data Structure Before Transformation ---")
print(names(lung_df))
print(names(weight_df))


lung_clean <- lung_df[, c("GENDER", "AGE")]
names(lung_clean) <- c("Gender", "Value")
lung_clean$Source <- "Age (Lung Survey)"

weight_clean <- weight_df[, c("Gender", "Height")]
names(weight_clean) <- c("Gender", "Value")
weight_clean$Source <- "Height (Weight-Height)"

lung_clean$Value <- as.numeric(lung_clean$Value)
weight_clean$Value <- as.numeric(weight_clean$Value)



combined_data <- rbind(lung_clean, weight_clean)

print("--- Combined Data Summary ---")
print(paste("Lung rows:", nrow(lung_clean)))
print(paste("Weight rows:", nrow(weight_clean)))
print(paste("Total rows (Expected):", nrow(lung_clean) + nrow(weight_clean)))
print(paste("Total rows (Actual):", nrow(combined_data)))

print("--- Preview of Combined Data (Top and Bottom) ---")
print(head(combined_data))
print(tail(combined_data))

print("Yukta Sonawane S120")
