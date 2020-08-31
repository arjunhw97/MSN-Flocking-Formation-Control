function [bgrad] = BGBT(x,y,q_k,r_,d_,n)
   bgrad = zeros(n,2);
   [nikval] = nik(x,y,q_k,n); 
   for i = 1:n    
        [z] = eucld(q_k(i,1),q_k(i,2),x(i),y(i));
        [sig] = signorm(z);
        bgrad(i,:) = phiialpha(sig,r_,d_) * nikval(i,:);
   end    
end
