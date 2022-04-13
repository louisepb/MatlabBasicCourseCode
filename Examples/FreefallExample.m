%Freefall example script
 
%Define varibles g, time, distance
g = 9.81;

% User input of final time
lastTime = input('Please input final time ');

% Time increments vector
times = linspace(0, lastTime, 10);

%Calculate distances
distances = 0.5*g*times.*times;

% Output distances
disp(distances);