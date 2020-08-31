function [qtarg] = sinew(qtarg,t,iter)
  qtarg(1) = 2 + (10 * t(iter));%50 + (50 * t(iter));
  qtarg(2) = 295 - (10 * sin(t(iter))); %(50 * sin(t(iter)));
end

