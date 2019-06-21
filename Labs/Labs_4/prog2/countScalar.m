function counterScalar = countScalar(varargin)

counterScalar=0;

for i = 1:nargin
    
    if numel(varargin{i}) == 1
        counterScalar=counterScalar+1;
    end
end