N = input('Denklem sayisi: ');
A = input('Katsayilar matrisi: ');
C = input('sag taraf vektoru: ');
U = eye(N,N);
for i = 1:N
    for j = 1:i
        L(i,j) = A(i,j);
        for k = 1:j-1
            L(i,j) = L(i,j) - L(i,k)*U(k,j);
        end
    end
    L(i,i+1:N) = 0;
    for t = i+1:N
        U(i,t) = A(i,t);
        for l = 1:i-1
            U(i,t) = U(i,t) - L(i,l)*U(l,t);
        end
        U(i,t) = U(i,t)/L(i,i);
    end
end
Y = L\C;
X= U\Y;
fprintf('alt matris:\n'); disp(L);
fprintf('üst matris:\n'); disp(U);
fprintf('sonuclar:\n'); disp(X);