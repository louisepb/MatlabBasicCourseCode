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

%% Output distances
disp('Distance Travelled in Free Fall');
disp(distance');

%% Extra task
%Create matrix of output data
table = [time;distance]';

% Output the results as a table
disp('Distance Travelled in Free Fall');
disp('Time,s     Distance, m');
disp(table);