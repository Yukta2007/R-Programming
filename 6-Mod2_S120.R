# --- 1. Load Library ---
library(stats)

# --- 2. Load Data ---
# R will automatically change spaces in column names to dots (e.g., 'Previous.Scores')
student_data <- read.csv("C:/Users/yukta/Downloads/StudentPerformance.csv")

# --- 3. Perform Paired T-Test ---
# We compare Previous Scores vs. Performance Index for the same students
paired_test <- t.test(student_data$Previous.Scores, 
                      student_data$Performance.Index, 
                      paired = TRUE)

# --- 4. View Results ---
print(paired_test)