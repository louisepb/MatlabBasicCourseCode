% Test program for CalcPlotPolynomial

% Test for two known values: 0 and 100 degrees C
x = 0;
y = CalcPolynomial(x);
disp([' x = ' num2str(x) ' y = ' num2str(y)]);

x = 10;
y = CalcPolynomial(x);
disp([' x = ' num2str(x) ' y = ' num2str(y)]);

% Test with a vector of values
x = [0:5];
y = CalcPolynomial(x);
results = [ x' y'];
disp(['x   y']);
disp(results);