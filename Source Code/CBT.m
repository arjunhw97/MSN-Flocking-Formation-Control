function [adjterm] = CBT(p_nodes,neigh,adj,n)
   adjterm = zeros(n,2);
   for i = 1:n    
     len = length(neigh{i});   
     for j = 2:len
         t = neigh{i}(j);        
         adjterm(i,:) = adjterm(i,:) + ((adj(i,t) * (p_nodes(i,:) - p_nodes(i,:))));                      
      end    
    end
end

