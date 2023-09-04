
clear all
close all
%creating a x matrix of 1x5
x = linspace(1,10,5)

%create a matrix 5x1 of 1
a = ones(5,1)                   %1 column
%create a matrix 5x1 of x0
b = x'                          %2 column
%create a matrix 5x1 of x0^2
c = (x.^2)'                      %3 column
%create a matrix 5x1 of x0^3
d = (x.^3)'                      %4column
%create a matrix 5x1 of x0^4
e = (x.^4)'                     %5 column

%add all the column horizontally
G = horzcat(a,b,c,d,e)

%create a matrix y of 1x5
y = randi(10,[1,5])

%create the transpose of matrix y
y'

%find m
m = inv(G)*y'

%to interpolate to divide the first and last value of x into thousand parts

xi = linspace(x(1),x(5),1000);

for i=1:1000
    Ga(i, :) = [1, xi(i), xi(i)^2, xi(i)^3, xi(i)^4];
end
size(Ga)
 
yi= Ga*m


plot(xi,yi,'g','LineStyle','-')

xlabel('value of xi')
ylabel('value of yi')
title('polynomial of degree 4')
