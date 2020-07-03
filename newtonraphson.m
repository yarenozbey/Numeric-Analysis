syms x;
fprintf('fonksiyonu giriniz. '); 
f(x) = input('');
t = diff(f);

x0 = input('x0:  ');
E = input('Epsilon: ');
x1 =x0 - f(x0)/t(x0);

while abs(x1-x0) >= E
    fprintf('\nx0 = %f\nx1 = %f\ndelta = %f\n',x0,x1,abs(x1-x0));
    x0 = x1;
    x1 = x0 - f(x0)/t(x0);
end
fprintf('\nx0 = %f\nx1 = %f\ndelta = %f\nYaklasýk kok: %f',x0,x1,abs(x1-x0),x1);