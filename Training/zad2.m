% Dana jest wektor W. Bez użycia pętli zamień co 3 jego element na przeciwny.

close all; clear all; clc;

W = [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16];

W(3:3:end) = -W(3:3:end);

