#https://www.r-graph-gallery.com/200-change-color-in-lineplot-following-y-value.html
# library
library(plotrix)

#create color palette
library(RColorBrewer)
my_colors = brewer.pal(8, "Set2") 

# Create data
x<-seq(1,100)
y<-sin(x/5)+x/20

# Plot x and y
par(mar=c(4,4,2,2))
clplot(x, y, main="", lwd=5, levels=c(1,2,3,4,5), col=my_colors, showcuts=T , bty="n")