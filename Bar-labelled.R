#https://www.r-bloggers.com/2021/09/adding-text-labels-to-ggplot2-bar-chart/

set.seed(123)
data <- data.frame(x = sample(LETTERS[1:6], 300, replace = TRUE))
head(data)  
ggplot(data, aes(x = factor(x), fill = factor(x))) +
  geom_bar() +
  geom_text(aes(label = ..count..), stat = "count", vjust = 1.5, colour = "white")
