close all; clear all; clc;
%Wykres 4D
x=0:0.1:1;
[X,Y,Z]=meshgrid(x,x,x);
V=X.^2+Y.^2+Z.^2;
slice(X,Y,Z,V,[0,0.5,1],[],[])
colorbar
figure
slice(X,Y,Z,V,[0,0.5,1],0.5,0.5)
colorbar