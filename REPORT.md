# Graph Analytics Project- Fleurevca Francois, Neel Bhagwat, Eptisam Kassim, Andrew Nguyen

## Question 4
## Functions
### 1. Dyad Census
The dyad census measures the relationship between each pair of vertices on a directed graph and classsifies the relationship 3 ways, a mutual connection (there is an edge from a to b and also from b to a), non-mutual connection (there is an edge either from a to b or from b to a but not the other way), and null connection (no edges between a and b).

Upon running the dyay_census() function on our graph, it was show to us that between all of the vertices of the graph there are 0 mutual connections, 54,397 non-mutual connection, and 525,781,838 null connections.

### 2. Triad Census
The triad census classifies every triple of vertices in a directed graph into one of 16 states. The 16 states are as follows:

1. A, B, C, the empty graph.
2. A->B, C, a graph with a single directed edge.
3. A<->B, C, a graph with a mutual connection between two vertices.
4. A<-B->C, the binary out-tree.
5. A->B<-C, the binary in-tree.
6. A->B->C, the directed line.
7. A<->B<-C.
8. A<->B->C.
9. A->B<-C, A->C.
10. A<-B<-C, A->C.
11. A<->B<->C.
12. A<-B->C, A<->C.
13. A->B<-C, A<->C.
14. A->B->C, A<->C.
15. A->B<->C, A<->C.
16. A<->B<->C, A<->C, the complete graph.

When triad_census() is called on our graph, the results are:
1. 5.682181e+12 
2. 1.753156e+09
3. 0.000000e+00
4. 1.550640e+05 
5. 4.251352e+06 
6. 9.352180e+05
7. 0.000000e+00 
8. 0.000000e+00 
9. 4.899200e+04
10. 0.000000e+00 
11. 0.000000e+00 
12. 0.000000e+00
13. 0.000000e+00 
14. 0.000000e+00 
15. 0.000000e+00
16. 0.000000e+00

### 3. Graph Motifs
Graph motifs are small connected subgraphs with a well-defined structure. The motifs() function finds the total number of possible motif types for the graph and then returns the number of motifs for each type. The count_motifs() function finds the total number of overall motifs of a single size. 

Upon calling motifs(size = 3) on our graph, we received the following results:

1. NA      
2. NA 
3. 4251352      
4. NA
5. 935218       
6. 0  
7. 155064   
8. 48992
9. 0       
10. 0       
11. 0       
12. 0
13. 0       
14. 0       
15. 0       
16. 0

From the data you can see, that there are a few subgraphs of size 3 that are not considered motifs and therefore marked as NA. In addtion, a large amount of the motifs are of the 3rd type. 

When count_motifs(size = 3) is called on our graph, we get a return of 5,390,626, letting us know that there are a total of 5 million motifs on our graph.

### 4. Girth of a graph
The girth of a graph is the length of the shortest circle in it. The girth(graph, circle = TRUE) function only works on undirected graphs so when using our directed graph, the function will treat it like an undirected graph. 

When we called the function on our graph, the results were:
$girth = 3, $circle = c(52, 26, 82). The shortest circle in our undirected graph has a length of 3 and those 3 vertices are 52, 62, and 82.

### 5. Chordality of a graph
A graph is chordal if each of its cycles of four or more nodes has a chord, which is an edge joining two nodes that are not adjacent in the cycle. The is_chordal(graph, fillin=TRUE) function returns to us whether our graph is chordal and a vector of edges to fill in to make our graph chordal if it is not.

Upon calling is_chordal(graph, fillin=TRUE) on our graph, our graph was determined to not be chordal and had a total of 389,358 edges to fill in to transform our graph into a chordal graph.

## Question 5
## Longest path
To determine the longest path in the graph, we used the get.diameter and farthest.nodes functions in igraph.

The get.diameter function returned us: 17763 16731 8855  3759  2136  1867  1501  1500  1380  1374  1229  1217  999   938  
which depict the path of the longest path in the graph. 

The farthest.nodes returned us: 17763 938 and  13, which are the two farthest nodes and their distance, respectively. 

Originally, we tried the diameter function in igraph, but that only returned us the distance between the two farthest nodes (9). 

We also wanted to find out whether there were multiple longest paths. So based on looking at the documentation for the diameter function, we found out that we can use the delete edges function to determine this. We deleted an edge in the longes path returned from get.diameter and then ran the above functions a second time.  

Our results were: 
17763 16731 8855  3759  2136  1867  1501  1500  1380  1374  1229  1217  749   665  from the get.diameter function, depicting the path of the new longest node. 

17763 665 and 13 respectively, the two new furthest nodes and their distance, respectively. 

While we cannot be certain that removing an edge in the original longest path determines whether there are multiple longest paths as removing an edge can lead to removing shorter paths between edges, we can conclude that it is likely that there are multiple longest paths because the removal of one edge in the longest path led to a change in the end node in the new longest path. If the removal of an edge made the path longer and the original longest path was the only one, it is likely that removing an edge would lead to the same end node of 938. 

## Largest clique
To determine the largest clique, we used the clique num function from igraph which returned us the size of the larges clique, 12. We also used the largest cliques function to get the list of cliques of size 12, and found the following results: 
( 1     83    325   502   223   82    174   29    1023  1022  12887 8013 )
( 1     83    325   502   223   82    174   29    1023  1022  12887 173 )
( 1     83    325   502   214   29    82    174   12887 8013  1022  1023 )
( 1     83    325   502   214   29    82    174   12887 173   1022  1023 )
( 1     83    87    214   174   82    502   1023  29    1022  12887 8013 )
( 1     83    87    214   174   82    502   1023  29    1022  12887 173 )
( 102   174   6712  29    325   502   83    223   1023  12887 173   681  )
( 102   174   223   83    325   502   29    1023  681   173   1022  12887 )
( 102   174   223   83    325   502   29    1023  82    1022  12887 8013 )
( 102   174   223   83    325   502   29    1023  82    1022  12887 173 )
( 102   174   214   559   681   325   173   502   1022  1023  29    12887 )
( 102   174   214   83    502   681   173   325   1022  1023  29    12887 )
( 102   174   214   83    502   82    325   1023  1022  29    12887 8013 )
( 102   174   214   83    502   82    325   1023  1022  29    12887 173 )
( 102 174 214 83  502 82  87  453 355 279 103 95)
( 102 174 214 83  502 82  87  453 355 279 52  173 )
( 102 174 214 83  502 82  87  453 355 26  52  173 )
( 102  174  214  83   502  82   87   1023 1022 103  355  279 )
( 102   174   214   83    502   82    87    1023  1022  8013  29    12887)
( 102  174  214  83   502  82   87   1023 1022 173  279  355 )
( 102   174   214   83    502   82    87    1023  1022  173   29    12887)
( 102  174  214  83   502  82   87   1023 95   355  103  279 )
( 950 83  174 214 82  502 453 87  355 279 95  103)
( 950 83  174 214 82  502 453 87  355 279 95  888 )

Upon analyzing the cliques, it seemed as if many of them included common nodes such as 1, 102, 174, 83, etc.). We suspect that due to the fact that each of these nodes generate numerous minimally-connected subgraphs, they seem to be more central nodes.

## Centrality and Power Centrality
To calculate the power centrality, we used the power centrality function in igraph and got values for many nodes, ranging from around -70 to 6. A sample of power centrality scores for a few nodes, with a power of 2: (2.526634e-03 -7.910153e-18 -7.910153e-18  6.189658e-03 -7.177358e-12 -7.910153e-18  1.583946e-02 -7.910153e-18). 
 
We also used the max function to calculate the max power centrality, 6.462346. From this value, we could get an idea of how central nodes 1, 83, 102, and 174 are based on them being common in large cliques. So we ran the power centrality function with a power of 2 again with only those nodes, and got: -4.361631e-18  6.467854e-19 -3.390712e-17  1.844985e-04  for each respective node. While 1, 102, and 83 were not as central as expected, 174 was amongst the more relatively power-central nodes. 

We also looked at alpha centrality using the alpha centrality function in igraph. We first calculated the alpha centrality for every node by passing in all vertices into the function, and got values ranging from -3481980 to  1.734901e+18, however many nodes had an an alpha centrality score of 1. A sample of some alpha centrality scores of nodes: 3.784966e+01  1.000000e+00  1.000000e+00  1.000000e+00  1.000000e+00  1.000000e+00  1.000000e+00  1.000000e+00

After calculating the alpha centrality for each node, we filtered nodes 1, 83, 102, and 174 to test their alpha centrality. We found:  
5.824396e+17 1.406113e+03 1.000000e+00 1.000000e+00 for these nodes, respectively. Nodes 1 and 83 seemed to have a relatively higher alpha centrality than the rest of the nodes. 

We also used the eigen and closeness centrality functions to find the eigen and closeness entrality indices for the graph, which we found the eigen centrality index to be 56.23739. We also used the max function to calculate the maximum eigen centrality value, which was 1. We found that nodes 1 and 174 had eigen centrality values of 2.263548e-01 and 6.977827e-01, respectively, indicating that they had higher centrality scores than that of many other nodes. 

Closeness centralities ranged from 4^-6 to around 1^-5. The max closeness centrality was 1.195557e-05. When we examined the closeness centrality of nodes 1, 83, 102, and 174, we found that they had closeness centrality scores of 9.684667e-06 9.460111e-06 7.572316e-06 7.973337e-06, respectively, indicating that they were relatively more central nodes. 

## Ego
We used the ego and ego size functions on the entire graph and the four nodes of focus. Nodes 1 and 83 had an ego size of 193 and 96, respectively. Thus, they seemed more connected and central than other nodes. Most nodes had an ego size of 2. The ego function returned us nodes in the neighborhood of vertices, and nodes 1 and 83 seemed to have more nodes in its neighborhood than others. The max ego size was 624, extracted from the max function. While nodes 1 and 83 seemed to be nodes with larger ego sizes, they did not have ego sizes close to the maximum. 
