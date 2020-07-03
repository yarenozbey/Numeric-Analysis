syms x; 
f(x) = input('fonksiyonu giriniz: ');
a = input('Baslangic: ');
b = input('Bitis: ');
while f(a)*f(b) > 0
    fprintf('girdiginiz aralik uygun degildir. Yeni bir aralýk giriniz.');
    a = input('Baslangic: ');
    b = input('Bitis: ');
end
E = input('Epsilon: ');
c = (a+b)/2;
while abs(a-b) >= E && abs(f(c)) >= E  
    fprintf('\na = %f\nf(a) = %f\nb = %f\nf(b) = %f\nc = %f\nf(c) = %f\n',a,f(a),b,f(b),c,f(c));
    if f(b)*f(c) > 0
        b = c;
    else
        a = c;  
    end
    c = (a+b)/2;
end
fprintf('\na = %f\nf(a) = %f\nb = %f\nf(b) = %f\nc = %f\nf(c) = %f\nYaklasik kok: %f',a,f(a),b,f(b),c,f(c),c);