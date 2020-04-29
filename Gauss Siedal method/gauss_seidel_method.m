%Find roots using Gauss seidel method
clc
clear all
close all
diary('Gauss_Seidel_Method.txt');
disp(sprintf('Name: Smit Shah PRN: 17070123090 Batch: EB-2'));
%f=@(x) system of equations 
%A=[20 1 -2; 3 20 -1; 2 -3 20]   B=[17; -18; 25]
A=input('Enter the value of co-efficient of x in matrix form: ');
B=input('Enter the value of co-efficient of b in matrix form: ');
[M N]=size(A);
if M~=N
    fprintf('A is not a square matrix');
end
disp('iter x(1) x(2) x(3)');
for i=1:M
    r=abs(A(i,:));
    d=sum(r)-r(i);
    if d>=r(i)
        fprintf('A is not diagonally dominant');
    end
end
X=zeros(M,1);
for iter=1:10
    for j=1:M
        X(j)=(1/A(j,j))*(B(j,end)-(A(j,1:j-1)*X(1:j-1))-(A(j,j+1:M)*X(j+1:M)));
    end
    disp(sprintf('%3.0f %1.8f %1.8f %1.8f', iter, X(1), X(2), X(3)))
end
disp(X);
diary('off');