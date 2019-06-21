function n = czyLezyNaProstej(a,b,varargin)

    n =0;
    for i=1:length(varargin)
        if a*varargin{i}(1) + b == varargin{i}(2)
            n=n+1;
        end
    end
end