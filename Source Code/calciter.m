function [p_qtarg,p_qtarg_iter,p_iter,com_iter,qtarg_iter,n_iter] = calciter(qtarg,old_qtarg,qtarg_iter,p_qtarg,p_nodes,p_iter,xy_com,com_iter,n_iter,iter)
   if(iter == 1)
     com_iter(iter,:) = xy_com;
     qtarg_iter(iter,:) = qtarg;
     p_qtarg = [0,0];
     p_qtarg_iter(iter) = 0;
     p_iter(iter,:) = 0;
     n_iter(iter) = iter;
   elseif (iter > 1)
      p_qtarg = qtarg - old_qtarg;
      p_qtarg_iter(iter) = (p_qtarg(1)^2) + (p_qtarg(2)^2);
      p_iter(iter,:) = ((p_nodes(:,1).^2) + (p_nodes(:,2).^2));
      com_iter(iter,:) = xy_com;
      qtarg_iter(iter,:) = qtarg;
      n_iter(iter) = iter;     
   end  
end

