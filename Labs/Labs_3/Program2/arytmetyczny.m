function [czy,r] = arytmetyczny(a)
    %if numel(unique(diff(a))==1
    %if range(diff(a))==0
    %if all(diff(a)==a(2)-a(1))
    %if nnz(diff(diff(a)))==0
    if min(diff(a)) == max(diff(a))
        czy=true;
        r=a(2)-a(1);
    else
        czy=false;
        r=[];
    end
end


