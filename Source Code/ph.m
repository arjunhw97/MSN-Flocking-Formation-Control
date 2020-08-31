function [bump] = ph(z)
h = 0.2;

if(z >= 0 && z< h)
    bump = 1;
elseif(z >= h && z <= 1)
    bump = (1/2) * (1 + cos((3.14)*((z-h)/(1-h))));
else
    bump = 0;
end    

end

