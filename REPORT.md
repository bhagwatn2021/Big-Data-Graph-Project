# Graph Analytics Project- Fleu Francois, Neel Bhagwat, Eptisam Kassim, Andrew Nguyen


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


