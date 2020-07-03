syms x; e = 2.71828;
f(x) = input('fonksiyon: ');
x0 = input('x0: ');
xn = input('xn: ');
n = input('n: ');

if f(x0)*f(xn) >= 0
   S = sum(f,x0,xn,n);
else
    kok = input('foksiyonun koku: ')
    S1 = -sum(f,x0,kok,n);
    S2 = sum(f,kok,xn,n);
    S = S1 + S2;
end
    
fprintf('bolgenin alaný: %f',S)

function S = sum(f,x0,xn,n)
    h = (xn - x0)/n;
    S = (h/3)*(f(x0) + f(xn));
    for i = 1:2:n-1
        S = S + (4*h/3)*(f(x0+i*h));
    end
    for i = 2:2:n-2
        S = S + (2*h/3)*f(x0+i*h);
    end  
end