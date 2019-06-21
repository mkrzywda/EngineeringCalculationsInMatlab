%Napisz program, który dla zadanych przez użytkownika dwóch punktów aproksymuje wielomian pierwszego
%stopnia i czeka na reakcję użytkownika. Po kolejnym kliknięciu, modeluje wielomian drugiego stopnia dla
%trzech punktów, itd. (Kolorując ja w poprzednim zadaniu)

close all
clear all
clc
a=-1;
b=1;
figure;
axis;
set(gca,'XLim',[a b])
set(gca,'YLim',[0 1])
X=a:0.01:b;
x=[];
y=[];
while true
	[x(end+1) y(end+1)]=ginput(1);
		if x(end)<a || x(end)>b
			break;
		end
	plot(x,y,'r*');
	set(gca,'XLim',[a b])
	set(gca,'YLim',[0 1])
	hold on;
	if length(x)>1
		p=polyfit(x,y,length(x)-1);
		dp=polyder(p);
		rdp=[roots(dp); a; b];
		indx=zeros(length(rdp));
		j=1;
		for i=1:length(rdp)
			if ~isreal(rdp(i)) || rdp(i)<a || rdp(i)>b 
				indx(j)=i;
				j=j+1;
			end
	end
	indx(indx==0)=[];
	rdp(indx)=[];
	rdp=sort(rdp);
	for i=1:length(rdp)-1
		X=rdp(i):0.01:rdp(i+1);
		Y=polyval(p,X);
		if polyval(dp,(rdp(i)+rdp(i+1))/2)>0
			plot(X,Y,'r','LineWidth',3');
		else
			plot(X,Y,'b','LineWidth',3');
		end
		hold on
	end
		set(gca,'YLim',[0 1])
		hold off;
		end
end