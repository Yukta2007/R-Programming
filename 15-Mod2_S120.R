install.packages("writexl")   # run once
library(writexl)
write_xlsx(result, "results.xlsx")
# Create a sample data frame
result <- data.frame(
  ID = c(1, 2, 3),
  Name = c("bob", "jack", "jim"),
  Marks = c(78, 85, 92)
)

# Export to CSV file
write.csv(result, "results.csv", row.names = FALSE)
# Create PDF file
pdf("results.pdf")

# Print table
print(result)

# Close PDF device
dev.off()
