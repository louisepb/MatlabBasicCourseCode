% Nested if
Age = input('Input age: ');
if Age > 5
    disp( 'Age is greater than 5'); % Code block 1
    if ( Age < 10 )
        disp( 'Age is between 5 and 10');  % Code block 2
    end
    disp( 'Code block 3');
end