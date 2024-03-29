%Wykreśl funkcję sin(x) w przedziale (-π, π). Następnie wykreśl w tym przedziale pierwszą pochodną tej funkcji, a potem drugą pochodną.

% source: Approximate Derivatives with diff, Matlab Documentation
close all
clear all
clc
h = 0.001; % step size
X = -pi:h:pi; % domain
f = sin(X); % range
Y = diff(f)/h; % first derivative
Z = diff(Y)/h; % second derivative
plot(X(:,1:length(Y)),Y,'r',X,f,'b', X(:,1:length(Z)),Z,'k')