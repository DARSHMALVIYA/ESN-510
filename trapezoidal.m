%introduce coefficients
a = -1
b = 4
c = 0

%x values from -1 to 5 with a difference of .01
x = [-1:.01:5]

%creating a function, here@defines an anonymous function
f = @(a,b,c,x) a*x.^2+b*x+c

%creating y values with respect to x
y = f(a,b,c,x)

plot(x,y)


no_of_division = 6

%divide x(0-4) in divisions, finer the division better the result
x_partition = linspace(0,4,no_of_division)

%finding corresponding y-values
coressponding_y = f(a,b,c,x_partition)

%find del_x(b-a/no. of elements)
del_x = 4/(no_of_division-1)
area = (0)

%calculate area
for i=1:no_of_division-1
   area = area+0.5*del_x*(coressponding_y(i)+coressponding_y(i+1))
end

%plot figure

plot(x,y)

