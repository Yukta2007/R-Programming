# Read the CSV file
data3 <- read.csv(
  "C:/Users/yukta/Downloads/cardata.csv",
  stringsAsFactors = FALSE
)

head(data3)

colnames(data3)

cat_col <- names(data3)[sapply(data3, is.character)][1]
num_col <- names(data3)[sapply(data3, is.numeric)][1]

data3$Num_Group <- cut(
  data3[[num_col]],
  breaks = 4,
  labels = c("Low", "Medium", "High", "Very High")
)

table(data3[[cat_col]])

table(data3[[cat_col]], data3$Num_Group)

addmargins(table(data3[[cat_col]], data3$Num_Group))

print("Yukta Sonawane S120")
