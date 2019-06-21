x=linspace(-1,1,100);
y=linspace(-1,1,100);
[X,Y]=meshgrid(x,y);
z=X.^2+Y.^2-cos(2.5*pi*X)-cos(2.5*pi*Y)+2;
surf(x,y,z);
view(-30,60);
set(gcf,'Color',[1 1 1]);
set(gca,'FontSize',10);
xlabel('x');ylabel('y');zlabel('z');