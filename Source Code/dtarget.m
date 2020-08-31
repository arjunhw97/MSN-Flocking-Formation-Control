function [qpos,qvel] = dtarget(x,y,p_nodes,qtarg,p_qtarg,n)
 qpos = zeros(n,2);
 qvel = p_nodes - p_qtarg;
 qpos(:,1) =  (x - qtarg(1));
 qpos(:,2) =  (y - qtarg(2));
end

