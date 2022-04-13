% Test program for CelsiusToFahrenheit script

% Test for two known values: 0 and 100 degrees C
tempC = 0;
tempF = CelsiusToFahrenheit(tempC);
disp([num2str(tempC) ' degrees C = ' num2str(tempF) ' degrees F']);

tempC = 100;
tempF = CelsiusToFahrenheit(tempC);
disp([num2str(tempC) ' degrees C = ' num2str(tempF) ' degrees F']);

% Test with a vector of values
tempC = [0 23 45 100];
tempF = CelsiusToFahrenheit(tempC);
results = [ tempC' tempF'];
disp(['degrees C  degrees F']);
disp(results);