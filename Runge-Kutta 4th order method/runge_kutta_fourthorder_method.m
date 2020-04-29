% Solve ordinary differential equation using second order Runge Kutta method
clc
clear all
close all
diary('runge_kutta_fourthorder_method.txt')

syms x y;
% f=y-x  x0=0  y0=2  h=0.1  xn=0.1,0.2
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
    K1=h*f(x0,y0);
    K2=h*f(x0+(h/2),y0+(K1/2));
    K3=h*f(x0+(h/2),y0+(K2/2));
    K4=h*f(x,y0+K3);
    y=y0+(1/6)*(K1+2*K2+2*K3+K4);
    x0=x;
    y0=y;
    s=sprintf('\n %3.0f %3.2f %3.4f',i,x,y);
    disp(s)
end
disp(sprintf('The solution of ODE is: %3.4f',y));
diary('off')
