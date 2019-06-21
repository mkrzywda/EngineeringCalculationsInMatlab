%Interpolacja liniowa.
x=-1:0.5:1;
y=x.^2;
xx=-1:0.01:1;
yy=interp1(x,y,xx);
plot(x,y,'rs',xx,yy);
figure;
plot(x,y,'rs',x,y,'g');