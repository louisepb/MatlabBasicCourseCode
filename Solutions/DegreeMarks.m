% Assign class of degree based on mark
mark = input('Please input mark: ');
if ( mark >= 0 && mark <=100 )
    if mark >= 70
        disp('First class degree');
    elseif mark >= 60
        disp('Upper second class degree');
    elseif mark >= 50
        disp('Lower second class degree');
    elseif mark >= 40
        disp('Third class degree');
    else
        disp('Fail - no degree awarded');
    end
else
    disp('Invalid mark');
end