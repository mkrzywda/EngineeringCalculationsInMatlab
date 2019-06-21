%Interpolacja liniowa funkcji 2D. 
interp2
figure('Color',[1 1 1]);
[x, y]=meshgrid(-1:0.5:1,-1:0.5:1);
z=x.^2+y.^2;
plot3(x,y,z,'*','MarkerSize',10)
box on;
view(-18,50)
hold on
[xi, yi]=meshgrid(-1:0.05:1,-1:0.05:1);
zi=interp2(x,y,z,xi,yi);
surf(xi,yi,zi)
figure('Color',[1 1 1]);
plot3(x,y,z,'*','MarkerSize',10)
box on;
view(-18,50)
hold on
zi=interp2(x,y,z,xi,yi,'spline');
surf(xi,yi,zi)