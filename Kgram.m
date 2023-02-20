function [kgrams] = Kgram(k, charArray)
% This function takes a string and divides it into kgrams, where each
% element is k characters long. If the string is shorter than k, the
% function returns a 1x1 cell array containing the string.
%
% Inputs: A k value.
%         A string in the form of a character array.
%
% Outputs: A 1D cell array of kgrams.
%
% Explaination: charArray = 'doyouwantto'
%               k = 5
%               kgrams = 'doyou' 'oyouw' 'youwa' 'ouwan' 'uwant' 'wantt' 'antto'
%
% Author: Aaron Worsnop 622512010
% Version: 1 (21/08/2022)

% Array to hold singular kgrams as they are being generated
kgram = [];

% Checking if the charArray is shorter than the k value
if (length(charArray) <= k)
    kgrams = {charArray};
else
    % Generating all possible kgrams
    for i = 1:length(charArray) - k + 1
        % Generating iteration's kgram
        kgram = [];
        for j = 1:k
            kgram = [kgram, charArray(i - 1 + j)];
        end

        % Adding previously generated kgram to kgrams
        kgrams{i} = kgram;
    end
end

end