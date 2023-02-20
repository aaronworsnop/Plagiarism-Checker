function [formString] = StripString(origString)
% This function removes the whitespace and unprintable characters from a
% string.
%
% Inputs: An unformatted string.
%
% Outputs: A formatted string.
%
% Author: Aaron Worsnop 622512010
% Version: 1 (21/08/2022)

% Array for tracking position indices of characters we want to keep
ind = [];

% Initialising formString as an empty character array
formString = char('');

% Indexing through each character in origString
for i = 1:length(origString)
    % Checking if the character is a printable character
    if ((double(origString(i)) > 32) && (double(origString(i)) < 127))
        ind = [ind, i];
    end
end

% Indexing through each character in ind and replacing it with the
% corresponding indexed value in origString
for i = 1:length(ind)
    formString = [formString, origString(ind(i))];
end

% Making everything lowercase
formString = lower(formString);

end