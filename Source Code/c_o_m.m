function [xy_com] = c_o_m(x,y,n)
  xy_com = zeros(1,2);
  xy_com(1) = sum(x)/n;
  xy_com(2) = sum(y)/n;
end

