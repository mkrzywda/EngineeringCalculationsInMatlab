close all
clear all
clc
load('wyniki.csv');
x1=wyniki(:,1);
x2=wyniki(:,2);
x3=wyniki(:,3);
wariant=wyniki(:,4);
scenariusz=wyniki(:,5);
% wykr. rozrzutu skategoryzowany
figure('Color',[1,1,1], 'Name', 'skategoryzowany wykr. rozrzutu')
gscatter(x1,x2,scenariusz,'brk','sv^')
title('zależność x2 od x1 w grupach');