function [grad] = GBT(x,y,r,d,neigh,n)
   grad = zeros(n,2);
   for i = 1:n    
     len = length(neigh{i});
     u = x(i);
     v = y(i);
     [nijval] = nij(x,y,u,v,neigh,i,n);
     for j = 2:len
        t = neigh{i}(j);
        [z] = eucld(x(i),y(i),x(t),y(t));
        [sig] = signorm(z);
        grad(i,:) = grad(i,:) + (phiialpha(sig,r,d) * nijval(t,:));
     end    
  end
end
