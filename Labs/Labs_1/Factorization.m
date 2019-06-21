%% Rozklad na czynniki pierwsze
close all; clear all; clc;

n = input('put number:');
odd  = true;

while~isprime(n)
    for i=2:(n-1)
        if mod(n,1) == 0
            disp(i)
            n=n/i;
            break;
        end
    end
end

disp(n)

%%
close all; clear all; clc;

n = input('put number');
disp(factor(n))