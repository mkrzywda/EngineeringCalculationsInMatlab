%Aproksymacja wielomianowa.

%Ustawianie punktów:
x=[0 1 2 3];
y=[2 1.5 4 2.5];
plot(x,y,'rs');
set(gca,'YLim',[0.5 4.5]);

%Obliczanie współczynników dla czterech stopni wielomianu:
p0=polyfit(x,y,0);
p1=polyfit(x,y,1);
p2=polyfit(x,y,2);
p3=polyfit(x,y,3);

%Oblicza wartość wielomianu:
xx=0:0.01:3;
yy0=polyval(p0,xx);
yy1=polyval(p1,xx);
yy2=polyval(p2,xx);
yy3=polyval(p3,xx);
hold on;
plot(xx,yy0,xx,yy1,xx,yy2,xx,yy3);
legend({'Punkty','St 0','St 1','St 2','St 3'});