function [pbeta] = phiibeta(z,r_,d_)
  [sigd] = signorm(d_);
  [sigr] = signorm(r_);
  v = z - sigd;
  sigz = v/sqrt(1 + (v^2));
  [bump] = ph(z/sigr);
  pbeta = bump * (sigz - 1);
end
 