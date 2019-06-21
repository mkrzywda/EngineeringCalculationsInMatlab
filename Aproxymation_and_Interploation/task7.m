%Aproksymacja dowolną funkcją.
close all
clear all
clc
x=-pi:pi/2:pi;
y=2*sin(3*x);
f=fittype('a*sin(b*x)');
f=fit(x.',y.',f,'StartPoint',[1 2]);
xx=-pi:0.01:pi;
yy=2*sin(3*xx);
yyf=f(xx);
plot(x,y,'kh',xx,yy,'y*',xx,yyf);
legend({'Punkty','Fun','Fit'});