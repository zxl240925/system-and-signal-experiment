syms t;
syms w;
a=2;
f=2*a/(a*a+t.*t);
F=fourier(f);
subplot(211)
ezplot(f);
subplot(212);
ezplot(abs(F));
hold on;
