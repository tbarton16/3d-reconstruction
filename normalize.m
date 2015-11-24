function [ pts ] = normalize( points )
%UNTITLED normalizes the points given
%   Detailed explanation goes here

    pts = ((points - mean(points)) / std(pointss)) * sqrt(2);

end

