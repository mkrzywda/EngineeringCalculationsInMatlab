close all; clear all; clc;
t=0:0.1:Tend;
[x,y] = meshgrid(-3:1:3);
z = peaks(x,y);
surf(x,y,z)
