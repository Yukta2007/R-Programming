library(dplyr)

student_df <- data.frame(
  StudentID = c(1, 2, 2, 3, 4, 1),
  Name = c("Nishita", "Simran", "Siya", "Riya", "Nandini", "Yukta"),
  Course = c("Python", "Java", "Java", "C++", "Data Science", "Python")
)

print("--- 1. Original Dataset (Note 6 rows) ---")
print(student_df)



duplicates_report <- student_df %>%
  group_by(StudentID, Name, Course) %>%
  count() %>%        
  filter(n > 1)

print("--- 2. Identification Report (Rows that are duplicated) ---")
print(duplicates_report)



clean_exact <- student_df %>%
  distinct()

print("--- 3. Removed Exact Duplicates (distinct) ---")
print(clean_exact)



unique_students <- student_df %>%
  distinct(Name, .keep_all = TRUE)

print("--- 4. Unique Students Only (Partial Duplicates removed) ---")
print(unique_students)

print("Yukta Sonawane S120")
