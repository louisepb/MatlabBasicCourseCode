load patients
% Create table using selected fields
PatientData = table(LastName,Smoker,Weight,Height);

% Plot weight vs height for smokers
plot(PatientData.Weight(Smoker), PatientData.Height(Smoker), 'xb');
hold on
% Invert the selection to plot the data for non-smokers
plot(PatientData.Weight(~Smoker), PatientData.Height(~Smoker), 'or');
xlabel('Weight (lb)');
ylabel('Height (in)');
legend('Smoker','Non-smoker');