#https://r-charts.com/part-whole/ggvenndiagram/
# install.packages("ggVennDiagram")
library(ggVennDiagram)
# install.packages("ggplot2")
library(ggplot2)

# List of items
x <- list(A = 1:5, B = 2:7, C = 5:10)

# Venn diagram with custom legend
ggVennDiagram(x) + 
  guides(fill = guide_legend(title = "Title")) +
  theme(legend.title = element_text(color = "red"),
        legend.position = "bottom")