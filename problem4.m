clc;
clear all;
close all;

n=-5:5;
x=2*deltaF(-2,-5,5)-deltaF(4,-5,5);
stem(n,x);
xlabel('n');
ylabel('X(n)');
title('The desired function');
axis([-6 6 -3 3]);
grid on;

function [x,n]=deltaF(n0,n1,n2)
n=n1:n2;
x=(n-n0)==0;
end

