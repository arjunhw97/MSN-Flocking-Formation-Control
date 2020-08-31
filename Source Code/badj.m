function [bdj] = badj(q_k,x,y,d_,n)
bdj = zeros(n,1);
   for i = 1:n    
     [z] = eucld(x(i),y(i),q_k(i,1),q_k(i,2));
     [sig] = signorm(z);
     [sigd] = signorm(d_);
     bdj(i) = ph(sig/sigd);    
   end
end

