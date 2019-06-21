close all; clear all; clc;
%Adnotacje
figure('Color',[1 1 1]);
annotation('ellipse',[0.1 0.4 0.3 0.2],'LineWidth',3)
annotation('line',[0.05 0.45],[0.5 0.5],'LineStyle','-.')
annotation('line',[0.25 0.25],[0.3 0.7],'LineStyle','-.')
annotation('arrow',[0.4 0.25],[0.2 0.4])
annotation('textbox',[0.325 0.15 0.15 0.05],'String','Elipsa')
annotation('rectangle',[0.6 0.4 0.3 0.2],'LineWidth',3)
annotation('doublearrow',[0.6 0.9],[0.4 0.6])
annotation('arrow',[0.6 0.75],[0.2 0.4])
annotation('textbox',[0.525 0.15 0.15 0.05],'String','Prostokat')