clc,clear all;
alpha = 0.671200;
gamma = 0.9;
act = 4;
nc = 4;
calc = zeros(act,1);
cent = zeros(nc,2);
cent(:,1) = [2 4 2 4];
cent(:,2) = [2 2 4 4];
rad = 1.67111;
n = 100;
theta = zeros(1,(nc*act));
n_steps2 = zeros(n,1);
n_i2 = zeros(n,1);

for i = 1:n
    x = 0.5; y = 5.5; 
    n_i2(i) = i;
    while(x ~= 5.5 || y ~= 0.5)
        n_steps2(i) = n_steps2(i) + 1;
        phii = zeros(1,(nc*act));
       [calc] = getmax(x,y,theta,phii,cent,rad,calc,act,nc);
       [val,a] = max(calc);
       [x1,y1,r] = upd(x,y,a);
       if(r == -3)
         x1 = x;
         y1 = y;
       end
       [calc] = getmax(x1,y1,theta,phii,cent,rad,calc,act,nc);
       [val2,a] = max(calc);
       [phii] = getphii(x,y,phii,cent,rad,a,act,nc);
       theta = theta + (alpha * (r + (gamma * (val2)) - val) * phii);  
       x = x1;
       y = y1;
    end    
end

figure(1)
plot(n_i2,n_steps2)

%Start from here
clc,clear all;
alpha = 0.671200;
gamma = 0.9;
act = 4;
nc = 9;
calc = zeros(act,1);
cent = zeros(nc,2);
cent(:,1) = [1 3 5 1 3 5 1 3 5];
cent(:,2) = [1 1 1 3 3 3 5 5 5];
rad = 1.67111;
n = 100;
theta = zeros(1,(nc*act));
n_steps2 = zeros(n,1);
n_i2 = zeros(n,1);

for i = 1:n
    x = 0.5; y = 5.5; 
    n_i2(i) = i;
    while(x ~= 5.5 || y ~= 0.5)
        n_steps2(i) = n_steps2(i) + 1;
        phii = zeros(1,(nc*act));
       [calc] = getmax(x,y,theta,phii,cent,rad,calc,act,nc);
       [val,a] = max(calc);
       [x1,y1,r] = upd(x,y,a);
       if(r == -3)
         x1 = x;
         y1 = y;
       end
       [calc] = getmax(x1,y1,theta,phii,cent,rad,calc,act,nc);
       [val2,a] = max(calc);
       [phii] = getphii(x,y,phii,cent,rad,a,act,nc);
       theta = theta + (alpha * (r + (gamma * (val2)) - val) * phii);  
       x = x1;
       y = y1;
    end    
end
figure(2)
plot(n_i2,n_steps2)


%End here
function [calc] = getmax(x,y,theta,phii,cent,rad,calc,act,nc)    
   for k = 1:act
      [phii] = getphii(x,y,phii,cent,rad,k,act,nc);
      calc(k) = phii * theta';
      phii = zeros(1,(nc*act));
   end
   
end

function [phii] = getphii(x,y,phii,cent,rad,a,act,nc)
   p = ((act*a)-act) + 1;
   [x1,y1,r] = upd(x,y,a);
   for j = 1:nc 
      [z] = eucld(x1,y1,cent(j,1),cent(j,2)); 
      phii(p) = exp(-((z/sqrt(2 * rad))^2)); 
      p = p + 1;
   end 
end


function [x1,y1,r] = upd(x,y,a)
  if(a == 1)
      x1 = x;
      y1 = y + 1;
  elseif(a == 2)
      x1 = x;
      y1 = y - 1;
  elseif(a == 3)
      x1 = x + 1;
      y1 = y;
  else
      x1 = x - 1;   
      y1 = y;
  end     
  
  if(x1 > 6 || x1 < 0 || y1 > 6 || y1 < 0)
     r = -3;
  elseif(x1 == 5.5 && y1 == 0.5)
     r = 100;
  else
     r = -1;
  end

end













