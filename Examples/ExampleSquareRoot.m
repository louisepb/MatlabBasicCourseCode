% Example scripts
% Second H1 comment line

%Start of script body
Num = input('Input number of square roots to calc: ');

A = [1:Num];
A = sqrt(A);

str = "The " + num2str(Num) + "values of root A are:" + num2str(A);
disp(str);