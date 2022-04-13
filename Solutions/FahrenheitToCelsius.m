%% Conversion of temperatures from Fahrenheit to Celsius

%% Set up vector of Fahrenheit values
Tf = 0:1000;
%% Convert to Celsius using for loop without preallocation
tic
ind = 1;
for T = Tf 
    Tc(ind) = (T - 32) * 5/9;
    ind = ind +1;
end
toc;

%% Loop with preallocated vector
Tc = [];
tic
Tc = zeros(size(Tf));
ind = 1;
for T = Tf 
    Tc(ind) = (T - 32) * 5/9;
    ind = ind +1;
end
toc;

%% Vectorised 
Tc = [];
tic
Tc = (Tf - 32) * 5/9;
toc