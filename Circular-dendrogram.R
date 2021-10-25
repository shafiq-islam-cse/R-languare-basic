#https://r-charts.com/part-whole/circular-dendrogram/
# install.packages("dendextend")
# install.packages("circlize")
library(dendextend)
library(circlize)

# Distance matrix
d <- dist(USArrests)

# Hierarchical clustering dendrogram
hc <- as.dendrogram(hclust(d))

# Colors and line customization
hc <- hc %>%
  color_branches(k = 3) %>%
  set("branches_lwd", 2) %>%  # Line width
  set("branches_lty", 2) %>%  # Line type
  color_labels(k = 3)

# Line styling of the dendrogram
circlize_dendrogram(hc,
                    labels_track_height = NA,
                    dend_track_height = 0.5)