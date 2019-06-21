close all; clear all; clc;
%Efekty wykresów
x=linspace(-pi,pi,31);
y=linspace(-pi/2,pi/2,31);
[X,Y]=meshgrid(x,y);
Z=sin(X).*cos(Y);
figure;
surf(x,y,Z);
lp=[-pi/2,0,0];
light('Position',lp,'Style','local');
hold on
plot3(lp(1),lp(2),lp(3),'y*','MarkerSize',15,'LineWidth',3);
colormapeditor 