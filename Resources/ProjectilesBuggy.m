%Program to plot the trajectories of two projectiles launched at the same
%initial velocities but with different launch angles

% Input data
StartVel = 60;  % m/s
Angles = [pi/6 ; pi/3];      % 30 and 60 degrees


% Create vector of times with increment 0.001s
Time = 0:0.001:15; 

% Calculate horizontal displacement for each angle
HorzDist = Time * cos(Angles) * StartVel;

% Calculate vertical displacement for each angle
VertDist = sin(Angles) * (Time .* StartVel) - 0.5 * g * Time.^2;

% Plot trajectories on same plot
plot(HorzDist(1,:),VertDist(1,:), 'b');
hold on
plot(HorzDist(2,:),VertDist(2,:), 'r');
% or
%plot(HorzDist(1,:),VertDist(1,:), 'r',HorzDist(2,:),VertDist(2,:), 'b');

% Add axis labels
xlabel('Horizontal distance, m');
ylabel('Vertical distance, m');

% Create string for title
strTitle = sprintf('Trajectories of projectiles launched at %4.2f m/s',StartVel);
title( strTitle );

% Add legend
strAnglesDeg = num2str(Angles * 180 / pi);
legend(strcat(strAndglesDeg(1),' degrees'), strcat(strAnglesDeg(2), ' degrees') );