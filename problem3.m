clc;
clear all;
close all;
A = 5;
f = 5;
t = 0:0.01:1;
x = A*sin(2*pi*f*t);
subplot(4,1,1);
plot(t,x);
title('Continuous time signal');
xlabel('time(sec)');
ylabel('Amplitude(v)');
%%After sampling discrete time signal
subplot(4,1,2);
stem(t,x);
title('Sampling');
xlabel('time(sec)');
ylabel('Amplitude(v)');
%%Dc level+discrete time signal
x1 = A+x;
subplot(4,1,3);
stem(t,x1);
title('DC level+discrete time signal');
xlabel('time(sec)');
ylabel('Amplitude(v)');
%%Quantized
x2 = round(x1);
subplot(4,1,4);
stem(t,x2);
title('Quantization');
xlabel('time(sec)');
ylabel('Amplitude(v)');
%%coding
x3 = dec2bin(x2);
disp(x3);
