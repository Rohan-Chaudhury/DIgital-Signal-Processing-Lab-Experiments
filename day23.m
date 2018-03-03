clc;
clear all;
x=[1 2 1 1];
h=[1 -1 1 -1];
x1=[1 4 1 3];
lx=length(x);
lh=length(h);
N=lx+lh-1;
n=0:N-1;
y=conv(x,h);
y1=xcorr(x,h);
y0=xcorr(x1,x1);
y2=fliplr(conv(h,fliplr(x)));
y3=conv(x1,fliplr(x1));
disp(y);
disp(y1);
disp(y0);
disp(y2);
disp(y3);
subplot(2,3,1);
stem(n,y);
subplot(2,3,2);
stem(n,y1);
subplot(2,3,3);
stem(n,y0);
subplot(2,3,4);
stem(n,y2);
subplot(2,3,5);
stem(n,y3);

