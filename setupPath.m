function setupPath()
% Set up the MATLAB path for the course.

% We want all folders in the class folder to be on the path for the course.
dirNames = {'Data', 'Examples', 'Solutions'};

for k = 1:numel(dirNames)
    addpath(genpath(dirNames{k}));
end

end % setupPath