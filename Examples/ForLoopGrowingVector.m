% For loop - growing vector
k = 1;
for t = [1 1.25 1.5 1.75 2]
    % Calculate distance in freefall
    d(k) = 0.5 * 9.81 * t^2;
    k = k+1;
end
