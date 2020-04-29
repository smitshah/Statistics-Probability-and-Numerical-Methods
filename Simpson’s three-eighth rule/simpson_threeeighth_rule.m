% Evaluate using Simpsons 3/8 th rule
clc
clear all
close all
diary('simpson_threeeighth_rule.txt')
syms x;
%f(x)= 1/(1+x^2)  a=0  b=6  n=6  h=1
a=input('Enter the lower limit of the integration a: ');
b=input('Enter the upper limit of the integration b: ');
n=input('Enter the number of subinterval n: ');
f=input('Enter the function f: ');
f=inline(f);
h=(b-a)/n;
sum=0;
sum1=0;
for i=1:n-1
    x=a+i*h;
    if rem(i,3)==0
        sum=sum+f(x);
    else
        sum1=sum1+f(x);
    end
    result=((3*h)/8)*(f(a)+f(b)+3*sum1+2*sum);
end
fprintf('the result of this integral is: ');
disp(result)
diary('off')