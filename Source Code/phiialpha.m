function [palph] = phiialpha(z,r,d)
  [sigd] = signorm(d);
  [sigr] = signorm(r);
  [phi] = phii(z - sigd);
  [bump] = ph(z/sigr);
  palph = bump * phi;
end

