function phiOut = phi_p5_d1_c0(gi)
%PHI_P5_D1_C0
%    PHIOUT = PHI_P5_D1_C0(GI)

%    This function was generated by the Symbolic Math Toolbox version 8.3.
%    12-Apr-2019 11:06:25

t2 = gi+1.0;
t7 = gi.^2;
t8 = gi-1.0;
t3 = t2+1.0;
t9 = t8-1.0;
t11 = t2.^2;
t14 = t8.^2;
t4 = t3+1.0;
t10 = t9-1.0;
t12 = t3.^2;
t15 = t9.^2;
t5 = t4+1.0;
t13 = t4.^2;
t16 = t10.^2;
t6 = t5+1.0;
if ((-3.0 < gi) & (gi <= -2.0))
    phiOut = t3.*t4.^2.*t5.*t6.*(-1.0./7.2e+1)+(t3.^2.*t4.^2.*t5.*t6)./7.2e+1-(t2.*t3.^2.*t4.^2.*t5.*t6)./1.8e+2;
elseif ((-2.0 < gi) & (gi <= -1.0))
    phiOut = (t3.^2.*t4.*t5)./2.4e+1-(t3.*t4.*t5)./2.4e+1+t2.*t3.^2.*t4.*t5.*(5.0./7.2e+1)-t3.^2.*t4.*t5.*t11.*(5.0./7.2e+1)+(gi.*t3.^2.*t4.*t5.*t11)./3.6e+1;
elseif ((-1.0 < gi) & (gi <= 0.0))
    phiOut = (t2.*t3.*t4)./3.0-(t3.*t4.*t11)./6.0-gi.*t3.*t4.*t11.*(5.0./3.6e+1)+t3.*t4.*t7.*t11.*(5.0./3.6e+1)-(t3.*t4.*t7.*t8.*t11)./1.8e+1;
elseif ((0.0 < gi) & (gi <= 1.0))
    phiOut = (t2.*t3)./2.0-gi.*t2.*t3.*(3.0./4.0)+(t2.*t3.*t7)./4.0+t2.*t3.*t7.*t8.*(5.0./3.6e+1)-t2.*t3.*t7.*t14.*(5.0./3.6e+1)+(t2.*t3.*t7.*t9.*t14)./1.8e+1;
elseif ((1.0 < gi) & (gi <= 2.0))
    phiOut = t2-gi.*t2+gi.*t2.*t8.*(2.0./3.0)-(gi.*t2.*t14)./6.0-gi.*t2.*t9.*t14.*(5.0./7.2e+1)+gi.*t2.*t9.^2.*t14.*(5.0./7.2e+1)-(gi.*t2.*t9.^2.*t10.*t14)./3.6e+1;
elseif ((2.0 < gi) & (gi <= 3.0))
    phiOut = -t8+(gi.*t8)./2.0+(gi.*t8.*t9.^2)./2.4e+1-gi.*t8.*t9.*(5.0./2.4e+1)+(gi.*t8.*t9.^2.*t10)./7.2e+1-(gi.*t8.*t9.^2.*t10.^2)./7.2e+1+(gi.*t8.*t9.^2.*t10.^2.*(t10-1.0))./1.8e+2;
else
    phiOut = 0.0;
end
