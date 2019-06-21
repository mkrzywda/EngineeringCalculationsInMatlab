close all;
clear all;
clc;


%funkcja celu, funkcja anonimowa
f = @(x)x(1).^2 + (x(2)-1).^2;
d=[-1;-1];
g = [1;inf];

Aeq = [1,0];
beq = 1.5;
% al


%  ==================================== 
%            szukanie minimum
%  ====================================


%fmincom minimum funkcji wielu zmiennych z ograniczeniami
%[x , y , ef ] = fmincon(f,[0;0],A,b, Aeq, beq,d,g,[c,ceq]); % uchwyt do funkcji, 
%   ef = -2 nie ma zadnego punktu spelniajacego ograniczenia 
%
%
[x , y , ef ] = fmincon(f,[0;0],[],[], Aeq,beq,d,g,@ograniczenia2) 
% uchwyt do funkcji celu, 
% punkt startowy, 
% ograniczenia A i b liniowe ograniczenia, 
% Aeq beq - liniowe ograniczenia rownosciowe,
% dolne i gorne ograniczenie,
% ograniczenia nieliniowe -> uchwyt do funkcji


%  ==================================== 
%            koniec szukania minimum
%  ====================================


