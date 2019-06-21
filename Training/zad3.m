%Dana jest macierz M. Bez używania pętli usuń z niej kolumny zawierające wartość mniejszą od 1.

close all; clear all; clc;

M = [1 -2 3 -4; 5 -6 7 -8; 9 -1 0 -1; 0 0 0 0];

M(abs(M)<1)=[];