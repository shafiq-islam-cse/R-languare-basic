#https://www.r-graph-gallery.com/250-correlation-network-with-igraph.html
# library
library(igraph)

# data
# head(mtcars)

# Make a correlation matrix:
mat <- cor(t(mtcars[,c(1,3:6)]))
# Keep only high correlations
mat[mat<0.995] <- 0

# Make an Igraph object from this matrix:
network <- graph_from_adjacency_matrix( mat, weighted=T, mode="undirected", diag=F)

# Basic chart
plot(network)

# color palette
library(RColorBrewer)
coul <- brewer.pal(nlevels(as.factor(mtcars$cyl)), "Set2")

# Map the color to cylinders
my_color <- coul[as.numeric(as.factor(mtcars$cyl))]

# plot
par(bg="grey13", mar=c(0,0,0,0))
set.seed(4)
plot(network, 
     vertex.size=12,
     vertex.color=my_color, 
     vertex.label.cex=0.7,
     vertex.label.color="white",
     vertex.frame.color="transparent"
)

# title and legend
text(0,0,"mtcars network",col="white", cex=1.5)
legend(x=-0.2, y=-0.12, 
       legend=paste( levels(as.factor(mtcars$cyl)), " cylinders", sep=""), 
       col = coul , 
       bty = "n", pch=20 , pt.cex = 2, cex = 1,
       text.col="white" , horiz = F)
plot(network,
     edge.color=rep(c("red","pink"),5),           # Edge color
     edge.width=seq(1,10),                        # Edge width, defaults to 1
     edge.arrow.size=1,                           # Arrow size, defaults to 1
     edge.arrow.width=1,                          # Arrow width, defaults to 1
     edge.lty=c("solid")                           # Line type, could be 0 or "blank", 1 or "solid", 2 or "dashed", 3 or "dotted", 4 or "dotdash", 5 or "longdash", 6 or "twodash"
     #edge.curved=c(rep(0,5), rep(1,5))            # Edge curvature, range 0-1 (FALSE sets it to 0, TRUE to 0.5)
)
# -------------------------- Customized
par(bg="black")

plot(network,
     
     # === vertex
     vertex.color = rgb(0.8,0.4,0.3,0.8),          # Node color
     vertex.frame.color = "white",                 # Node border color
     vertex.shape="circle",                        # One of "none", "circle", "square", "csquare", "rectangle" "crectangle", "vrectangle", "pie", "raster", or "sphere"
     vertex.size=14,                               # Size of the node (default is 15)
     vertex.size2=NA,                              # The second size of the node (e.g. for a rectangle)
     
     # === vertex label
     vertex.label=LETTERS[1:10],                   # Character vector used to label the nodes
     vertex.label.color="white",
     vertex.label.family="Times",                  # Font family of the label (e.g."Times", "Helvetica")
     vertex.label.font=2,                          # Font: 1 plain, 2 bold, 3, italic, 4 bold italic, 5 symbol
     vertex.label.cex=1,                           # Font size (multiplication factor, device-dependent)
     vertex.label.dist=0,                          # Distance between the label and the vertex
     vertex.label.degree=0 ,                       # The position of the label in relation to the vertex (use pi)
     
     # === Edge
     edge.color="white",                           # Edge color
     edge.width=4,                                 # Edge width, defaults to 1
     edge.arrow.size=1,                            # Arrow size, defaults to 1
     edge.arrow.width=1,                           # Arrow width, defaults to 1
     edge.lty="solid",                             # Line type, could be 0 or "blank", 1 or "solid", 2 or "dashed", 3 or "dotted", 4 or "dotdash", 5 or "longdash", 6 or "twodash"
     edge.curved=0.3    ,                          # Edge curvature, range 0-1 (FALSE sets it to 0, TRUE to 0.5)
)


