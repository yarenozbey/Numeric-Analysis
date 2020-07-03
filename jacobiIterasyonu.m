N = input('Denklem sayisi: ');
syms x [1 N];
for i = 1:N
   fprintf('%d. denklem: ',i);
   equation(i) = input('');
end
for i = 1:N
    fprintf('x%d: ',i)
    X(i) = input('');
end
E = input('Epsilon: ');

for i = 1:N
    degiskenler(1,i) = solve(equation(i),x(1,i));
end

X1 = zeros(1,N);
delta = ones(1,N);

while kucuktur(delta,E,N) == 0
    disp(double(X));
    X = num2cell(X);
    f(x) = degiskenler;
    X1 = f(X{:});
    X = cell2sym(X);
    for i = 1:N
        delta(i) = abs(X1(i)-X(i));
    end
    X = X1;
end
X1 = double(X1);
disp(X1);

function D = kucuktur(dizi,Epsilon,DenklemSayisi)
D = 0;
for i = 1:DenklemSayisi
    if dizi < Epsilon
        D = 1;
    end
end
end

