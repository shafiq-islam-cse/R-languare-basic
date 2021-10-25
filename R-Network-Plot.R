#https://www.r-graph-gallery.com/247-network-chart-layouts.html
# 
# library
#install.packages("igraph")
library(igraph)

# Create data
data <- matrix(sample(0:1, 400, replace=TRUE, prob=c(0.8,0.2)), nrow=20)
network <- graph_from_adjacency_matrix(data , mode='undirected', diag=F )

#When ploting, we can use different layouts:
par(mfrow=c(2,2), mar=c(1,1,1,1))
plot(network, layout=layout.sphere, main="sphere")
plot(network, layout=layout.circle, main="circle")
plot(network, layout=layout.random, main="random")
plot(network, layout=layout.fruchterman.reingold, main="fruchterman.reingold")

# layouts <- grep("^layout_", ls("package:igraph"), value=TRUE)[-1] 
# # Remove layouts that do not apply to our graph.
# layouts <- layouts[!grepl("bipartite|merge|norm|sugiyama|tree", layouts)]
# 
# par(mfrow=c(3,3), mar=c(1,1,1,1))
# for (layout in layouts) {
#   print(layout)
#   l <- do.call(layout, list(network)) 
#   plot(network, edge.arrow.mode=0, layout=l, main=layout) }

## [1] "layout_with_fr"
## [1] "layout_with_gem"
## [1] "layout_with_graphopt"
## [1] "layout_with_kk"
## [1] "layout_with_lgl"
## [1] "layout_with_mds"
## [1] "layout_as_star"
## [1] "layout_components"
## [1] "layout_in_circle"
## [1] "layout_nicely"
## [1] "layout_on_grid"
## [1] "layout_on_sphere"
## [1] "layout_randomly"
## [1] "layout_with_dh"
## [1] "layout_with_drl"