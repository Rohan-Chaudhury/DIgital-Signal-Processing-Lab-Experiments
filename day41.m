w=0:0.01:pi;
num=[1 -1];
den=[1 0.25];
xw=freqz(num,den,w);
magx=abs(xw);
phasex=angle(xw);
subplot(3,3,1);
plot(w/pi,magx);
title('Magnitude Response 1');
xlabel('w/pi');
ylabel('magx');
subplot(3,3,2);
plot(w/pi,phasex);
title('Phase Response 1');
xlabel('w/pi');
ylabel('phasex');

num=[1 0 0.9];
den=[1 0 0.4];
xw=freqz(num,den,w);
magx=abs(xw);
phasex=angle(xw);
subplot(3,3,3);
plot(w/pi,magx);
title('Magnitude Response 2');
xlabel('w/pi');
ylabel('magx');
subplot(3,3,4);
plot(w/pi,phasex);
title('Phase Response 2');
xlabel('w/pi');
ylabel('phasex');
num=[1];
den=[1 -0.9];
subplot(3,3,5);
xz=zplane(num,den);
title('Poles and zeroes from Z transform');

num=[1];
den=[1 -0.8];
x=(n>=0)-(n>=10);
n=0:1:50;
y=filter(num,den,x);
subplot(3,3,6);
stem(n,y);
title('FT');
xlabel('n');
ylabel('y');

w=0:0.001:pi;
a=0.8;
n=0:1:50
x1=(n>=0);
x2=(n>=10);
x=x1-x2;
num=[1 0]
den=[1 -a]
xw=filter(num,den,x);
subplot(3,3,7);
stem(n,xw);
title('FT');
xlabel('n');
ylabel('y');

