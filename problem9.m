clc;
close all;
clear all;
f=100;
t=1/f;
t1=0:t/100:t;
a=5;
y=a*sin(2*pi*f*t1);
subplot(2,1,1);
plot(y);

Am=1;
fm=5;
t=0:0.001:1;
Wm=2*pi*fm;
msg_sig=Am*sin(Wm*t);
subplot(2,1,2);
plot(t,msg_sig);