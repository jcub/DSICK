      t2 = gi+1.0D0
      t7 = gi**2
      t8 = gi-1.0D0
      t3 = t2+1.0D0
      t9 = t8-1.0D0
      t11 = t2**2
      t14 = t8**2
      t4 = t3+1.0D0
      t10 = t9-1.0D0
      t12 = t3**2
      t15 = t9**2
      t5 = t4+1.0D0
      t13 = t4**2
      t16 = t10**2
      t6 = t5+1.0D0
      if ((-3.0D0 .LT. gi) .AND. (gi .LE. -2.0D0)) then
        t0 = t3*t4**2*t5*t6*(-1.0D0/7.2D+1)+(t3**2*t4**2*t5*t6)/7.2D+1-(
     &t2*t3**2*t4**2*t5*t6)/1.8D+2
      else if ((-2.0D0 .LT. gi) .AND. (gi .LE. -1.0D0)) then
        t0 = (t3**2*t4*t5)/2.4D+1-(t3*t4*t5)/2.4D+1+t2*t3**2*t4*t5*(5.0D
     &0/7.2D+1)-t3**2*t4*t5*t11*(5.0D0/7.2D+1)+(gi*t3**2*t4*t5*t11)/3.6D
     &+1
      else if ((-1.0D0 .LT. gi) .AND. (gi .LE. 0.0D0)) then
        t0 = (t2*t3*t4)/3.0D0-(t3*t4*t11)/6.0D0-gi*t3*t4*t11*(5.0D0/3.6D
     &+1)+t3*t4*t7*t11*(5.0D0/3.6D+1)-(t3*t4*t7*t8*t11)/1.8D+1
      else if ((0.0D0 .LT. gi) .AND. (gi .LE. 1.0D0)) then
        t0 = (t2*t3)/2.0D0-gi*t2*t3*(3.0D0/4.0D0)+(t2*t3*t7)/4.0D0+t2*t3
     &*t7*t8*(5.0D0/3.6D+1)-t2*t3*t7*t14*(5.0D0/3.6D+1)+(t2*t3*t7*t9*t14
     &)/1.8D+1
      else if ((1.0D0 .LT. gi) .AND. (gi .LE. 2.0D0)) then
        t0 = t2-gi*t2+gi*t2*t8*(2.0D0/3.0D0)-(gi*t2*t14)/6.0D0-gi*t2*t9*
     &t14*(5.0D0/7.2D+1)+gi*t2*t9**2*t14*(5.0D0/7.2D+1)-(gi*t2*t9**2*t10
     &*t14)/3.6D+1
      else if ((2.0D0 .LT. gi) .AND. (gi .LE. 3.0D0)) then
        t0 = -t8+(gi*t8)/2.0D0+(gi*t8*t9**2)/2.4D+1-gi*t8*t9*(5.0D0/2.4D
     &+1)+(gi*t8*t9**2*t10)/7.2D+1-(gi*t8*t9**2*t10**2)/7.2D+1+(gi*t8*t9
     &**2*t10**2*(t10-1.0D0))/1.8D+2
      else
        t0 = 0.0D0
      end if
      t0
