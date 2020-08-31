function [qtarg] = circw(qtarg,t,iter)
  qtarg(1) = 310 + (160 * cos(t(iter)));
  qtarg(2) = 255 + (160 * sin(t(iter)));
end