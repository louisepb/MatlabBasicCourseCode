%Menu and switch/case statement example
Colour = menu('Select Colour', 'Red', 'Blue', 'Green');
switch Colour
    case 1
        disp('You chose red');
    case 2
        disp('You chose blue');
    case 3
        disp('You chose green');
    otherwise
        disp('You didn''t make a selection');
end
