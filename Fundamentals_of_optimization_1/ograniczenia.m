function [c, ceq] = ograniczenia(x)
%c(x) <= 0
%ceq(x) = 0 
% to dopuszcalny punkt

    ceq=[];
    
    if x(1) > 0
        c = -0.5*x(1)+x(2)-0.5;
    else
        c = 0.5*x(1)+x(2)-0.5;
    end