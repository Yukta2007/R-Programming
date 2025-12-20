# --- 1. Load Libraries ---
library(stats)

# --- 2. Load and Prepare Data ---
crimes_df <- read.csv("C:/Users/yukta/Downloads/crimes_against_women_2001-2014.csv")

# Convert State and Year to factors (categories) so R treats them as groups
crimes_df$STATE.UT <- as.factor(crimes_df$STATE.UT)
crimes_df$Year <- as.factor(crimes_df$Year)

# --- 3. Perform Two-way ANOVA ---
# Formula: Dependent_Variable ~ Factor1 + Factor2
two_way_model <- aov(Rape ~ STATE.UT + Year, data = crimes_df)

# --- 4. Result & Explanation ---
summary(two_way_model)
print("Yukta Sonawane S120")