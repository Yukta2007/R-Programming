library(dplyr)
library(tidyr)

# Read the dataset
df <- read.csv("C:/Users/mvluc/Downloads/survey lung cancer.csv",
               na.strings = c("", "NA"))

print("~~ 1) Original Data (Selected Columns) ~~")

df_selected <- df %>%
  select(GENDER, AGE, SMOKING, ANXIETY, PEER_PRESSURE)

print(head(df_selected))


# -------------------------------
# CONVERT WIDE TO LONG FORMAT
# -------------------------------

long_df <- df_selected %>%
  pivot_longer(
    cols = c(SMOKING, ANXIETY, PEER_PRESSURE),
    names_to = "Factor",
    values_to = "Status"
  )

print("~~ 2) Long Format Data ~~")
print(head(long_df))


# -------------------------------
# CONVERT LONG BACK TO WIDE
# -------------------------------

wide_df <- long_df %>%
  pivot_wider(
    names_from = Factor,
    values_from = Status
  )

print("~~ 3) Wide Format Data ~~")
print(head(wide_df))


# -------------------------------
# CREATE A SMALL REPORT
# -------------------------------

report_df <- df_selected %>%
  group_by(GENDER) %>%
  summarise(
    Avg_Age = mean(AGE, na.rm = TRUE),
    Smoking_Count = sum(SMOKING == 2, na.rm = TRUE),
    Anxiety_Count = sum(ANXIETY == 2, na.rm = TRUE),
    Peer_Pressure_Count = sum(PEER_PRESSURE == 2, na.rm = TRUE)
  )

print("~~ 4) Health Behavior Report ~~")
print(report_df)

print("Yukta Sonawane S120")
