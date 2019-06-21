function varargout = fun(tab)
    tab=sort(tab,'descend');
    varargout = num2cell(tab(1:nargin));
end