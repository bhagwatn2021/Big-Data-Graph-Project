# Master File for Class Project 1
# Fleurevca Francois, Andrew Nguyen, Neel Bhagwat, Eptisam Kassim

# Base for each Question/Question 2
install.packages("igraph")
install.packages("sna")
library(igraph)

# creates umsimplified graph and plots it
el <- read.table("data/email-EU/email-EU.edges")
unSimGraph <- graph.data.frame(el, directed = FALSE)

#plot(unSimGraph)


# Question 3


# Question 4



# Question 5