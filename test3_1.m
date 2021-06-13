clc
clear all
t = 1:10;
num = [1,2,3];
den = [1,5,6];
subplot(221);
step(num,den,t);
title('step');
subplot(222);
h = dirac(t) + (3.* exp(-1*2.*t)-6.*exp(-1*3.*t)).*heaviside(t);
plot(t,h);
title('step_real');
subplot(223);
impulse(num,den,t);
title('impulse');
