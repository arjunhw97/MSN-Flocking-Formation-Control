function plotgraphtargobs(x,y,neigh,n,qtarg,yk,Kr)
  phi = 0:.1:2*pi;
  u = Kr * cos(phi);
  v = Kr * sin(phi);
  plot(u + yk(1),v + yk(2),'r');%,x,y,'m>')  
  fill(u + yk(1),v + yk(2),'r')
  hold on;
  plot(x,y,'m>');
  hold on;
  plot(qtarg(1),qtarg(2),'r.','MarkerSize',20);
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

