function varargout = sortowanieWzgledemIlosciElementow(varargin)

    if nargin ~= nargout
        error('liczba arg musi byc taka sama');
    end
    
    n = zeros(1,nargin);
    
    for i=1:nargin
        n(i)=numel(varargin{i});
    end
    
    [~,i] = sort(n);
    varargout = varargin(i);
end