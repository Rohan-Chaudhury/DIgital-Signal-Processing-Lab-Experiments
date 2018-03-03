clc;
clearall;

n= 0:10;
x = [1 4 1 3];
ar = conv(x, fliplr(x));
stem(n, ar);
subplot(1,1,1);
