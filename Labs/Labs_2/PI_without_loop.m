close all; clear all; clc;

n=input('Input n');

% pi
a=sqrt(sum(1./(1:n).^2)*6);
disp(a)

%pi/4

b=(4*(sum(1./(1:4:n))-sum(1./(3:4:n))));
disp(b)
