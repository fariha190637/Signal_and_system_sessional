clc;
close all;
clear all;

figure(1);
x = [1 2 3 4];
n1 = -2:1;
subplot(3,1,1);
stem(n1,x);
xlabel('n');
ylabel('x1(n)');
title('X1(n)');
axis([-8 10 -2 5]);
grid on;

y = [1 1 1 1];
n2 = 0:3;
subplot(3,1,2);
stem(n2,y);
xlabel('n');
ylabel('x2(n)');
title('X2(n)');
axis([-8 10 -2 5]);
grid on;

m = min(min(n1),min(n2)):max(max(n1),max(n2));
y1 = [];
temp = 1;
for i = 1:length(m)
    if(m(i)<min(n1)||m(i)>max(n1))
        y1 = [y1 0];
    else
        y1 = [y1 x(temp)];
        temp = temp+1;
    end
end

y2 = [];
temp = 1;
for i = 1:length(m)
    if(m(i)<min(n2)||m(i)>max(n2))
        y2 = [y2 0];
    else
        y2 = [y2 y(temp)];
        temp = temp+1;
    end
end
mul = y1.*y2;
subplot(3,1,3);
stem(m,mul);
xlabel('n');
ylabel('X1(n)*X2(n)');
title('Signal Multiplication');
axis([-8 10 -2 5]);
grid on;

figure(2);
n = -2:2;
x = [-2 3 0 1 5];
subplot(3,1,1);
stem(n,x);
xlabel('n');
ylabel('x1(n)');
title('X1(n)');
axis([-8 10 -4 6]);
grid on;

n1 = 5;
a = n+n1;
subplot(3,1,2);
stem(a,x);
xlabel('n');
%ylabel('x2(n)');
title('X1(n-5)');
axis([-8 10 -4 6]);
grid on;


n2 = 4;
b = n-n2;
subplot(3,1,3);
stem(b,x);
xlabel('n');
ylabel('X1(n+4)');
title('Signal Shifting');
axis([-8 10 -4 6]);
grid on;
