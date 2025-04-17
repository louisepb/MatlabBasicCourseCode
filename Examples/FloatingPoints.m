% Script to demonstrate floating point comparisons
clear
a = 0.5 - 0.4 - 0.1;

if a == 0 
    disp ( 'a is zero');
end

%% Compare value to a tolerance
tol = 1e-8;
if abs(a) < tol
    disp ( 'a is zero');
end

%%  Comparison for value other than 0

b = 3*(4/3 - 1);  % display as format longE
if b == 1
    disp ( 'b is one');
end

%% Comparison with tolerance

if abs(b - 1) < tol
    disp( ' b is one');
end
