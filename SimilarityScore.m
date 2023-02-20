function [matchPercent] = SimilarityScore(inds,k,strLen)
% This function calculates a similarity score by taking a list of matched
% positions for a string and determining what proportion of characters in a
% string matched.
%
% Inputs: A 1D array of position indices which correspond to position
%         matches
%         A positive integer, k, that determines the length of matches
%         The total length of the string kgram-ed string
%
% Outputs: A decimal representing the percentage of the string that matched
%
% Author: Aaron Worsnop 622512010
% Version: 1 (21/08/2022)

% Initialising matchPercent and a working array calcPercent
matchPercent = 0.00;
calcPercent = zeros(1, strLen);

% Setting all matches to 1 in calcPercent
for i = 1:1:length(inds)
    for j = 1:k
        calcPercent(inds(i) - 1 + j) = 1;
    end
end

% Calculating matchPercent
% Matches/Total string length
% (1's / (1's + 0's))
matchPercent = sum(calcPercent(1,:)==1)/strLen;

end