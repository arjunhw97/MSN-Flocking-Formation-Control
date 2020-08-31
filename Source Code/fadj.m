function [adj] = fadj(x,y,neigh,r,n)
   adj = zeros(n,n);
   for i = 1:n    
     len = length(neigh{i});
     for j = 2:len
        t = neigh{i}(j);
        [z] = eucld(x(i),y(i),x(t),y(t));
        [sig] = signorm(z);
        [sigr] = signorm(r);
        adj(i,t) = ph(sig/sigr);
     end    
  end
end
