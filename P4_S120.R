library(dplyr)

pcos <- read.csv("C:/Users/yukta/R Prog_S120/PCOS_data.csv")

head(pcos)
colnames(pcos)

pcos_sorted_age <- pcos |>
  arrange(Age)

head(pcos_sorted_age, 5)

pcos_sorted_weight_desc <- pcos |>
  arrange(desc(Weight))

head(pcos_sorted_weight_desc, 5)

pcos_multi_sort <- pcos |>
  arrange(PCOS..Y.N., desc(Age))

head(pcos_multi_sort, 10)

pcos_large_follicles <- pcos |>
  filter(Follicle.no. > 10) |>
  arrange(AMH)

pcos_large_follicles |>
  select(Age, AMH, Follicle.no.) |>
  head(5)
