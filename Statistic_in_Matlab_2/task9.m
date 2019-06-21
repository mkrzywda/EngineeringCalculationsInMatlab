close all
clear all
clc
% założenia
g=9.81;
N=100;
v0=50*rand(N,1)+100;
a0=30*rand(N,1)+30;
h=100*randn(N,1)+(v0.*sind(a0)).^2/(2*g);
s=100*randn(N,1)+v0.^2.*sind(2*a0)/g;
X=[ones(size(v0)),v0,a0,v0.*a0];
ph=regress(h,X);
v0fit=linspace(min(v0),max(v0),50);
a0fit=linspace(min(a0),max(a0),50);
[v0FIT,a0FIT]=meshgrid(v0fit,a0fit);
figure('Color',[1,1,1])
scatter3(v0,a0,h,'filled')
hold on
HFIT=ph(1)+ph(2)*v0FIT+ph(3)*a0FIT+ph(4)*v0FIT.*a0FIT;
surf(v0FIT,a0FIT,HFIT,'Facealpha',0.5)
X=[ones(size(v0)),v0,a0,v0.*a0,a0.^2];
ps=regress(s,X);
v0fit=linspace(min(v0),max(v0),50);
a0fit=linspace(min(a0),max(a0),50);
[v0FIT,a0FIT]=meshgrid(v0fit,a0fit);
figure('Color',[1,1,1])
scatter3(v0,a0,s,'filled')
hold on
SFIT=ps(1)+ps(2)*v0FIT+ps(3)*a0FIT+ps(4)*v0FIT.*a0FIT+ps(5)*a0FIT.^2;
surf(v0FIT,a0FIT,SFIT,'Facealpha',0.5)