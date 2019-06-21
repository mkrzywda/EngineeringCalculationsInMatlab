function [c, ceq] = ograniczenia3(x)
    ceq = [];
    if x(1) < -0.2 || x(1) > 0.2
        c = x(2)    -   0.5;
    else
        c = x(2) - sqrt((0.2^2)-x(1)^2) - 0.5;
    end
    