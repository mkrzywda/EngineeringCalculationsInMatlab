close all
clear all
clc
% założenia
g=9.81;
v0=125;
a0=[30,45,60];
N=100;
% generowanie wyników z błędem normalnym
A0=repmat(a0,N,1);
s=50*randn(size(A0))+v0^2*sind(2*A0)/g;
h=50*randn(size(A0))+(v0*sind(A0)).^2/(2*g);
figure('Color',[1,1,1]);
subplot(2,1,1)
% histogramy - rozkłady empiryczne
hist(h)
hfit=linspace(min(min(h)),max(max(h)),100);
% rozkłady - dopasowanie do teoretycznego rozkł. normalnego
subplot(2,1,2)
[mu,sigma]=normfit(h(:,1));
plot(hfit,normpdf(hfit,mu,sigma));
hold on;
[mu,sigma]=normfit(h(:,2));
plot(hfit,normpdf(hfit,mu,sigma));
[mu,sigma]=normfit(h(:,3));
plot(hfit,normpdf(hfit,mu,sigma));