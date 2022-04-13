%Program to plot the trajectories of a projectile launched at a given
%initial velocity and launch angle

% Input data
g = 9.81;    % acceleration due to gravity
StartVel = 60;  % m/s
Angle = input('Input angle in degrees ');

if ( Angle < 0 || Angle > 90 )
    disp('Angle is out of range');
else
    % Calculate distances
    % Convert angle to radians
    Angle = Angle * pi /180;
    % Create vector of times with increment 0.001s
    Time = 0:0.001:15; 

    % Calculate horizontal displacement for each time increment
    HorzDist = cos(Angle) * (Time .* StartVel);

    % Calculate vertical displacement for each time increment
    VertDist = sin(Angle) * (Time .* StartVel) - 0.5 * g * Time.^2;

    % Plot only positive vertical displacements
    % Find index of first negative vertical distance
    index = find(VertDist < 0, 1 );
    % Plot trajectory - horizontal against vertical distance
    plot(HorzDist(1:index-1),VertDist(1:index-1), 'b');

    %% Add axis labels
    xlabel('Horizontal distance, m');
    ylabel('Vertical distance, m');

    % Create string for title
    strTitle = ['Trajectory of projectile launched at ' num2str(StartVel) ' m/s '...
            'at an angle of ' num2str(Angle*180/pi) ' degrees'];
    title( strTitle );
end