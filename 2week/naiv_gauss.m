function x = naiv_gauss(A,b)
n = length(b);
x = zeros(n,1);
mat=zeros(n,n);
b1=zeros(n,1);
for k=1:n-1 
    for i=k+1:n
        xmult = A(i,k)/A(k,k);
        for j=k+1:n
            mat(i,j) = A(i,j)-xmult*A(k,j);
        end
        b1(i) = b(i)-xmult*b(k);
    end
end
check=0;
for i=1:n
    flag=0;
    for j=1:n
        if flag==1 && A(i,j)== 0
           check=1
        end
    end
end
x(n) = b(n,1)/A(n,n);
for i=n-1:-1:1
    sum = b(i);
    for j=i+1:n
        sum = sum-A(i,j)*x(j);
    end
    x(i) = sum/A(i,i);
end
end

