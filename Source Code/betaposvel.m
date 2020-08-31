function [q_k,p_k] = betaposvel(yk,Kr,x,y,p_nodes,n)
  q_k = zeros(n,2);
  I = eye(n);
  z_dist = zeros(n,1);
  for i = 1:n
      z_dist(i) = eucld(x(i),y(i),yk(1),yk(2));
  end
  myu = Kr./z_dist;
  ak = [x - yk(1),y - yk(2)];
  P = I - (ak * ak');
  p_k = P * p_nodes;
  for i = 1:n
     p_k = myu(i) * p_k;
     q_k(i,:) = (myu(i) * [x(i),y(i)]) + ((1 - myu(i)) * yk);
  end       
end

