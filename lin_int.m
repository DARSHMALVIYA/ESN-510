%linear interpolation
xi = linspace(-1,1,10)
yi = [3 2 2 1 0 -3 -4 1 2 4]
plot(xi,yi)
hold on
n=10
for i=1:n-1

    x0=xi(i); x1=xi(i+1)
    y0=yi(i); y1=yi(i+1)

    x=linspace(x0,x1,100)
    y=y0+(x-x0)*(y1-y0)/(x1-x0)

    plot(x,y)

end


