function distance = DistBetweenPoints( x1, y1, x2, y2 )
% DistBetweenPoints - Function to calculate the distance between
% two cartesian points (x1,y1) and (x2,y2)
%
% Function returns the distance between the points
% Format:
% distance = DistBetweenPoints( x1, y1, x2, y2 )

%Calculate distance
distance = sqrt( (x2 - x1)^2 + (y2 - y1)^2 );

end