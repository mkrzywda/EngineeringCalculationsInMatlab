close all; clear all; clc;

%2x_1 + 6x_2 = 8
%2x_1 + 6.000001x_2 = 8.000001;

%Ax=b
%X = A^{-1}b

A = [ 2 6 ; 2 6.000001];
B = [8 ; 8.000001];
X = A^-1*B;
disp(X)



