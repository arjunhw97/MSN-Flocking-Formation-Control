function [qpos] = starget(x,y,qtarg,n)
 qpos = zeros(n,2);
 qpos(:,1) =  (x - qtarg(1));
 qpos(:,2) =  (y - qtarg(2));
end

