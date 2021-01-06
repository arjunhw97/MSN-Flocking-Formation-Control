#  MSN Flocking Formation Control


## Project parameters:
- Number of sensor nodes: n =100
- Space dimensions: m = 2
- Desired distance among sensor node: d = 15
- Scaling factor: k = 1.2 and interaction range r = k*d
- Epsilon = 0.1 and Delta_t = 0.009 (These two parameters are optional and you can change them)

## Cases

### Case 1 - MSN Fragmentation
**Filename: MSN
Randomly generate a connected network of 100 nodes in the area of 50x50. Then implement the
Algorithm 1 to show the fragmentation behavior of the MSN.
1. Plot the initial deployment of the MSN of 100 nodes. Link neighboring nodes together by
a line (prefer: blue line). See you Homework 1.
2. Plot/show the 6 snapshots of the MSN to show how it is fragmenting.
3. Plot the trajectory of the all sensor nodes in the xy coordinate.
4. Plot the velocity of the all sensor nodes in the xy coordinate.
5. Check and plot the connectivity of the MSN. Use this to check
Connectivity(t)= (1/(num_nodes))*rank(A); %A is Adjacency matrix
If Connectivity(t) = 1 the MSN is connected; Else not connected
Case 2. Implement Algorithm 2 (MSN Quasi-Lattice Formation) with static target
(Grade: 20point)
Randomly generate a connected network of 100 nodes in the area of 50x50. In this case you can
set up a target (gamma agent) as static point with its coordinate (x = 150, y =150). Then
implement the Algorithm 2 to show the flocking behavior of the MSN.
1. Plot the initial deployment of the MSN of 100 nodes. Link neighboring nodes together by
a line (prefer: blue line)
2. Plot/show the 6 snapshots of the MSN to show how it is flocking and moving to the
target location while avoiding collision with each other.
3. Plot the trajectory of the all sensor nodes in the xy coordinate.
4. Plot the velocity of the all sensor nodes in the xy coordinate.
5. Check and plot the connectivity of the MSN
Case 3. Implement Algorithm 2 (MSN Quasi-Lattice Formation) with dynamic target
(Grade: 20point)
Randomly generate a connected network of 100 nodes in the area of 150x150. In this case you
plan a target (gamma agent) moving in a sine wave trajectory. Then implement the Algorithm 2
to show the flocking behavior of the MSN.
1. Plot the initial deployment of the MSN of 100 nodes. Link neighboring nodes together by
a line (prefer: blue line)
2. Plot/show the 6 snapshots of the MSN to show how it is flocking and tracking a moving
target.
3. Plot the trajectory of the all sensor nodes in the xy coordinate.
4. Plot the velocity of the all sensor nodes in the xy coordinate.
5. Plot the Center of Mass (COM) of the MSN and plot the trajectory of the target on the
same figure to show how the MSN follows the moving target.
6. Check and plot the connectivity of the MSN
Case 4. Implement Algorithm 2 (MSN Quasi-Lattice Formation) with dynamic target
(Grade: 20point)
Randomly generate a connected network of 100 nodes in the area of 150x150. In this case you
plan a target (gamma agent) moving in a circular trajectory. Then implement the Algorithm 2
to show the flocking behavior of the MSN.
1. Plot the initial deployment of the MSN of 100 nodes. Link neighboring nodes together by
a line (prefer: blue line).
2. Plot/show the 6 snapshots of the MSN to show how it is flocking.
3. Plot the trajectory of the all sensor nodes in the xy coordinate.
4. Plot the velocity of the all sensor nodes in the xy coordinate.
5. Plot the Center of Mass (COM) of the MSN and plot the trajectory of the target on the
same figure to show how the MSN follows the moving target.
6. Check and plot the connectivity of the MSN
Case 5. Implement Algorithm 3 (MSN Quasi-Lattice Formation) with obstacle avoidance:
(Grade: 20point)
Randomly generate a connected network of 100 nodes in the area of 50x50. In this case you plan
a target (gamma agent) at the location of (200, 25). The obstacle is circular shape with radius of
15 and its center location is (100,25). Then implement the Algorithm 3 to show the flocking
behavior of the MSN.
1. Plot the initial deployment of the MSN of 100 nodes. Link neighboring nodes together by
a line (prefer: blue line). Plot the obstacle (circular shape) on this figure also.
2. Plot/show the 6 snapshots of the MSN to show how it is flocking and avoiding obstacles.
3. Plot the trajectory of the all sensor nodes in the xy coordinate.
4. Plot the velocity of the all sensor nodes in the xy coordinate.
5. Plot the Center of Mass (COM) of the MSN and plot the trajectory of the target on the
same figure to show how the MSN follows the moving target.