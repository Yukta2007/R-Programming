# --- 1. Load Libraries ---
library(stats)

# --- 2. Load and Prepare Data ---
deaths_df <- read.csv("C:/Users/yukta/Downloads/annual-number-of-deaths-by-cause.csv")

# 2a. Identify the column for Malaria deaths
malaria_col <- "Deaths...Malaria...Sex..Both...Age..All.Ages..Number."

# 2b. Categorize Malaria deaths into 'High' or 'Low' based on the median
med_val <- median(deaths_df[[malaria_col]], na.rm = TRUE)
deaths_df$Malaria_Level <- ifelse(deaths_df[[malaria_col]] > med_val, "High", "Low")

# 2c. Categorize Year into two time periods
deaths_df$Period <- ifelse(deaths_df$Year < 2005, "Early (Pre-2005)", "Late (Post-2005)")

# --- 3. Create Contingency Table and Run Chi-square ---
table_data <- table(deaths_df$Malaria_Level, deaths_df$Period)
chi_sq_result <- chisq.test(table_data)

# --- 4. Result & Explanation ---
print(chi_sq_result)
print("Yukta Sonawane S120")