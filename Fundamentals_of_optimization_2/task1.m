close all; 
clear all;
clc

%Równanie Lotki-Volterry

% f = [x ; y]
%   x -ofiary
%   y - drapiezniki
%   stad
%   dx/dt = (a-b*y)x
%   dy/dt = (c*x-d)*y

%   dane

a=1;
b= 0.03;
c = 0.01;
d = 0.4;
time = [10,0];
start_statement=[10;10];
df=@(t,f)[(a-b*f(2))*f(1);(c*f(1)-d)*f(2)];

%rownanie rozniczkowe zwyczajne
[t, f] =ode45(df,time,start_statement);
% df - uchwyt do funckji ktora zwraca pochodna 
% t - wektor czasu
% x0,y0 - warunki poczatkowe]

plot(t,f)
% t - krok czasowy, matlab narzuca swoj
% f - macierz 2 kolumnowa x i y

liczba_ofiar = f(end,1)
liczba_drapieznikow = f(end,2)