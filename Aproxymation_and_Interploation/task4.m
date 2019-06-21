%Funkcje sklejane
x=[0 1 2 3];
y=[0 1 4 9];
s=spline(x,y);
xx=0:0.01:3;
yy=ppval(s,xx);
plot(x,y,'rs',xx,yy);