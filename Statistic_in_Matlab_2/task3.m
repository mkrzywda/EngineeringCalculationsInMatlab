% skategoryzowany wykr. rozrzutu
figure('Color',[1,1,1], 'Name', 'skategoryzowany wykr. rozrzutu')
gscatter(h(:),s(:),A0(:),'brk','sv^')
ylabel('odległość');
xlabel('wysokość');
title('zależność odległości od wysokości dla różnych kątów (precyzja rzutów)');
figure('Color',[1,1,1], 'Name', 'wykr. rozrzutu dla trzech kątów')
subplot(2,1,1);
% wykresy rozrzutu dla wysokości w różnych kątach
gscatter(a0,h.')
A0=A0(:);
h=h(:);
Xh=[ones(size(A0)),A0];
% model regresji dla wysokości
ph=regress(h,Xh);
a0fit=linspace(min(a0),max(a0),50);
hfit=polyval(flipud(ph),a0fit);
hold on
plot(a0fit,hfit)
ylabel('wysokość');
xlabel('kąt');
title('wysokości w kolejnych rzutach pod różnymi kątami');
% model regresji dla odległości
subplot(2,1,2);
gscatter(a0,s.')
s=s(:);
Xs=[ones(size(A0)),A0,A0.^2];
ps=regress(s,Xs);
sfit=polyval(flipud(ps),a0fit);
hold on
plot(a0fit,sfit)
ylabel('odległość');
xlabel('kąt');
title('odległóści w kolejnych rzutach pod różnymi kątami');