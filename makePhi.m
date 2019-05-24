function phiOut = makePhi(p,d,c)
% This function generates files of the form phi_p%i_d%i_c%i
% these files are callable as functions representing (d/dx)^c phi^{p,d}(x)
% with
% p - GD "p", positive integer
% d - the continoutiy order, non-negative integer
% c - the number of derivatives (0..d+1), non-negative integer
% and x the normalized spacial variable.
% As calculating phi is expensive,
% for c=0, derivatives up to d+1 are calculated and stored.
% for c~=0, only the cth derivative is stored.
% Finnally, the returned variable is a symbolic function, phiOut.
% representing (d/dx)^c phi^{p,d}(x)


%% First generate hermite basis functions using divided differences
% (modification of https://en.wikipedia.org/wiki/Hermite_interpolation)
Nips = p+1;
w = (p-1)/2;
x = [];
for ii=(-ceil((1/2)*Nips)+1):ceil((1/2)*Nips)
  x = [x, ii];
end
xIndSh = min(x)-1;   % shift the x index so things are positive.
xa = min(x); xb=max(x);
Np = length(x);
Nr = 2*d+Np;
zi = [];
for ix=1:Np
  zi = [zi,x(ix)];
  Nd(x(ix)-xIndSh)= 0;
  if x(ix) == 0 || x(ix)==1
    for id = 1:d 
      zi = [zi,x(ix)];
    end
    Nd(x(ix)-xIndSh)= d;
  end
end
%create symbolic f's we will need
for i = 0:d
F(:,i+1) = sym(sprintf('f%03d',i),[1,Np]);   %% the 3 here limits it to 999 contOrd
end

yz = cell(1,d+1);
yza = [];
for ii=1:Nr
  j = zi(ii);
  yza = [yza,F(j-xIndSh,0+1)];
end
yz{1,1} = yza;

for id=1:d
  yza = [];
  for ii=0:1
    yza = [yza,F(ii-xIndSh,id+1)];
  end
  yz{1,id+1} = yza ;
end

A = sym(zeros(Nr,Nr));
for ij = 1:Nr
  for ii = 1:Nr
    if  ij<=1 && zi(ii) == zi(ii-ij+1)   % do not swap the order of this logic
      A(ii,ij) = yz{ij}(ii)/factorial(ij-1);
    elseif ij<=d+1 && ii>ij && zi(ii) == zi(ii-ij+1)
      A(ii,ij) = yz{ij}(zi(ii)+1)/factorial(ij-1);
    elseif ii>=ij
      A(ii,ij) = (A(ii,ij-1) - A(ii-1,ij-1))/(zi(ii) - zi(ii-ij+1));
    end
  end
end
A;


syms z gi;
Px = 0;
for ik=1:Nr
  pp = 1;
  for ikk = 1:ik-1
    pp = pp*(z-zi(ikk));
  end
  Px = Px + A(ik,ik)*pp;
end
P = simplify(Px);
Hb = sym(zeros(Np,d+1));
for il = -ceil((1/2)*Nips)+1:ceil((1/2)*Nips)
for id = 0:d
  Hb(il+ceil((1/2*Nips)),id+1) = diff(P,F(il-xIndSh,id+1));
end
end

%% Generate symbolic phi using formula from paper.
a = -w-1; b=-a;
xi = a+1:b-1;
deltas = generalDifferenceWeights(0,xi,d);

lH = -Nips/2+1; rH = Nips/2;
phiI = 0;
for k = -rH-1:rH
  a = 0;
  for i=max(-k-w,lH):min(-k+w,rH)
    for j=0:d
      a = a + deltas(-(k+i)+1+w,j+1)*Hb(i+Nips/2,j+1);
    end
  end
  a = subs(a,z,gi-k);
  phiI = phiI + piecewise((k<gi & gi<=k+1),a,0);
end

%% Write out results to files.
fileName = sprintf('phiData/phi_p%i_d%i_c%i',p,d,c)

if c == 0
  phiOut = phiI;
  mPhi = matlabFunction(phiOut,'vars',gi,'file',[fileName,'.m']);
  %fortran(phiOut,'File',[fileName,'.f']);
  for c = 1:d+1
    fileName = sprintf('phiData/phi_p%i_d%i_c%i',p,d,c)
    phiOut = diff(phiI,gi,c);
    mPhi = matlabFunction(phiOut,'vars',gi,'file',fileName);
  end
  phiOut = phiI;
else
  phiOut = diff(phiI,gi,c);
  mPhi = matlabFunction(phiOut,'vars',gi,'file',fileName);
end
end