function [czy,q] = geometryczny(b)

    if min(b(2:end)./b(1:end-1)) == max(b(2:end)./b(1:end-1))
        czy = true;
        q=b(2)/b(1);
    else
        czy = false;
        q=[];
    end
   
end