function [c, ceq] = ograniczenia2(x)
    ceq = [];
    if x(1) < -0.2 || x(1) > 0.2
        c = x(2)    -   0.5;
    elseif x(1) > 0 
        c = x(1) + x(2) - 0.7;
    else 
        c = -x(1)   +  x(2)- 0.7;
    end
    