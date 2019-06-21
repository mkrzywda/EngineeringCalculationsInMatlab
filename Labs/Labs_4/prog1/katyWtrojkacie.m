function [a,b,c] = katyWtrojkacie(P1,P2,P3)

A = norm(P2-P3);
B = norm(P1-P3);
C = norm(P1-P2);

%acos <- radiany
%acosd <- stopnie
a = acosd((B^2+C^2-A^2)/(2*B*C));
b = acosd((A^2+C^2-B^2)/(2*A*C));
c = acosd((A^2+B^2-C^2)/(2*A*B));

end