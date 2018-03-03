clc;
clear all;
w = 0:0.001:1;
num = [1 2];
den = [1 -3 -4];
xw = freqz(num,den,w);
magx = abs(xw);
phasex = angle(xw);

stem(xw);
subplot(3,1,1);
xlabel('w');
ylabel('xw');

stem(magx);
subplot(3,1,2);
xlabel('w');
ylabel('magx');

stem(phasex);
subplot(3,1,3);
xlabel('w');
ylabel('phasex');
