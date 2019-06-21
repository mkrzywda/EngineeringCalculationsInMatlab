close all; clear all; clc;

n=input('Put number');
a=zeros(1,n);
a(1)= 1;
a(2) = 1;

for i=3:n
    a(i) = a(i-2)+a(i-1);
end
disp(a);

