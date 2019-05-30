function ut = DSICK_evalU(u,xjs,p,d,c,xs,iBCLeft, iBCRight)
% interpolates data u at points xj using (d/dx)^c phi^{p,d} for all points
% xs.  Boundary conditions are specified using left and right conditions.
% Example of usage:
% xcourse = 0:.1:10; xfine = 0:.01:10;
% ux = DSICK_evalU(sin(.5*pi*xcourse),xcourse,5,1,0,xfine,[0,2],[0,2]);
% plot(xfine,ux)


Displacement = 0; % Displacement condition is a dirichlet condition
% some common beam bcs
% Free = [2,3];
% Fixed = [0,1];
% Simply = [0,2];
% Sliding = [1,3];


m = (p+1)/2;
Nx = length(xs);
Nxj = length(xjs);
h = xjs(2)-xjs(1);
ng = (p-1)/2;
extrapOrd = p+1;

xa = xjs(1);
xb = xjs(Nxj);

% reintroduce ghost points
ia = 1+ng;
ib = ia+Nxj-1;
uj = zeros(1,Nxj+2*ng);
uj(ia:ib) = u;

ut = zeros(size(xs));

phij = @(x,xj) DSICK_phi((x-xj)/h,p,d,c);
%phij = @(x,xj) phi((x-xj)/h,p);

%% fill in ghost data
if any(iBCLeft == Displacement)
  %d = 1;  %set one condition
  d = length(iBCLeft)-1;  %% set 1 less condition
else
  d = length(iBCLeft); 
end
weights = DSICK_getDCompatCoeffs( d, ng, p, extrapOrd, iBCLeft);
nw = length(weights);

% Fill in left ghost values using DCompat
for ig = 1:ng
  for iw = 2:nw-ng+ig
    uj(ia-ig) = uj(ia-ig) - weights(ng-ig+1,ia-ig+iw-1)*uj(ia-ig+iw-1);
  end
end


if any(iBCRight == Displacement)
  d = length(iBCRight)-1;  %set one condition
else
  d = length(iBCRight); 
end
weights = DSICK_getDCompatCoeffs( d, ng, p, extrapOrd, iBCRight);

% Fill in right ghost values
for ig = 1:ng
  for iw = 2:nw-ng+ig
    uj(ib+ig) = uj(ib+ig) - weights(ng-ig+1,ia-ig+iw-1)*uj(ib+ig-iw+1);
  end
end

xjs = linspace(xa-h*ng,xb+h*ng,Nxj+2*ng);
u = uj;
%% calculate points
for ix = 1:Nx
    j = find(((xs(ix) - xjs)<=h) & ((xs(ix) - xjs)>=0));
    % Sometimes rounding causes no results. This is usually at a grid point
    % thus check if empty then check if we are near a point.
    if isempty(j)  
      j = find(abs(xs(ix)-xjs)<=10^-9);
    end
    if isempty(j)
      'error in evalU 1'
    end
    if length(j)>=1
      if any(j <= ia)
        j = ia;
      elseif any(j >= ib)
        j = ib-1;
      else
       j = j(1);
      end
    end
    if length(j) > 1
      'ERROR in evalU 2'
      ut(ix) = -1000002;
      return
    end
    jrange = j-m+1:j+m;
    utmp = 0;
    for ij = jrange
      utmp = utmp + u(ij)*phij(xs(ix),xjs(ij));
    end
    ut(ix) = utmp(1);
%   end

end