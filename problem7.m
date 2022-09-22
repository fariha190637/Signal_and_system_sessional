clc;
clear all;
close all;
f=-2:0.01:2;
x=4*sinc(4*f);

subplot(3,1,1);
plot(f,x);
xlabel('Time');
ylabel('Amplitude');
title('Real Part');
grid on;

subplot(3,1,2);
plot(f,abs(x));
xlabel('Time');
ylabel('Amplitude');
title('Magnitude Part');
grid on;

subplot(3,1,3);
plot(f,angle(x));
xlabel('Time');
ylabel('Amplitude');
title('Phase Part');
grid on;