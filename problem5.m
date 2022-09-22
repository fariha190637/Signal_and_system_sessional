clc;
close all;
clear all;
figure(1);
x = [1 0 3 4];
n1 = -2:1;
subplot(3,1,1);
stem(n1,x);
grid on;
title('X=');
xlabel('n');
ylabel('x(n)');
axis([-3 3 0 5]);

y = [1 1 1 1];
n2 = 0:3;
subplot(3,1,2);
stem(n2,y);
grid on;
title('Y=');
xlabel('n');
ylabel('x(n)');
axis ([-3 5 0 5]);

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
add = y1+y2;
subplot(3,1,3)
stem(m,add);
grid on;
title('Addition of signals(X+Y)');
xlabel('n');
ylabel('x(n)+y(n)');
axis ([-3 5 0 7]);


figure(2);
x = [3 -1 0 -4];
n = -1:2;
subplot(2,1,1);
stem(n,x);
title('Original signal x(n)');
xlabel('n');
ylabel('x(n)');
axis([-2 3 -5 4]);

c = fliplr(x);
y = fliplr(-n);
subplot(2,1,2)
stem(y,c);
title('Folding of signals');
xlabel('n');
ylabel('-x(n)');
axis([-3 2 -5 4]);