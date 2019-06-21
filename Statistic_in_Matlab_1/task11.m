close all; clear all; clc;
% Wykres poziomic z zaznaczonym gradientem funkcji
x=linspace(-pi,pi,31);
y=linspace(-pi/2,pi/2,31);
z=sin(x).*cos(y);
[X,Y]=meshgrid(x,y);
Z=sin(X).*cos(Y);
[gx,gy]=gradient(Z(1:5:end,1:5:end));
figure
contour(X,Y,Z,20);
hold on;
quiver(x(1:5:end),y(1:5:end),gx,gy);