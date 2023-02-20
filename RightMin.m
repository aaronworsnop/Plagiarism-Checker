function [minVal, minValPos] = RightMin(array)
% This function finds the value and position of the rightmost minimum value
% in an array.
%
% Inputs: An array with at least one value.
%
% Outputs: The value of the rightmost minimum value.
%          The position (in the array counting from the left starting from
%          1) of the rightmost minimum value.
%
% Explaination: [3 1 3 1 3 1]
%               The value and position of the rightmost minimum value is 1
%               and 6 respectively.
%
% Author: Aaron Worsnop 622512010
% Version: 1 (21/08/2022)

% Finding the minimum value in the array
minVal = min(array);

% Reverse indexing through the array until the first appearance of the
% minimum value appears
for i = length(array):-1:1
    if (array(i) == minVal)
        minValPos = i;
        break
    end
end

end