%wczytaj zbiór danych wyniki.csv
close all
clear all
clc
load('wyniki.csv');
disp(wyniki);
x1=wyniki(:,1);
x2=wyniki(:,2);
x3=wyniki(:,3);
wariant=wyniki(:,4);
% policz statystyki opisowe x1
v_min = min(x1);
v_max = max(x1);
v_range = range(x1);
v_mean = mean(x1);
v_mode = mode(x1);
v_std = std(x1);
v_var = var(x1);
v_median = median(x1);
v_1qrt = quantile(x1, [0.25]);
v_3qrt = quantile(x1, [0.75]);
tab_stat = {
'min = ', v_min; ...
'max = ', v_max; ...
'range = ', v_range;...
'mean = ', v_mean;...
'mode = ', v_mode;...
'std = ', v_std;...
'var = ', v_var;...
'median = ', v_median;...
'1qrt = ', v_1qrt;...
'3qrt = ', v_3qrt
};
disp(tab_stat);
% HISTOGRAM
figure('Color',[1,1,1], 'Name', 'wizualizacja rozkładów empirycznych');
subplot(2,2,1);
[counts,centers] = hist(x1);
format short;
subplot(2,2,1);
bar(centers,counts);
set(gca,'YLim',[0 15]);
hold on;
% rozkład teoretyczny
x1fit=linspace(min(x1),max(x1));
[m,s]=normfit(x1);
plot(x1fit,1000*normpdf(x1fit,m,s));
title('histogram dla zmiennej x1');
% ramka-wąsy
subplot(2,2,3);
boxplot(x1, 'orientation', 'horizontal');
ylabel('x1');
title('ramka-wąsy dla zmiennej x1');
% skategoryzowany ramka-wąsy
subplot(2,2,2);
boxplot(x1,wariant);
ylabel('x1');
title({'skategoryzowany ramka-wąsy'; 'zm. grupująca: wariant'});

% wykr. rozrzutu x1 vs. wariant
subplot(2,2,4);
scatter(wariant, x1)
ylabel('x1');
xlabel('wariant');
title('zależność x1 od wariantu obróbki');