close all
clear all
clc
x=-1:0.1:1;
y=x;
r=corr(x.',y.');
tytul=['r = ', num2str(r)];
figure('Name','współczynniki korelacji');
subplot(2,2,1);

plot(x,y);
legend('y=x');
title(tytul);
y=-x;
r=corr(x.',y.');
tytul=['r = ', num2str(r)];
subplot(2,2,2);
plot(x,y);
legend('y=-x');
title(tytul);
y=x.^2+x;
r=corr(x.',y.');
tytul=['r = ', num2str(r)];
subplot(2,2,3);
plot(x,y);
legend('y=x^2+x');
title(tytul);
y=x.^2;
r=corr(x.',y.');
tytul=['r = ', num2str(r)];
subplot(2,2,4);
plot(x,y);
legend('y=x^2');
title(tytul);
% zmiana zakresu
x=0:0.1:1;
y=x.^2;
r=corr(x.',y.');
tytul=['r = ', num2str(r)];
figure('Name','wsp. kor. w innym zakresie');
plot(x,y);
legend('y=x^2');
title(tytul);