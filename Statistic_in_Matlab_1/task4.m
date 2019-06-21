close all; clear all; clc;
% Kilka wykresów w jednym polu:
x=linspace(-pi,pi,101);
y1=sin(x);
y2=2*cos(2*x);
figure;
plot(x,y1);
hold on;
plot(x,y2);
legend('sin(x)','2cos(2x)');
figure;
x = [1 2 3]; y = [0 1 0];
plot(x,y,'LineWidth',4);
hold on;
plot(y,x,'r','LineWidth',4);