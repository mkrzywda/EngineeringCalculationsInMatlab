close all;
clear all;
clc;


%funkcja celu, funkcja anonimowa
f = @(x)x(1).^2 + (x(2)-2).^2;


%  ==================================== 
%            definicja obszaru
%  ====================================


%ograniczenie dolne i gorne
% 1 <= x1 <= 1
% 1 <= x2 <= inf
d = [-1;-1];
g = [1;inf];

%ograniczenie
% jedna prosta ma postaæ:
% x2 = x1+1;
% czyli x2 <= x1+1 bo taki mamy obszar
% macierzowo [-1,1].*[x1;x2]<=1



% dla pierwszej prostej
%A = [-1,1];
%b=1;

%ograniczenie
% druga prosta ma postaæ:
% x2 = -x1+1;
% czyli x2 <= -x1+1 bo taki mamy obszar
% macierzowo [1,1].*[x1;x2]<=1

%dla drugej prostej
%A = [1,1];
%b=1;

%czyli cale ograniczenia LINIOWE, NIERÓWNOŒCIOWE

A=[-1,1;1,1];
b =[1;1];

%  ==================================== 
%            koniec definicja obszaru
%  ====================================



%  ==================================== 
%            szukanie minimum
%  ====================================


%fmincom minimum funkcji wielu zmiennych z ograniczeniami
%[x , y ] = fmincon(f,[0;0],A,b, Aeq, beq,d,g); % uchwyt do funkcji, 
[x , y ] = fmincon(f,[0;0],A,b, [],[],d,g) % uchwyt do funkcji, 
% punkt startowy, 
% ograniczenia A i b, 
% Aeq beq - liniowe ograniczenia rownosciowe, 
% dolne i gorne ograniczenie


%  ==================================== 
%            koniec szukania minimum
%  ====================================


