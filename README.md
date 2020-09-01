#  MSN Flocking Formation Control

**Checkout the paper at [Flocking Control](https://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.121.7027&rep=rep1&type=pdf)** before reading the file.

## Installation

Install the latest verison of MATLAB in your system, copy the directory "source code" to your MATLAB directory or any other directory and open and run any of the files - MSN1.m, MSN2.m, MSN3.m, MSN4.m, MSN5.m for the 5 cases explained below respectively.
 
## Project parameters:
- Number of sensor nodes: n =100.
- Space dimensions: m = 2.
- Desired distance among sensor node: d = 15.
- Scaling factor: k = 1.2 and interaction range r = k*d.
- Epsilon = 0.1 and Delta_t = 0.009 (These two parameters are optional and you can change them).

## Cases

### Case 1 - MSN Fragmentation

**Filename: MSN1.m**

- Randomly generates a connected network of 100 nodes in the area of 50x50. 
- Plots the initial deployment of the MSN of 100 nodes.
- Links the neighboringing nodes together by a line. 

#### Plots
- Plots the fragmentation of the nodes.
- Plots the velocity.
- Plots the connectivity.
- Plots the trajectory.

#### Algorithm 1:

<img src='alg1.JPG' width=500px><br>
<img src='alg11.JPG' width=500px><br>
<img src='alg12.JPG' width=500px><br>
<img src='alg13.JPG' width=500px><br>


### Case 2 - Implements MSN Quasi-Lattice Formation with **static target**

**Filename: MSN2.m**

- Randomly generates a connected network of 100 nodes in the area of 50x50. 
- Sets up a target (gamma agent) as static point with its coordinate (x = 150, y =150). 
- Implements flocking behavior of the MSN.

#### Algorithm 2 for Case 2:

<img src='alg2.JPG' width=500px><br>

#### Plots
- Plots the flocking of the nodes.
- Plots the velocity.
- Plots the connectivity.
- Plots the trajectory.


### Case 3 - Implements MSN Quasi-Lattice Formation with **dynamic target (Sine wave trajectory)**

**Filename: MSN3.m**

- Randomly generates a connected network of 100 nodes in the area of 150x150. 
- Sets up a target (gamma agent) moving in a **sine wave trajectory.** 
- Implements flocking behavior of the MSN.

#### Algorithm 2 for Case 3:

<img src='alg21.JPG' width=500px><br>

#### Plots
- Plots the flocking of the nodes following the target (Sine wave trajectory).
- Plots the velocity.
- Plots the connectivity.
- Plots the trajectory.
- Plots the center of mass and target trajectory.


### Case 4 - Implements MSN Quasi-Lattice Formation with **dynamic target  (Circular trajectory)**

**Filename: MSN4.m**

- Randomly generates a connected network of 100 nodes in the area of 150x150. In this case you
- Sets up a target (gamma agent) moving in a **circular trajectory.** 
- Implements flocking behavior of the MSN.

#### Algorithm 2 for Case 3 (Same equation, change the values to make it a circular trajectory):

<img src='alg21.JPG' width=500px><br>

#### Plots
- Plots the flocking of the nodes following the target (Circular trajectory).
- Plots the velocity.
- Plots the connectivity.
- Plots the trajectory.
- Plots the center of mass and target trajectory.


### Case 5 - Implements MSN Quasi-Lattice Formation with **obstacle avoidance**

**Filename: MSN5.m**

- Randomly generates a connected network of 100 nodes in the area of 50x50. 
- Sets up a target (gamma agent) at the location of (200, 25). 
- Sets up an obstacle, circular in shape with a radius of 15 and its center location at (100,25). 
- Implements flocking behavior of the MSN avoiding obstacles.

#### Algorithm 3:

<img src='alg3.JPG' width=500px><br>
<img src='alg31.JPG' width=500px><br>
<img src='alg32.JPG' width=500px><br>

#### Plots
- Plots the flocking of the nodes following the target, avoiding obstacles.
- Plots the velocity.
- Plots the connectivity.
- Plots the trajectory.
- Plots the center of mass and target trajectory.



