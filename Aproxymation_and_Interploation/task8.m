%Sztuczne sieci neuronowe (typ MLP)

close all
clear all
clc
x=-1:0.1:1;
y=x.^2;
SSN=fitnet(5);
view(SSN);
SSN=train(SSN,x,y);
view(SSN);
xx=-1:0.01:1;
yy=xx.^2;
yy_SSN=sim(SSN,xx);
plot(x,y,'kh',xx,yy,'y*',xx,yy_SSN)
set(gca,'YLim',[-0.1 1.1], 'XLim',[-1.1 1.1]);
legend({'Punkty','Fun','SSN'});