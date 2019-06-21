%Funkcje sklejane
x=[0 1 2 3];
y=[0 1 4 9];
s=spline(x,y);
for i=1:s.pieces
xx(:,i)=s.breaks(i):0.01:s.breaks(i+1);
yy(:,i)=polyval(s.coefs(i,:),0:0.01:1);
end
plot(xx,yy);