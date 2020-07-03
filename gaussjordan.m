N = input('Denklem sayisi: ');
A = input('Katsayilar matrisi: ');
C = input('sag taraf vektoru: ');
B = [A,C]
for i= 1:N
    B(i,:) = B(i,:)/B(i,i);
    for j = 1:N
        t = B(j,i);
        for k = 1:N+1
            if i ~= j
                B(j,k) = B(j,k) - B(i,k)*t;
            end
        end
        disp(B);
    end
    disp(B);
end
X = X(:,end);
fprintf('Bilinmeyen vektoru:\n'); disp(double(X));