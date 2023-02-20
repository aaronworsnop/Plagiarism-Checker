function [window] = Window(winSize, array)
% This function takes integer values and creates a 2D array of windows,
% with a specified window length.
%
% Inputs: An integer (> 0) size specification.
%         A 1D array of integer values.
%
% Outputs: A 2D array of integers where each row is a window of winSize
% length.
%
% Explaination: [3 1 4 1 5 9 2 6 5] is turned into
%               [3 1 4 1
%                1 4 1 5
%                4 1 5 9
%                1 5 9 2
%                5 9 2 6
%                9 2 6 5]
%
% Author: Aaron Worsnop 622512010
% Version: 1 (21/08/2022)

% Checking if the charArray is shorter than winSize
if (length(array) <= winSize)
    window = array;
else
    % Generating windows row by row
    for i = 1:length(array) - winSize + 1
        for j = 1:winSize
            window(i,j) = [array(i - 1 + j)];
        end
    end
end

end