N = input('Denklem sayisi: ');
A = input('Katsayilar matrisi: ');
C = input('sag taraf vektoru: ');
B = [A,C];

for i= 1:N
    B(i,:) = B(i,:)/B(i,i);
    for j = i+1:N
        t = B(j,i);
        for k = 1:N+1
            B(j,k) = B(j,k) - B(i,k)*t;
        end
        disp(B);
    end
    disp(B);
end
for i = N:-1:1
    X(i,1) = B(i,N+1);
    for j = N:-1:i+1
        X(i,1) = X(i,1) - B(i,j)*X(j,1);
    end
    disp(B)
end
fprintf('Bilinmeyen vektoru:\n'); disp(double(X));