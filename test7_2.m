syms t;
f=cos(pi/2*t)*(heaviside(t+1)-heaviside(t-1));
F=fourier(f);
subplot(211);
ezplot(f);
subplot(212);
ezplot(F);