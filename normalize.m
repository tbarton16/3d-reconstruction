function [ pts ] = normalize( points )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

    pts = ((points - mean(points)) / std(pointss)) * sqrt(2);

end

