syms x;
fprintf('fonksiyonu giriniz: '); 
f(x) = input('');
x0 = input('x0: ');
deltax = input('delta x: ');
E = input('Epsilon: ');
x1 = x0;
while deltax >= E
    if f(x0)*f(x1) < 0
        fprintf('\nx = %f\nf(x) = %f\n',x1,f(x1));
        deltax = deltax/2;
        x1 = x0;
        fprintf('\ndelta= %f\n',deltax);
    end
    fprintf('\nx = %f\nf(x) = %f\n',x1,f(x1));
    x0 = x1;
    x1 = x0 + deltax;
end
fprintf('\nx = %f\nf(x) = %f\nYaklasik kok: %f',x1,f(x1),x0);