function [hashes] = HashList(seeds)
% This function generates from a cell array of string seeds, using the Hash
% 31 algorithm, an array of hashes corresponding to said seeds.
%
% Inputs: A 1D cell array containing strings to seed the hashes.
%
% Outputs: A 1D array containing the hashes.
%
% Explaination: See "help Hash31" for explaination.
%
% Author: Aaron Worsnop 622512010
% Version: 1 (21/08/2022)

% Initialising hashes
hashes = [];

% Generating a hash for each seed and storing it in hashes
for i = 1:length(seeds)
    hashes = [hashes, Hash31(seeds{i})];
end

end