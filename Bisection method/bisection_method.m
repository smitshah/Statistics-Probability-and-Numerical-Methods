%Find the root of the function using bisection method
clc
clear all
close all
diary('Bisection_Method.txt');
disp(sprintf('Name: Smit Shah PRN: 17070123090 Batch: EB-2'));
%f=@(x) x^3-9*x+1
f=input('Enter the function: ', 's');
f=inline(f);
a=input('Enter the value of a: ');
b=input('Enter the value of b: ');
tol=input('Enter the allowed error: ');
if f(a)*f(b)<0
else
    fprintf('The interval is incorrect! \n');
    a=input('Enter the anothet value of a: ');
    b=input('Enter the anothet value of b: ');
end
err=b-a;
disp('i x f(x) err');
i=0;
while err>tol
    c=(a+b)/2;
    if f(a)*f(c)<0
        b=c;
    else
        a=c;
    end
    i=i+1;
    err=b-a;
    s=sprintf('\n %3.0f %0.8f %0.8f %1.12f', i, c, f(c), err);
    disp(s)
end
t=sprintf('\n the required root is:  %0.8f', c);
disp(t)
diary ('off');