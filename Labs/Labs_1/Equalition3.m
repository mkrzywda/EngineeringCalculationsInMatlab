close all; clear all; clc;

%2x_1 + 6x_2 = 8
%2x_1 + 6.1x_2 = 8.1;

%Ax=b
%X = A^{-1}b

A = [ 2 6 ; 2 6];
B = [8 ; 8];

for i=-1:-1:-18
    A(2,2) = 6+10^i;
    B(2) = 8+10^i;  
    X = A^-1*B;
    disp(i);
    rcond(A);
    disp(X);
end