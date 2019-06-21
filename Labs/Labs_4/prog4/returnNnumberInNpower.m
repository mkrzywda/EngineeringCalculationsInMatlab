function varargout = returnNnumberInNpower(n)

    varargout = num2cell(n.^(0:nargout-1));
  
end