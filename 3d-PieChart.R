# 3D Exploded Pie Chart
#https://www.statmethods.net/graphs/pie.html
library(plotrix)
# slices <- c(10, 12, 4, 16, 8)
# lbls <- c("US", "UK", "Australia", "Germany", "France")
# pie3D(slices,labels=lbls,explode=0.1,
#       main="Pie Chart of Countries ")

pieval<-c(2,4,6,8)
pielabels<-
  c("We hate\n pies","We oppose\n  pies","We don't\n  care","We just love pies")
# grab the radial positions of the labels
lp<-pie3D(pieval,radius=0.9,labels=pielabels,explode=0.1,main="3D PIE OPINIONS")
# lengthen the last label and move it to the left
pielabels[4]<-"We cannot survive without our pies"
lp[4]<-4.8
# specify some new colors
pie3D(pieval,radius=0.9,labels=pielabels,explode=0.1,main="3D PIE OPINIONS",
      col=c("brown","#ddaa00","pink","#dd00dd"),labelpos=lp)
