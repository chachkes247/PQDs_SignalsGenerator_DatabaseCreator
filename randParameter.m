function [ randVal ] = randParameter( minVal,maxVal )
%RANDPARAMETER Summary of this function goes here
%   Detailed explanation goes here

    randVal = minVal +rand*(maxVal - minVal);

end

