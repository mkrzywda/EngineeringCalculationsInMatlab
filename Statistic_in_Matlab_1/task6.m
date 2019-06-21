close all; clear all; clc;
x=linspace(-pi,pi,101);
y1=sin(x);
y2=2*cos(2*x);
plot(x,y1,x,y2);
legend('sin(x)','2cos(2x)');