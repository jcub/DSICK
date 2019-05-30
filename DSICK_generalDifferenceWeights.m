function c = DSICK_generalDifferenceWeights( z,x,m )
% This is a function for calculating the generalized finite difference
% weights for up to the mth derivative at z using points x.
% z = point of interest,         
% x = points of grid
% m = max number of derivs
% return c = (len(x),m+1)
% https://doi.org/10.1090/S0025-5718-1988-0935077-0 
% and 
% Classroom Note:Calculation of Weights in Finite Difference Formulas
% SIAM Review [0036-1445] Fornberg yr:1998 vol:40 iss:3 pg:685 -691
% PII: S0036144596322507


c1 = 1;
c4 = x(1)-z;

n = length(x)-1;
c = zeros(n+1,m+1);

c(1,1) = 1;
for i = 1:n 
  mn = min(i,m);
  c2 = 1;
  c5 = c4;

  c4 = x(i+1)-z;
  for j =0:i-1
    c3 = x(i+1)-x(j+1);
    c2 = c2*c3;
    if (j == (i-1) ) 
      for k = mn:-1:1
        c(i+1,k+1) = c1*(k*c(i-1+1,k-1+1)-c5*c(i-1+1,k+1))/c2;
      end
      c(i+1,0+1) = -c1*c5*c(i-1+1,1)/c2;
    end

    for k = mn:-1:1
      c(j+1,k+1) = (c4*c(j+1,k+1)-k*c(j+1,k-1+1))/c3;
    end
    c(j+1,1) = c4*c(j+1,1)/c3;
  end
  c1 = c2; 
end

return
end

