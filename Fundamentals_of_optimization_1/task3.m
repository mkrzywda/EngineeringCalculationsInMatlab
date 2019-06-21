close all;
clear all;
clc;


%funkcja celu, funkcja anonimowa
f = @(x)x(1).^2 + (x(2)-1).^2;


%  ==================================== 
%            definicja obszaru
%  ====================================


%ograniczenie dolne
% 1 <= x1 <= 1
% 1 <= x2 <= inf
d = [-1;-1];
g = [1;inf];


A=[-1,1;1,1];
b =[1;1];

%DODANO:
%musi lezec na prostej x1 = 0.5
% Aeq *  x  = beq
% [1,0] .* [x1;x2] = 0.5;

Aeq = [1,0];
beq = 0.5;


%  ==================================== 
%            koniec definicja obszaru
%  ====================================



%  ==================================== 
%            szukanie minimum
%  ====================================


%fmincom minimum funkcji wielu zmiennych z ograniczeniami
%[x , y ] = fmincon(f,[0;0],A,b, Aeq, beq,d,g,[c,ceq]); % uchwyt do funkcji, 
[x , y ] = fmincon(f,[0;0],[],[], Aeq,beq,d,g, @ograniczenia) 
% uchwyt do funkcji celu, 
% punkt startowy, 
% ograniczenia A i b liniowe ograniczenia, 
% Aeq beq - liniowe ograniczenia rownosciowe,
% dolne i gorne ograniczenie,
% ograniczenia nieliniowe -> uchwyt do funkcji


%  ==================================== 
%            koniec szukania minimum
%  ====================================


