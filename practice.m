%%For calculation on nearest neighbour interpolation
%%first take value on x axis
x = 0:0.4:2
%% values for y axis
y = x.^2+3
%% the point on X where we want to find value of Y
xi = 0.9
%% Interpolate code ()
i = interp1(x,y,xi,"nearest") 
%% plot the data
plot(x,y,'ro',xi,i,'k')

%% the value of y at x=0.9 will be 3.64
%%replace nearest with linear for calculation of linear interpolation, value of y will be 3.84
