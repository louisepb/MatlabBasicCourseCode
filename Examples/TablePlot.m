load patients
% Create table using selected fields
PatientData = table(Gender,Age,Height,Weight);

% Create logical index for the rows with data for males.
ind = strcmp( PatientData.Gender, 'Male');
plot(PatientData.Age(ind), PatientData.Weight(ind), 'xr');
hold on
% Invert the selection to plot the data for females
plot(PatientData.Age(~ind), PatientData.Weight(~ind), 'ob');
xlabel('Age');
ylabel('Weight (lb)');
legend('Male','Female');