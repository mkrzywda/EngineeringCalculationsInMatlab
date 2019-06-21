close all; clear all; clc;
%Wykres gradientu - rzut ukośny 2D
g=10;
V0=[2;2];
Tend=2*V0(2)/g;
t=0:0.1:Tend;
X=[V0(1)*t;V0(2)*t-g*t.^2/2];
dX(1,:)=gradient(X(1,:));
dX(2,:)=gradient(X(2,:));
figure
plot(X(1,:),X(2,:),'*','MarkerSize',15,'LineWidth',3);
hold on
quiver(X(1,:),X(2,:),dX(1,:),dX(2,:),0.4,'LineWidth',3,'MaxHeadSize',1);
axis equal 