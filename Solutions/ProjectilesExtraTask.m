%Program to plot the trajectories of two projectiles launched at the same
%initial velocities but with different launch angles

% Input data
g = 9.81;    % acceleration due to gravity
StartVel = 60;  % m/s
Angles = [pi/6 ; pi/3];      % 30 and 60 degrees


% Create vector of times with increment 0.001s
Time = 0:0.001:15; 

% Calculate horizontal displacement for each angle
HorzDist = cos(Angles) * (Time .* StartVel);

% Calculate vertical displacement for each angle
VertDist = sin(Angles) * (Time .* StartVel);
TimeSquared = 0.5 * g * Time.^2;
VertDist(1,:) = VertDist(1,:) - TimeSquared;
VertDist(2,:) = VertDist(2,:) - TimeSquared;

%% Plot trajectories on same plot
plot(HorzDist(1,:),VertDist(1,:), 'b');
hold on
plot(HorzDist(2,:),VertDist(2,:), 'r');
% or
%plot(HorzDist(1,:),VertDist(1,:), 'r',HorzDist(2,:),VertDist(2,:), 'b');

%% Add axis labels
xlabel('Horizontal distance, m');
ylabel('Vertical distance, m');

% Create string for title
strTitle = ['Trajectories of projectiles launched at ' num2str(StartVel) ' m/s'];
title( strTitle );

% Add legend
strAnglesDeg = num2str(Angles * 180 / pi);
legend(strcat(strAnglesDeg(1,:),' degrees'), strcat(strAnglesDeg(2,:), ' degrees') );