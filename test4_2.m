%????
% yNeg2 = 0.5;
% yNeg1 = 0;
% yzi0 = -3*yNeg1-2*yNeg2;
% yzi(1) = -3*yzi0-2*yNeg1;
% yzi(2) = -3*yzi(1)-2*yzi0;
% for i = 3:50
%     yzi(i) = -3*yzi(i-1)-2*yzi(i-2);
% end
% subplot(211)
% xk = 0:50;
% yzik = [yzi0,yzi];
% stem(xk,yzik,'filled');
% title('zero input');
% 
% yNeg2 = 0;
% yNeg1 = 0;
% yzs0 = 2^0 -3*yNeg1-2*yNeg2;
% yzs(1) = 2^1 -3*yzs0-2*yNeg1;
% yzs(2) = 2^2 -3*yzs(1)-2*yzs0;
% for i = 3:50
%     yzs(i) = -3*yzs(i-1)-2*yzs(i-2) + 2^i;
% end
% subplot(212)
% xk = 0:50;
% yzsk = [yzs0,yzs];
% stem(xk,yzsk,'filled');
% title('zero stagement');

%filter??
k = 0:50;
f = 2.^k;
num = 1;
den = [1 3 2];
z = filtic(num,den,[0,1/2]);
y_zi = filter(num,den,zeros(size(k)),z);
y_all = filter(num,den,zeros(size(k)),z);
y_zs = y_all - y_zi;
figure;
subplot(211);
stem(k-1,y_zi);
title('y_zi');
axis tight
subplot(212);
stem(k-1,y_zs);
title('y_zs');
axis tight