install.packages(c("readr", "psych"))

library(readr)    
library(psych)   

my_data <- read.csv("C:\Users\yukta\Downloads\StudentsPerformance (1).csv")




tail(`StudentsPerformance.(1)`)

dim(`StudentsPerformance.(1)`)

cat("Dimensions (Rows, Columns): ", dim(`StudentsPerformance.(1)`), "\n")

str(`StudentsPerformance.(1)`)

summary(`StudentsPerformance.(1)`)

names(`StudentsPerformance.(1)`)
cat("Column Names: ", names(`StudentsPerformance.(1)`), "\n")


