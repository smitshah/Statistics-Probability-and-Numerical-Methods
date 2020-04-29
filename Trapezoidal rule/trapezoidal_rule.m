% Evaluate using trapezoidal rule
clc
clear all
close all
diary('trapezoidal_rule.txt')
syms x;
a=input('Enter the value of lower limit of the intergration a: ');
b=input('Enter the value of upper limit of the intergration b: ');
n=input('enter the number of subinterval n: ');
f=input('Enter f: ');
f=inline(f);
h=(b-a)/n;
sum=0;
for i=1:n-1
    x=a+i*h;
    sum=sum+f(x);
    result=(h/2)*(f(a)+f(b)+2*sum);
end
fprintf('the result of this integral is: ');
disp(result);
dairy('off')
