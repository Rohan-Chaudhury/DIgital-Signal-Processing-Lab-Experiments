clc;
clear all;
N=5;
w=-pi:0.01:pi;
x(1,:)=sin(w*(N+0.5))./sin(w/2);

subplot(2,2,1);
plot(w/pi,abs(x(1,:)));
xlabel('normalised frequency');
ylabel('magnitude of X');

subplot(2,2,2);
plot(w/pi,angle(x(1,:)));
xlabel('normalised frequency');
ylabel('phase of X');

subplot(2,2,3);
plot(w/pi,real(x(1,:)));
xlabel('normalised frequency');
ylabel('real part of X');

subplot(2,2,4);
plot(w/pi,imag(x(1,:)));
xlabel('normalised frequency');
ylabel('imaginary part of X');