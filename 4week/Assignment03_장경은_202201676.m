% 90p 
format long
B= [-5 3; 4 -3]
cond(B)
inv(B)

C=[-5 3;4.999999 -3]
cond(C)
inv(C)
 
D=[-4.99999 3; 4.999999 -2.99999]
cond(D)
inv(D)

%91p
A= [1 -2 3 0; 0 1 1 -2; 2 2 4 1; 0 0 1 7]
cond(A)
inv(A)

%92p
B= magic(4)
cond(B)
rcond(B)
inv(B)

%93p
beta = 0.001
B2 = B+(beta*eye(length(B)))
cond(B2)
inv(B2)

%94p
beta = 0.01
B3= B + (beta*eye(length(B)))
cond(B3)
inv(B3)

%95p
beta = 0.1
B4= B + (beta*eye(length(B)))
cond(B4)
inv(B4)

%96p
C= [7 1 1 -1; -1 0 2 -1; 0 3 2 0; -2 0 4 -2]
inv(C)
