%Program to find distance travelled by freely falling object due to gravity
%at specified time intervals between given start and end times

% Input data
g = 9.81;

StartTime = input('Input the starting time ');
EndTime = input('Input the ending time ');
Increment = input('Input the time increment ');


% Calculate distance travelled at each time increment
% Create vector of times
time = StartTime:Increment:EndTime;

%Calculate the distances
distance = 1/2 * g * time.^2;

%% Create matrix of output data
table = [time;distance]';

% Output the results as a table
disp('Distance Travelled in Free Fall');
disp('Time,s     Distance, m');
disp(table);
%% Plot distance against time
plot(time, distance,'xr');

%% Plot distance against time with 10% margin around plot
xrange = time(end) - time(1);
yrange = distance(end) - distance(1);
xmin = time(1) - 0.1*xrange;
xmax = time(end) + 0.1*xrange;
ymin = distance(1) - 0.1*yrange;
ymax = distance(end) + 0.1*yrange;
plot(time, distance,'xr');
axis([xmin, xmax, ymin, ymax]);