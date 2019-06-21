x=-1:0.1:1;
y=x.^2+0.1*randn(size(x));
[p S]=polyfit(x,y,2);
[yyy d]=polyconf(p,x,S);
xx=-1:0.01:1;
yy=polyval(p,xx);
plot(x,y,'r*');
hold on;
plot(xx,yy);
plot(x,yyy-d,'g--');
plot(x,yyy+d,'g--');
% p = polyfit(x,y,n) returns the coefficients for a polynomial p(x)
% of degree n that is a best fit (in a least-squares sense) for the data in y.
% [p,S] = polyfit(x,y,n) also returns a structure S
% that can be used as an input to polyval to obtain error estimates.
% [Y,DELTA]= polyconf(p,X,S) takes outputs p and S from polyfit and generates
% 95% prediction intervals Y ± DELTA for new observations at the values in X.