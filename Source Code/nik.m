function [nikval] = nik(x,y,q_k,n) 
  nikval = zeros(n,2);
  epsilon = 0.1; 
  for i = 1:n
     [eucli] = eucld(x(i),y(i),q_k(i,1),q_k(i,2));   
     nikval(i,1) = (q_k(i,1) - x(i))/sqrt(1 + (epsilon * (eucli^2)));
     nikval(i,2) = (q_k(i,2) - y(i))/sqrt(1 + (epsilon * (eucli^2)));  
  end    
end

