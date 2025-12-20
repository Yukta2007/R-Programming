library(stats)  # For aov()
library(utils)  # For read.csv()

# --- 2. Load and Prepare Data ---
kdrama_df <- read.csv("C:/Users/yukta/R Prog_S120/korean_drama.csv")

# Remove rows where duration or content rating is missing
kdrama_clean <- kdrama_df[!is.na(kdrama_df$duration) & kdrama_df$content_rt != "", ]

# --- 3. Perform One-way ANOVA ---
# Formula: Dependent_Variable ~ Independent_Variable
one_way_model <- aov(duration ~ content_rt, data = kdrama_clean)

# --- 4. Result & Explanation ---
summary(one_way_model)
print("Yukta Sonawane S120")