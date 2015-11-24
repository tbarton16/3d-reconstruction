function [ camMat ] = computeCamMat (proj_pts, real_pts)
%ComputeCamMat Computes Camera Matrix and saves to workspace
%   Detailed explanation goes here
    proj_pts = normalize(proj_pts);
    real_pts = normalize(proj_pts);

    camMat = [0 0 0 0 -proj_pts(1 , 3) * real_pts(1,:) proj_pts(1, 2) *  real_pts(1,:);
                  proj_pts(1 , 3) * real_pts(1,:) 0 0 0 0 -proj_pts(1, 1) *  real_pts(1,:) ] ; 
              
    for i = 2: length(proj_pts)
        camMat =  [camMat ;  0 0 0 0 -proj_pts(i , 3) * real_pts(i,:) proj_pts(i, 2) *  real_pts(i,:);
                  proj_pts(i , 3) * real_pts(i,:) 0 0 0 0 -proj_pts(i, 1) *  real_pts(i,:) ];
    end;
    
    [U S V] = svd(A);
    P = V(:, end);
    camMat = reshape(P, 4,3);
%     TODO unnormalize the points here
end

