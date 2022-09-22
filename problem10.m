clc;
close all;
t = -20:1:20;

unitstep = t>=0;
impulse = t==0;
unitramp = t.*unitstep;

subplot(3,1,1);
stem(t,unitstep);
xlabel('Time');
ylabel('Amplitude');
title('Unitstep Discrete Time ');
grid on;
ylim([0,2]);
 
subplot(3,1,2);
stem(t,impulse);
grid on;
xlabel('Time');
ylabel('Amplitude');
title('impulse Discrete Time ');

subplot(3,1,3);
stem(t,unitramp);
grid on;
xlabel('Time');
ylabel('Amplitude');
title('Unitramp Discrete Time ');