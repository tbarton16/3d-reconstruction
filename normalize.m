function [ pts ] = normalize( points )
%normalize:  normalizes the points given

    pts = ((points - mean2(points)) / std2(points)) * sqrt(2);

end

