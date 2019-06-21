% Zadanie polega na:
%― narysowaniu powierzchni tej funkcji i pobraniu od użytkownika dwóch punktów (dwa kliknięcia gdzieś w obszarze powierzchni);
%― następnie narysowaniu na tej powierzchni linii pomiędzy tymi wskazanymi punktami;
%― w osobnym oknie wykreśleniu przekroju, czyli wykreśleniu funkcji f dla wskazanej przez użytkownikasiecznej.

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
[x1 indx]=sort(x1);
y1=y1(indx);
p=polyfit(x1,y1,1);
X1=linspace(x1(1),x1(2),100);
Y1=f(X1,polyval(p,X1));
figure
plot(X1,Y1);