syms w;
F=pi*(heaviside(w+1)-heaviside(w-1));
f=ifourier(f);
subplot(211);
ezplot(F);
subplot(212);
ezplot(f);