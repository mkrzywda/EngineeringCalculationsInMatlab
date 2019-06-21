close all; clear all; clc;

%szukamy najblizszego otoczenia wartosci X w macierzy A

A = randi(100,4);
[i,j] = find(A == min(min(A)),1);
A(i,:);
A(i-1:i+1,j-1:j+1)

