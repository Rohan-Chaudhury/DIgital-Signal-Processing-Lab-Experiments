clc;clear all;
x=[1 2 3 4 5 6 7 8 9];
N=9
n=0:N-1
n1=mod(n-3,N);
n2=mod(n+3,N);
y2=x(n2+1);
y1=x(n1+1);
subplot(3,3,1);
stem(n,x);
subplot(3,3,2);
stem(n,y1);
subplot(3,3,3);
stem(n,y2);
x1=[1 2 2 1];
x2=[1 2 3 4];
N=4;
y1=zeros(1,N);
for n=0:N-1 
    m=0:N-1
        n1=mod(n-m,N);
        xs2=x2(n1+1);
        x12=x1.*xs2;
        y1(n+1)=sum(x12);
end
n=0:N-1
subplot(3,3,4);
stem(n,y1);
   
lx1=length(x1);
lx2=length(x2);
ly=lx1+lx2-1;
zx1=[x1 zeros(1,lx2-1)];
zx2=[x2 zeros(1,lx1-1)];
y2=zeros(1,ly-1);
for g=0:ly-1 
    h=0:ly-1
        g1=mod(g-h,ly);
        gs2=zx2(g1+1);
        g12=zx1.*gs2;
        y2(g+1)=sum(g12);
end
g=0:ly-1
subplot(3,3,5);
stem(g,y2);
   
y11=cconv(x1,x2,N);
y22=cconv(zx1,zx2,ly);
subplot(3,3,6);
stem(n,y11);
subplot(3,3,7);
stem(g,y22);

x1=[2 3 4 5 2];
x2=[5 2 7 1 2];
N=5;
y=zeros(1,N);
for n=0:N-1
    m=0:N-1
 n1=mod(n-m,N);
 xs2=x2(n1+1);
 x12=x1.*xs2;
 y(n+1)=sum(x12);
 end
    
n=0:N-1;
figure(2);
subplot(2,2,1);
stem(n,y);
y1=cconv(x1,x2,N);
subplot(2,2,2);
stem(n,y1);


   
lx1=length(x1);
lx2=length(x2);
ly=lx1+lx2-1;
zx1=[x1 zeros(1,lx2-1)];
zx2=[x2 zeros(1,lx1-1)];
y2=zeros(1,ly);
for g=0:ly-1 
    h=0:ly-1
        g1=mod(g-h,ly);
        gs2=zx2(g1+1);
        g12=zx1.*gs2;
        y2(g+1)=sum(g12);
end
g=0:ly-1
subplot(2,2,3);
stem(g,y2);
y22=cconv(zx1,zx2,ly);
subplot(2,2,4);
stem(g,y22);




