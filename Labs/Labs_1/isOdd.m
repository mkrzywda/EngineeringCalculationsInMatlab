% Czy liczba pierwsza?
close all; clear all; clc;

n= input('put number');
odd = true;

% mod , rem <- reszta z dzielenia 

for i=2:(n-1)
    if mod(n,1) == 0
        odd=false;
        break;
    end
end

if odd == true
    disp('jest liczba pierwsza');
else
    disp('nie jest');
end

%%
close all; clear all; clc;
%Czy pierwsza?

n=input('put number');
isprime(n)

            


