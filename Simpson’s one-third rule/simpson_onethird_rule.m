% Evaluate using Simpsons 1/3 rd rule
clc
close all
diary('simpson_onethird_rule.txt')
syms x;
%f(x)= 1/(1+x^2)  a=0  b=6  n=6  h=1
a=input('Enter the value of lower limit of the intergration a: ');
b=input('Enter the value of upper limit of the intergration b: ');
n=input('enter the number of subinterval n: ');
f=input('Enter f: ');
f=inline(f);
h=(b-a)/n;
sum=0;
sum1=0;
sum2=0;
for i=1:n-1
    x=a+i*h;
    sum=sum+f(x);
    if rem(i,2)==0
        sum1=sum1+f(x);
    else 
         sum2=sum2+f(x);
    end
    result=(h/3)*(f(a)+f(b)+4*sum2+2*sum1);
end
fprintf('the result of this integral is: ');
disp(result);
diary('off')