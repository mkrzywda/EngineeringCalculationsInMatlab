%Dany jest wektor X. Bez użycia pętli usuń z niego wszystkie wartości spoza zakresu [-10 10].

close all; clear all; clc;

x = [ -90 -80 -70 -60 -50 -40 -30 -20 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20]
%usuwamy elementy mniejsze od [-10,10]

x(abs(x)<=10)=[];
x