%Napisz program, który dla wielomianu o następujących współczynnikach: p=[-3 0 4 1 .5]; 
% w przedziale od (-1,1) wykreśli kolorem czerwonym przedziały, w których funkcja jest rosnąca, a kolorem
% niebieskim gdy jest rosnąca.

close all
clear all
clc
p=[-3 0 4 1 .5];
a=-1;
b=1;
dp=polyder(p);
rdp=[roots(dp); a; b];
indx=zeros(size(rdp));
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