function [adij] = adjacent(neigh,n)
   adij = zeros(n,n);
   for i = 1:n    
     len = length(neigh{i});
     for j = 2:len
        t = neigh{i}(j);
        adij(i,t) = 1;
     end    
  end
end
