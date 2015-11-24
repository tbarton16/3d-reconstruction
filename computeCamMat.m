function [ camMat ] = computeCamMat (proj_pts, real_pts)
%ComputeCamMat Computes Camera Matrix and saves to workspace
%   Detailed explanation goes here
%   matrix T to normalize image points and a matrix U to normalize world points
%     all_mean = mean2([mean2(proj_pts) mean2(real_pts)]);
%     all_sd =  std2([std2(proj_pts) std2(real_pts)]);
%     disp(real_pts)
%     proj_pts = ((proj_pts - all_mean)/ all_sd) * sqrt(2);
%     real_pts = ((real_pts - all_mean)/ all_sd) * sqrt(2);
    
%     add ones
    proj_pts = [ proj_pts ones(6,1) ];
    real_pts = [ real_pts ones(6,1) ];

    P = [0 0 0 0 -proj_pts(1 , 3) * real_pts(1,:) proj_pts(1, 2) *  real_pts(1,:);
                  proj_pts(1 , 3) * real_pts(1,:) 0 0 0 0 -proj_pts(1, 1) *  real_pts(1,:) ]; 
              
    for i = 2: length(proj_pts)
        P =  [P ;  0 0 0 0 -proj_pts(i , 3) * real_pts(i,:) proj_pts(i, 2) *  real_pts(i,:);
                  proj_pts(i , 3) * real_pts(i,:) 0 0 0 0 -proj_pts(i, 1) *  real_pts(i,:) ];
    end;
    
    [U S V] = svd(P);
    camMat = reshape(V(:,end), [4,3])';
%   unnormalize the points here
  %  camMat = ((camMat/sqrt(2)) * all_sd) + all_mean;
    test_pts =  camMat* real_pts(1,:)' 
    test_pts = test_pts(1:2) / test_pts(3)
%     test_pts =  camMat* real_pts(2,:)'
%     test_pts =  camMat* real_pts(3,:)'
%     test_pts =  camMat* real_pts(4,:)'
%     test_pts =  camMat* real_pts(5,:)'
%     test_pts =  camMat* real_pts(6,:)'
%     
    disp(real_pts);
    disp(proj_pts)
end

