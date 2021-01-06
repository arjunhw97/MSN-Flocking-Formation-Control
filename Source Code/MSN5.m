%clearing variables
clc,clear
close all
%declaring nodes, desired distance and other parameters
n = 100;
dim = 2;
d = 15;
k = 1.2;
r = k * d;
h = 0.2;
%Values for calculating distance from obstacle
d_ = k * d;
r_ = 0.75 * d_;
Kr = 15;
yk = [160,25];
neigh = {};
%Optional paramters
epsilon = 0.1; 
delta_t = 0.009;
t = 0:delta_t:10;%7;% Set simulation time
c1 = 45; %30;
c2 = 2 * sqrt(c1);
c1mt = 2.5; %1.1;
c2mt = 2 * sqrt(c1mt);
c1beta = 1500;
c2beta = 2 * sqrt(c1beta);
%Randomely generating the points
x = rand(n,1).*50;
y = rand(n,1).*50;
qtarg(:) = [300,25]; %Position of the target
[x,y,neigh] = compute(x,y,r,n,neigh); %Computing neighbors of nodes
plotgraphtarg(x,y,neigh,n,qtarg, yk, Kr); %plotting the nodes and the target and connecting the nodes

%Declaring variables required for movement of the nodes
old_x = x;
old_y = y;
p_nodes = zeros(n,dim);
u_nodes = zeros(n,dim);
sum1 = zeros(n,dim);
sum2 = zeros(n,dim);
%Variables for keeping track of the node parameters for each iteration
x_iter = zeros(n,length(t));
y_iter = zeros(n,length(t));
p_iter = zeros(length(t),n);
com_iter = zeros(length(t),2);
n_iter = ones(length(t),1); 
rk_iter = zeros(length(t),1); 
for iter = 1:length(t)
    p_nodes(:,1) = (x - old_x)/delta_t; %Calculating the Velocity
    p_nodes(:,2) = (y - old_y)/delta_t; 
    if (iter > 1)
      p_iter(iter,:) = ((p_nodes(:,1).^2) + (p_nodes(:,2).^2)); %Saving velocity for every iteration  
      n_iter(iter) = iter;
    end  
    old_x = x; %Saving the value of previous position of the nodes
    old_y = y;
    [xy_com] = c_o_m(x,y,n); %Calculating center of mass
    com_iter(iter,:) = xy_com;
    [q_k,p_k] = betaposvel(yk,Kr,x,y,p_nodes,n); %Calculating the obstacle avoidance parameters
    [x,y,neigh] = compute(x,y,r,n,neigh); %Computing neighbors of nodes
    [adij] = adjacent(neigh,n); %Computing adjacency matrix of connectivity checking
    rk_iter(iter) = rank(adij)/n; %storing connectivity for each iteration 
    [adj] = fadj(x,y,neigh,r,n); 
    [bdj] = badj(q_k,x,y,d_,n);
    [grad] = GBT(x,y,r,d,neigh,n); %Gradient Base Term
    [adjterm] = CBT(p_nodes,neigh,adj,n); %Consensus Base Term
    [bgrad] = BGBT(x,y,q_k,r_,d_,n); %Gradient Base Term for Beta Agent
    [badjterm] = BCBT(p_nodes,p_k,bdj,n); %Consensus Base Term for Beta Agent
    grad = c1 * grad;
    adjterm = c2 * adjterm;
    bgrad = c1beta * bgrad;
    badjterm = c2beta * badjterm;
    [qpos] = starget(x,y,qtarg,n); %Computing position change based on target
    u_nodes = grad + adjterm + bgrad + badjterm - (c1mt * qpos) - (c2mt * p_nodes); %Calculating Velocity
    x = old_x + (delta_t * p_nodes(:,1)) + (((delta_t^2)/2) * u_nodes(:,1)); %Changing position of nodes
    y = old_y + (delta_t * p_nodes(:,2)) + (((delta_t^2)/2) * u_nodes(:,2));
    x_iter(:,iter) = x; %saving node values for every iteration;
    y_iter(:,iter) = y;
    hold off;
    plotgraphtargobs(x,y,neigh,n,qtarg,yk,Kr); %Plotting the graph
    drawnow;
end


%Plotting the velocity
figure(2)
for i = 1:n
    plot(n_iter,p_iter(:,i));
    hold on;
end       

%Plotting the connectivity
figure(3)
plot(n_iter,rk_iter);

%Plotting the trajectory
figure(4)
for i = 1:length(t)
 if(i == length(t))
   plot(x_iter(:,i),y_iter(:,i),'m>');
 else  
   plot(x_iter(:,i),y_iter(:,i),'k.');
 end
 hold on;
end 

%Plotting the Center of Mass trajectory
figure(5)
plot(com_iter(:,1),com_iter(:,2),'y.');
hold on;
plot(qtarg(1),qtarg(2),'k.');
hold on;

