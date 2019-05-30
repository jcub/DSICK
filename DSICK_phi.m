function u = DSICK_phi(x,p,d,c)
% This function returns (d/dx)^c phi^{p,d}(x) where
% p - the "GD" p representing the width of data, positive integer
% d - the continuity order, non-negative integer
% c - the number of spacial derivatives of phi, non-negative integer
% x - the normalized spacial variable, real valued
% This function will check if the file representing phi exists in the
% search directory ('phiData/'). If not, it will create it using 'makePhi' 
%as well as all other derivatives (0..d+1). It then copys the file 
%'phi_p%i_d%i_c%i' to 'phiTemp' and evaluates phiTemp(x). 
% returned value is u = phiTemp(x).

%% Set up fileName
fName = sprintf('phi_p%i_d%i_c%i',p,d,c);
path = 'phiData/';
fileName =  [path,fName,'.m'];
%% Use persistent variables to avoid repeated copy of file to phiTemp
persistent pp dd cc
if isempty(pp) || isempty(dd) || isempty(cc)
  pp = 0; cc = 0; dd = 0;
end
%% Check if the file was already copied. If not, check if it exists. If not make it. Then copy file
if (dd ~= d || cc ~=c || p~=pp)
  if isfile(fileName)
    copyfile(fileName, 'phiTemp.m')
    pp = p; dd = d; cc = c;
  else
    DSICK_makePhi(p,d,0);
    copyfile(fileName, 'phiTemp.m')
    pp = p; dd = d; cc = c;
  end
  
end
%% Evaluate phi
u = phiTemp(x);

%eval([ 'u = ' fName '(x);']);  
% The above line is an alternative to copying files however it results in
% slower performance.

end