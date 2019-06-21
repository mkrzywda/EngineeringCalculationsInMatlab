close all; clear all; clc;

%czy wylosowana cienciwa jest wieksza od boku trojkata wpisanego opisanego na tym okregu

n=1000;
ile=0;
r=1;
a=r*sqrt(3);

for k=1:n
    a1 = 2*pi*rand;
    a2 = 2*pi*rand;
    x1 = cos(a1);
    y1 = sin(a1);
    x2 = cos(a2);
    y2 = sin(a2);
    
    if norm([x1-x2;y1-y2]) > r*3^0.5
        ile=ile+1;
    end
end
ile
disp(ile/n)