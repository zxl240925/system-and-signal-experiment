clear all
close all
x = linspace(-5,5,50);
y = x.^3+5.^x-3.*x;
plot(x,y);
xlabel('x-axis');
ylabel('y-axis');
title('y = x^3+5^x-3*x');
axis([-6,5,-200,2800]);
figure;
x = -5:5;
y = x.^3+5.^x-3.*x;
plot(x,y);
figure;
hold on;
fplot(@(x) x.^3+5.^x-3.*x,[-5,5]);
ezplot('cos(tan(pi*x))',[0,1]);