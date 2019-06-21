close all; clear all;clc;

x=[1,2,3,4];
y=[0.1,0.2,0.3];

A=[reshape(repmat(x,length(y),1),1,[]) ; repmat(y,1,length(x))]

%Zmiana wymiarow macierzy
%for i=1:numel(A)
%B(i) = A(i)
%to jest reshape!

%otrzymanie macierzy x,y z macierzy A
x1 = unique(A(1,:));
y1 = unique(A(2,:));

%inny sposób na odzyskanie macierzy x,y z A

x2=A(1,1:find(diff(A(1,:)),1):end)
y2=A(2,1:find(diff(A(1,:)),1))