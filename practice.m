%% first take value on x axis
x = 0:0.4:2
%% values for y axis
y = x.^2+3
%% the point on X where we want to find value of Y
xi = 0.9
%% Interpolate code
i = interp1(x,y,xi,"nearest")
%% plot the data
plot(x,y,'ro',xi,i,'k')
