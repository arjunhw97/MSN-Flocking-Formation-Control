function [badjterm] = BCBT(p_nodes,p_k,bdj,n)
   badjterm = zeros(n,2);
   for i = 1:n    
       badjterm(i,:) = bdj(i) * (p_k(i,:) - p_nodes(i,:));                     
    end
end

