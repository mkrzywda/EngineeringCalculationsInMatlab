%Napisz skrypt, który...
%― dla 11 równo rozłożonych punktów z przedziału od 0-10 losuje wartości (zgodnie z rozkładem jednostajnym) z przedziału 0-1;
%― aproksymuje wielomian (kolejno od 1 do 9 stopnia) dla wylosowanych punktów;
%― oblicza wartość pierwiastka błędu średniokwadratowego (RMSE, pierwiastka z MSE)dla każdego dopasowania;
%― poczym wykorzystuje do aproksymacji również splajny.
%― rysuje wszystkie kolejne aproksymacje w jednym oknie oraz na osobnym wykresie błąd w postacisekwencji słupków.

close all
clear all
clc
x=linspace(0,10,11);
y=rand(size(x));
plot(x,y,'rx','MarkerSize',15,'LineWidth',3);
hold on
e=zeros(1,10);
k=zeros(1,10);
X=linspace(0,10,1000);
for i=1:9
	p=polyfit(x,y,i);
	yw=polyval(p,x);
	e(i)=sqrt(sum((y-yw).^2)/length(x));
	Y=polyval(p,X);
	plot(X,Y);
end
k_sp=0;
sp=spline(x,y);
Y_sp=ppval(sp,X);
figure(1)
plot(X,Y_sp,'y*')
figure
bar(1:10,e)