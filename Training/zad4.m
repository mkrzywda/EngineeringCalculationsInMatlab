%Dana jest macierz M. Zmień ją tak, aby w pierwszej kolumnie były numery wierszy.

M = [100 100 100 100; 100 100 100 100; 100 100 100 100; 100 100 100 100;100 100 100 100;100 100 100 100;100 100 100 100;100 100 100 100;100 100 100 100]

[a,b] = (size(M))

x = 1:a;
M=[x.',M(:,2:end)]