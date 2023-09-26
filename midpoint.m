%defining variables

a = -1
b = 4
c = 0

%x points
x = -1:.01:5

%creating function
f = @(a,b,c,x) a*x.^2+b*x+c

%corresponding y values
y = f(a,b,c,x)

%limits for finding area
max_val = 4
min_val = 0

%discretizing limits
limit = linspace(0,4,6)

%finding del_x
del_x = 4/5

%finding midpoints
for i = 1:5
midpoint(i,1) = (limit(i)+limit(i+1))/2
end

%coreespoing y values for x midpoints
y1 = f(a,b,c,midpoint(1))
y2 = f(a,b,c,midpoint(2))
y3 = f(a,b,c,midpoint(3))
y4 = f(a,b,c,midpoint(4))
y5 = f(a,b,c,midpoint(5))

%calculating area
area = y1*del_x+y2*del_x+y3*del_x+y4*del_x+y5*del_x

