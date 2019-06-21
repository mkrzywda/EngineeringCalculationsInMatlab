close all; clear all; clc;

w=input('Put number');

b(1)= 1;
b(2) = 1;

while b(end) < w
    b(end+1)= b(end-1)+b(end);
end
disp(b);

