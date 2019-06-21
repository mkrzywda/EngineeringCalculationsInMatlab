%Dla przypadku z zadania 12. Przeanalizuj sytuację, gdy wskazane punkty będą dokładnie jeden pod drugim. Wprowadź konieczne modyfikacje na taką okoliczność.
close all
clear all
clc
f=@(x,y)x.^2+y.^2-cos(18*x)-cos(18*y)+2;
x=-1:0.01:1;
y=-1:0.01:1;
[X Y]=meshgrid(x,y);
z=f(X,Y);
contourf(x,y,z)
[x1 y1]=ginput(2);
hold on
plot(x1,y1,'r-','LineWidth',3)
x1=sort(x1);
y1=sort(y1);

if range(x1)>range(y1)
	p=polyfit(x1,y1,1);
	X1=linspace(x1(1),x1(2),100);
	Y1=f(X1,polyval(p,X1));
	figure
	plot(X1,Y1);
else
	p=polyfit(y1,x1,1);
	Y1=linspace(y1(1),y1(2),100);
	X1=f(polyval(p,Y1),Y1);
	figure;
	plot(Y1,X1);
end