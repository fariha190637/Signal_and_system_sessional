clc;
clear all;
%figure(1);
x = [1 2 3 4 5 6 7 6 5 4 3 2 1];
n = -2:10;
subplot(4,1,1);
stem(n,x);
%figure(2);
n1 = 3:15;
%a = n+n1;
subplot(4,1,2);
stem(n1,x);
%figure(3);
n2 = -6:6;
%b = n-n2;
subplot(4,1,3);
stem(n2,x);
m = min(min(n1),min(n2)):max(max(n1),max(n2));
y1 = [];
temp = 1;
for i = 1:length(m);
    if (m(i)<min(n1)||m(i)>max(n1));
        y1 = [y1 0];
    else
        y1 = [y1 x(temp)];
        temp = temp+1;
    end
end
y2 = [];
temp = 1;
for i = 1:length(m);
    if (m(i)<min(n2)||m(i)>max(n2));
        y2 = [y2 0];
    else
        y2 = [y2 x(temp)];
        temp = temp+1;
    end
end
y = (2.*y1)-(3.*y2);
subplot(4,1,4);
stem(m,y);