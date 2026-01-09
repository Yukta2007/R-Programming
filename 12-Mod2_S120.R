library(ggplot2)

df <- read.csv("C:/Users/yukta/Downloads/NCRB_2001_Table_28.csv")
df <- na.omit(df)

colnames(df)[3] <- "Incest_Cases"
colnames(df)[11] <- "Other_Cases"
colnames(df)[19] <- "Total_Cases"

cor_matrix <- cor(df[, c("Incest_Cases", "Other_Cases", "Total_Cases")])
print(cor_matrix)

test_results <- cor.test(df$Incest_Cases, df$Other_Cases)
print(test_results)

melted_cor <- as.data.frame.table(cor_matrix)
colnames(melted_cor) <- c("Var1", "Var2", "value")

ggplot(data = melted_cor, aes(x=Var1, y=Var2, fill=value)) + 
  geom_tile() +
  scale_fill_gradient2(low = "blue", high = "red", mid = "white", 
                       midpoint = 0, limit = c(-1,1), space = "Lab", 
                       name="Correlation") +
  theme_minimal() +
  labs(title = "Correlation Matrix of Reported Cases-Yukta Sonawane S120",
       subtitle = paste("Correlation (Incest vs Other):", round(test_results$estimate, 2), 
                        " | P-value:", format.pval(test_results$p.value)),
       x = "", y = "") +
  geom_text(aes(Var2, Var1, label = round(value, 2)), color = "black", size = 4)