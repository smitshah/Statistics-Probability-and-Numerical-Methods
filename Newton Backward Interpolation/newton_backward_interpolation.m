%Use Newton backward Interpolation formulae
clc
clear all
close all
diary('Newton_Backward_Interpolation.txt');
disp(sprintf('Name: Smit Shah PRN: 17070123090 Batch: EB-2'));
% x=[140 150 160 170 180]   y=[3.685 4.854 6.302 8.076 10.225]  h=10  n=5
n=input('Enter the number of data ponits: ');
h=input('Enter the step size h: ');
x=input('Enter the data x: ');
y=input('Enter the data y: ');
x_reqd=input('Enter x for which value of y is sought: ');
p=(x_reqd-x(n))/h;
for i=1:n
    diff(i,1)=y(i);
end
for j=2:n
    for i=1:n-j+1
        diff(i,j)=diff(i+1,j-1)-diff(i,j-1);
    end
end
ans=y(n);
for i=1:n-1
    term=1;
    for j=1:i
        term=term*(p+j-1)/j;
    end
    ans=ans+(term*diff(n-1,i+1));
end
disp(sprintf('The required value of x is: %1.5f',ans));
diary('off')