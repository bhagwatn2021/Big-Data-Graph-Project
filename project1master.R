# Master File for Class Project 1
# Fleurevca Francois, Andrew Nguyen, Neel Bhagwat, Eptisam Kassim

# Base for each Question/Question 2

library(igraph)

# creates umsimplified graph and plots it
el <- read.table("data/email-EU/email-EU.edges")
unSimGraph <- graph.data.frame(el, directed = TRUE)
plot(unSimGraph)

# Question 3
edge_density(unSimGraph, loops = FALSE)
diameter(unSimGraph, directed = TRUE, unconnected = TRUE, weights = NULL)
edge_betweenness(unSimGraph, e = E(unSimGraph), directed = TRUE, weights = NULL)
mean_distance(unSimGraph, directed = TRUE, unconnected = TRUE)


# Question 4

#Dyad Census
dyad_census(unSimGraph)

#Triad Census
triad_census(unSimGraph)

#Graph Motifs
motifs(unSimGraph, size = 3)
count_motifs(unSimGraph, size = 3)
motifs(unSimGraph, size = 4)
count_motifs(unSimGraph, size = 4)

#Girth of a graph
girth(unSimGraph, circle = TRUE)

#Chordality of a graph
is_chordal(unSimGraph, fillin=TRUE)


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

ec <- eigen_centrality(unSimGraph)$vector
max(ec)

cc1 <- closeness(unSimGraph, mode = c("all"), weights = NULL, normalized = FALSE)
cc2 <- closeness(unSimGraph, vids = c(1,83,102,174), mode = c( "all"), weights = NULL, normalized = FALSE)

cc1
cc2
max(cc1)
max(cc2)


#Ego
egs1 <- ego_size(unSimGraph, order = 1, mode = c("all"), mindist = 0)

eg1 <- ego(unSimGraph, order = 1, mode = c("all", "out", "in"),
    mindist = 0)

egs2 <- ego_size(unSimGraph, order = 1, nodes = c(1,83,102,174), mode = c("all"), mindist = 0)

eg2 <- ego(unSimGraph, order = 1, nodes = c(1,83,102,174), mode = c("all", "out", "in"),
    mindist = 0)

eg1
eg2
egs1
egs2
max(egs1)
max(egs2)

