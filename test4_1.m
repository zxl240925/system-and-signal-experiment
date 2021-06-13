clc
clear all
num = 1;
den = [6,-5,1];
subplot(211);
impz(num,den,16);
subplot(212);
stepz(num,den,16);