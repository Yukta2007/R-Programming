library(dplyr)

data_jan <- data.frame(
  Id = c(12,13,14,15,16),
  Name = c("Nishita","Simran","Siya","Nandini","Riya"),
  Jan_sales = c(1000,2000,3000,4000,5000)
)

data_feb <- data.frame(
  Id = c(12,13,14,15,16),
  Name = c("Nishita","Simran","Siya","Nandini","Riya"),
  Jan_sales = c(100,200,300,450,500)
)

data_new_hires <- data.frame(
  ID = c(4,5),
  Name = c("Selvesh","Shivam"),
  Jan_sales = c(40,40)
)

print("--- Data January ---")
print(data_jan)
print("--- Data February ---")
print(data_feb)
print("Yukta Sonawane S120")

merged_data <- merge(data_jan, data_feb, by = c("ID", "Name"))

print("--- Merged Data (Columns Added) ---")
print(merged_data)

final_list <- bind_rows(data_jan,data_new_hires)

print("--- Appended Data (Rows Added) ---")
print(final_list)

