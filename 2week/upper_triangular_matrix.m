clear;
clc;
A= [1 1 2; 2 4 1; 4 2 3];
b= [-1; -2; 4];

mat=[A b]
s= size(mat);
s= s(1);

%하삼각행렬 풀이 노가다
check=mat(2,1)/mat(1,1);
mat(2,:)=mat(2,:)-mat(1,:)*check;

check=mat(3,1)/mat(1,1);
mat(3,:)=mat(3,:)-mat(1,:)*check;

check=mat(3,2)/mat(2,2);
mat(3,:)=mat(3,:)-mat(2,:)*check;
disp(mat)

%하삼각행렬 풀이 2중 for문
for i=1:s-1
    for j=i+1:s
        check=mat(j,i)/mat(i,i);
        mat(j,:)=mat(j,:)-mat(i,:)*check;
    end
end
disp(mat)

%하삼각행렬 풀이 3중 for문
for i=1:s-1
    for j= i+1:s
        check = mat(j,i)/mat(i,i);
        for k=1:s+1
            mat(j,k)=mat(j,k)-mat(i, k)*check;
        end
    end
end
disp(mat)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%연립방정식 풀이 노가다
x1=zeros(s,1);
x1(3)=mat(3,4)/mat(3,3);
x1(2)=(mat(2,4)-mat(2,3)*x1(3))/mat(2,2);
x1(1)=(mat(1,4)-mat(1,3)*x1(3)-mat(1,2)*x1(2))/mat(1,1);
disp(x1)

%연립방정식 풀이 2중 for문
x2= zeros(s,1);
for i=s:-1:1
    x2(i)= mat(i,s+1);
    for j=s:-1:i+1
        x2(i)=x2(i)-mat(i,j)*x2(j);
    end
    x2(i)=x2(i)/mat(i,i);
end
disp(x2)

