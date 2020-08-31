function [phi] = phii(z)
 a = 5;
 b = 5;
 c = (a - b)/sqrt(4 * a * b);
 z = z + c;
 sigz = z/sqrt(1 + (z^2));
 phi = 1/2 *(((a + b) * sigz) + (a - b));
end

