library(networkdata)
data("got")

gotS1 <- got[[1]]
plot(gotS1)

#install.packages(c("igraph","graphlayouts","ggraph","ggplot2"))
library(igraph)
library(ggraph)
library(graphlayouts)

# define a custom color palette
got_palette <- c("#1A5878", "#C44237", "#AD8941", "#E99093", 
                 "#50594B", "#8968CD", "#9ACD32")

# compute a clustering for node colors
V(gotS1)$clu <- as.character(membership(cluster_louvain(gotS1)))

# compute degree as node size
V(gotS1)$size <- degree(gotS1)



# ggraph(greys,"stress",bbox = 15)+
#   geom_edge_link2(aes(edge_colour = node.position),edge_width = 0.5)+
#   geom_node_point(aes(fill = sex),shape = 21,size = 3)+
#   geom_node_text(aes(label = name,size = degree(greys)),
#                  family = "serif",repel = TRUE)+
#   scale_edge_colour_brewer(palette = "Set1")+
#   scale_fill_manual(values=c("grey66", "#EEB422","#424242"))+
#   scale_size(range=c(2,5),guide = FALSE)+
#   theme_graph()+
#   theme(legend.position = "bottom")
