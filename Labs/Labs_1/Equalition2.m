close all; clear all; clc;

%2x_1 + 6x_2 = 8
%2x_1 + 5.999999x_2 = 8.000002;

%Ax=b
%X = A^{-1}b

A = [ 2 6 ; 2 5.999999];
B = [8 ; 8.000002];
X = A^-1*B;
disp(X)

%wspolczynnik uwarunkowania macierzy
wspolczynnik_uwarunkowania_macierzy=cond(A)

%odwrotnosc wspolczynnika uwarunkowania macierzy
odwrotnosc_wspolczynnika_uwarunkowania_macierzy=rcond(A)



