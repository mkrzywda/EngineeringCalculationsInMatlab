close all;
clear all;
clc;

%zadanie z wózkami

% bilansowanie energii w 3 sprezyny
%Ek =  (m1*(x1')^2)/2 + (m2*(x2')^2)/2;
%Ep = (k1*(x1^2))/2 + (k2*(x1-x2)^2)/2 +(k3*(x2^2))/2;

% Energia rozpraszana w ukladzie
%D = (b1*x1'^2)/2 + (b2*x2'^2)/2;

%Rownanie Lagrange'a drugiego rodzaju
% d/dt(dL/dx')-dL/dx+dD/dx' = F

%gdzie
% L = Ek -Ep

%F1 = d/dt(dL/dx1')-dL/dx1 + dD/dx1'
%F2 = d/dt(dL/dx2')-dL/dx2 + dD/dx2'

%F1 = d/dt(m1(x1)')- (-k1x1-k2(x1-x2)) + b1(x1)'
%F2 =  d/dt(m2(x1)') -(-(-k2(x1-x2))-k3x2)+b2(x2)'

%F1 = d/dt(m1(x1)')- (-k1x1-k2(x1-x2)) + b1(x1)'
%F2 =  d/dt(m2(x1)') -(-(-k2(x1-x2))-k3x2)+b2(x2)'

%{
Podstawienie
y1=x1
y2=x1'
y3=x2
y4=x2'

stad 

m1(y2)'+k1y1+k2(y1-y3)+ b1y1 = F1
m2(y2)' - k2(y1-y3)+k3y3 + b2y4 = F2

Y = [y1;y2;y3] 

dy = [y2; (F1 -k1y1-k2(y1-y3) - b1y1)/m1 ; y4;  (F2+k2(y1-y3) - k3y3 - b2y4 )/m2]

%}


%       D A N E    %

m1=10;
m2=20;
k1=0.6;
k2=11;
k3=113;
b1=0.7;
b2=0.9;
b3=0.7 ;

f_1=5;
f_2=2;
start_statement = [0;0;0;0];
time=[0,30];
dy =@(t,y)[y(2);
    (f_1-k1*y(1)-k2*(y(1)-y(3))-b1*y(2))/m1;
    y(4);
    (f_2+k2*(y(1)-y(3))-k3*y(3)-b2*y(4))/m2];

[t , y ] = ode45(dy,time,start_statement); 

plot(t,y(:,[1,3]))