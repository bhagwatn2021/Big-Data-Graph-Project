# Graph Analytics Project- Fleu Francois, Neel Bhagwat, Eptisam Kassim, Andrew Nguyen


## Question 5

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
