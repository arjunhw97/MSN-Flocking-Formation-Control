function [sig] = signorm(z)
epsilon = 0.1;
sig = (1/epsilon)*(sqrt(1 + (epsilon * (z^2))) - 1); 
end

