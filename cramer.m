N = input('Denklem sayisi: ');
A = input('Katsayilar matrisi: ');
C = input('sag taraf vektoru: ');
for i = 1:N
    B = A;
    B(1:N,i) = C;
    X(i) = det(B)/det(A);
end
fprintf('Bilinmeyen vektoru:\n'); disp(X);