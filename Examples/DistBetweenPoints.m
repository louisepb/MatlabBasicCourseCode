function [distance, x1] = DistBetweenPoints(x1,y1,x2,y2)
%Function to calculate line length
%   Detailed explanation goes here
    distance = sqrt( (x2-x1)^2 + (y2 - y1)^2 );
    x1 = x1+10;
end