% Solve ordinary differential equation using Euler's method
clc
clear all
close all
diary('euler_method.txt')
syms x y;
%f=y-2*x^2  x0=0  y0=1  h=0.025  xn=0.1
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
    y=y0+h*f(x0,y0);
    x0=x;
    y0=y;
    s=sprintf('\n %3.0f %3.6f %3.6f',i,x,y);
    disp(s)
end
t=sprintf('The required value of y  %3.6f is:',y);
disp(t)
diary('off')