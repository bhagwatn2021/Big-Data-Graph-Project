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

