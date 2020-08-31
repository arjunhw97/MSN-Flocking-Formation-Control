function [x,y,neigh] = compute(x,y,r,n,neigh)
aj = zeros(n,n);
  for i = 1:n
    u = x(i);
    v = y(i);
    aj(i,i) = 0 + r;
    for j = 1:n
      s = x(j);
      t = y(j);
      [z] = eucld(u,v,s,t);
      aj(i,j) = z;
    end
  end
  for i = 1:n
    neigh{i} = find(aj(i,:) < r);
  end  
end

