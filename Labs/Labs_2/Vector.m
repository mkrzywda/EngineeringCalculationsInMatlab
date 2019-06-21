close all; clear all;

x=randi(10,1,5)
nnz(x>mean(x));
%sum(x<5)

%suma elementow rozniacych sie od sredniej o mniej niz 1.
nnz(abs(x-mean(x))<1);

%zerujemy wartosci mniejsze od 5.
x(x<5)=0;

%usuwamy elementy mniejsze od 5
x(x<5)=[];

%suma liczb na nieparzystych pozycjach wiekszych od 3.
sum(x(1:2:end)>3)

%zamiana wszystkich liczb mniejszych od 5 na przeciwne
x(x<5) = -x(x<5);

