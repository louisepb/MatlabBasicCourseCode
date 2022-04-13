% for loop with 2D array as index
Array = [ 1:4;5:8;9:12];
for k = Array
    % Take care that any operations within loop will work on vectors
    a = k';
end