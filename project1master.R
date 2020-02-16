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


# Question 4
gsize(unSimGraph)
count_triangles(unSimGraph, vids = V(unSimGraph))
edge_density(unSimGraph, loops = FALSE)
bipartite_mapping(unSimGraph)
distance_table(unSimGraph, directed = TRUE)
assortativity_degree(unSimGraph, directed = TRUE)
components(unSimGraph, mode = c("weak", "strong"))
edge_betweenness(unSimGraph, e = E(unSimGraph), directed = TRUE, weights = NULL)
hub_score(unSimGraph, scale = TRUE, weights = NULL, options = arpack_defaults)
diameter(unSimGraph, directed = TRUE, unconnected = TRUE, weights = NULL)
mean_distance(unSimGraph, directed = TRUE, unconnected = TRUE)



# Question 5

