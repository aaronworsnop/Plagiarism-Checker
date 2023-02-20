function [ind1, ind2] = FindMatchPositions(fing1,fing2)
% This function determines matching values in two strings using their
% fingerprints.
%
% Inputs: Two 2D arrays that represent a string's fingerprint,
% respectively.
%
% Outputs: Two 1D arrays that contain position indices of values in one
% string that also appear in the other string. The two arrays are row
% arrays.
%
% Author: Aaron Worsnop 622512010
% Version: 1 (21/08/2022)

% Intialising output arrays
ind1 = [];
ind2 = [];

% Using two variables (pos1 & pos2) to store the position indices of the
% matching hash values
pos1 = FindMatchIndices(fing1(1,:), fing2(1,:));
pos2 = FindMatchIndices(fing2(1,:), fing1(1,:));

% Using the matching hash value position indices to retrieve corresponding
% position values
ind1 = fing1(2,pos1);
ind2 = fing2(2,pos2);

% If the arrays are empty (no matches) set them to be empty arrays
if(isempty(ind1) == 1)
    ind1 = [];
end

if(isempty(ind2) == 1)
    ind2 = [];
end
end