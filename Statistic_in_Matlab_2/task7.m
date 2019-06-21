% badanie zależności zmiennych
% współczynnik korelacji x1 vs x2
[rho,pval] = corr(x1, x2);
disp(rho); disp(pval);
% macierz korelacji
[R,P]=corrcoef(wyniki);
disp(R);
istotne=P<0.05;
tylko_istotne=R.*istotne;
disp(tylko_istotne);
% model regresji liniowej prostej (y=ax+b) gdzie x=x1; y=x2
wsp_regr = regress(x2,x1);
[wsp_wielomianu, S]=polyfit(x1,x2,1); % dla porównania
disp(wsp_regr);
wsp_regr_arr=[wsp_regr,0];
disp(wsp_wielomianu);
% model regresji liniowej na wykresie rozrzutu
scatter(x1,x2,'filled')
hold on
y=polyval(wsp_wielomianu,x1);
plot(x1,y);
ylabel('x2');
xlabel('x1');
hold on
ry=polyval(wsp_regr_arr,x1);
plot(x1,ry, 'y*');
title('zależność x2 od x1');
hold on;
% przedział ufności
x1fit=linspace(min(x1),max(x1),10);
[yd d]=polyconf(wsp_regr_arr,x1fit,S);
plot(x1fit,yd-d,'g--');
plot(x1fit,yd+d,'g--');