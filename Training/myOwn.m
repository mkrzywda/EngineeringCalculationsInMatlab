close all ; clear all; clc;

A = [1,2,3,4,5,6,7,8,9,10;11,12,13,14,15,16,17,18,19,20];

%zamienmy wszystkie liczby w tablicy podzielne przez 2 na 10;
A(mod(A,2)==0 | mod(A,10) == 0) = 0

% zamienmy wszystkie liczby w tabicy o abs(x) = 3 na wartosc -1
B=[1,2,3; 11,1,3;3,4,-3;5,6,-3];
B(abs(B)==3) = -1

W = [1000 10 3 4 5 6 7 8; 9 10 1 12 13 14 15 16;17 18 19 20 21 22 23 24];
%reshape(W,2,8)

%wartosci minimalne z każdego :
[a,b] = min(A,[],2) % wiersza;
[c,d] = min(A,[],1) % kolumny

tab_kom = {[1,2,3],5,6,7,123,[1,2,3,4]}

a=sort(cell2mat(tab_kom))

[a,b,c] = untitled([],2,[])

W = [1000 10 3 4 5 6 7 8; 9 10 1 12 13 14 15 16;17 18 19 20 21 22 23 24];
W(W~=10)

