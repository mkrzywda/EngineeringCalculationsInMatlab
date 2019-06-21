close all; clear all; clc;
%Kilka wykresów w jednym oknie
x=linspace(-pi,pi,101);
y1=sin(x);
y2=cos(x);
y3=sin(2*x);
y4=cos(2*x);
y5=sinh(x);
figure;
subplot(2,3,1);
plot(x,y1);
subplot(2,3,2);
plot(x,y2);
subplot(2,3,4);
plot(x,y3);