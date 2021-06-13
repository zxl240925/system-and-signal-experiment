t=0:0.01:5;
t1=t;
y1 = exp(-3.*t).*heaviside(t);
y2 = exp(-2.*t1).*heaviside(t1);
exp1_sconv4(y1,y2,t,t1,0.01);