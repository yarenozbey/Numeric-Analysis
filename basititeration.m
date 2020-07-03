syms x;
g(x) = input('x = ');
x0 = input('x0: ');
E = input('Epsilon: ');
df = diff(g,x);
if df(x0) >= 1
    g(x) = input('yakýnsama sartý saglanmýyor.Yeni denklem giriniz.\nx = ');
end
x1 = g(x0);
while abs(x1-x0) >= E
   fprintf('\nx = %f\ng(x) = %f\ndelta = %f\n',x0,g(x0),abs(x1-x0));
   x0 = x1;
   x1 = g(x0); 
end
fprintf('\nx = %f\ng(x) = %f\ndelta = %f\nYaklasik kok: %f',x0,g(x0),abs(x1-x0),x1);