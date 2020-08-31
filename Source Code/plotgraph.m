function plotgraph(x,y,neigh,n)
  plot(x,y,'m>');
  hold on;
  for i = 1:n    
      len = length(neigh{i});
      for j = 2:len
         t = neigh{i}(j);
         plot([x(i) x(t)],[y(i) y(t)],'b');  
         hold on;
     end    
  end
  hold off;
end

