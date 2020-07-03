syms x;
fprintf('fonksiyonu giriniz '); 
f(x) = input('');

x0 = input('x0 degerini giriniz. ');
x1 = input('x1 degerini giriniz. ');
E = input('Epsilon degerini giriniz. ');
x2 = x1-((x1-x0)*f(x1))/(f(x1)-f(x0));
while abs(x2-x1) >= E
    fprintf('\nx = %f\nf(x) = %f\n',x0,f(x0))
    x0 = x1;
    x1 = x2;
    x2 = x1-((x1-x0)*f(x1))/(f(x1)-f(x0));
end
fprintf('\nx = %f\nf(x) = %f\n\nx = %f\nf(x) = %f\n\nx = %f\nf(x) = %f\n',x0,f(x0),x1,f(x1),x2,f(x2));
fprintf('Yaklasik kok: %f',x2);