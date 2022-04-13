% Script to plot a polynomial

% Setup x values and calculate polynomial for those values
x = [-10:0.1:10];
y = 3*x.^2 + 4*x + 5;

%% Plot with a blue line
plot(x, y, 'b--');