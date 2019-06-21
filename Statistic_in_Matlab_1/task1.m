close all; clear all; clc;
[x,y] = meshgrid(-3:1:3);
z = peaks(x,y);
surf(x,y,z)
