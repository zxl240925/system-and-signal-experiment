t_start = -20;
t_end = 20;
t_step = 0.01;
t1=t_start:t_step:t_end;
t2=t1;
y1=sin(2.*t1);
y2=heaviside(t2)-heaviside(t2-3);
exp1_sconv4(y1,y2,t1,t2,t_step);