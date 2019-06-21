function napis = fun1(napis,L1,L2)
  
    if nargin == 3
        napis(napis== L1)=L2;
    else
        napis(napis== L1)='';
    end
end