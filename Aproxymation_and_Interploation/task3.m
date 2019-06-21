%Efekt Rungego.
% pojawienie się oscylacji, zwłaszcza przy skrajnych węzłach:
x=0:10;
y=rand(size(x));
plot(x,y,'rs');
p=polyfit(x,y,10);
xx=0:0.01:10;
yy=polyval(p,xx);
hold on;
plot(xx,yy);

5. Funkcje sklejane1