function [indices] = FindMatchIndices(array1, array2)
% This function compares two non-empty arrays and returns a list of indices
% of positions. Those position indices refer to matching numbers in both
% arrays and where they appear in the first array
%
% Inputs: Two non-empty arrays. These arrays do not have to be the same in
% length.
%
% Outputs: One array with position indices.
%
% Explaination: array1 = [3 1 4 1 5] | array2 = [1 2 3 0]
%               In both arrays the values 1 & 3 exist.
%               In array1 those values exist at positions 1, 2 & 4.
%               indices = [1 2 4]
%
% Author: Aaron Worsnop 622512010
% Version: 1 (21/08/2022)

% Initialising indices variable
indices = [];

% Indexing through array1 and checking for matching values in array2
for i = 1:length(array1)
    for j = 1:length(array2)
        if (array1(i) == array2(j))
            % If there is a match, record the position index in indices
            indices = [indices, i];
        end
    end
end

% Formatting indices and removing duplicates
if (isempty(indices) == 1)
    indices = [];
else
    indices = unique(indices);
end

end