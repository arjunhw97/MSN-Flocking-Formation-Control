function [nijval] = nij(x,y,u,v,neigh,i,n) 
  nijval = zeros(n,2);
  epsilon = 0.1;
     len = length(neigh{i}); 
     for j = 2:len
        t = neigh{i}(j);
        [eucli] = eucld(u,v,x(t),y(t));   
        nijval(t,1) = (x(t) - u)/sqrt(1 + (epsilon * (eucli^2)));
        nijval(t,2) = (y(t) - v)/sqrt(1 + (epsilon * (eucli^2)));  
     end    
end