# Master File for Class Project 1
# Fleurevca Francois, Andrew Nguyen, Neel Bhagwat, Eptisam Kassim

# Base for each Question/Question 2
install.packages("igraph")
install.packages("sna")
library(igraph)

# creates umsimplified graph and plots it
el <- read.table("data/email-EU/email-EU.edges")
unSimGraph <- graph.data.frame(el, directed = FALSE)
plot(unSimGraph)


# Question 3
edge_density(unSimGraph, loops = FALSE)
diameter(unSimGraph, directed = TRUE, unconnected = TRUE, weights = NULL)
edge_betweenness(unSimGraph, e = E(unSimGraph), directed = TRUE, weights = NULL)
mean_distance(unSimGraph, directed = TRUE, unconnected = TRUE)


# Question 4
gsize(unSimGraph)
count_triangles(unSimGraph, vids = V(unSimGraph))
bipartite_mapping(unSimGraph)
assortativity_degree(unSimGraph, directed = TRUE)
components(unSimGraph, mode = c("weak", "strong"))
hub_score(unSimGraph, scale = TRUE, weights = NULL, options = arpack_defaults)

# Question 5

