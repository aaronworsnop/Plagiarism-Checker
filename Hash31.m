function [hash] = Hash31(seed)
% This function uses a simple hashing algorithm (the hash 31 algorithm) to create a (hopefully)
% unique integer value from a seed.
%
% Inputs: A character or integer 1D array seed. This array can be empty.
%
% Outputs: An integer calculated using the hash31 algorithm with the
% provided seed.
%
% Author: Aaron Worsnop 622512010
% Version: 1 (21/08/2022)

% Initialising hash variable
hash = 0;

% Hash31 algorithm (max hash size: 1,048,576)
for i = 1:length(seed)
    hash = seed(i) + 31*hash;
    hash = mod(hash, 1048576);
end

end