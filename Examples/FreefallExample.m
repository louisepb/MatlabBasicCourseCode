%Script to calculate position of body in freefall

% User input for end time
endTime = input('Please input end time: ');

%Create a vector of times between start and end time
Times = linspace(0, endTime, 10);

% Initialise g
g = 9.81;

% Calculate distances
distances = 0.5*g*(Times.*Times);

%Display distances
disp(distances);