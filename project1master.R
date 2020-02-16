# Master File for Class Project 1
# Fleurevca Francois, Andrew Nguyen, Neel Bhagwat, Eptisam Kassim

# Base for each Question/Question 2
install.packages("igraph")
install.packages("sna")
library(igraph)

# creates umsimplified graph and plots it
el <- read.table("data/email-EU/email-EU.edges")
unSimGraph <- graph.data.frame(el, directed = TRUE)
plot(unSimGraph)

# Question 3


# Question 4


# Question 5
#Longest path in the graph
get.diameter (unSimGraph, directed = TRUE, unconnected = TRUE)
farthest.nodes(unSimGraph, directed = TRUE, unconnected = TRUE)

#Delete longest path and try longest path functions again to determine multiple longest path
multLong <- delete_edges(unSimGraph, c("999|938"))

get.diameter (multLong, directed = TRUE, unconnected = TRUE)
farthest.nodes(multLong, directed = TRUE, unconnected = TRUE)

#Largest clique
clique_num(unSimGraph)
largest_cliques(unSimGraph)

#Centrality and power centrality
unSimGraph <- simplify(unSimGraph)
pc1 <- power_centrality(unSimGraph,exponent=2.0)
pc2 <- power_centrality(unSimGraph,c(1,102, 174, 83),exponent=2.0)
max(pc1)
pc1
pc2

ac1 <- alpha_centrality(unSimGraph, alpha = 1, loops = FALSE,
                 exo = 1, weights = NULL, tol = 1e-07, sparse = TRUE)
ac2 <- alpha_centrality(unSimGraph, nodes = c(1,83,102,174), alpha = 1, loops = FALSE,
                 exo = 1, weights = NULL, tol = 1e-07, sparse = TRUE)
ac1
max(ac1)
ac2

