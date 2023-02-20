function [fingerprint] = Fingerprint(windows)
% This function takes a 2D array of windows and calculates a document
% fingerprint using the winnowing alogrithm. The fingerprint is returned as
% a 2D array with rightmost winnowed values in the first row and, position
% indices in the second row.
%
% Inputs: A 2D array containing a set of windows of equal length.
%
% Outputs: A 2D array representing the document's fingerprint.
%
% Author: Aaron Worsnop 622512010
% Version: 1 (21/08/2022)

% Initialising fingerprint working variable, finWorking
finWorking = [];

% Finding the size of windows
rowCol = size(windows);

rows = rowCol(1);
cols = rowCol(2);

% Indexing through each window
for i = 1:rows
    % Using RightMin to find the rightmost minimum and it's position in
    % each window
    [finWorking(1,i), finWorking(2,i)] = RightMin(windows(i,:));

    % Accounting for the fact that the number corresponding to the same
    % value will appear in different windows and assigning the correct
    % position to each value
    finWorking(2,i) = finWorking(2,i) + i - 1;
end

% Removing duplicates that are actually the same value (caused by using
% RightMin function on windows with overlapping values)
fingerprint(2,:) = unique(finWorking(2,:));
% Finding "length" of fingerprint more robustly (rather than using
% 'length', which leads to errors if fingerprint is nx1)
fingerprintSize = size(fingerprint);
for i = 1:fingerprintSize(2)
    for j = 1:length(finWorking)
        if(fingerprint(2,i) == finWorking(2,j))
            fingerprint(:,i) = finWorking(:,j);
            break
        end
    end
end

end