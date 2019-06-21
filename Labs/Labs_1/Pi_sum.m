close all; clear all;clc;

n=input('put count number');

suma=1;

for k=1:n
    suma=suma+(1/(n^2));
end

disp(sqrt((suma/6)));
