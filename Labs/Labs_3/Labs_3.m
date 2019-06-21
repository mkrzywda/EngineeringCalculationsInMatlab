close all; clear all; clc;

%Szukamy pozycji wartosci minimalnej w macierzy A;

A = randi(100,4);
[i,j] = find(A == min(min(A)),1);
A(i,:);




