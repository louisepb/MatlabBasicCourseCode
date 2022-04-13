% Calculate the average of a set of numbers using a 
% while loop to input numbers
% Assume a negative number indicates end of input

count = 1;
num = input('Input first number: ');

while num  >= 0 
    numbers(count) = num;
    count = count + 1;
    num = input('Input next number: ');
end
average = mean(numbers);
disp( ['Average is ', num2str(average)] );
