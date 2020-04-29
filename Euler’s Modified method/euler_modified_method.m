% Solve ordinary differential equation using Mofified Euler's method
clc
clear all
close all
diary('euler_modified_method.txt')
syms x y;
%f=x^2+y  x0=0  y0=1  h=0.01  xn=0.02
x0=input('Enter the initial value x: ');
y0=input('Enter the initial value y: ');
h=input('Enter the step size h: ');
xn=input('Enter the value of xn: ');
f=input('Enter the function f(x,y): ');
f=inline(f);
n=(xn-x0)/h;
disp('   i      x       y');
for i=1:n
    x=x0+h;
    yr=y0+h*f(x0,y0);
    y=y0+h/2*(f(x0,y0)+f(x,yr));
    x0=x;
    y0=y;
    s=sprintf('\n %3.0f %3.6f %3.6f',i,x,y);
    disp(s)
end
t=sprintf('The required value of y is: %3.6f',y);
disp(t)
diary('off')
