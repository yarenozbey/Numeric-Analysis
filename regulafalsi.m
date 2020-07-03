syms x;
fprintf('fonksiyonu giriniz: '); 
f(x) = input('');
a = input('a: ');
b = input('b: ');
while f(a)*f(b) > 0
    fprintf('girdiginiz aralik uygun degildir. Yeni bir aralýk giriniz.');
    a = input('a: ');   b = input('b: ');
end
E = input('Epsilon: ');
c = 0;
c1 = (b*f(a) - a*f(b))/(f(a) - f(b));
while abs(c-c1) >= E || abs(f(c1)) >= E
    fprintf('\na = %f\nf(a) = %f\nb = %f\nf(b) = %f\nc = %f\nf(c) = %f\n',a,f(a),b,f(b),c1,f(c1));
    if f(c1) > 0
        b = c1;
    else
        a = c1;  
    end
    c = c1;
    c1 = (b*f(a) - a*f(b))/(f(a) - f(b));
end
fprintf('\na = %f\nf(a) = %f\nb = %f\nf(b) = %f\nc = %f\nf(c) = %f\nYaklasik kok: %f',a,f(a),b,f(b),c1,f(c1),c1);