function weights = getDCompatCoeffs( d, nGhost, p, extrapOrd,BCD)
% used for getting some number of compatibility conditions. d is the number
% of compatibility conditions to use (do not include a displacement
% condition). nGhost, the number of ghost points, p - "GD" p, extrapOrd -
% order of extrapolation to use. BCD - array of boundary conditions at the
% current location (i.e. [2,3] for a free end of a beam).
% example of usage
% weights = getDCompatCoeffs(3, 9, 19, 20, [0,2,4,6])
% the returned value is reduced to an upper triangular matrix of
% coefficients.


if d == length(BCD)-1
  iid = 1;
else
  iid = 0;
end

ng = nGhost;

ew = getExtrapCoeffs( extrapOrd );
nw = length(ew);

weights = zeros(nGhost,ng+nw);

ne = ng-d;
for ig = 1:ne
  weights(ig,ig:ig+nw-1) = ew;
  weights(ig,ig+1:end) = -weights(ig,ig+1:end);
end

iBC = ng + 1;
%id = 0;
for ig = ne+1:ng
  iid = iid+1;
  id = BCD(iid);
  dw = generalDifferenceWeights(0,-(p-1)/2:(p-1)/2,id);
  nw = length(dw);
  weights(ig,iBC-(nw-1)/2:iBC+(nw-1)/2) = dw(:,id+1);
  weights(ig,ig) = weights(ig,ig);
  weights(ig,:) = weights(ig,:)./weights(ig,ig);
end

weights(1,:) = weights(1,:)./weights(1,1);
for i = 1:ng-1
  ri = weights(i,:);
  for j = i+1:ng
    weights(j,:) = weights(j,:) - weights(j,i)*ri;
    weights(j,:) = weights(j,:)./weights(j,j);
  end
end

end