function phiOut = phi_p5_d1_c2(gi)
%PHI_P5_D1_C2
%    PHIOUT = PHI_P5_D1_C2(GI)

%    This function was generated by the Symbolic Math Toolbox version 8.3.
%    12-Apr-2019 11:06:26

t2 = gi.*2.0;
t3 = gi+1.0;
t8 = gi.^2;
t9 = gi-1.0;
t4 = t3+1.0;
t10 = t9-1.0;
t13 = t2+2.0;
t16 = t3.^2;
t19 = t2-2.0;
t22 = t9.^2;
t5 = t4+1.0;
t11 = t10-1.0;
t14 = t13+2.0;
t17 = t4.^2;
t20 = t19-2.0;
t23 = t10.^2;
t6 = t5+1.0;
t12 = t11-1.0;
t15 = t14+2.0;
t18 = t5.^2;
t21 = t20-2.0;
t24 = t11.^2;
t7 = t6+1.0;
if ((gi < -2.0) & (-3.0 < gi))
    phiOut = (t4.^2.*t5.^2)./3.6e+1-(t4.*t5.^2)./3.6e+1-(t5.^2.*t6)./3.6e+1-(t5.^2.*t7)./3.6e+1+(t4.^2.*t6.*t7)./3.6e+1+(t5.^2.*t6.*t7)./3.6e+1+(t4.^2.*t6.*t15)./3.6e+1+(t5.^2.*t6.*t14)./3.6e+1+(t4.^2.*t7.*t15)./3.6e+1+(t5.^2.*t7.*t14)./3.6e+1-(t3.*t4.^2.*t5.^2)./9.0e+1-(t4.^2.*t5.^2.*t6)./9.0e+1-(t4.^2.*t5.^2.*t7)./9.0e+1-(t4.*t6.*t7)./3.6e+1-(t4.*t6.*t15)./3.6e+1-(t4.*t7.*t15)./3.6e+1-(t6.*t7.*t15)./3.6e+1+(t6.*t7.*t14.*t15)./3.6e+1-(t3.*t4.^2.*t6.*t7)./9.0e+1-(t3.*t5.^2.*t6.*t7)./9.0e+1-(t3.*t4.^2.*t6.*t15)./9.0e+1-(t3.*t5.^2.*t6.*t14)./9.0e+1-(t3.*t4.^2.*t7.*t15)./9.0e+1-(t3.*t5.^2.*t7.*t14)./9.0e+1-(t4.^2.*t6.*t7.*t15)./9.0e+1-(t5.^2.*t6.*t7.*t14)./9.0e+1-(t3.*t6.*t7.*t14.*t15)./9.0e+1;
elseif ((gi < -1.0) & (-2.0 < gi))
    phiOut = gi.*(-1.0./4.0)+(t5.*t6)./1.2e+1+(t5.*t14)./1.2e+1+(t6.*t14)./1.2e+1+t3.*t4.^2.*(5.0./3.6e+1)+t4.^2.*t5.*(5.0./3.6e+1)+t4.^2.*t6.*(5.0./3.6e+1)-t4.^2.*t16.*(5.0./3.6e+1)+t4.^2./1.2e+1+(gi.*t4.^2.*t16)./1.8e+1-t4.^2.*t5.*t6.*(5.0./3.6e+1)-t4.^2.*t5.*t13.*(5.0./3.6e+1)-t4.^2.*t6.*t13.*(5.0./3.6e+1)+(t4.^2.*t5.*t16)./1.8e+1+(t4.^2.*t6.*t16)./1.8e+1+t3.*t5.*t6.*(5.0./3.6e+1)+t3.*t5.*t14.*(5.0./3.6e+1)+t3.*t6.*t14.*(5.0./3.6e+1)+t5.*t6.*t14.*(5.0./3.6e+1)-t5.*t6.*t16.*(5.0./3.6e+1)-t5.*t14.*t16.*(5.0./3.6e+1)-t6.*t14.*t16.*(5.0./3.6e+1)+(gi.*t5.*t6.*t16)./1.8e+1+(gi.*t5.*t14.*t16)./1.8e+1+(gi.*t6.*t14.*t16)./1.8e+1-t5.*t6.*t13.*t14.*(5.0./3.6e+1)+(t5.*t6.*t14.*t16)./1.8e+1+(gi.*t4.^2.*t5.*t6)./1.8e+1+(gi.*t4.^2.*t5.*t13)./1.8e+1+(gi.*t4.^2.*t6.*t13)./1.8e+1+(t4.^2.*t5.*t6.*t13)./1.8e+1+(gi.*t5.*t6.*t13.*t14)./1.8e+1-3.0./4.0;
elseif ((gi < 0.0) & (-1.0 < gi))
    phiOut = t14-t16./3.0-gi.*t16.*(5.0./1.8e+1)-(t4.*t5)./3.0-(t4.*t13)./3.0-(t5.*t13)./3.0-t4.*t16.*(5.0./1.8e+1)-t5.*t16.*(5.0./1.8e+1)+t8.*t16.*(5.0./1.8e+1)-gi.*t4.*t5.*(5.0./1.8e+1)-gi.*t4.*t13.*(5.0./1.8e+1)-gi.*t5.*t13.*(5.0./1.8e+1)+gi.*t4.*t16.*(5.0./9.0)+gi.*t5.*t16.*(5.0./9.0)+t4.*t5.*t8.*(5.0./1.8e+1)-t4.*t5.*t13.*(5.0./1.8e+1)+t4.*t5.*t16.*(5.0./1.8e+1)+t4.*t8.*t13.*(5.0./1.8e+1)+t5.*t8.*t13.*(5.0./1.8e+1)-(t4.*t8.*t16)./9.0-(t5.*t8.*t16)./9.0-(t8.*t9.*t16)./9.0+gi.*t4.*t5.*t13.*(5.0./9.0)-gi.*t4.*t5.*t16.*(2.0./9.0)-gi.*t4.*t9.*t16.*(2.0./9.0)-gi.*t5.*t9.*t16.*(2.0./9.0)-(t4.*t5.*t8.*t9)./9.0-(t4.*t5.*t8.*t13)./9.0-(t4.*t5.*t9.*t16)./9.0-(t4.*t8.*t9.*t13)./9.0-(t5.*t8.*t9.*t13)./9.0-gi.*t4.*t5.*t9.*t13.*(2.0./9.0);
elseif ((0.0 < gi) & (gi < 1.0))
    phiOut = gi.*(-9.0./2.0)+t8./2.0+gi.*t3+gi.*t4+(t3.*t4)./2.0+t3.*t8.*(5.0./1.8e+1)+t4.*t8.*(5.0./1.8e+1)+t8.*t9.*(5.0./1.8e+1)-t8.*t22.*(5.0./1.8e+1)+gi.*t3.*t4.*(5.0./9.0)+gi.*t3.*t9.*(5.0./9.0)+gi.*t4.*t9.*(5.0./9.0)-gi.*t3.*t22.*(5.0./9.0)-gi.*t4.*t22.*(5.0./9.0)-t3.*t4.*t8.*(5.0./1.8e+1)+t3.*t4.*t9.*(5.0./1.8e+1)-t3.*t4.*t22.*(5.0./1.8e+1)-t3.*t8.*t19.*(5.0./1.8e+1)-t4.*t8.*t19.*(5.0./1.8e+1)+(t3.*t8.*t22)./9.0+(t4.*t8.*t22)./9.0+(t8.*t10.*t22)./9.0-gi.*t3.*t4.*t19.*(5.0./9.0)+gi.*t3.*t4.*t22.*(2.0./9.0)+gi.*t3.*t10.*t22.*(2.0./9.0)+gi.*t4.*t10.*t22.*(2.0./9.0)+(t3.*t4.*t8.*t10)./9.0+(t3.*t4.*t8.*t19)./9.0+(t3.*t4.*t10.*t22)./9.0+(t3.*t8.*t10.*t19)./9.0+(t4.*t8.*t10.*t19)./9.0+gi.*t3.*t4.*t10.*t19.*(2.0./9.0)-7.0./2.0;
elseif ((1.0 < gi) & (gi < 2.0))
    phiOut = gi.*2.0+t9.*2.0-t22./3.0-(gi.*t3)./3.0-(gi.*t19)./3.0-gi.*t22.*(5.0./3.6e+1)-(t3.*t19)./3.0-t3.*t22.*(5.0./3.6e+1)-t10.*t22.*(5.0./3.6e+1)+t10.^2.*t22.*(5.0./3.6e+1)+gi.*t3.*t10.^2.*(5.0./3.6e+1)+gi.*t10.^2.*t19.*(5.0./3.6e+1)-(gi.*t10.^2.*t22)./1.8e+1+t3.*t10.^2.*t19.*(5.0./3.6e+1)-(t3.*t10.^2.*t22)./1.8e+1-(t10.^2.*t11.*t22)./1.8e+1-gi.*t3.*t10.*(5.0./3.6e+1)-gi.*t3.*t19.*(5.0./3.6e+1)+gi.*t3.*t22.*(5.0./3.6e+1)-gi.*t10.*t19.*(5.0./3.6e+1)+gi.*t20.*t22.*(5.0./3.6e+1)-t3.*t10.*t19.*(5.0./3.6e+1)+t3.*t20.*t22.*(5.0./3.6e+1)-(gi.*t3.*t11.*t22)./1.8e+1+gi.*t3.*t19.*t20.*(5.0./3.6e+1)-(gi.*t3.*t20.*t22)./1.8e+1-(gi.*t11.*t20.*t22)./1.8e+1-(t3.*t11.*t20.*t22)./1.8e+1-(gi.*t3.*t10.^2.*t11)./1.8e+1-(gi.*t3.*t10.^2.*t19)./1.8e+1-(gi.*t10.^2.*t11.*t19)./1.8e+1-(t3.*t10.^2.*t11.*t19)./1.8e+1-(gi.*t3.*t11.*t19.*t20)./1.8e+1;
elseif ((2.0 < gi) & (gi < 3.0))
    phiOut = gi.*(-5.0./4.0)-(t10.^2.*t11.^2)./3.6e+1+(gi.*t9)./1.2e+1+(gi.*t20)./1.2e+1+(t9.*t20)./1.2e+1+(gi.*t10.^2)./3.6e+1+(t9.*t10.^2)./3.6e+1+(t10.^2.*t11)./3.6e+1+t10.^2./1.2e+1-(gi.*t9.*t10.^2)./3.6e+1-(gi.*t9.*t11.^2)./3.6e+1-(gi.*t10.^2.*t21)./3.6e+1-(gi.*t11.^2.*t20)./3.6e+1-(t9.*t10.^2.*t21)./3.6e+1-(t9.*t11.^2.*t20)./3.6e+1+(gi.*t10.^2.*t11.^2)./9.0e+1+(t9.*t10.^2.*t11.^2)./9.0e+1+(t10.^2.*t11.^2.*t12)./9.0e+1+(gi.*t9.*t11)./3.6e+1+(gi.*t9.*t20)./3.6e+1+(gi.*t11.*t20)./3.6e+1+(t9.*t11.*t20)./3.6e+1-(gi.*t9.*t20.*t21)./3.6e+1+(gi.*t9.*t10.^2.*t12)./9.0e+1+(gi.*t9.*t11.^2.*t12)./9.0e+1+(gi.*t9.*t10.^2.*t21)./9.0e+1+(gi.*t9.*t11.^2.*t20)./9.0e+1+(gi.*t10.^2.*t12.*t21)./9.0e+1+(gi.*t11.^2.*t12.*t20)./9.0e+1+(t9.*t10.^2.*t12.*t21)./9.0e+1+(t9.*t11.^2.*t12.*t20)./9.0e+1+(gi.*t9.*t12.*t20.*t21)./9.0e+1+9.0./4.0;
else
    phiOut = 0.0;
end
