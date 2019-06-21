close all; clear all; clc;
x=linspace(-pi,pi,101);
y=sin(x);
figure;
plot(x,y);
title('Wykres funkcji sin');
xlabel('x');
ylabel('sin(x)');

%Skala wykresu dobierana jest automatycznie. Chcąc ją zmienić, trzeba wywołać funkcję
%	axis([xmin xmax ymin ymax])i jako argument podać wektor określający nowe parametry osi.
%Wykres można opisać:
%	text(x,y,‘tekst’)- umieszcza ‘tekst’ w dowolnym punkcie o współrzędnych lub dodać siatkę:
%	(x,y); grid- włącza lub wyłącza siatkę;