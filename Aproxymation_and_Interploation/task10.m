%Sztuczne sieci neuronowe (typ MLP)
f=@(X)X(1).^2+X(2).^2-cos(2.5*pi*X(1))-cos(2.5*pi*X(2))+2;
N=60;
x=linspace(-1,1,N);
y=linspace(-1,1,N);
X=zeros(2,N*N);
Y=zeros(1,N*N);
for i=1:N
	X(:,(i-1)*N+1:i*N)=[x;y(i)*ones(1,N)];
end
for i=1:N*N
	Y(i)=f(X(:,i));
end
SSN=fitnet([10,5]);
SSN=train(SSN,X,Y);
view(SSN);
Y_SSN=sim(SSN,X);
Y_SSN=reshape(Y_SSN,N,N);
surf(x,y,Y_SSN);
view(-30,60);
set(gcf,'Color',[1 1 1]);
set(gca,'FontSize',10);
xlabel('x');ylabel('y');zlabel('z');
title(['N=' num2str(N)]);