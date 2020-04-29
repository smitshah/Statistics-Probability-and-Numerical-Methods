%Find roots of the function using Newton Raphson method
clc
clear all
close all
disp(sprintf('Name: Smit Shah PRN: 17070123090 Batch: EB-2'));
%f=@(x) x^4-x-10
syms x;
f=input('Enter the function: ', 's');
f=inline(f);
x0=input('Enter the value of x0: ');
tol=input('Enter the allowed error: ');
f1=diff(f(x));
df=inline(f1);
err=1;
disp('i x err');
i=0;
while err>tol
    if df(x)==0
        fprintf('Derivative is 0');
        return
    end
    x=x0-(f(x0)/df(x0));
    i=i+1;
    err=abs(x-x0);
    x0=x;
    s=sprintf('\n %3.0f %1.8f %1.8f', i, x, err);
    disp(s)
end
t=sprintf('\n the required root is:  %1.8f', x);
disp(t)